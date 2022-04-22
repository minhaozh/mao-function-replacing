cmake_minimum_required(VERSION 3.17)
project(mao_profiling)

set(CMAKE_CXX_STANDARD 14)

add_executable(profiling profiling.cc spilt_utils.cc)