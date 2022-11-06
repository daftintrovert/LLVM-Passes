STEP 1: 
    Create a new subdirectory in the directory: 
        llvm-project-llvmorg-12.0.0/llvm/lib/Transforms 

STEP 2:
    Name the newly created subdirectory according to the name of the new pass to be created. This subdirectory contains the CPP file for the pass and the build script for compilation.
    In this case, the name of the subdirectory is "Assignment3".

STEP 3:
    In llvm-project-llvmorg-12.0.0/llvm/lib/Transforms/CMakeLists.txt add 
        add_subdirectory(Assignment3)

STEP 4:
    In llvm-project-llvmorg-12.0.0/llvm/lib/Transforms/Assignment3 we create a new file "CMakeLists.txt" to set up build script for compiling the new pass.

STEP 5:
    In llvm-project-llvmorg-12.0.0/llvm/lib/Transforms/Assignment3 we create a new file for the C++ code for the pass. In this case, the name of the C++ file is "InstrumentIR.cpp"

STEP 6:
    In llvm-project-llvmorg-12.0.0/build recompile using "make" command

STEP 7:
    We create the .ll IR file from C file using the following command:
          clang -emit-llvm -S (name of C file).c

STEP 8:
    Run command bin/opt -load lib/LLVMInstrumentIR.so -InstrumentIR -enable-new-pm=0 < ~/(name of C file).ll > /dev/null to run the pass for the test .ll file.
    The pass inserts function calls to printL and printS accordingly
