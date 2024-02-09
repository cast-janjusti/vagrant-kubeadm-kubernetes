alias k=kubectl
alias refresh-code="sudo rm -rf /host; sudo mkdir -p /host; sudo chown 1000:1000 /host; cp -r /host-original/* /host/; cd ..; cd -"
alias la="ls -lah"
alias watch-k='watch -c -n1 "echo -n '\''Calico: '\'' ; calicoctl get globalnetworkpolicy | tail -n +2 | tr '\''\n'\'' '\''/'\'' | tr -d '\''[:space:]'\''; echo; (kubectl get namespaces -o=jsonpath='\''{range .items[*]}({.metadata.name}) {end}'\'' && echo && kubectl get pods --all-namespaces) | grep --color=always -E '\''(airflow|spark|nexus|metrics).*-ns'\''"'

alias ka="kubectl config set-context --current --namespace=airflow-ns"