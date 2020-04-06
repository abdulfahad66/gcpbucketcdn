gsutil mb gs://$bucket
gsutil cp sally.jpg gs://$bucket
gsutil cp index.html gs://$bucket

gsutil iam ch allUsers:objectViewer gs://$bucket