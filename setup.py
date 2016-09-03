from setuptools import setup, Distribution
#from pip.req import parse_requirements



#install_reqs = parse_requirements('requirements.txt', session=False)


class BinaryDistribution(Distribution):
    def is_pure(self):
        return False



setup(
      name='pychidg',
      version='0.1.0',
      #version='0.1.0post19',
      description='A Python Interface to ChiDG: A Chimera-based, discontinuous Galerkin solver',
      long_description='A framework for solving partial differential equations using the discontinuous Galerkin discretization and Chimera overset grids. The framework includes a finite element library along with nonlinear and linear solvers, preconditioners and temporal advancement algorithms',
      url='https://github.com/nwukie/PyChiDG',
      author='Nathan A. Wukie',
      author_email='nwukie@gmail.com',
      license='BSD 3-Clause',
      keywords='finite element DG galerkin chimera',
      packages=['chidg'],
      package_data={'chidg':['_chidg.so']},
      scripts=['scripts/chidggen'],
      install_requires=[
        'f90wrap>=0.0.0',
      ],
#      dependency_links=['git+https://github.com/jameskermode/f90wrap#egg=f90wrap-0.1.0'],
      distclass=BinaryDistribution
      )
