# set -x

# TensorFlow Server
server=http://tf-server:8501

image=./samples/bali-tea.jpeg

curl -v \
-H "content-type: application/json" \
$server"/v1/models/redbag:predict" \
-d '
{
   "instances":
   [
	{
	   "b64": "'$(base64 -w 0 $image)'"
	}
   ]
}'
