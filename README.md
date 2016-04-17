# Simple structure template C++, CMake, GoogleTest project

## Git clone
```
$ git clone -b cmake --recursive  https://github.com/ilopX/sst-cxx-project.git .
```
or
```
$ git clone -b cmake https://github.com/ilopX/sst-cxx-project.git .
```

init module (googletest):
```
$ git submodule init
$ git submodule update
```



## Сhange original repository
rename branch
```
$ git branch -m master
```

```
$ git remote remove origin
```
or
```
$ git remote set-url origin you_url
$ git push origin master --force
```


## CMake 
```
-DYOURNAME_BUILD_EXAMLES - Builds all examples
-DYOURNAME_BUILD_TEST - Builds all test
	-DGTEST_REBUILD_LIBS - Rebuild google test libs
```

## TODO
- [x] add all modules in folder modules
- [ ] add cmake external tools auto download google test framework if it was not found
- [ ] add folder structure description 
- [x] add description: change original repository