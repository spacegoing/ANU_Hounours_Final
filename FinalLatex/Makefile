# CONFERENCE PAPER MAKEFILE
# Stephen Gould <stephen.gould@anu.edu.au>

# Add image sources here. The makefile will automatically convert
# these to .esp files for latex. Images are assumed to be in the
# figures subdirectory.
JPG_SRC = sgould.jpg sgould_bw.jpg
PNG_SRC = 

PNG_SRC += synthetic/groundtruth.png synthetic/data.png \
	synthetic/pairwise.png synthetic/iteration3.png \
	synthetic/highorder.png synthetic_asymm/groundtruth.png \
	synthetic_asymm/data.png synthetic_asymm/pairwise.png \
	synthetic_asymm/iteration3.png synthetic_asymm/highorder.png

PNG_SRC += synth_corrupt/synth_corrupt_1_1.png synth_corrupt/synth_corrupt_1_2.png \
	synth_corrupt/synth_corrupt_1_3.png synth_corrupt/synth_corrupt_1_4.png \
	synth_corrupt/synth_corrupt_2_1.png synth_corrupt/synth_corrupt_2_2.png \
	synth_corrupt/synth_corrupt_2_3.png synth_corrupt/synth_corrupt_2_4.png \
	synth_corrupt/synth_corrupt_3_1.png synth_corrupt/synth_corrupt_3_2.png \
	synth_corrupt/synth_corrupt_3_3.png synth_corrupt/synth_corrupt_3_4.png

PNG_SRC += grabCut/326038.png grabCut/person5.png grabCut/124080.png \
	grabCut/24077.png

PNG_SRC += weizmann/horse165.png weizmann/horse232.png \
	weizmann/horse239.png weizmann/horse250.png \
	weizmann/horse268.png weizmann/horse276.png


# All latex document here. Document is assumed to be in the current
# directory.
DOC_SRC = linEnvLearn-PAMI-2013.tex linEnvLearn-PAMI-2013-appendix.tex

# Do not modify anything below unless you know what you're doing.

FIG_SRC := ${addprefix figures/,$(JPG_SRC:.jpg=.eps)} \
	${addprefix figures/,$(PNG_SRC:.png=.eps)}

all: $(FIG_SRC) $(DOC_SRC:.tex=.dvi)
figs: $(FIG_SRC)
pdf: $(DOC_SRC:.tex=.pdf)

.PHONY: clean
.SUFFIXES: .tex .ps .pdf .jpg .png .eps

.png.eps:
	convert $< $@

.jpg.eps:
	convert $< $@

.tex.dvi:
	latex $<
	bibtex $* || true
	latex $<
	latex $<
	latex $<

.tex.ps:
	latex $<
	bibtex $* || true
	latex $<
	latex $<
	latex $<
	dvips $* -t letter -Ppdf -G0 -o $@

.ps.pdf:
	ps2pdf14 $< $@

clean:
	-rm *.out
	-rm *.ps
	-rm *.pdf
	-rm *.dvi
	-rm *.log
	-rm *.aux
	-rm *.bbl
	-rm *.blg
	-rm *~

ieee:
	dvips -j0 -Ppdf -Pdownload35 -G0 -t letter -D 1200 -Z -mode ljfzzz $(DOC_SRC:.tex=.dvi) -o - | gs -q -dNOPAUSE -dBATCH \
	 -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress\
	 -dCompatibilityLevel=1.4 \
	 -dCompressPages=true -dUseFlateCompression=false \
	 -sPAPERSIZE=letter \
	 -dSubsetFonts=true -dEmbedAllFonts=true \
	 -dProcessColorModel=/DeviceGray \
	 -dDetectBlends=true -dOptimize=true \
	 -dDownsampleColorImages=true -dColorImageResolution=1200 \
	 -dColorImageDownsampleType=/Average -dColorImageFilter=/FlateEncode \
	 -dAutoFilterColorImages=false -dAntiAliasColorImages=false \
	 -dColorImageDownsampleThreshold=1.50000 \
	 -dDownsampleGrayImages=true -dGrayImageResolution=1200 \
	 -dGrayImageDownsampleType=/Average -dGrayImageFilter=/FlateEncode \
	 -dAutoFilterGrayImages=false -dAntiAliasGrayImages=false \
	 -dGrayImageDownsampleThreshold=1.50000 \
	 -dDownsampleMonoImages=true -dMonoImageResolution=1200 \
	 -dMonoImageDownsampleType=/Average -dMonoImageFilter=/FlateEncode \
	 -dAutoFilterMonoImages=false -dAntiAliasMonoImages=false \
	 -dMonoImageDownsampleThreshold=1.50000 \
	 -sOutputFile=$(DOC_SRC:.tex=.pdf) \
	 -c save pop - 
