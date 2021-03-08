#!/bin/bash

pods=$(kubectl get pods | grep $1)

for word in $pods;do
	if [[ "$word" == *"$1"* ]]; then
		gnome-terminal --tab --title=$word -- bash -c "kubectl logs -f $word;bash"
	fi
done
