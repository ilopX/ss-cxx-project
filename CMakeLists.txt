project(sst-cxx-project)
cmake_minimum_required(VERSION 3.3)

add_subdirectory(src)

option(YOURNAME_BUILD_EXAMLES "Builds all examples" ON)
option(YOURNAME_BUILD_TEST "Builds all test" ON)

if (YOURNAME_BUILD_EXAMLES)
    add_subdirectory(examples)
    add_dependencies(examples your_lib)
endif(YOURNAME_BUILD_EXAMLES)

if(YOURNAME_BUILD_TEST)
    add_subdirectory(test)
endif(YOURNAME_BUILD_TEST)

# // TODO README.md
# TODO: name of project (scxxpst) simple-cxx-project-structure-template
