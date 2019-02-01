# first introduce a newline between adjacent form feed characters
# use *gnu* csplit to split the pages on form feed
gcsplit -n 4 -f page0 _source/pages.txt "//" {1100}
# remove the form feed characters
# entity replacements for '<' '>'
for f in `ls page0*`; do
	tr -d '\f' < $f | sed -e 's/</\&lt;/g' | sed -e 's/>/\&gt;/' > _includes/$f.md
	rm $f
done
