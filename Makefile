all: report.html

clean:
	rm -f words.txt letters_count.tsv histogram_unsorted.png histogram_sorted.png report.md report.html

report.html: report.rmd letters_count.tsv histogram_unsorted.png histogram_sorted.png
	Rscript -e 'rmarkdown::render("$<")'

letters_count.tsv histogram_unsorted.png histogram_sorted.png: count_letters.R words.txt
	Rscript $<
	rm Rplots.pdf

words.txt:
	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
