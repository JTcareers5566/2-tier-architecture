resource "aws_instance" "ec2-1" {
    ami = "ami-06744fbd0847bf4f5"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public-sn-1.id
    security_groups = [aws_security_group.SG.id]
    key_name = "Key1"
    user_data = filebase64("user-data.sh")
}

resource "aws_instance" "ec2-2" {
    ami = "ami-06744fbd0847bf4f5"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public-sn-2.id
    security_groups = [aws_security_group.SG.id]
    key_name = "Key1"
    user_data = filebase64("user-data.sh")

}

