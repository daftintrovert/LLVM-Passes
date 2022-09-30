
# COMMENTS replace "vishal1005" with your "username" in your system (ubuntu 18/20)

* install clang, swapspace, cmake using $sudo apt-get install  cmake clang swapsapce 

* Download llvm-project-llvmorg-12.0.0.tar.gz (or recent version) from LLVM offical website
   "Source code (tar.gz)" 

* Create a LLVM directory in your home directory 
  $cd LLVM
  $mkdir install
  
* unzip the same in /home/vishal1005/LLVM/
* go the source/unzipped directory, Read the README file
   $cd /home/vishal1005/LLVM/llvm-project-llvmorg-12.0.0/

==================================
	*$pwd    //shows /home/asahu/LLVM/llvm-project-llvmorg-12.0.0/
	*$mkdir build
     	*$cd build
	*$cmake -G <generator> [options] ../llvm
	
        #by Vishal //This line is updated
        *$cmake --clean-first  -G "Unix Makefiles" DLLVM_PARALLEL_LINK_JOBS=1 -DLLVM_TARGETS_TO_BUILD=X86 -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/home/vishal1005/LLVM/install/ ../llvm
	

	# Make/Compilation may take some hours
	*make -j1
	*$make install

================================================

How test a in built pass/transform

cd /home/vishal1005/LLVM/llvm-project-llvmorg-12.0.0/llvm/test/Transforms/HelloNew

$/home/vishal1005/LLVM/install/bin/opt -disable-output -passes=helloworld helloworld.ll 

or

$/home/vishal1005/LLVM/llvm-project-llvmorg-12.0.0/build/bin/opt -disable-output -passes=helloworld helloworld.ll
