provider "aws" {
    region = "us-west-1"

}

locals {
    tags = {
        BuildBy = "terraform..."
        Name = "scott user"

    }
}

resource "aws_iam_user" "scott" {
    name = "scott"
    tags = locals.tags
}