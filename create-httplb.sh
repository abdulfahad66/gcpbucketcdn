# create health check
gcloud compute http-health-checks create http-basic-check

# create backend-bucket
gcloud compute backend-buckets create backend \
    --gcs-bucket-name $bucket \
    --enable-cdn

# create ssl cert
gcloud beta compute ssl-certificates create ssl-web --domains $domain

# create url map
gcloud compute url-maps create urlmap \
    --default-backend-bucket=backend \
    --global

# create a target HTTPs proxy to route request to URL map
gcloud compute target-https-proxies create https-lb-proxy \
    --ssl-certificates=ssl-web \
    --url-map=urlmap

# create a global forwarding rule to handle and route incoming requests
gcloud compute forwarding-rules create https-content-rule \
        --global \
        --target-https-proxy https-lb-proxy \
        --ports 443

# show the forwarding rule
echo "Here are all the forwarding rule"
gcloud compute forwarding-rules list