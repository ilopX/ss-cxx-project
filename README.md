# Simple structure template C++ project

## Git install
```
$ git clone https://github.com/ilopX/sst-cxx-project.git .
```

if you want download modules (googletest on other) add 

```
--recursive
```

for example:

```
$ git clone --recursive https://github.com/ilopX/sst-cxx-project.git .
```

or

```
$ git clone https://github.com/ilopX/sst-cxx-project.git .
$ git submodule init
$ git submodule update
```

## CMake 
```
-DYOURNAME_BUILD_EXAMLES - Builds all examples
-DYOURNAME_BUILD_TEST - Builds all test
	-DGTEST_REBUILD_LIBS - Rebuild google test libs
```

## TODO
- [] add all modules in folder modules
- [] add cmake external tools auto download google test framework if it was not found