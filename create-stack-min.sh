 #!/bin/sh
[ $# -ne 1 ] && echo Need stack name && exit

 aws cloudformation create-stack --region ap-south-1 \
 --stack-name $1 \
 --timeout-in-minutes 15 \
 --template-body file://single-instance-min.json
