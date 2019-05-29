PARALLEL_UPLOADS=10
seq $PARALLEL_UPLOADS | parallel ./upload_single.sh {}
