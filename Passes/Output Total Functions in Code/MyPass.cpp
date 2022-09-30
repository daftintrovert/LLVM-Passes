#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

#define DEBUG_TYPE "mypass"

STATISTIC(HelloCounter, "It counts total number of functions created");

namespace {

// Total_func is our first implementation

  struct Total_func : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    Total_func() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      ++HelloCounter;
      errs() << "Total_func ";
      errs().write_escaped(F.getName()) << HelloCounter << '\n';
      return false;
    }
  };
}
char MaxBasicBlock::ID = 0;
static RegisterPass<Total_func> X("mypass", "Hello World Pass");
