"""
Module type_chidgvis_bc


Defined at type_chidgvis_bc_python.f90 lines 1-104

"""
import _pychidg
import f90wrap.runtime
import logging

_arrays = {}
_objs = {}

class Chidgvis_Bc_T(f90wrap.runtime.FortranDerivedType):
    """
    Type(name=chidgvis_bc_t)
    
    
    Defined at type_chidgvis_bc_python.f90 lines 15-17
    
    """
    def nfaces(self):
        """
        nfaces_ = nfaces(self)
        
        
        Defined at type_chidgvis_bc_python.f90 lines 38-42
        
        Parameters
        ----------
        self : Chidgvis_Bc_T
        
        Returns
        -------
        nfaces_ : int
        
        """
        nfaces_ = _pychidg.f90wrap_nfaces(self=self._handle)
        return nfaces_
    
    def npoints(self):
        """
        npoints_ = npoints(self)
        
        
        Defined at type_chidgvis_bc_python.f90 lines 55-59
        
        Parameters
        ----------
        self : Chidgvis_Bc_T
        
        Returns
        -------
        npoints_ : int
        
        """
        npoints_ = _pychidg.f90wrap_npoints(self=self._handle)
        return npoints_
    
    def get_points(self, npoints, ndim):
        """
        points = get_points(self, npoints, ndim)
        
        
        Defined at type_chidgvis_bc_python.f90 lines 78-84
        
        Parameters
        ----------
        self : unknown
        npoints : int
        ndim : int
        
        Returns
        -------
        points : float array
        
        """
        points = _pychidg.f90wrap_get_points(self=self._handle, npoints=npoints, ndim=ndim)
        return points

    def get_faces(self, nfaces, ndim):
        """
        faces = get_faces(self, nfaces, ndim)
        
        
        Defined at type_chidgvis_bc_python.f90 lines 95-101
        
        Parameters
        ----------
        self : unknown
        nfaces : int
        ndim : int
        
        Returns
        -------
        faces : int array
        
        """
        faces = _pychidg.f90wrap_get_faces(self=self._handle, nfaces=nfaces, ndim=ndim)
        return faces


    def __init__(self, handle=None):
        """
        self = Chidgvis_Bc_T()
        
        
        Defined at type_chidgvis_bc_python.f90 lines 15-17
        
        
        Returns
        -------
        this : Chidgvis_Bc_T
        	Object to be constructed
        
        
        Automatically generated constructor for chidgvis_bc_t
        """
        f90wrap.runtime.FortranDerivedType.__init__(self)
        self._handle = _pychidg.f90wrap_chidgvis_bc_t_initialise()
    
    def __del__(self):
        """
        Destructor for class Chidgvis_Bc_T
        
        
        Defined at type_chidgvis_bc_python.f90 lines 15-17
        
        Parameters
        ----------
        this : Chidgvis_Bc_T
        	Object to be destructed
        
        
        Automatically generated destructor for chidgvis_bc_t
        """
        if self._alloc:
            _pychidg.f90wrap_chidgvis_bc_t_finalise(this=self._handle)
    
    _dt_array_initialisers = []
    


_array_initialisers = []
_dt_array_initialisers = []

try:
    for func in _array_initialisers:
        func()
except ValueError:
    logging.debug('unallocated array(s) detected on import of module \
        "type_chidgvis_bc".')

for func in _dt_array_initialisers:
    func()
