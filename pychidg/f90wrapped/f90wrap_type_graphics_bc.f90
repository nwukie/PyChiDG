! Module type_graphics_bc defined in file type_graphics_bc.f90

subroutine f90wrap_graphics_nfaces(ret_nfaces_, self)
    use type_graphics_bc, only: graphics_nfaces, graphics_bc_t
    implicit none
    
    type graphics_bc_t_ptr_type
        type(graphics_bc_t), pointer :: p => NULL()
    end type graphics_bc_t_ptr_type
    integer(4), intent(out) :: ret_nfaces_
    type(graphics_bc_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    self_ptr = transfer(self, self_ptr)
    ret_nfaces_ = graphics_nfaces(self=self_ptr%p)
end subroutine f90wrap_graphics_nfaces

subroutine f90wrap_graphics_npoints(ret_npoints_, self)
    use type_graphics_bc, only: graphics_npoints, graphics_bc_t
    implicit none
    
    type graphics_bc_t_ptr_type
        type(graphics_bc_t), pointer :: p => NULL()
    end type graphics_bc_t_ptr_type
    integer(4), intent(out) :: ret_npoints_
    type(graphics_bc_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    self_ptr = transfer(self, self_ptr)
    ret_npoints_ = graphics_npoints(self=self_ptr%p)
end subroutine f90wrap_graphics_npoints

!subroutine f90wrap_graphics_get_points(self, npoints, ret_points, ndim, n0, n1)
subroutine f90wrap_graphics_get_points(self, npoints, ndim, ret_points)
    use type_graphics_bc, only: graphics_bc_t, graphics_get_points
    implicit none
    
    type graphics_bc_t_ptr_type
        type(graphics_bc_t), pointer :: p => NULL()
    end type graphics_bc_t_ptr_type
    type(graphics_bc_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    integer(4), intent(in) :: npoints
    real(8), intent(out), dimension(npoints,ndim) :: ret_points
    integer(4), intent(in) :: ndim
    self_ptr = transfer(self, self_ptr)
    ret_points = graphics_get_points(self=self_ptr%p, npoints=npoints, ndim=ndim)
end subroutine f90wrap_graphics_get_points

!subroutine f90wrap_graphics_get_faces(self, nfaces, ret_faces, ndim, n0, n1)
subroutine f90wrap_graphics_get_faces(self, nfaces, ndim, ret_faces)
    use type_graphics_bc, only: graphics_bc_t, graphics_get_faces
    implicit none
    
    type graphics_bc_t_ptr_type
        type(graphics_bc_t), pointer :: p => NULL()
    end type graphics_bc_t_ptr_type
    type(graphics_bc_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    integer(4), intent(in) :: nfaces
    integer(4), intent(out), dimension(nfaces,ndim) :: ret_faces
    integer(4), intent(in) :: ndim
    self_ptr = transfer(self, self_ptr)
    ret_faces = graphics_get_faces(self=self_ptr%p, nfaces=nfaces, ndim=ndim)
end subroutine f90wrap_graphics_get_faces

subroutine f90wrap_graphics_bc_t_initialise(this)
    use type_graphics_bc, only: graphics_bc_t
    implicit none
    
    type graphics_bc_t_ptr_type
        type(graphics_bc_t), pointer :: p => NULL()
    end type graphics_bc_t_ptr_type
    type(graphics_bc_t_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine f90wrap_graphics_bc_t_initialise

subroutine f90wrap_graphics_bc_t_finalise(this)
    use type_graphics_bc, only: graphics_bc_t
    implicit none
    
    type graphics_bc_t_ptr_type
        type(graphics_bc_t), pointer :: p => NULL()
    end type graphics_bc_t_ptr_type
    type(graphics_bc_t_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine f90wrap_graphics_bc_t_finalise

! End of module type_graphics_bc defined in file type_graphics_bc.f90

