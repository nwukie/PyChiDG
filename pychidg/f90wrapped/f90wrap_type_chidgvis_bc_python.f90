! Module type_chidgvis_bc defined in file type_chidgvis_bc_python.f90

subroutine f90wrap_nfaces(ret_nfaces_, self)
    use type_chidgvis_bc, only: chidgvis_bc_t, nfaces
    implicit none
    
    type chidgvis_bc_t_ptr_type
        type(chidgvis_bc_t), pointer :: p => NULL()
    end type chidgvis_bc_t_ptr_type
    integer(4), intent(out) :: ret_nfaces_
    type(chidgvis_bc_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    self_ptr = transfer(self, self_ptr)
    ret_nfaces_ = nfaces(self=self_ptr%p)
end subroutine f90wrap_nfaces

subroutine f90wrap_npoints(ret_npoints_, self)
    use type_chidgvis_bc, only: npoints, chidgvis_bc_t
    implicit none
    
    type chidgvis_bc_t_ptr_type
        type(chidgvis_bc_t), pointer :: p => NULL()
    end type chidgvis_bc_t_ptr_type
    integer(4), intent(out) :: ret_npoints_
    type(chidgvis_bc_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    self_ptr = transfer(self, self_ptr)
    ret_npoints_ = npoints(self=self_ptr%p)
end subroutine f90wrap_npoints

subroutine f90wrap_get_points(self, npoints, ndim, ret_points)
    use type_chidgvis_bc, only: get_points, chidgvis_bc_t
    implicit none
    
    type chidgvis_bc_t_ptr_type
        type(chidgvis_bc_t), pointer :: p => NULL()
    end type chidgvis_bc_t_ptr_type
    type(chidgvis_bc_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    integer(4), intent(in) :: npoints
    integer(4), intent(in) :: ndim
    real(8), intent(out), dimension(npoints,ndim) :: ret_points
    self_ptr = transfer(self, self_ptr)
    ret_points = get_points(self=self_ptr%p, npoints=npoints, ndim=ndim)
end subroutine f90wrap_get_points

subroutine f90wrap_get_faces(self, nfaces, ndim, ret_faces)
    use type_chidgvis_bc, only: get_faces, chidgvis_bc_t
    implicit none
    
    type chidgvis_bc_t_ptr_type
        type(chidgvis_bc_t), pointer :: p => NULL()
    end type chidgvis_bc_t_ptr_type
    type(chidgvis_bc_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    integer(4), intent(in) :: nfaces
    integer(4), intent(in) :: ndim
    integer(4), intent(out), dimension(nfaces,ndim) :: ret_faces
    self_ptr = transfer(self, self_ptr)
    ret_faces = get_faces(self=self_ptr%p, nfaces=nfaces, ndim=ndim)
end subroutine f90wrap_get_faces

subroutine f90wrap_chidgvis_bc_t_initialise(this)
    use type_chidgvis_bc, only: chidgvis_bc_t
    implicit none
    
    type chidgvis_bc_t_ptr_type
        type(chidgvis_bc_t), pointer :: p => NULL()
    end type chidgvis_bc_t_ptr_type
    type(chidgvis_bc_t_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine f90wrap_chidgvis_bc_t_initialise

subroutine f90wrap_chidgvis_bc_t_finalise(this)
    use type_chidgvis_bc, only: chidgvis_bc_t
    implicit none
    
    type chidgvis_bc_t_ptr_type
        type(chidgvis_bc_t), pointer :: p => NULL()
    end type chidgvis_bc_t_ptr_type
    type(chidgvis_bc_t_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine f90wrap_chidgvis_bc_t_finalise

! End of module type_chidgvis_bc defined in file type_chidgvis_bc_python.f90

