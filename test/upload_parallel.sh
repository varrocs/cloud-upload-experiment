PARALLEL_UPLOADS=40
seq $PARALLEL_UPLOADS | parallel ./upload_single.sh {}
