FROM google/cloud-sdk:455.0.0-alpine
RUN gcloud components install gke-gcloud-auth-plugin kubectl -q
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | VERIFY_CHECKSUM=false DESIRED_VERSION=v3.13.2 bash
