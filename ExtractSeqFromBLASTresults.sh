for f in *.txt; do cat $f | while read l; do echo "$l" > line; cut -f 3 line >name;  cut -f 11 line > seq; echo ">" > head; paste head name >header; sed -i 's/   //g' header; cat header seq >> "$f"_tub_hit_qseq.fa; done; done