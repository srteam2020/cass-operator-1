gcloud beta container --project "gcp-dmc" clusters create "standard-cluster-1" \
    --region "us-west2" \
    --no-enable-basic-auth \
    --cluster-version "1.13.6-gke.6" \
    --machine-type "n1-standard-1" \
    --image-type "COS" \
    --disk-type "pd-ssd" \
    --disk-size "50" \
    --metadata disable-legacy-endpoints=true \
    --scopes "https://www.googleapis.com/auth/cloud-platform" \
    --num-nodes "1" \
    --enable-stackdriver-kubernetes \
    --enable-ip-alias \
    --network "projects/gcp-dmc/global/networks/default" \
    --subnetwork "projects/gcp-dmc/regions/us-west2/subnetworks/default" \
    --default-max-pods-per-node "110" \
    --enable-legacy-authorization \
    --addons HorizontalPodAutoscaling,HttpLoadBalancing \
    --enable-autoupgrade \
    --enable-autorepair