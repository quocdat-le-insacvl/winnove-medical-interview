# This code is based on this VTK's documentation :
# https://kitware.github.io/vtk-examples/site/Cxx/IO/ReadSTL/
cmake_minimum_required(VERSION 3.20 FATAL_ERROR)

project(WinnoveInterview)

SET(VTK_DIR "~/vtk/build" CACHE PATH "VTK directory override" FORCE)

find_package(VTK COMPONENTS
        vtkCommonCore
        vtkIOExport
        vtkIOExportPDF
        vtkIOImport
        vtkInteractionStyle
        vtkRenderingContextOpenGL2
        vtkRenderingCore
        vtkRenderingFreeType
        vtkRenderingGL2PSOpenGL2
        vtkRenderingOpenGL2
        vtkCommonDataModel
        vtkIOPLY
        vtkIOXML
        vtkIOGeometry
        vtkInteractionStyle
        vtkRenderingContextOpenGL2
        vtkRenderingCore
        vtkRenderingFreeType
        vtkRenderingGL2PSOpenGL2
        vtkRenderingOpenGL2
        QUIET
        )

if (NOT VTK_FOUND)
    message("Skipping WinnoveInterview: ${VTK_NOT_FOUND_MESSAGE}")
    return()
endif()
message (STATUS "VTK_VERSION: ${VTK_VERSION}")
if (VTK_VERSION VERSION_LESS "8.90.0")
    # old system
    include(${VTK_USE_FILE})
    add_executable(WinnoveInterview MACOSX_BUNDLE main.cpp)
    target_link_libraries(WinnoveInterview PRIVATE ${VTK_LIBRARIES})
else()
    # Prevent a "command line is too long" failure in Windows.
    set(CMAKE_NINJA_FORCE_RESPONSE_FILE "ON" CACHE BOOL "Force Ninja to use response files.")
    add_executable(WinnoveInterview MACOSX_BUNDLE main.cpp )
    target_link_libraries(WinnoveInterview PRIVATE ${VTK_LIBRARIES})
    # vtk_module_autoinit is needed
    vtk_module_autoinit(
            TARGETS WinnoveInterview
            MODULES ${VTK_LIBRARIES}
    )
endif()
