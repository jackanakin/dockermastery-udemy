echo "Create single pod similar to 'docker run --name nginx nginx'"
kubectl run nginx --image nginx
kubectl delete pod nginx
echo "Create deployment"
kubectl create deployment --image=nginx nginx-app
kubectl get pods
kubectl get all
echo "Remove the deployment"
kubectl delete deployment nginx-app
