set -e

pushd pybind11_exception_rtti_test
make test
popd

${CXX} boost_example.cpp -o test -I $CONDA_PREFIX/include $CONDA_PREFIX/lib/libboost_serialization.dylib -Wl,-rpath,$CONDA_PREFIX/lib
./test
