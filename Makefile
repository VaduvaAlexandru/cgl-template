RST2ODTOPTS = \
				  --create-links \
				  --create-sections \
				  --date \
				  --footnote-backlinks \
				  --rfc-references \
				  --section-numbering \
				  --stylesheet=./.cgl-style.odt \
				  --table-border-thickness=0 \
				  --time \
				  --toc-entry-backlinks \
				  --generate-oowriter-toc

RST2PDFOPTS = \
				  --first-page-on-right \
				  --inline-footnotes \
				  --smart-quotes=1 \
				  --stylesheets="./rst2pdf.css"

RST2HTMLOPTS = \
					--compact-lists \
					--embed-stylesheet \
					--file-insertion-enabled \
					--footnote-backlinks \
					--footnote-references=superscript \
					--leave-comments \
					--leave-footnote-reference-space \
					--rfc-base-url=http://www.faqs.org/rfcs/ \
					--rfc-references \
					--section-numbering \
					--table-style=borderless \
					--toc-entry-backlinks

all: registration

registration: registration.stamp
	#rst2odt ${RST2ODTOPTS} --title "CGL_5.0_Registration_Template" cgl_5.0_registration-template.rst cgl_5.0_registration-template.odt
	#rst2pdf $(RST2PDFOPTS) cgl_5.0_registration-template.rst -o cgl_5.0_registration-template.pdf
	rst2pdf cgl_5.0_registration-template.rst -o cgl_5.0_registration-template.pdf
	#rst2html $(RST2HTMLOPTS) cgl_5.0_registration-template.rst cgl_5.0_registration-template.html

registration.stamp:
		touch .registration.stamp

clean:
	rm -f .*.stamp *.odt *.html *.pdf
