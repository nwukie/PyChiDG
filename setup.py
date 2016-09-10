#from setuptools import setup                # We want setuptools setup so we can build a wheel
from numpy.distutils.core import setup, Extension  # We want numpy.distutils Extension for f2py extension



f90wrapped_files = ['pychidg/f90wrapped/f90wrap_type_chidg.f90',
                    'pychidg/f90wrapped/f90wrap_type_dict.f90',
                    'pychidg/f90wrapped/f90wrap_type_graphics_bc.f90',
                    'pychidg/f90wrapped/f90wrap_type_gather_graphics_bcs.f90']


f90wrap_interface = Extension(name='pychidg._pychidg',
                              sources=f90wrapped_files,
                              library_dirs=['/usr/local/chidg/lib','/usr/local/lib'],
                              libraries=['coredg'],
                              include_dirs=['/usr/local/chidg/include','/usr/local/include'],
                              )


setup(
      name='pychidg',
      version='0.1.0',
      description="A Python Interface to ChiDG: \
                   A Chimera-based, discontinuous Galerkin solver",
      long_description="A framework for solving partial differential equations using the \
                        discontinuous Galerkin discretization and Chimera overset grids. \
                        The framework includes a finite element library along with nonlinear \
                        and linear solvers, preconditioners and temporal advancement algorithms",
      url='https://github.com/nwukie/PyChiDG',
      author='Nathan A. Wukie',
      author_email='nwukie@gmail.com',
      license='BSD 3-Clause',
      keywords='finite element DG galerkin chimera',
      packages=['pychidg'],
      scripts=['scripts/pychidg_setup','scripts/pychidg'],
#      install_requires=['f90wrap>=0.0.0'],
      ext_modules=[f90wrap_interface],
      )
