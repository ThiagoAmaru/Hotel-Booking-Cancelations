from setuptools import setup, find_packages

setup(
    name='my_package',
    version='0.1',
    description='A description of my package',
    author='Your Name',
    license='MIT',
    packages=find_packages(),
    install_requires=[
        'numpy',
        'pandas',
        'scikit-learn',
        'xgboost',
        'optuna'
    ]
)