turbot_account_id = "abu"
environment       = "dev"
envgroup          = "nonprod"
public_zone       = "enterprise.nonprod.mheducation.com"

DEFAULT_TAGS = {
  account     = "abu"
  platform    = "enterprise"
  application = "roster"
  environment = "dev"
}

# ECS Cluster variable definitions
cluster_min_size = 1
cluster_max_size = 5
instance_type    = "t3a.medium"
cluster_target_capacity = 100 // disable capacity reservation

# ECS Service variable definitions
task_exec_role_for_nr_arn = "arn:aws:iam::225511486681:role/roster-dev-nr-task-exec-role"
task_min_count_green = 1
task_max_count_green = 15
task_min_count_blue = 0
task_max_count_blue = 0
task_cpu_target_percent = 90
task_memory_target_percent = 90
task_healthcheck_timeout_in_seconds = 120
blue_service_target_tracking_request_limit = 1500
green_service_target_tracking_request_limit = 1500

# ALB Optional Cert Alternate Names (for migrating existing cluster)
public_alt_names = [
	"roster-dev.mheducation.com"
]
private_alt_names = []

event_replay_lambda_name = "roster-event-replay"
event_replay_lambda_environment = {
  SSM_PATHS = "/enterprise/roster/dev/event-replay,/enterprise/roster/dev"
}

db_app_user = "mheapp"

redis_instance_type = "cache.t2.micro"
redis_cluster_family = "redis7"
redis_engine_version = "7.0"
redis_nodes = "1"
redis_failover = "false"

apigw_invoke_stage="dev"
