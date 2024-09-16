find_package(SQLite3 3.19 REQUIRED)

enable_language(C)
find_package(HDF5 1.10 REQUIRED)

set(SimDB_LIBS simdb hdf5::hdf5 sqlite3 z pthread)
