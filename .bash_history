curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
aws s3 mb s3://projectmmm.in.k8s --region us-east-2
aws s3 mb s3://project122.in.k8s --region us-east-2
aws s3 mb s3://projectmod.in.k8s --region us-wast-2
aws s3 mb s3://projectmod.in.k8s --region us-east-2
vim .bashrc
source .bashrc
ssh-keygen
kops create cluster --state=${KOPS_STATE_STORE} --node-count=2 --master-size=t3.medium --node-size=t3.medium --zones=us-east-2a --name=${KOPS_CLUSTER_NAME} --dns private --master-count 1
kops validate cluster
kops update cluster --yes --admin
 kops validate cluster
kubectl get pods
kubectl get nodes
vim pod-definition1.yml
kubectl apply -f pod-definition1.yml 
kubectl get pods
kubectl get pods -o wide
kubectl delete -f pod-definition1.yml 
vim pod-definition2.yml 
kubectl apply -f pod-definition2.yml
vim pod-definition2.yml 
kubectl apply -f pod-definition2.yml
kubectl get pods -o wide
kubectl describe pods postgres-pod
kubectl delete -f pod-definition2.yml
vim pod-definition3.yml
kubectl apply -f pod-definition3.yml
vim pod-definition3.yml
kubectl apply -f pod-definition3.yml
vim pod-definition3.yml
kubectl apply -f pod-definition3.yml

kubectl apply -f pod-definition3.yml
kubectl get pods -o wide
kops create cluster --state=${KOPS_STATE_STORE} --node-count=2 --master-size=t3.medium --node-size=t3.medium --zones=us-east-2a --name=${KOPS_CLUSTER_NAME} --dns private --master-count 1
kops update cluster --yes --admin
kops validate cluster
kubectl get pods
kubectl get nodes
kubectl run --image nginx web
kubectl get pods
kubectl get pods -o wide
kubectl describe pods web | less
kubectl delete pods web
kubectl run --image mysql:5 mydb --env MYSQL_ROOT_PASSWORD=madhav
kubectl get pods
kubectl exec -it mydb bash
kubectl delete pods mydb
kubectl get pods
kubectl get images
kubectl images
ls
pod-definition4.yml
vim pod-definition4.yml
kubectl apply -f pod-definition4.yml
kubectl get pods -o wide
kubectl get namespace
vim namespace.yml
kubectl apply -f namespace.yml
kubectl get namespace
vim pod-ns-def.yml
kubectl apply -f pod-ns-def.yml 
kubectl get pods
kubectl delete pod httpd
kubectl delete pod httpd-pod
kubectl get pods
kubectl get pods -n test-ns
cat pod-ns-def.yml 
vim pod-ns-def.yml
kubectl apply -f pod-ns-def.yml 
kubectl get pods
kubectl get pods -n test-ns
kubectl delete pods gost-pod
kubectl delete pods gost-pod -n test-ns
vim replication-controller.yml
kubectl apply -f replication-controller.yml 
cat replication-controller.yml 
vim replication-controller.yml 
kubectl apply -f replication-controller.yml 
vim replication-controller.yml 
kubectl apply -f replication-controller.yml 
kubectl get rc
kubectl get pods 
kubectl get pods -o wide
kubectl scale --replicas=4 -f replication-controller.yml 
kubectl get pods -o wide
kubectl scale --replicas=1 -f replication-controller.yml 
kubectl get pods -o wide
ls
vim replicaset.yml
kubectl apply -f replicaset.yml
vim replicaset.yml 
kubectl apply -f replicaset.yml
kubectl get podsssss
kubectl get pods
kubectl delete -f replication-controller.yml 

kubectl apply -f replicaset.yml
vim replicaset.yml 
kubectl apply -f replicaset.yml
kubectl get pods -o wide
vim replicaset.yml 
kubectl get pods -o wide
kubectl apply -f replicaset.yml
kubectl get pods -o wide
kubectl scale --replicas=1 replicaset.yml 
kubectl scale --replicas=1 -f replicaset.yml 
kubectl get pods -o wide
kubectl delete -f replicaset.yml 
vim deployment1.yml
kubectl apply -f deployment1.yml 
vim deployment1.yml
kubectl apply -f deployment1.yml 
vim deployment1.yml
kubectl apply -f deployment1.yml 
vim deployment1.yml
kubectl apply -f deployment1.yml 
cat deployment1.yml 
vim deployment1.yml
cat deployment1.yml 
kubectl apply -f deployment1.yml 
vim deployment1.yml
kubectl apply -f deployment1.yml 
cat deployment1.yml 
vim deployment1.yml
kubectl apply -f deployment1.yml 
vim deployment1.yml
kubectl apply -f deployment1.yml 
vim deployment1.yml
kubectl apply -f deployment1.yml 
vim deployment1.yml
kubectl apply -f deployment1.yml 
cat deployment1.yml 
vim deployment1.yml
cat deployment1.yml 
kubectl apply -f deployment1.yml 
vim deployment1.yml
kubectl apply -f deployment1.yml 
kubectl get all
kubectl delete -f deployment1.yml 
ls
git init
sudo apt-get update
apt-get update
apt-get install git
sudo yum-get update
sudo yum update
sudo yum install git
git init
sudo yum install git
git --version
git init
git config --global
git init
ls -a
cd .git
ls
cat congig |less
cd ..
git add .
git status
git reset
git status
git add  deployment1.yml
        namespace.yml
        pod-definition1.yml
        pod-definition2.yml
        pod-definition3.yml
        pod-definition4.yml
        pod-ns-def.yml
        replicaset.yml
        replication-controller.yml
git status
git add pod-definition1.yml 
git add pod-definition2.yml 
git add pod-definition3.yml 
git add pod-definition4.yml 
git add  pod-ns-def.yml replicaset.yml replication-controller.yml
git status
ls
git add namespace.yml
git status
git commit -m "asdf"
git remote add origin https://github.com/Madhavaraochalla/Kubernetes.git
git push -u origin master
