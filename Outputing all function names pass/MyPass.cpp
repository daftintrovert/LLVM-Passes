#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

#define DEBUG_TYPE "MyPass"

STATISTIC(HelloCounter, "It prints the name of our functions present in the code");

namespace {

// Finding name of the function is our first implementation

  struct MyPass : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    MyPass() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      ++HelloCounter;
      errs() << "Function Name: ";
      errs().write_escaped(F.getName()) << HelloCounter << '\n';
      return false;
    }
  };
}

char MyPass::ID = 0;
static RegisterPass<MyPass> X("MyPass", "My Pass Analyse",
	false, false
);


