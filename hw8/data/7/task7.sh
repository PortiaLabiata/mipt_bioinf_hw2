insertion=$(cat clinvar_20250330.vcf | grep "CLNVC=Insertion" | awk '{print($1, length($4), $4)}' | sort -k2 -r | head -n1)
insertion_chr=$(echo $insertion | cut -f1 -d' ')
deletion=$(cat clinvar_20250330.vcf | grep "CLNVC=Deletion" | awk '{if ($1 != $(($insertion_chr))) {print($1, length($4), $4)}}' | sort -k2 -r | head -n1)
echo "Longest insertion:" > fout
echo $(echo $insertion | cut -f3 -d' ') >> fout
echo "Longest deletion:" >> fout
echo $(echo $deletion | cut -f3 -d' ') >> fout
