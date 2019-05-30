CLUSTER_NAME=quick-cluster

kubectl delete service upload-node
gcloud container clusters delete quick-cluster $CLUSTER_NAME
