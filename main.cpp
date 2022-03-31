#include <CGAL/boost/graph/IO/STL.h>
#include <CGAL/Simple_cartesian.h>
#include <CGAL/Surface_mesh.h>

typedef CGAL::Simple_cartesian<double> K;
typedef CGAL::Surface_mesh<K::Point_3> Mesh;

int main(int argc, char* argv[]) {
    // Check the argument file name
    if (argc != 2) {
        std::cout << "Required parameters: Filename(.stl)" << std::endl;
        return EXIT_FAILURE;
    }

    // Get the file name
    std::string inputFilename = argv[1];
    std::cout << "Input file : " << inputFilename << std::endl;

    // create output file name, e.g : ../30_DEG/UPPER_30.stl => ../30_DEG/output_UPPER_30.stl
    std::string output_file;
    int i = inputFilename.size();
    while (--i >= 0)
        if (inputFilename[i] == '/') {
            break;
        }
    output_file = inputFilename.substr(0, i+1) + "output_" + inputFilename.substr(i+1, inputFilename.size() - i);
    //-------------------------


    // Read input .stl file
    Mesh m;
    std::ifstream is (inputFilename);
    CGAL::IO::read_STL(is, m);
    //-------------------------



    // Write to file
//    std::ofstream os(output_file);
//    CGAL::IO::write_STL(os, m);
//    std::cout << "Output file : " << output_file << std::endl;
    //-------------------------
    return EXIT_SUCCESS;
}
