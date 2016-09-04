! Module type_dict defined in file type_dict.f90

subroutine f90wrap_get_real(self, key, val)
    use type_dict, only: get_real, dict_t
    implicit none
    
    type dict_t_ptr_type
        type(dict_t), pointer :: p => NULL()
    end type dict_t_ptr_type
    type(dict_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    character(*), intent(in) :: key
    real(8), intent(inout) :: val
    self_ptr = transfer(self, self_ptr)
    call get_real(self=self_ptr%p, key=key, val=val)
end subroutine f90wrap_get_real

subroutine f90wrap_set_real(self, key, val)
    use type_dict, only: dict_t, set_real
    implicit none
    
    type dict_t_ptr_type
        type(dict_t), pointer :: p => NULL()
    end type dict_t_ptr_type
    type(dict_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    character(*), intent(in) :: key
    real(8), intent(in) :: val
    self_ptr = transfer(self, self_ptr)
    call set_real(self=self_ptr%p, key=key, val=val)
end subroutine f90wrap_set_real

subroutine f90wrap_get_int(self, key, val)
    use type_dict, only: get_int, dict_t
    implicit none
    
    type dict_t_ptr_type
        type(dict_t), pointer :: p => NULL()
    end type dict_t_ptr_type
    type(dict_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    character(*), intent(in) :: key
    integer(4), intent(inout) :: val
    self_ptr = transfer(self, self_ptr)
    call get_int(self=self_ptr%p, key=key, val=val)
end subroutine f90wrap_get_int

subroutine f90wrap_set_int(self, key, val)
    use type_dict, only: set_int, dict_t
    implicit none
    
    type dict_t_ptr_type
        type(dict_t), pointer :: p => NULL()
    end type dict_t_ptr_type
    type(dict_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    character(*), intent(in) :: key
    integer(4), intent(in) :: val
    self_ptr = transfer(self, self_ptr)
    call set_int(self=self_ptr%p, key=key, val=val)
end subroutine f90wrap_set_int

subroutine f90wrap_dict_t_initialise(this)
    use type_dict, only: dict_t
    implicit none
    
    type dict_t_ptr_type
        type(dict_t), pointer :: p => NULL()
    end type dict_t_ptr_type
    type(dict_t_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine f90wrap_dict_t_initialise

subroutine f90wrap_dict_t_finalise(this)
    use type_dict, only: dict_t
    implicit none
    
    type dict_t_ptr_type
        type(dict_t), pointer :: p => NULL()
    end type dict_t_ptr_type
    type(dict_t_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine f90wrap_dict_t_finalise

! End of module type_dict defined in file type_dict.f90

