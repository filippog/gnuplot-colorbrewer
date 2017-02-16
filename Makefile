all: examples/sequential.png examples/diverging.png examples/qualitative.png

examples/sequential.png: examples/sequential.plt $(wildcard sequential/*.plt)
	(cd examples && gnuplot $(notdir $<))

examples/diverging.png: examples/diverging.plt $(wildcard diverging/*.plt)
	(cd examples && gnuplot $(notdir $<))

examples/qualitative.png: examples/qualitative.plt $(wildcard qualitative/*.plt)
	(cd examples && gnuplot $(notdir $<))
