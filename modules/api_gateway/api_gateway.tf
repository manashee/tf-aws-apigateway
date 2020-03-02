data "template_file" codingtips_api_swagger{
  template = "${var.swgfile}"
}



resource "aws_api_gateway_rest_api" "api" {
 name = "${var.api_name}"
 description = "Proxy to handle requests to our API"
 body = "${data.template_file.codingtips_api_swagger.rendered}"
}

