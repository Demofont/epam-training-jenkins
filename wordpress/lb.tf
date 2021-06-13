resource "aws_lb" "lb" {
  name               = "lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb.id]
  subnets            = [aws_subnet.public.id, aws_subnet.public2.id]

  tags = {
    Name = "webserver_loadbalancer"
  }
}

resource "aws_lb_target_group" "wb_lb_tg" {
  name     = "wblgtb"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.my_vpc.id
}

resource "aws_lb_target_group_attachment" "lb_rt" {
  target_group_arn = aws_lb_target_group.wb_lb_tg.arn
  target_id        = aws_instance.myec2.id
  port             = 80
}