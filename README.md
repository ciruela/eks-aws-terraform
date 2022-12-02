Prerequisites
---
- aws-cli `v2.2.32 `
- Python `v3.8.8`
- Terraform `v1.0.5`
- Istioctl `v1.11.1`
- AWS 'terraform' profile configured
---

Deployment
---
1- Navigate to the `eks` directory at /infra/aws/terraform/eks

2- terraform init

3- terraform plan --var-file main.tfvars -out plans/plan-X

4- terraform apply plans/plan-X

5- aws eks --region us-east-1 update-kubeconfig --name Azumo --profile terraform


ISTIO

1- istioctl install

2- to install kiali/jaeger/prometheus/grafana use the `samples` files in the istio directory

3- Enable Istio Injection to default namespace with `kubectl label namespace default istio-injection=enabled`

Cert-Manager

1- Installation 

`kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.5.3/cert-manager.yamlapiVersion: v1
kind: Secret
metadata:
  name: cloudflare-api-token-secret
type: Opaque
stringData:
  api-token: <API Token>`


DELETE CLUSTER
1- First delete all custom resources 
2- Uninstall Istio: istioctl x uninstall --purge
3- Destroy infra with Terraform: terraform destroy --var-file main.tfvars
