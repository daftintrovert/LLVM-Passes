add_llvm_library( LLVMInstrumentIR MODULE
  InstrumentIR.cpp

  PLUGIN_TOOL
  opt
)
