project(test_all)
cmake_minimum_required(VERSION 3.3)
include(ExternalProject)

option(GTEST_REBUILD_LIBS "Rebuild google test libs" ON)

#################################
# Set paths
SET(PN ${PROJECT_NAME})

SET(GBIN ${CMAKE_BINARY_DIR}/googletest)
SET(GBIN_M ${GBIN}/googlemock)

SET(GSRC ${CMAKE_CURRENT_SOURCE_DIR}/../googletest)
SET(GINC ${GSRC}/googletest/include)
SET(GIN_M ${GSRC}/googlemock/include)

#################################
# Added google test builds
if (GTEST_REBUILD_LIBS)
    ExternalProject_Add(googletest
        SOURCE_DIR ${GSRC}
        BINARY_DIR ${GBIN}
        CMAKE_ARGS -Dgtest_force_shared_crt=ON
        INSTALL_COMMAND ""
    )
    add_subdirectory(${GSRC} googletest)
endif(GTEST_REBUILD_LIBS)

#################################
# Build test
INCLUDE_DIRECTORIES(../src
    ${GINC})

add_executable(${PN} main.cpp)

if (GTEST_REBUILD_LIBS)
    add_dependencies(${PN} googletest)
endif(GTEST_REBUILD_LIBS)

target_link_libraries(${PN} ${GBIN_M}/${CMAKE_FIND_LIBRARY_PREFIXES}gmock${CMAKE_FIND_LIBRARY_SUFFIXES})
target_link_libraries(${PN} ${GBIN_M}/${CMAKE_FIND_LIBRARY_PREFIXES}gmock_main${CMAKE_FIND_LIBRARY_SUFFIXES})
