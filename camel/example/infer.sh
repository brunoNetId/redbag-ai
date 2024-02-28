# set -x

# TensorFlow Server
server=http://localhost:8080

# image=../../workbench/samples/bali-tea.jpeg
image=../../workbench/samples/banana.jpeg

curl -v \
-H "content-type: application/json" \
$server"/price" \
-d '
{
   "instances":
   [
	{
	   "b64": "'$(base64 -i $image)'"
	}
   ]
}' | jq
