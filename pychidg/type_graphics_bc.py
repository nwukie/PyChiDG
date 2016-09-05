"""
Module type_graphics_bc


Defined at type_graphics_bc.f90 lines 1-240

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
    
    def get_nproperties(self):
        """
        nprop = get_nproperties(self)
        
        
        Defined at type_graphics_bc.f90 lines 111-116
        
        Parameters
        ----------
        self : Graphics_Bc_T
        
        Returns
        -------
        nprop : int
        
        """
        nprop = _pychidg.f90wrap_get_nproperties(self=self._handle)
        return nprop
    
    def get_property_name(self, iprop):
        """
        pname = get_property_name(self, iprop)
        
        
        Defined at type_graphics_bc.f90 lines 134-140
        
        Parameters
        ----------
        self : Graphics_Bc_T
        iprop : int
        
        Returns
        -------
        pname : str
        
        """
        pname = _pychidg.f90wrap_get_property_name(self=self._handle, iprop=iprop)
        return pname
    
    def get_option_key(self, iprop, ioption):
        """
        key = get_option_key(self, iprop, ioption)
        
        
        Defined at type_graphics_bc.f90 lines 162-169
        
        Parameters
        ----------
        self : Graphics_Bc_T
        iprop : int
        ioption : int
        
        Returns
        -------
        key : str
        
        """
        key = _pychidg.f90wrap_get_option_key(self=self._handle, iprop=iprop, \
            ioption=ioption)
        return key
    
    def get_option_value(self, iprop, key):
        """
        val = get_option_value(self, iprop, key)
        
        
        Defined at type_graphics_bc.f90 lines 189-195
        
        Parameters
        ----------
        self : Graphics_Bc_T
        iprop : int
        key : str
        
        Returns
        -------
        val : float
        
        """
        val = _pychidg.f90wrap_get_option_value(self=self._handle, iprop=iprop, key=key)
        return val
    
    def get_noptions(self, iprop):
        """
        noptions = get_noptions(self, iprop)
        
        
        Defined at type_graphics_bc.f90 lines 213-219
        
        Parameters
        ----------
        self : Graphics_Bc_T
        iprop : int
        
        Returns
        -------
        noptions : int
        
        """
        noptions = _pychidg.f90wrap_get_noptions(self=self._handle, iprop=iprop)
        return noptions
    
    def get_name(self):
        """
        bcname = get_name(self)
        
        
        Defined at type_graphics_bc.f90 lines 232-237
        
        Parameters
        ----------
        self : Graphics_Bc_T
        
        Returns
        -------
        bcname : str
        
        """
        bcname = _pychidg.f90wrap_get_name(self=self._handle)
        return bcname
    
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
