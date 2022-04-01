#include <CGAL/boost/graph/IO/STL.h>
#include <CGAL/Simple_cartesian.h>
#include <CGAL/Aff_transformation_3.h>
#include <CGAL/Surface_mesh.h>
#include <CGAL/Polygon_mesh_processing/transform.h>
#include <math.h>

typedef CGAL::Simple_cartesian<double> K;
typedef CGAL::Surface_mesh<K::Point_3> Mesh;
typedef CGAL::Aff_transformation_3<K>  Affine_transformation_3;


int main(int argc, char* argv[]) {
    // Check the argument file name
    if (argc != 2) {
        std::cout << "Required parameters: Filename(.stl)" << std::endl;
        return EXIT_FAILURE;
    }

    // Get the file name
    std::string inputFilename = argv[1];

    // create output file name, e.g : ../30_DEG/UPPER_30.stl => ../30_DEG/output_UPPER_30.stl
    std::string output_file;
    int i = inputFilename.size();
    while (--i >= 0)
        if (inputFilename[i] == '/') {
            break;
        }
    output_file = inputFilename.substr(0, i+1) + "output_" + inputFilename.substr(i+1, inputFilename.size() - i);

    // Get the angle from the file name
    std::string tmp;
    // Set i to just before the comma (.stl)
    i = inputFilename.size() - 5;
    while (inputFilename[i] >= '0' && inputFilename[i] <= '9' ) {
        tmp = inputFilename[i] + tmp;
        i--;
    }
    std::cout << "Input file : " << inputFilename << std::endl;
    std::cout << "Angle : " << tmp << std::endl;
    int angle =  std::stoi(tmp) + 90 + 180;
    //-------------------------

    // Read input .stl file
    Mesh m;
    std::ifstream is (inputFilename);
    CGAL::IO::read_STL(is, m);
    //-------------------------
    // Multiply the surface mesh with the matrix, which can perform the rotation
    Affine_transformation_3 rot_x_angle(1,0,0, 0,
                                0,cos(angle),-sin(angle), 0,
                                0,sin(angle),cos(angle), 0,
                                1);
    CGAL::Polygon_mesh_processing::transform(rot_x_angle, m);

    //     Write to file
    std::ofstream os(output_file);
    CGAL::IO::write_STL(os, m);
    std::cout << "Output file : " << output_file << std::endl;
    //-------------------------
    return EXIT_SUCCESS;
}
