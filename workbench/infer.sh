# set -x

# TensorFlow Server
server=http://tf-server:8501/v1/models/redbag:predict
# server=https://example-bmesegue-dev.apps.sandbox-m3.1530.p1.openshiftapps.com/price

# image=./samples/bali-tea.jpeg
image=./samples/banana.jpeg

curl -v \
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
