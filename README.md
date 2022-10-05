![DragonMedium](https://user-images.githubusercontent.com/30869272/193449049-ca11b898-6258-4a38-9583-9390277b29f8.png)

# LLVM-Passes
Some common passes for the LLVM and how to use it to run over our .ll or .bc files

Welcome to the LLVM project!

The LLVM project has multiple components. The core of the project is
itself called "LLVM". This contains all of the tools, libraries, and header
files needed to process intermediate representations and converts it into
object files.  Tools include an assembler, disassembler, bitcode analyzer, and
bitcode optimizer.  It also contains basic regression tests.
![Screenshot from 2022-10-06 00-40-17](https://user-images.githubusercontent.com/30869272/194142684-f1bf1cff-58a5-4277-b9c2-22168cef6fc2.png)


C-like languages use the [Clang](http://clang.llvm.org/) front end.  This
component compiles C, C++, Objective-C, and Objective-C++ code into LLVM bitcode
-- and from there into object files, using LLVM.

Other components include:
the [libc++ C++ standard library](https://libcxx.llvm.org),
the [LLD linker](https://lld.llvm.org), and more.
