! Distributed under the OSI-approved Apache License, Version 2.0.  See
! accompanying file Copyright.txt for details.
!
! SmallTestData.f90 : Fortran 90 arrays data for tests
!
!  Created on: Aug 9, 2017
!      Author: William F Godoy godoywf@ornl.gov
!


module small_test_data
    implicit none

    integer(kind=1), parameter, dimension(10) :: data_I8 = &
    & (/ 0, 1, -2, 3, -4, 5, -6, 7, -8, 9 /)

    integer(kind=2), parameter, dimension(10) :: data_I16 = &
    & (/ 512, 513, -510, 515, -508, 517, -506, 519, -504, 521 /)

    integer, parameter, dimension(10) :: data_I32 = &
    & (/ 131072, 131073,  -131070, 131075,  -131068, 131077, -131066, 131079, &
    &   -131064, 131081 /)

!  Having trouble with width
!    integer(kind=8), parameter, dimension(10) :: data_I64 = &
!    & (/ 8589934592,  8589934593, -8589934590, 8589934595, -8589934588, &
!    &    8589934597, -8589934586, 8589934599, -8589934584, 8589934601 /)

    real, parameter, dimension(10) :: data_R32 = &
    & (/ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 /)

    real(kind=8), parameter, dimension(10) :: data_R64 = &
    & (/ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 /)

end module
