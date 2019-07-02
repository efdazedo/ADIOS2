/*
 * Distributed under the OSI-approved Apache License, Version 2.0.  See
 * accompanying file Copyright.txt for details.
 *
 * adiosMPIFunctions.h : collection of MPI functions used across adios2
 *
 *  Created on: Jul 20, 2017
 *      Author: William F Godoy godoywf@ornl.gov
 */

#ifndef ADIOS2_HELPER_ADIOSMPIFUNCTIONS_H_
#define ADIOS2_HELPER_ADIOSMPIFUNCTIONS_H_

/// \cond EXCLUDE_FROM_DOXYGEN
#include <string>
#include <vector>
/// \endcond

#include "adios2/common/ADIOSMPI.h"

namespace adios2
{
namespace helper
{

void CheckMPIReturn(const int value, const std::string &hint);

template <class T>
std::vector<MPI_Request> Isend64(const T *buffer, const size_t count,
                                 int destination, int tag, MPI_Comm mpiComm,
                                 const std::string &hint);

template <class T>
std::vector<MPI_Request> Irecv64(T *buffer, const size_t count, int source,
                                 int tag, MPI_Comm mpiComm,
                                 const std::string &hint);

} // end namespace helper
} // end namespace adios2

#include "adiosMPIFunctions.inl"

#endif /* ADIOS2_HELPER_ADIOMPIFUNCTIONS_H_ */
