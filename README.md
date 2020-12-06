Hello,

This is README file for cloudformation template "ci-cd-codepipeline.cfn".

Purpose of this template is to build dockerfile with given app.py in repository and deploy it over k8s cluster.

Prequisites :
1.) EKS Cluster with name eksworkshop-eksctl
2.) Role CodeBuildKubectlRole
    a.) CloudWatchLogsFullAccess
	b.) AWSCodeBuildAdminAccess
	c.) eks:Describe*"
	with trust relationship  : arn:aws:iam::$(Account.id):role/service-role/codebuild-testBuild-service-role
3.) configmap/aws-auth with CodeBuildKubectlRole & NodeInstanceRole
Example : 
apiVersion: v1
data:
  mapRoles: |
    - rolearn:  arn:aws:iam::$(Account.id):role/NodeInstanceRole
      username: system:node:{{EC2PrivateDNSName}}
      groups:
        - system:bootstrappers
        - system:nodes
    - rolearn: arn:aws:iam::$(Account.id):role/CodeBuildKubectlRole
      username: build
      groups:
        - system:masters
kind: ConfigMap
4.) Fork Github Repository https://github.com/kush2522/eks-workshop-sample-api-service-go.git (Username/Token)

Once the prerequisites are completed, Just upload the template file in cloudformation aws Service and it will take care of the rest. 
