resource "aws_sqs_queue" "week10-sqs" {
  name                      = "week10-sqs"
  delay_seconds             = 0
  max_message_size          = 1024
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
#  redrive_policy = jsonencode({
#    deadLetterTargetArn = aws_sqs_queue.terraform_queue_deadletter.arn
#    maxReceiveCount     = 4
#  })

#  tags = {
#    Environment = "production"
#  }
}
