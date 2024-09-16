cmake_minimum_required(VERSION 3.19)
project(simdb CXX)

set(SIMDB_BASE ${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${SIMDB_BASE}/include)
include(${SIMDB_BASE}/cmake/simdb-config.cmake)

add_library(simdb ${SimDB_CPP})

add_subdirectory(src)
add_subdirectory(test EXCLUDE_FROM_ALL)

install(TARGETS simdb
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib
)
install(DIRECTORY include/ DESTINATION include)
