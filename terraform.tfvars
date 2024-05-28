region = "eu-west-1"
ami = "ami-0776c814353b4814d"
instance_type = "t2.micro"
my_ip = "91.130.2.122"

user_data = <<-EOT
                #!/bin/bash
                sudo apt-get update -y
                sudo apt-get upgrade -y
                sudo apt-get install -y docker.io
                sudo systemctl start docker
                sudo docker run -d -p 8082:8000 jeremy9k/tanto:v01
                sudo docker run --rm -p 8083:8000 pygoat/pygoat:latest
                sudo docker run -d -p 8080:80 jeremy9k/foodwmagic:v0.1
                sudo docker run -d -p 8081:8000 jeremy9k/nodetest:v01
                sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
                sudo docker clone https://github.com/Jeremieon/Jeremlix.git
                sudo chmod +x /usr/local/bin/docker-compose
                EOT
instance_name = "my-web-shop-02"

#clone
#replace allowed with public_ip
#install docker compose :- docker-compose up -d -y