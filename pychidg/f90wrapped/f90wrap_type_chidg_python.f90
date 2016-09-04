! Module type_chidg defined in file type_chidg_python.f90

subroutine f90wrap_init(self, level)
    use type_chidg, only: init, chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    character(*), intent(in) :: level
    self_ptr = transfer(self, self_ptr)
    call init(self=self_ptr%p, level=level)
end subroutine f90wrap_init

subroutine f90wrap_set(self, selector, selection, options)
    use type_dict, only: dict_t
    use type_chidg, only: set, chidg_t
    implicit none
    
    type dict_t_ptr_type
        type(dict_t), pointer :: p => NULL()
    end type dict_t_ptr_type
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    character(*), intent(in) :: selector
    character(*), intent(in) :: selection
    type(dict_t_ptr_type) :: options_ptr
    integer, intent(in), dimension(2) :: options
    self_ptr = transfer(self, self_ptr)
    options_ptr = transfer(options, options_ptr)
    call set(self=self_ptr%p, selector=selector, selection=selection, &
        options=options_ptr%p)
end subroutine f90wrap_set

subroutine f90wrap_read_grid(self, gridfile, spacedim)
    use type_chidg, only: read_grid, chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    character(*), intent(in) :: gridfile
    integer(4), intent(in) :: spacedim
    self_ptr = transfer(self, self_ptr)
    call read_grid(self=self_ptr%p, gridfile=gridfile, spacedim=spacedim)
end subroutine f90wrap_read_grid

subroutine f90wrap_read_boundaryconditions(self, gridfile)
    use type_chidg, only: read_boundaryconditions, chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    character(*), intent(in) :: gridfile
    self_ptr = transfer(self, self_ptr)
    call read_boundaryconditions(self=self_ptr%p, gridfile=gridfile)
end subroutine f90wrap_read_boundaryconditions

subroutine f90wrap_read_solution(self, solutionfile)
    use type_chidg, only: read_solution, chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    character(*), intent(in) :: solutionfile
    self_ptr = transfer(self, self_ptr)
    call read_solution(self=self_ptr%p, solutionfile=solutionfile)
end subroutine f90wrap_read_solution

subroutine f90wrap_initialize_solution_domains(self, nterms_s)
    use type_chidg, only: initialize_solution_domains, chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    integer(4), intent(in) :: nterms_s
    self_ptr = transfer(self, self_ptr)
    call initialize_solution_domains(self=self_ptr%p, nterms_s=nterms_s)
end subroutine f90wrap_initialize_solution_domains

subroutine f90wrap_initialize_solution_solver(self)
    use type_chidg, only: initialize_solution_solver, chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    self_ptr = transfer(self, self_ptr)
    call initialize_solution_solver(self=self_ptr%p)
end subroutine f90wrap_initialize_solution_solver

subroutine f90wrap_write_solution(self, solutionfile)
    use type_chidg, only: write_solution, chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    character(*), intent(in) :: solutionfile
    self_ptr = transfer(self, self_ptr)
    call write_solution(self=self_ptr%p, solutionfile=solutionfile)
end subroutine f90wrap_write_solution

subroutine f90wrap_run(self)
    use type_chidg, only: run, chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    self_ptr = transfer(self, self_ptr)
    call run(self=self_ptr%p)
end subroutine f90wrap_run

subroutine f90wrap_report(self)
    use type_chidg, only: report, chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    self_ptr = transfer(self, self_ptr)
    call report(self=self_ptr%p)
end subroutine f90wrap_report

subroutine f90wrap_close(self)
    use type_chidg, only: close, chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: self_ptr
    integer, intent(in), dimension(2) :: self
    self_ptr = transfer(self, self_ptr)
    call close(self=self_ptr%p)
end subroutine f90wrap_close

!subroutine f90wrap_return_gui_bc(self, ibc_in, ret_gui_bc)
!    use type_chidgvis_bc, only: chidgvis_bc_t
!    use type_chidg, only: return_gui_bc, chidg_t
!    implicit none
!    
!    type chidgvis_bc_t_ptr_type
!        type(chidgvis_bc_t), pointer :: p => NULL()
!    end type chidgvis_bc_t_ptr_type
!    type chidg_t_ptr_type
!        type(chidg_t), pointer :: p => NULL()
!    end type chidg_t_ptr_type
!    type(chidg_t_ptr_type) :: self_ptr
!    integer, intent(in), dimension(2) :: self
!    type(chidgvis_bc_t_ptr_type) :: ret_gui_bc_ptr
!    integer, intent(out), dimension(2) :: ret_gui_bc
!    integer(4), intent(in) :: ibc_in
!    self_ptr = transfer(self, self_ptr)
!    allocate(ret_gui_bc_ptr%p)
!    ret_gui_bc_ptr%p = return_gui_bc(self=self_ptr%p, ibc_in=ibc_in)
!    ret_gui_bc = transfer(ret_gui_bc_ptr, ret_gui_bc)
!end subroutine f90wrap_return_gui_bc

subroutine f90wrap_chidg_t_initialise(this)
    use type_chidg, only: chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine f90wrap_chidg_t_initialise

subroutine f90wrap_chidg_t_finalise(this)
    use type_chidg, only: chidg_t
    implicit none
    
    type chidg_t_ptr_type
        type(chidg_t), pointer :: p => NULL()
    end type chidg_t_ptr_type
    type(chidg_t_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine f90wrap_chidg_t_finalise

! End of module type_chidg defined in file type_chidg_python.f90

