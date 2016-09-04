module type_chidgvis_bc
!#include <messenger.h>
!    use mod_kinds,  only: ik, rk
    implicit none




    !>
    !!
    !!
    !!
    !!
    !--------------------------------------------------------------------------------------
    type, public :: chidgvis_bc_t

        real(kind=8),   allocatable :: points(:,:)  ! Cartesian
        integer,        allocatable :: faces(:,:)   ! Triangles

    contains

        procedure   :: add_faces

        
        procedure   :: npoints
        procedure   :: nfaces

        procedure   :: get_points
        procedure   :: get_faces

    end type chidgvis_bc_t
    !***************************************************************************************







contains




    !>
    !!
    !!  @author Nathan A. Wukie 
    !!  @date   9/2/2016
    !!
    !!
    !!
    !----------------------------------------------------------------------------------------
    subroutine add_faces(self,points,faces)
        class(chidgvis_bc_t),   intent(inout)   :: self
        real(kind=8),           intent(inout)   :: points(:,:)
        integer,                intent(inout)   :: faces(:,:)

        integer                     :: npoints_before, nfaces_before, npoints_after, nfaces_after, ierr
        real(kind=8),   allocatable :: temp_points(:,:)
        integer,        allocatable :: temp_faces(:,:)


        !
        ! Allocate storage to resize arrays
        !
        npoints_before = self%npoints()
        nfaces_before  = self%nfaces()

        npoints_after = npoints_before + size(points,1)
        nfaces_after  = nfaces_before  + size(faces,1)

        allocate(temp_points(npoints_after,3), temp_faces(nfaces_after,3), stat=ierr)
        if (ierr /= 0) call AllocationError

        if (npoints_before > 0) then
            temp_points(1:npoints_before,1:3) = self%points(1:npoints_before,1:3)
            temp_faces(1:nfaces_before,1:3)   = self%faces(1:nfaces_before,1:3)
        end if


        !
        ! Increment incoming face connectivities
        !
        faces = faces + npoints_before - 1


        !
        ! Add faces and points to temp arrays
        !
        temp_points(npoints_before+1:, 1:3) = points
        temp_faces(nfaces_before+1:,1:3)    = faces


        !
        ! Move allocation to self
        !
        call move_alloc(temp_points,self%points)
        call move_alloc(temp_faces,self%faces)


    end subroutine add_faces
    !****************************************************************************************










    !>
    !!
    !!
    !!
    !!
    !---------------------------------------------------------------------------------
    function nfaces(self) result(nfaces_)
        class(chidgvis_bc_t),   intent(in)  :: self

        integer :: nfaces_

        if (allocated(self%faces)) then
            nfaces_ = size(self%faces,1)
        else
            nfaces_ = 0
        end if

    end function nfaces
    !**********************************************************************************




    !>
    !!
    !!
    !!
    !!
    !---------------------------------------------------------------------------------
    function npoints(self) result(npoints_)
        class(chidgvis_bc_t),   intent(in)  :: self

        integer :: npoints_

        if (allocated(self%points)) then
            npoints_ = size(self%points,1)
        else
            npoints_ = 0
        end if

    end function npoints
    !**********************************************************************************










    !>
    !!
    !!  
    !!
    !!
    !----------------------------------------------------------------------------------
    function get_points(self,npoints,ndim) result(points)
        class(chidgvis_bc_t),   intent(in)  :: self
        integer,            intent(in)  :: npoints
        integer,            intent(in)  :: ndim

        real(kind=8), dimension(npoints,ndim) :: points

        points = self%points(1:npoints,1:ndim)

    end function get_points
    !**********************************************************************************


    !>
    !!
    !!  
    !!
    !!
    !----------------------------------------------------------------------------------
    function get_faces(self,nfaces,ndim) result(faces)
        class(chidgvis_bc_t),   intent(in)  :: self
        integer,            intent(in)  :: nfaces
        integer,            intent(in)  :: ndim

        integer, dimension(nfaces,ndim) :: faces

        faces = self%faces(1:nfaces,1:ndim)

    end function get_faces
    !**********************************************************************************


end module type_chidgvis_bc
