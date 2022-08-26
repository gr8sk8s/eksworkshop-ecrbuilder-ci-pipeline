echo aws cloudformation create-stack \
    --stack-name build-ecr-image-pipeline-stack \
    --template-body file://build-ecr-image-pipeline.cfn.yml \
    --parameters \
    ParameterKey=EksClusterName,ParameterValue=$CLUSTER_NAME \
    ParameterKey=GitHubUser,ParameterValue=$GitHubUser \
    ParameterKey=GitHubToken,ParameterValue=$GitHubToken \
    --capabilities CAPABILITY_IAM