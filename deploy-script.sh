#!/bin/bash
# Pod 이름을 찾아서 내용을 바꾸는 스크립트
POD_NAME=$(kubectl get pod -l app=apache-target -o jsonpath='{.items[0].metadata.name}')
kubectl exec $POD_NAME -- bash -c "echo '<h1>자동화 완성! Git에서 가져온 스크립트로 배포 성공!</h1>' > /var/www/html/index.html"
