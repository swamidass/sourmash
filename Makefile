PYTHON ?= python

all:
	$(PYTHON) setup.py build_ext -i

clean:
	$(PYTHON) setup.py clean --all
	-rm -f *.so

test: all
	$(PYTHON) -m pytest sourmash_lib.py sourmash_signature.py test__minhash.py
