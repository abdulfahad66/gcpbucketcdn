gcloud compute http-health-checks delete http-basic-check -q
gcloud compute forwarding-rules delete https-content-rule --global -q
gcloud compute target-https-proxies delete https-lb-proxy -q
gcloud compute url-maps delete urlmap -q
gcloud compute backend-buckets delete backend -q
gcloud beta compute ssl-certificates delete ssl-web -q
dir=$(gsutil ls | tail -1 | sed 's:.*cdn-storage/::')
gsutil rm -r $dir