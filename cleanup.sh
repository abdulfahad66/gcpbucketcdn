gcloud compute http-health-checks delete http-basic-check -q
gcloud compute backend-buckets delete backend -q
gcloud beta compute ssl-certificates delete ssl-web -q
gcloud compute url-maps delete urlmap -q
gcloud compute target-https-proxies delete https-lb-proxy -q
gcloud compute forwarding-rules delete https-content-rule --global -q