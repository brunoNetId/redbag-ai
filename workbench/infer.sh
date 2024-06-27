# set -x

# TensorFlow Server
server=http://tf-server:8501/v1/models/redbag:predict

# Camel Application Server
# server=http://price:80/price

image=./samples/banana.jpeg
# image=./samples/bali-tea.jpeg

curl -s \
-H "content-type: application/json" \
$server \
-d '
{
   "instances":
   [
	{
	   "b64": "'$(base64 -w 0 $image)'"
	}
   ]
}' | jq
