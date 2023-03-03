//ec2 instance
resource "aws_instance" "my-ec2"{
    ami="ami-0c0933ae5caf0f5f9"
    instance_type="t2.micro"

    tags = {
        Name = "salmaEc2"
    }
}

resource  "aws_eip" "my-eip"{
    vpc = true
}

resource "aws_eip_association" "associate"{
    instance_id=aws_instance.my-ec2.id
    allocation_id=aws_eip.my-eip.id

}

