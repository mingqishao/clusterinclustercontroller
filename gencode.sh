#!/bin/bash

../code-generator/generate-groups.sh all \
    "github.com/mingqishao/clusterinclustercontroller/pkg/generated" \
    "github.com/mingqishao/clusterinclustercontroller/pkg/apis" \
    clusterincluster:v1alpha1

cp $GOPATH/src/github.com/mingqishao/clusterinclustercontroller/pkg/apis/clusterincluster/v1alpha1/zz_generated.deepcopy.go ./pkg/apis/clusterincluster/v1alpha1/zz_generated.deepcopy.go
rsync -av --progress --delete $GOPATH/src/github.com/mingqishao/clusterinclustercontroller/pkg/generated/ ./pkg/generated