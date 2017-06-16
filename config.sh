# DIND subnet (/16 is always used)
DIND_SUBNET=10.192.0.0

# Apiserver port
APISERVER_PORT=${APISERVER_PORT:-8080}

# Number of nodes. 0 nodes means just one master node.
# In case of NUM_NODES=0 'node-role.kubernetes.io/master' taint is removed
# from the master node.
NUM_NODES=${NUM_NODES:-2}

# Use non-dockerized build
# KUBEADM_DIND_LOCAL=

# Use prebuilt DIND image
DIND_IMAGE="${DIND_IMAGE:-mirantis/kubeadm-dind-cluster:v1.6}"

# Set to non-empty string to enable building kubeadm
# BUILD_KUBEADM=y

# Set to non-empty string to enable building hyperkube
# BUILD_HYPERKUBE=y

# download kubectl on the host
# Set automatically based on DIND image version tag
# if image version tag is of the form vNNN.NNN
# LOCAL_KUBECTL_VERSION="${LOCAL_KUBECTL_VERSION:-v1.6}"

# Set custom URL for Dashboard yaml file
# DASHBOARD_URL="${DASHBOARD_URL:-https://rawgit.com/kubernetes/dashboard/bfab10151f012d1acc5dfb1979f3172e2400aa3c/src/deploy/kubernetes-dashboard.yaml}"

# CNI plugin to use (bridge, flannel, calico, weave). Defaults to 'bridge'
# In case of 'bridge' plugin, additional hacks are employed to bridge
# DIND containers together.
CNI_PLUGIN="${CNI_PLUGIN:-bridge}"

# Set SKIP_SNAPSHOT to non-empty string to skip making the snapshot.
# This may be useful for CI environment where the cluster is never
# restarted after it's created.
# SKIP_SNAPSHOT=y
