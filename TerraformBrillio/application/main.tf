resource "aws_placement_group" "test" {
  name     = "test"
  strategy = "cluster"
}



resource "aws_autoscaling_group" "example" {
  availability_zones = data.terraform_remote_state.networking.outputs.azs_subnets
  desired_capacity   = 1
  max_size           = 2
  min_size           = 1

  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.ami-info.id
      }

      override {
        instance_type     = "c4.large"
        weighted_capacity = "3"
      }

      override {
        instance_type     = "c3.large"
        weighted_capacity = "2"
      }
    }
  }
}
resource "aws_launch_template" "ami-info" {
  name_prefix   = "test"
  image_id      = lookup(var.ami-data, "image_id")
  instance_type = lookup(var.ami-data, "instance_type")
}

resource "aws_lb" "example" {
  name               = "example"
  load_balancer_type = "application"

  subnet_mapping {
    subnet_id            = "subnet-0fb367581a6e0a773"
    private_ipv4_address = "10.1.1.1"
  }

  subnet_mapping {
    subnet_id            = "subnet-0af44d40c56d19019"
    private_ipv4_address = "10.0.128.1"
  }
}

