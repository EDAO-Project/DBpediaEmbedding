./download-dbpedia.sh dbpedia_files.txt

echo
echo 'Download done'
echo

result_dir="embeddings/"
ttl_file=dbpedia.ttl
mkdir $result_dir

echo 'Generating RDF embeddings...'
path="${result_dir}${ttl_file:0:-4}"
docker build -t embeddings .
docker run --rm -v ${PWD}:/data embeddings -graph files/$ttl_file -walkDirectory $path

echo 'Done'
