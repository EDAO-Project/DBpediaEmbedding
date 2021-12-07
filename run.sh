./download-dbpedia.sh dbpedia_files.txt

echo
echo 'Download done'
echo

result_dir="embeddings/"
ttl_file=dbpedia.ttl
mkdir $result_dir

echo 'Generating RDF embeddings...'
path="${result_dir}${ttl_file:6:-4}"
docker run --rm -v ${PWD}:/data ghcr.io/dwslab/jrdf2vec -graph files/$ttl_file -walkDirectory $path
echo 'Done'
