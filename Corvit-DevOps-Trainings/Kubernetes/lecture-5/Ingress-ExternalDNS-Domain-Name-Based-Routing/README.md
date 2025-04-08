# Ingress - Domain Name Based Routing

Important Notes

1- Make AKS Cluster. 
2- Assign Contributer Rights to Managed Identity on both Resource Group (AKS Cluster+ MC)
3- Make Ingress Controller 
4- Make Azure DNS Zone and replace nameservers to the Hostinger (ex. Go Daddy)
5- Configure azure.json for Secret. Use Client ID. Use Resource Group of DNS Zone. 
6- Create K8s Secret from azure.Json file. 
7- Deploy Externel DNS and check logs 
8- Deploy the Whole application 

## Step-01: Introduction
- We are going to implement Domain Name based routing using Ingress
- We are going to use 3 applications for this.

Configure Azure DNS Zone and External DNS First (kubectl create secret generic azure-config-file --from-file=azure.json)

[![Image](https://www.stacksimplify.com/course-images/azure-aks-ingress-domain-name-based-routing.png "Azure AKS Kubernetes - Masterclass")](https://www.udemy.com/course/aws-eks-kubernetes-masterclass-devops-microservices/?referralCode=257C9AD5B5AF8D12D1E1)

## Step-02: Review k8s Application Manifests
- App1 Manifests
- App2 Manifests
- App3 Manifests

## Step-03: Review Ingress Service Manifests
- 01-Ingress-DomainName-Based-Routing-app1-2-3.yml


## Step-04: Deploy and Verify
```t
# Deploy Apps
kubectl apply -R -f kube-manifests/

# List Pods
kubectl get pods

# List Services
kubectl get svc

# List Ingress
kubectl get ingress

# Verify Ingress Controller Logs
kubectl get pods -n ingress-basic
kubectl logs -f <pod-name> -n ingress-basic

# Verify External DNS pod to ensure record set got deleted
kubectl get pods
kubectl logs (external dns logs)


# Verify Record set got automatically deleted in DNS Zones
# Template Command
az network dns record-set a list -g <Resource-Group-dnz-zones> -z <yourdomain.com>

# Replace DNS Zones Resource Group and yourdomain
az network dns record-set a list -g rg -z tahirm6.online

nslookup -type=SOA tahirm6.online
nslookup -type=NS tahirm6.online

nslookup -type=SOA tahirm6.online 8.8.8.8
nslookup -type=NS tahirm6.online 8.8.8.8

nslookup eapp1.tahirm6.online
```

## Step-05: Access Applications
```t
# Access App1
http://eapp1.tahirm6.online/app1/index.html

# Access App2
http://eapp2.tahirm6.online/app2/index.html

# Access Usermgmt Web App
http://eapp3.tahirm6.online
Username: admin101
Password: password101

```

## Step-06: Clean-Up Applications
```t
# Delete Apps
kubectl delete -R -f kube-manifests/

# Verify Record set got automatically deleted in DNS Zones
# Template Command
az network dns record-set a list -g <Resource-Group-dnz-zones> -z <yourdomain.com>

# Replace DNS Zones Resource Group and yourdomain
az network dns record-set a list -g dns-zones -z kubeoncloud.com
```

## Ingress Annotation Reference
- https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/

## Other References
- https://docs.nginx.com/nginx-ingress-controller/

