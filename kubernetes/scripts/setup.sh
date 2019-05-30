CLUSTER_NAME=quick-cluster
DEPLOYMENT_NAME=upload-node
INNER_PORT=3000
OUTER_PORT=3000

gcloud container clusters create $CLUSTER_NAME
gcloud container clusters get-credentials $CLUSTER_NAME

kubectl run $DEPLOYMENT_NAME --image gcr.io/kubernetesproba/uploadtest-node --port $INNER_PORT
kubectl expose deployment $DEPLOYMENT_NAME --type LoadBalancer --port $INNER_PORT --target-port $OUTER_PORT
