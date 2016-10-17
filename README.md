


minikube start

eval $(minikube docker-env)

./build.sh

kubectl create -f deployment.yml
kubectl create -f service.yml

PORT=$(kubectl get service hello-service -o go-template='{{(index .spec.ports 0).nodePort}}')
IP=$(minikube ip)

curl $IP:$PORT
