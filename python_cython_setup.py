from setuptools import setup
from Cython.Build import cythonize

import os
def find_pyx(path='.'):
    pyx_files = []
    for root, dirs, filenames in os.walk(path):
        for fname in filenames:
            if fname.endswith('.pyx'):
                pyx_files.append(os.path.join(root, fname))
    return pyx_files

setup(
    name='Hello world app',
    ext_modules=cythonize(find_pyx()),
    zip_safe=False,
)
