project(examples)
cmake_minimum_required(VERSION 2.8)

SET(PN ${PROJECT_NAME})

INCLUDE_DIRECTORIES(../include)
add_executable(${PN} main.cpp)
target_link_libraries(${PROJECT_NAME} ${CMAKE_BINARY_DIR}/src/${CMAKE_FIND_LIBRARY_PREFIXES}your_lib${CMAKE_FIND_LIBRARY_SUFFIXES})
