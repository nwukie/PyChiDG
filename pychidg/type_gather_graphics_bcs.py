"""
Module type_gather_graphics_bcs


Defined at type_gather_graphics_bcs.f90 lines 1-101

"""
import _pychidg
import f90wrap.runtime
import logging
from pychidg.type_graphics_bc import Graphics_Bc_T

_arrays = {}
_objs = {}

class Gather_Graphics_Bcs_V(f90wrap.runtime.FortranDerivedType):
    """
    Type(name=gather_graphics_bcs_v)
    
    
    Defined at type_gather_graphics_bcs.f90 lines 13-15
    
    """
    def process(self, chidg):
        """
        process(self, chidg)
        
        
        Defined at type_gather_graphics_bcs.f90 lines 34-38
        
        Parameters
        ----------
        self : Gather_Graphics_Bcs_V
        chidg : Chidg_T
        
        """
        _pychidg.f90wrap_process(self=self._handle, chidg=chidg._handle)
    
    def nbcs(self):
        """
        nbcs_ = nbcs(self)
        
        
        Defined at type_gather_graphics_bcs.f90 lines 59-64
        
        Parameters
        ----------
        self : Gather_Graphics_Bcs_V
        
        Returns
        -------
        nbcs_ : int
        
        """
        nbcs_ = _pychidg.f90wrap_nbcs(self=self._handle)
        return nbcs_
    
    def get_bc(self, ibc):
        """
        bc = get_bc(self, ibc)
        
        
        Defined at type_gather_graphics_bcs.f90 lines 82-87
        
        Parameters
        ----------
        self : Gather_Graphics_Bcs_V
        ibc : int
        
        Returns
        -------
        bc : Graphics_Bc_T
        
        """
        bc = _pychidg.f90wrap_get_bc(self=self._handle, ibc=ibc)
        bc = Graphics_Bc_T.from_handle(bc)
        return bc
    
    def __init__(self, handle=None):
        """
        self = Gather_Graphics_Bcs_V()
        
        
        Defined at type_gather_graphics_bcs.f90 lines 13-15
        
        
        Returns
        -------
        this : Gather_Graphics_Bcs_V
        	Object to be constructed
        
        
        Automatically generated constructor for gather_graphics_bcs_v
        """
        f90wrap.runtime.FortranDerivedType.__init__(self)
        self._handle = _pychidg.f90wrap_gather_graphics_bcs_v_initialise()
    
    def __del__(self):
        """
        Destructor for class Gather_Graphics_Bcs_V
        
        
        Defined at type_gather_graphics_bcs.f90 lines 13-15
        
        Parameters
        ----------
        this : Gather_Graphics_Bcs_V
        	Object to be destructed
        
        
        Automatically generated destructor for gather_graphics_bcs_v
        """
        if self._alloc:
            _pychidg.f90wrap_gather_graphics_bcs_v_finalise(this=self._handle)
    
    _dt_array_initialisers = []
    

_array_initialisers = []
_dt_array_initialisers = []

try:
    for func in _array_initialisers:
        func()
except ValueError:
    logging.debug('unallocated array(s) detected on import of module \
        "type_gather_graphics_bcs".')

for func in _dt_array_initialisers:
    func()
