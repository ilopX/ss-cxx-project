project(test_all)
cmake_minimum_required(VERSION 3.3)
include(../CMake/GoogleTestAdd.cmake)
#################################
# Build test
SET(PN ${PROJECT_NAME})

INCLUDE_DIRECTORIES(../src
    ${GINC})

add_executable(${PN} main.cpp)

if (GTEST_REBUILD_LIBS)
    add_dependencies(${PN} googletest)
endif(GTEST_REBUILD_LIBS)

target_link_libraries(${PN} ${GBIN_M}/${CMAKE_FIND_LIBRARY_PREFIXES}gmock${CMAKE_FIND_LIBRARY_SUFFIXES})
target_link_libraries(${PN} ${GBIN_M}/${CMAKE_FIND_LIBRARY_PREFIXES}gmock_main${CMAKE_FIND_LIBRARY_SUFFIXES})
