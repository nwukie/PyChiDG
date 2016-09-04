"""
Module type_graphics_bc


Defined at type_graphics_bc.f90 lines 1-99

"""
import _pychidg
import f90wrap.runtime
import logging

_arrays = {}
_objs = {}

class Graphics_Bc_T(f90wrap.runtime.FortranDerivedType):
    """
    Type(name=graphics_bc_t)
    
    
    Defined at type_graphics_bc.f90 lines 13-15
    
    """
    def graphics_nfaces(self):
        """
        nfaces_ = graphics_nfaces(self)
        
        
        Defined at type_graphics_bc.f90 lines 32-37
        
        Parameters
        ----------
        self : Graphics_Bc_T
        
        Returns
        -------
        nfaces_ : int
        
        """
        nfaces_ = _pychidg.f90wrap_graphics_nfaces(self=self._handle)
        return nfaces_
    
    def graphics_npoints(self):
        """
        npoints_ = graphics_npoints(self)
        
        
        Defined at type_graphics_bc.f90 lines 50-54
        
        Parameters
        ----------
        self : Graphics_Bc_T
        
        Returns
        -------
        npoints_ : int
        
        """
        npoints_ = _pychidg.f90wrap_graphics_npoints(self=self._handle)
        return npoints_
    
    def graphics_get_points(self, npoints, ndim):
        """
        points = graphics_get_points(self, npoints, ndim)
        
        
        Defined at type_graphics_bc.f90 lines 68-75
        
        Parameters
        ----------
        self : Graphics_Bc_T
        npoints : int
        ndim : int
        
        Returns
        -------
        points : float array
        
        """
        points = _pychidg.f90wrap_graphics_get_points(self=self._handle, \
            npoints=npoints, ndim=ndim)
        return points
    
    def graphics_get_faces(self, nfaces, ndim):
        """
        faces = graphics_get_faces(self, nfaces, ndim)
        
        
        Defined at type_graphics_bc.f90 lines 89-96
        
        Parameters
        ----------
        self : Graphics_Bc_T
        nfaces : int
        ndim : int
        
        Returns
        -------
        faces : int array
        
        """
        faces = _pychidg.f90wrap_graphics_get_faces(self=self._handle, nfaces=nfaces, \
            ndim=ndim)
        return faces
    
    def __init__(self, handle=None):
        """
        self = Graphics_Bc_T()
        
        
        Defined at type_graphics_bc.f90 lines 13-15
        
        
        Returns
        -------
        this : Graphics_Bc_T
        	Object to be constructed
        
        
        Automatically generated constructor for graphics_bc_t
        """
        f90wrap.runtime.FortranDerivedType.__init__(self)
        self._handle = _pychidg.f90wrap_graphics_bc_t_initialise()
    
    def __del__(self):
        """
        Destructor for class Graphics_Bc_T
        
        
        Defined at type_graphics_bc.f90 lines 13-15
        
        Parameters
        ----------
        this : Graphics_Bc_T
        	Object to be destructed
        
        
        Automatically generated destructor for graphics_bc_t
        """
        if self._alloc:
            _pychidg.f90wrap_graphics_bc_t_finalise(this=self._handle)
    
    _dt_array_initialisers = []
    

_array_initialisers = []
_dt_array_initialisers = []

try:
    for func in _array_initialisers:
        func()
except ValueError:
    logging.debug('unallocated array(s) detected on import of module \
        "type_graphics_bc".')

for func in _dt_array_initialisers:
    func()
