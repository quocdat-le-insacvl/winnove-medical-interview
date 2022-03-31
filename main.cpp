#include <CGAL/boost/graph/IO/STL.h>

int main(int argc, char* argv[]) {
    // Check the argument file name
    if (argc != 2) {
        cout << "Required parameters: Filename(.stl)" << endl;
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

    bool CGAL::IO::read_STL 	( 	std::istream &  	is,
                                    Graph &  	g,
                                    const NamedParameters &  	np
    )
    return EXIT_SUCCESS;
}
