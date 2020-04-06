gsutil mb -c standard -l us-east1 gs://$bucket
#gsutil mb -c standard -l southamerica-east1 gs://$bucket

gsutil cp sally.jpg gs://$bucket
gsutil cp index.html gs://$bucket

gsutil iam ch allUsers:objectViewer gs://$bucket
