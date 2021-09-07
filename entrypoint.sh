#!/bin/sh
set -e

CLUSTER_NAME=$1
DEPLOYMENT_FILE=$2
NS=$3


if [ -z $CLUSTER_NAME ]; then
  echo "CLUSTER_NAME is required"
  exit 1
fi

if [ -z $DEPLOYMENT_FILE ]; then
  echo "DEPLOYMENT_FILE is required"
  exit 1
fi

if [ -z $NS ]; then
  echo "Namespace is required"
  exit 1
fi


echo "Config cluster files... aws eks update-kubeconfig --name $CLUSTER_NAME"
aws eks update-kubeconfig --name $CLUSTER_NAME

# Execute the file
echo "KUBERNETES COMMAND:"
echo "kubectl apply -k $DEPLOYMENT_FILE -n $NS"
kubectl apply -k $DEPLOYMENT_FILE -n $NS
echo ""




