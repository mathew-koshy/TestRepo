app = "kmsat"

region = "us-east-1"

container_port = 3000

domain        = "internal.knowbe4.com"
domain_prefix = "kmsat-development."

# Tthis should use remote state onces its moved
elasticsearch_host = "search-kmsat-development-eimkx7eepedrrs7dnequkkpqxm.us-east-1.es.amazonaws.com"

elasticsearch_arn = "arn:aws:es:us-east-1:823193265824:domain/kmsat-development"

oem_name = "docker"

es_namespace = "knowbe4"

keywest_base_url = "https://api.updates.knowbe4.com/admin/packages/"

second_chance_package_identifier = "com.knowbe4.secondchance.installer.us"

keywest_channel = "development"

cache_namespace = "dev_cache"

# We think this is unused - MDuren & MarcS
sidekiq_namespace = "dev_sidekiq"

phisher_app_url = "https://staging.phisher.knowbe4.com"

phisher_api_url = "https://api-staging.phisher.knowbe4.com"

# Task Counts
task_desired = {
  web            = 1
  landing        = 1
  console        = 1
  worker-primary = 2
}

task_minimum = {
  web            = 1
  landing        = 1
  console        = 1
  worker-primary = 1
}

task_maximum = {
  web            = 1
  landing        = 1
  console        = 1
  worker-primary = 1
}

cpu = {
  web            = 256
  landing        = 256
  console        = 2048
  worker-primary = 128
}

hard_mem_limit = {
  web            = 2048
  landing        = 2048
  console        = 4096
  worker-primary = 1024
}

sidekiq_maxmem = {
  web            = 0 # not relevant
  landing        = 0 # not relevant
  console        = 3072
  worker-primary = 768
}

timeout = {
  dropkik-fallback-sqs = 900
}

cloudfront_enabled = true

cloudfront_aliases = ["kmsat-development.internal.knowbe4.com"]

primary_worker_command = ["bundle", "exec", "sidekiq", "-C", "config/sidekiq-ondemand.yml", "-e", "production"]

ccm_app_url = "dev.ccm.knowbe4.com"

additional_cert_domains = []

reply-to_upload_bucket_notifications = true

eec_events_upload_bucket_notifications = true

modstore_app_url = "dev.modstore.knowbe4.com"

modstore_elb_url = "elb-dev.modstore.knowbe4.com"

scim_tenant_url = "https://dev.scim.knowbe4.com"

enable_mixpanel = "|ENABLE_MIXPANEL|"

ssl_cert = "internal.knowbe4.com"

enable_harpocrates = false

vis_url = "dev.vis-api.knowbe4.com"

slack_url = "dev.api-slack.knowbe4.com"

teams_url = "dev.api-teams.knowbe4.com"

gchat_url = "dev.api-google-chat.knowbe4.com"

uis_url = "dev.uis-api.knowbe4.com"

analytics_url = "dev.analytics-api.knowbe4.com"

orchestration_url = "dev.orchestration-api.knowbe4.com"

reporting_url = "dev.reporting-api.knowbe4.com"

dropkik_triggers_default_max_concurrency = 3

dropkik_timeout = 90

cdrms_url = "dev.cdrms-api.knowbe4.com"

zenka_enabled = false

enable_dropkik_logging = false

insided_sso_url = "sso.api.almostinsided.com"
insided_api_url = "api2-eu-west-1.almostinsided.com"

insided_customer = "knowbe4-en-staging"
insided_role_id  = "12"

db_user = {
  web     = "kmsat_web"
  worker  = "kmsat_worker"
  dropkik = "kmsat_dropkik"
}

phish_connect_domain = "phish-connect.internal.knowbe4.com"

dropkik_triggers_max_concurrency_map = {
  "TestScheduleWorker"                             = 3
  "Phishing::SendCampaignEmailWorker"              = 3
  "Phishing::SendPendingCampaignRecipientsWorker"  = 3
  "Training::UpdateLastEnrollmentIdWorker"         = 3
  "Users::ImportBatchWorker"                       = 3
  "Modstore::AccountCategoryRecommendationsWorker" = 3
  "DownloadCenter::CsvGeneratorWorker"             = 3
  "DownloadCenter::PdfGeneratorWorker"             = 3
  "Piq::CsvGenerator"                              = 3
  "Piq::PdfGenerator"                              = 3
  "ScheduledReports::GenerateReportRetryWorker"    = 3
  "ScheduledReports::GenerateReportWorker"         = 3
  "Users::UpdateGroupNamesWorker"                  = 3
}
