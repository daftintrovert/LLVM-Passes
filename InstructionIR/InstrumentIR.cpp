#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Pass.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include <fstream>
#include <iostream>
#include <list>
#include <llvm/Bitcode/BitcodeWriter.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Type.h>
#include <llvm/Support/raw_ostream.h>

using namespace llvm;
namespace {
struct InstrumentIR : public ModulePass {
  static char ID; 
  Function *load_monitor;
  Function *store_monitor;

  InstrumentIR()
      : ModulePass(ID) {}

  bool runOnModule(Module &M) override {
    
    for (Module::iterator F = M.begin(), E = M.end(); F!= E; ++F) 
    {
      
      llvm::StringRef funcName = F -> getName();

      if(funcName == "printL"){
          load_monitor = cast<Function>(F);
          continue;
      }
      if(funcName == "printS"){
          store_monitor = cast<Function>(F);
          continue;
      }

      for(Function::iterator BB = F->begin(), E = F->end(); BB != E; ++BB)
      {
        for(BasicBlock::iterator BI = BB->begin(), BE = BB->end(); BI != BE; ++BI)
        {

          if(BI -> getOpcode() == Instruction::Store) {
            llvm::StoreInst *store_instruction_ptr = llvm::dyn_cast<llvm::StoreInst>(BI);
            llvm::Use *store_operands = store_instruction_ptr->getOperandList();
            errs() << *(store_operands[1])<<"  "<<"\n";
            
            
            Instruction *new_instruction = CallInst::Create(store_monitor);
            BB->getInstList().insertAfter(BI, new_instruction); 

            PtrToIntInst* ptrToInt = new PtrToIntInst(store_operands[1], IntegerType::get(BI->getContext(), 32),"",new_instruction);
            
            StoreInst * store_instruction = new StoreInst(ptrToInt, M.getGlobalVariable("GA"),new_instruction);
            BI++;
            BI++;
          }
          else if(BI -> getOpcode() == Instruction::Load) {
              
                llvm::LoadInst *loadinst = llvm::dyn_cast<llvm::LoadInst>(BI);
                llvm::Use *loadvalptr = loadinst->getOperandList();
                
                
                Instruction *new_instruction = CallInst::Create(load_monitor);
                BB->getInstList().insertAfter(BI, new_instruction); 

                PtrToIntInst* ptrToInt = new PtrToIntInst(loadvalptr[0], IntegerType::get(BI->getContext(), 32),"",new_instruction);

                StoreInst * store_instruction = new StoreInst(ptrToInt, M.getGlobalVariable("GA"),new_instruction);
                BI++;
                BI++;
            }
        }
      }
    }

    std::string str;
    llvm::raw_string_ostream(str) << M;

    std::ofstream outfile("newll.ll");
    outfile<<str;
    return false;
  }
};
} 

char InstrumentIR::ID = 0; 

static RegisterPass<InstrumentIR> X("InstrumentIR", "Function Profiler Pass",
                                    false, true);

static RegisterStandardPasses Y(PassManagerBuilder::EP_EarlyAsPossible,
                                [](const PassManagerBuilder &Builder,
                                   legacy::PassManagerBase &PM) {
                                  PM.add(new InstrumentIR());
                                });