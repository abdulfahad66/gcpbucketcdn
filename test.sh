export loadbalance_ip=$(gcloud compute forwarding-rules list --limit 1 | sed 's:.*https-content-rule::' | sed -n '2p' | head -n1 | awk '{print $1;}')
for i in {1..3};do curl -s -w "request time:%{time_total}\n" -o /dev/null http://$loadbalance_ip/sally.jpg; done