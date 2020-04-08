if [ -z "$TRAVIS_TAG" ];
then
    echo "Skipping deploy because this is not a tagged commit"
    echo $TRAVIS_PYTHON_VERSION
else
    echo "Deploying to PyPI..."
    pip3 install twine
    twine upload  -u DomDF -p ${pypi_password} --skip-existing wheelhouse/*.whl
fi