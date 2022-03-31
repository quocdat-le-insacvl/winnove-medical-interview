/* This code is based on this VTK's documentation :
 * https://kitware.github.io/vtk-examples/site/Cxx/IO/ReadSTL/
 */

#include <vtkActor.h>
#include <vtkNew.h>
#include <vtkPolyData.h>
#include <vtkPolyDataMapper.h>
#include <vtkProperty.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkRenderer.h>
#include <vtkSTLReader.h>
#include <vtkGLTFExporter.h>


int main(int argc, char* argv[])
{
    // Check the argument file name
    if (argc != 2) {
        cout << "Required parameters: Filename(.stl)" << endl;
        return EXIT_FAILURE;
    }

    // Get the file name
    std::string inputFilename = argv[1];

    // Read STL file
    vtkNew<vtkSTLReader> reader;
    reader->SetFileName(inputFilename.c_str());
    reader->Update();

    // create output file name, e.g : ../30_DEG/UPPER_30.stl => ../30_DEG/output_UPPER_30.gltf
    std::string output_file;
    int i = inputFilename.size();
    while (--i >= 0)
        if (inputFilename[i] == '/') {
            break;
        }
    output_file = inputFilename.substr(0, i+1) + "output_" + inputFilename.substr(i+1, inputFilename.size() - i - 4) + "gltf";

    // Visualize
    // In fact, we have to pass the data of geometry (is stocked in "reader" for now) -> mapper -> actor
    // Then, we can rotate, add colors, make changes, ... to the actor
    // Finally, we visualize it
    vtkNew<vtkPolyDataMapper> mapper;
    mapper->SetInputConnection(reader->GetOutputPort());

    vtkNew<vtkActor> actor;
    actor->SetMapper(mapper);
    // Here we rotate 30 degree around the X-axis
    actor->RotateX(30);

    vtkNew<vtkRenderer> renderer;
    vtkNew<vtkRenderWindow> renderWindow;
    renderWindow->AddRenderer(renderer);
    renderWindow->SetWindowName(inputFilename.c_str());

    vtkNew<vtkRenderWindowInteractor> renderWindowInteractor;
    renderWindowInteractor->SetRenderWindow(renderWindow);

    renderer->AddActor(actor);

    renderWindow->Render();
    renderWindowInteractor->Start();

    vtkNew<vtkGLTFExporter> writer;
    writer->SetFileName(output_file.c_str());
    writer->InlineDataOn();
    writer->SetRenderWindow(renderWindow);
    writer->Write();

    std::cout << "Writing " << output_file << std::endl;
    return EXIT_SUCCESS;
}
