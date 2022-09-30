
# COMMENTS replace "asahu" with your "username" in your system (ubuntu 18/20)

* install clang, swapspace, cmake using $sudo apt-get install  cmake clang swapsapce 

* Download llvm-project-llvmorg-12.0.0.tar.gz (or recent version) from LLVM offical website
   "Source code (tar.gz)" 

* Create a LLVM directory in your home directory 
  $cd LLVM
  $mkdir install
  
* unzip the same in /home/asahu/LLVM/
* go the source/unzipped directory, Read the README file
   $cd /home/asahu/LLVM/llvm-project-llvmorg-12.0.0/

==================================
	*$pwd    //shows /home/asahu/LLVM/llvm-project-llvmorg-12.0.0/
	*$mkdir build
     	*$cd build
	*$cmake -G <generator> [options] ../llvm
	
        #by A Sahu //This line is updated
        *$cmake --clean-first  -G "Unix Makefiles" DLLVM_PARALLEL_LINK_JOBS=1 -DLLVM_TARGETS_TO_BUILD=X86 -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/home/asahu/LLVM/install/ ../llvm
	

	# Make/Compilation may take some hours
	*make -j1
	*$make install

================================================

How test a in built pass/transform

cd /home/asahu/LLVM/llvm-project-llvmorg-12.0.0/llvm/test/Transforms/HelloNew

$/home/asahu/LLVM/install/bin/opt -disable-output -passes=helloworld helloworld.ll 

or

$/home/asahu/LLVM/llvm-project-llvmorg-12.0.0/build/bin/opt -disable-output -passes=helloworld helloworld.ll


How to make a own pass or download

Download https://github.com/sampsyo/llvm-pass-skeleton
Unzipp this in any direcory ====> it is not necessary to put this pass inside LLVM source directory


$cd llvm-pass-skeleton


//add this line  to skeleton/Skeleton.cpp at the end.
static RegisterPass<SkeletonPass> X("skeleton", "Skeleton World Pass", false, false );
~                                          

$cmake skeleton

Change in CMakeFiles/SkeletonPass.dir/build.make to include the include directory/header
Replace "$(CXX_INCLUDES)" with "-I/home/asahu/LLVM/install/include/ $(CXX_INCLUDES)" for all three occuraces

testing:
$/home/asahu/LLVM/install/bin/opt -load libSkeletonPass.so -skeleton   helloworld.ll



