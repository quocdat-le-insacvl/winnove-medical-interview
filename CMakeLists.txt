cmake_minimum_required(VERSION 3.20)

project(WinnoveInterview)

SET(CGAL_DIR "~/CGAL/build" )

find_package(CGAL)


add_definitions("-DCGAL_DIR=$CMAKE_INSTALLED_PREFIX/lib/CGAL -DCMAKE_BUILD_TYPE=Release ")

add_executable(WinnoveInterview main.cpp)
target_link_libraries(WinnoveInterview CGAL::CGAL)
