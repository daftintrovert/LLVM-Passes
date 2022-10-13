// Vishal Kumar (Phd)
//226101005

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

#define DEBUG_TYPE "hello"

STATISTIC(HelloCounter, "Counts number of functions greeted");

namespace {
  // Hello - The first implementation, without getAnalysisUsage.
  struct Hello : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    Hello() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      ++HelloCounter;
      errs() << "Function Name : ";
      errs().write_escaped(F.getName()) << HelloCounter << '\n';
      return false;
    }
  };
}

char Hello::ID = 0;
static RegisterPass<Hello> X("hello", "Hello World Pass");

namespace {
  // Hello2 - The second implementation with getAnalysisUsage implemented.
  struct Hello2 : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    Hello2() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      unsigned int basicBlockCount = 0;
      unsigned int instructionCount = 0;
      for(BasicBlock &bb : F){
      	++basicBlockCount;
      	for(Instruction &i : bb){
      		++instructionCount;
      		
      		}
      	}
      	
      	errs() <<"Function being shown : ";
      	errs().write_escaped(F.getName()) << " Basic Blocks: " << basicBlockCount
      	<< " Instruction: " <<instructionCount << "\n";
      	}
    void getAnalysisUsage(AnalysisUsage &AU) const override {
      AU.setPreservesAll();
    }
  };
}

char Hello2::ID = 0;
static RegisterPass<Hello2>
Y("hello2", "Hello World Pass (with getAnalysisUsage implemented)");
