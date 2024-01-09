FROM google/cloud-sdk:458.0.1-alpine
RUN gcloud components install gke-gcloud-auth-plugin kubectl -q
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | VERIFY_CHECKSUM=false DESIRED_VERSION=v3.13.3 bash
