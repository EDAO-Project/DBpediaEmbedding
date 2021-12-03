./download-dbpedia.sh dbpedia_files.txt

echo
echo 'Download done'
echo

result_dir="embeddings/"
mkdir $result_dir

for file in files/*
do
    echo 'Generating RDF embeddings for' $file
    result="${result_dir}${file:6:-4}"
    mkdir result
    docker run --rm -v ${PWD}:/data ghcr.io/dwslab/jrdf2vec -graph $file -walkDirectory $result
    echo 'Done'
    echo
done
