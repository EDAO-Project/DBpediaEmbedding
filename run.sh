./download-dbpedia.sh dbpedia_files.txt

echo
echo 'Download done'
echo

for file in files/*
do
    echo 'Generating RDF embeddings for' $file
    name=${file::-4}
    mkdir $name
    docker run --rm -v ${PWD}:/data ghcr.io/dwslab/jrdf2vec -graph $file -walkDirectory $name
    echo 'Done'
    echo
done
