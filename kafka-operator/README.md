# Kafka Operator

Create a namespace for the operator:

```
kubectl create ns kafka-operator 
```

This outputs:

```
namespace/kafka-operator created
```


Get the operator manifests and apply them:

```
curl https://strimzi.io/install/latest?namespace=kafka-operator | kubectl apply -f -
```

This prints:

```
% Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 1004k    0 1004k    0     0  42695      0 --:--:--  0:00:24 --:--:-- 42695
clusterrolebinding.rbac.authorization.k8s.io/strimzi-cluster-operator-kafka-broker-delegation created
serviceaccount/strimzi-cluster-operator created
customresourcedefinition.apiextensions.k8s.io/kafkatopics.kafka.strimzi.io created
clusterrole.rbac.authorization.k8s.io/strimzi-entity-operator created
clusterrole.rbac.authorization.k8s.io/strimzi-kafka-broker created
rolebinding.rbac.authorization.k8s.io/strimzi-cluster-operator-watched created
rolebinding.rbac.authorization.k8s.io/strimzi-cluster-operator-entity-operator-delegation created
rolebinding.rbac.authorization.k8s.io/strimzi-cluster-operator-leader-election created
clusterrole.rbac.authorization.k8s.io/strimzi-cluster-operator-global created
clusterrole.rbac.authorization.k8s.io/strimzi-cluster-operator-leader-election created
clusterrole.rbac.authorization.k8s.io/strimzi-cluster-operator-namespaced created
customresourcedefinition.apiextensions.k8s.io/kafkas.kafka.strimzi.io created
deployment.apps/strimzi-cluster-operator created
customresourcedefinition.apiextensions.k8s.io/kafkaconnectors.kafka.strimzi.io created
customresourcedefinition.apiextensions.k8s.io/strimzipodsets.core.strimzi.io created
clusterrolebinding.rbac.authorization.k8s.io/strimzi-cluster-operator created
customresourcedefinition.apiextensions.k8s.io/kafkaconnects.kafka.strimzi.io created
customresourcedefinition.apiextensions.k8s.io/kafkarebalances.kafka.strimzi.io created
customresourcedefinition.apiextensions.k8s.io/kafkamirrormaker2s.kafka.strimzi.io created
clusterrolebinding.rbac.authorization.k8s.io/strimzi-cluster-operator-kafka-client-delegation created
customresourcedefinition.apiextensions.k8s.io/kafkanodepools.kafka.strimzi.io created
customresourcedefinition.apiextensions.k8s.io/kafkausers.kafka.strimzi.io created
rolebinding.rbac.authorization.k8s.io/strimzi-cluster-operator created
clusterrole.rbac.authorization.k8s.io/strimzi-cluster-operator-watched created
clusterrole.rbac.authorization.k8s.io/strimzi-kafka-client created
customresourcedefinition.apiextensions.k8s.io/kafkabridges.kafka.strimzi.io created
configmap/strimzi-cluster-operator created
customresourcedefinition.apiextensions.k8s.io/kafkamirrormakers.kafka.strimzi.io created
```

Wait for the deployment `strimzi-cluster-operator` to stabilize.