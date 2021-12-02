./download-dbpedia.sh dbpedia_files.txt

echo
echo 'Download done'
echo

for file in files/*
do
    echo 'Generating RDF embeddings for' $file
    java -jar rdf2vec/jrdf2vec.jar -graph $file
    echo 'Done'
    echo
done
