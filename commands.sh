kubectl version

#cd chapter-6
#cd example-1
docker build -t video-streaming:1 --file Dockerfile-prod .

#Check which cluster kubectl connected to
kubectl config current-context

#Use below to connect to local cluster
kubectl config use-context docker-desktop

#To see the list of connection contexts you have configured
kubectl config get-contexts

#Get all pods
kubectl get pods

#Get system pods
kubectl get pods --namespace kube-system

#Deply to local cluster
kubectl apply -f scripts/deploy.yaml

#To check the deployments that are now running:
kubectl get deployments

#To check the services that are now running:
kubectl get services

#Delete the deployment and clean up the cluster
kubectl delete -f scripts/deploy.yaml