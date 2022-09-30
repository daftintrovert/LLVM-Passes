#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

#define DEBUG_TYPE "MyPass"

STATISTIC(HelloCounter, "It counts total number of functions created");

namespace {

// Total_func is our first implementation

  struct MyPass : public FunctionPass {
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
char MyPass::ID = 0;
static RegisterPass<MyPass> X("MyPass", "Hello World Pass");
