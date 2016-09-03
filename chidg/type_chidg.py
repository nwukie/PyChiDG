"""
Module type_chidg


Defined at type_chidg_python.f90 lines 1-330

"""
import _chidg
import f90wrap.runtime
import logging
from type_chidgvis_bc import Chidgvis_Bc_T

_arrays = {}
_objs = {}

class Chidg_T(f90wrap.runtime.FortranDerivedType):
    """
    Type(name=chidg_t)
    
    
    Defined at type_chidg_python.f90 lines 16-18
    
    """
    def init(self, level):
        """
        init(self, level)
        
        
        Defined at type_chidg_python.f90 lines 38-42
        
        Parameters
        ----------
        self : Chidg_T
        level : str
        
        """
        _chidg.f90wrap_init(self=self._handle, level=level)
    
    def set(self, selector, selection, options):
        """
        set(self, selector, selection, options)
        
        
        Defined at type_chidg_python.f90 lines 65-71
        
        Parameters
        ----------
        self : Chidg_T
        selector : str
        selection : str
        options : Dict_T
        
        """
        _chidg.f90wrap_set(self=self._handle, selector=selector, selection=selection, \
            options=options._handle)
    
    def read_grid(self, gridfile, spacedim):
        """
        read_grid(self, gridfile, spacedim)
        
        
        Defined at type_chidg_python.f90 lines 109-114
        
        Parameters
        ----------
        self : Chidg_T
        gridfile : str
        spacedim : int
        
        """
        _chidg.f90wrap_read_grid(self=self._handle, gridfile=gridfile, spacedim=spacedim)
    
    def read_boundaryconditions(self, gridfile):
        """
        read_boundaryconditions(self, gridfile)
        
        
        Defined at type_chidg_python.f90 lines 136-140
        
        Parameters
        ----------
        self : Chidg_T
        gridfile : str
        
        """
        _chidg.f90wrap_read_boundaryconditions(self=self._handle, gridfile=gridfile)
    
    def read_solution(self, solutionfile):
        """
        read_solution(self, solutionfile)
        
        
        Defined at type_chidg_python.f90 lines 157-161
        
        Parameters
        ----------
        self : Chidg_T
        solutionfile : str
        
        """
        _chidg.f90wrap_read_solution(self=self._handle, solutionfile=solutionfile)
    
    def initialize_solution_domains(self, nterms_s):
        """
        initialize_solution_domains(self, nterms_s)
        
        
        Defined at type_chidg_python.f90 lines 177-181
        
        Parameters
        ----------
        self : Chidg_T
        nterms_s : int
        
        """
        _chidg.f90wrap_initialize_solution_domains(self=self._handle, nterms_s=nterms_s)
    
    def initialize_solution_solver(self):
        """
        initialize_solution_solver(self)
        
        
        Defined at type_chidg_python.f90 lines 198-201
        
        Parameters
        ----------
        self : Chidg_T
        
        """
        _chidg.f90wrap_initialize_solution_solver(self=self._handle)
    
    def write_solution(self, solutionfile):
        """
        write_solution(self, solutionfile)
        
        
        Defined at type_chidg_python.f90 lines 217-222
        
        Parameters
        ----------
        self : Chidg_T
        solutionfile : str
        
        """
        _chidg.f90wrap_write_solution(self=self._handle, solutionfile=solutionfile)
    
    def run(self):
        """
        run(self)
        
        
        Defined at type_chidg_python.f90 lines 240-243
        
        Parameters
        ----------
        self : Chidg_T
        
        """
        _chidg.f90wrap_run(self=self._handle)
    
    def report(self):
        """
        report(self)
        
        
        Defined at type_chidg_python.f90 lines 264-267
        
        Parameters
        ----------
        self : Chidg_T
        
        """
        _chidg.f90wrap_report(self=self._handle)
    
    def close(self):
        """
        close(self)
        
        
        Defined at type_chidg_python.f90 lines 286-289
        
        Parameters
        ----------
        self : Chidg_T
        
        """
        _chidg.f90wrap_close(self=self._handle)
    
    def return_gui_bc(self, ibc_in):
        """
        gui_bc = return_gui_bc(self, ibc_in)
        
        
        Defined at type_chidg_python.f90 lines 303-309
        
        Parameters
        ----------
        self : Chidg_T
        ibc_in : int
        
        Returns
        -------
        gui_bc : Chidgvis_Bc_T
        
        """
        gui_bc = _chidg.f90wrap_return_gui_bc(self=self._handle, ibc_in=ibc_in)
        gui_bc = Chidgvis_Bc_T.from_handle(gui_bc)
        return gui_bc
    
    def __init__(self, handle=None):
        """
        self = Chidg_T()
        
        
        Defined at type_chidg_python.f90 lines 16-18
        
        
        Returns
        -------
        this : Chidg_T
        	Object to be constructed
        
        
        Automatically generated constructor for chidg_t
        """
        f90wrap.runtime.FortranDerivedType.__init__(self)
        self._handle = _chidg.f90wrap_chidg_t_initialise()
    
    def __del__(self):
        """
        Destructor for class Chidg_T
        
        
        Defined at type_chidg_python.f90 lines 16-18
        
        Parameters
        ----------
        this : Chidg_T
        	Object to be destructed
        
        
        Automatically generated destructor for chidg_t
        """
        if self._alloc:
            _chidg.f90wrap_chidg_t_finalise(this=self._handle)
    
    _dt_array_initialisers = []
    

_array_initialisers = []
_dt_array_initialisers = []

try:
    for func in _array_initialisers:
        func()
except ValueError:
    logging.debug('unallocated array(s) detected on import of module "type_chidg".')

for func in _dt_array_initialisers:
    func()
