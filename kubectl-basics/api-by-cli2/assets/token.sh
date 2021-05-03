echo "dashboard token:"
kubectl get secret -n kube-system -o custom-columns=NAME:.metadata.name,TOKEN:.data.token | grep default-token | awk '{print $2}' | base64 -d
echo -e "\n"