locals {
  sqs_notification_queue_name       = "notification"
  sqs_group_notification_queue_name = "group-notification"
  sqs_specific_group_notification_queue_name = "specific-group-notification"
}

module "notification_queue" {
  source = "./modules/sqs"
  name   = local.sqs_notification_queue_name
}

module "group_notification_queue" {
  source = "./modules/sqs"
  name   = local.sqs_group_notification_queue_name
}

module "specific-group-notification" {
  source = "./modules/sqs"
  name = local.sqs_specific_group_notification_queue_name
}