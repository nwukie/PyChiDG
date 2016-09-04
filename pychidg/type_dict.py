"""
Module type_dict


Defined at type_dict_python.f90 lines 12-75

"""
import _pychidg
import f90wrap.runtime
import logging

_arrays = {}
_objs = {}

class Dict_T(f90wrap.runtime.FortranDerivedType):
    """
    Type(name=dict_t)
    
    
    Defined at type_dict_python.f90 lines 27-29
    
    """
    def get_real(self, key, val):
        """
        get_real(self, key, val)
        
        
        Defined at type_dict_python.f90 lines 42-47
        
        Parameters
        ----------
        self : Dict_T
        key : str
        val : float
        
        """
        _pychidg.f90wrap_get_real(self=self._handle, key=key, val=val)
    
    def set_real(self, key, val):
        """
        set_real(self, key, val)
        
        
        Defined at type_dict_python.f90 lines 49-58
        
        Parameters
        ----------
        self : Dict_T
        key : str
        val : float
        
        """
        _pychidg.f90wrap_set_real(self=self._handle, key=key, val=val)
    
    def get_int(self, key, val):
        """
        get_int(self, key, val)
        
        
        Defined at type_dict_python.f90 lines 60-65
        
        Parameters
        ----------
        self : Dict_T
        key : str
        val : int
        
        """
        _pychidg.f90wrap_get_int(self=self._handle, key=key, val=val)
    
    def set_int(self, key, val):
        """
        set_int(self, key, val)
        
        
        Defined at type_dict_python.f90 lines 67-75
        
        Parameters
        ----------
        self : Dict_T
        key : str
        val : int
        
        """
        _pychidg.f90wrap_set_int(self=self._handle, key=key, val=val)
    
    def __init__(self, handle=None):
        """
        self = Dict_T()
        
        
        Defined at type_dict_python.f90 lines 27-29
        
        
        Returns
        -------
        this : Dict_T
        	Object to be constructed
        
        
        Automatically generated constructor for dict_t
        """
        f90wrap.runtime.FortranDerivedType.__init__(self)
        self._handle = _pychidg.f90wrap_dict_t_initialise()
    
    def __del__(self):
        """
        Destructor for class Dict_T
        
        
        Defined at type_dict_python.f90 lines 27-29
        
        Parameters
        ----------
        this : Dict_T
        	Object to be destructed
        
        
        Automatically generated destructor for dict_t
        """
        if self._alloc:
            _pychidg.f90wrap_dict_t_finalise(this=self._handle)
    
    _dt_array_initialisers = []
    

_array_initialisers = []
_dt_array_initialisers = []

try:
    for func in _array_initialisers:
        func()
except ValueError:
    logging.debug('unallocated array(s) detected on import of module "type_dict".')

for func in _dt_array_initialisers:
    func()
