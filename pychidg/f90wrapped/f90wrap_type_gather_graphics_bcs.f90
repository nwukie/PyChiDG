! Module type_gather_graphics_bcs defined in file type_gather_graphics_bcs.f90

subroutine f90wrap_process(self, chidg)
    use type_chidg, only: chidg_t
    use type_gather_graphics_bcs, only: process, gather_graphics_bcs_v
    implicit none
    
    type gather_graphics_bcs_v_ptr_type
        type(gather_graphics_bcs_v), pointer :: p => NULL()
    end type gather_graphics_bcs_v_ptr_type
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(gather_graphics_bcs_v_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    type(chidg_t_ptr_type) :: chidg_ptr
    integer, intent(in), dimension(2) :: chidg
    self_ptr = transfer(self, self_ptr)
    chidg_ptr = transfer(chidg, chidg_ptr)
    call process(self=self_ptr%p, chidg=chidg_ptr%p)
end subroutine f90wrap_process

subroutine f90wrap_nbcs(ret_nbcs_, self)
    use type_gather_graphics_bcs, only: gather_graphics_bcs_v, nbcs
    implicit none
    
    type gather_graphics_bcs_v_ptr_type
        type(gather_graphics_bcs_v), pointer :: p => NULL()
    end type gather_graphics_bcs_v_ptr_type
    integer(4), intent(out) :: ret_nbcs_
    type(gather_graphics_bcs_v_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    self_ptr = transfer(self, self_ptr)
    ret_nbcs_ = nbcs(self=self_ptr%p)
end subroutine f90wrap_nbcs

subroutine f90wrap_get_bc(self, ret_bc, ibc)
    use type_graphics_bc, only: graphics_bc_t
    use type_gather_graphics_bcs, only: gather_graphics_bcs_v, get_bc
    implicit none
    
    type gather_graphics_bcs_v_ptr_type
        type(gather_graphics_bcs_v), pointer :: p => NULL()
    end type gather_graphics_bcs_v_ptr_type
    type graphics_bc_t_ptr_type
        type(graphics_bc_t), pointer :: p => NULL()
    end type graphics_bc_t_ptr_type
    type(gather_graphics_bcs_v_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    type(graphics_bc_t_ptr_type) :: ret_bc_ptr
    integer, intent(out), dimension(2) :: ret_bc
    integer(4), intent(in) :: ibc
    self_ptr = transfer(self, self_ptr)
    allocate(ret_bc_ptr%p)
    ret_bc_ptr%p = get_bc(self=self_ptr%p, ibc=ibc)
    ret_bc = transfer(ret_bc_ptr, ret_bc)
end subroutine f90wrap_get_bc

subroutine f90wrap_gather_graphics_bcs_v_initialise(this)
    use type_gather_graphics_bcs, only: gather_graphics_bcs_v
    implicit none
    
    type gather_graphics_bcs_v_ptr_type
        type(gather_graphics_bcs_v), pointer :: p => NULL()
    end type gather_graphics_bcs_v_ptr_type
    type(gather_graphics_bcs_v_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine f90wrap_gather_graphics_bcs_v_initialise

subroutine f90wrap_gather_graphics_bcs_v_finalise(this)
    use type_gather_graphics_bcs, only: gather_graphics_bcs_v
    implicit none
    
    type gather_graphics_bcs_v_ptr_type
        type(gather_graphics_bcs_v), pointer :: p => NULL()
    end type gather_graphics_bcs_v_ptr_type
    type(gather_graphics_bcs_v_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine f90wrap_gather_graphics_bcs_v_finalise

! End of module type_gather_graphics_bcs defined in file type_gather_graphics_bcs.f90

