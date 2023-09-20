provider "aws" {
  region     = "ap-southeast-1"  # Singapore region
  access_key = "AKIAZFIQ7RW32FKZHPDS"
  secret_key = "kQa8RWKHf64YQp+ucFhi414s5C3JUUgcnnPCINDe"
}

resource "aws_instance" "example" {
  ami           = "ami-072f48a9ed4f1bbda"  # Replace with the correct AMI ID for SUSE Linux Enterprise Server 12 SP5 in Singapore.
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

output "public_ip" {
  value = aws_instance.example.public_ip
}
