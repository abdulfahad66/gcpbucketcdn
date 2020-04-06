export bucket="cdn-storage"$(date +%Y%m%d%H%M%S)
# Please prepare your own domain
export domain="hkrevolution.ddns.net"
sh create-bucket.sh
sh create-httplb.sh
