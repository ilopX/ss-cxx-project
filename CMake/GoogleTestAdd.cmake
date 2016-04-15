include(ExternalProject)

option(GTEST_REBUILD_LIBS "Rebuild google test libs" ON)

#################################
# Set paths


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
