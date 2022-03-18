# DBpediaEmbedding

A repository for generating RDF graph embeddings on RDF graphs using RDF2Vec.

RDF2Vec embedding generation code can be found <a href="https://github.com/dwslab/jRDF2Vec">here</a> and is based on <a href="https://arxiv.org/pdf/2009.07659.pdf">this</a> paper.

## Generating Embeddings

Run the `run.sh` script that wraps all the necessary commmands to generate embeddings

```
    bash run.sh
```

The script downloads a set of DBpedia files, which are listed in dbpedia_files.txt.
It then runs the builds a Docker image and runs a container of that image that generates the embeddings for the DBpedia graph defined by the DBpedia files.

A folder `files` is created containing all the downloaded DBpedia files, and a folder `embeddings/dbpedia` is created containing the embeddings in `vectors.txt` along a set of random walk files.

## Run Time of Embeddings Generation

Generating embeddings can take more than a day, but it depends on the number of DBpedia files chosen to be downloaded. Following are some basic run time statistics when embeddings are generated on a high-end machine:

- **Total**: 1 day, 8 hours, 52 minutes, 41 seconds
- **Walk generation**: 0 days, 7 minutes, 24 minutes, 36 seconds
- **Training**: 1 day, 1 hour, 28 minutes, 5 seconds

## Parameters Used

Here is listed the parameters used to generate the pretrained embeddings at <a href="zenodo.com">Zenodo</a>:

- **Number of walks per entity**: 100
- **Depth (hops) per walk**: 4
- **Walk generation mode**: RANDOM_WALKS_DUPLICATE_FREE
- **Threads**: # of processors / 2
- **Training mode**: sg
- **Embeddings vector dimension**: 200
- **Minimum word2vec word count**: 1
- **Sample rate**: 0.0
- **Training window size**: 5
- **Training epocs**: 5
