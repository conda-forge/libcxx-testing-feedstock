#include <boost/archive/text_oarchive.hpp>
#include <fstream>
#include <string>

int main()
{
  std::string filename = "output.txt";
  std::ofstream ofs(filename.c_str());
  boost::archive::text_oarchive oa(ofs);
  return 0;
}
