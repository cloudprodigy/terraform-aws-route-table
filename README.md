This module creates Route table and associate subnet(s)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.52.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Provide appropriate environment name | `string` | n/a | yes |
| <a name="input_route_table_name"></a> [route\_table\_name](#input\_route\_table\_name) | Route table name | `string` | n/a | yes |
| <a name="input_route_table_tags"></a> [route\_table\_tags](#input\_route\_table\_tags) | Tags to be applied on route table | `map(string)` | `{}` | no |
| <a name="input_routes"></a> [routes](#input\_routes) | Configuration block of routes. | `list(map(string))` | `[]` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs to be passed to route table | `list(string)` | `[]` | no |
| <a name="input_tag_application"></a> [tag\_application](#input\_tag\_application) | Application tag | `string` | n/a | yes |
| <a name="input_tag_team"></a> [tag\_team](#input\_tag\_team) | Team tag | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_route_table_id"></a> [route\_table\_id](#output\_route\_table\_id) | Route table ID |
