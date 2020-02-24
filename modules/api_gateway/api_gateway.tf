data "template_file" codingtips_api_swagger{
  template = "${file("./swagger_file.yml")}"
}



resource "aws_api_gateway_rest_api" "api" {
 name = "api-gateway-test"
 description = "Proxy to handle requests to our API"
 body = "${data.template_file.codingtips_api_swagger.rendered}"
}

output "testout" {
  value = "${aws_api_gateway_rest_api.api}"
}
