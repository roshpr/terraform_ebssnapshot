resource "aws_cloudformation_stack" "ebs_snapshot" {
  name = "ebs-snapshot-for-account"
  capabilities = ["CAPABILITY_IAM"]
  parameters {
    DefaultSnapshotTime = "${var.DefaultSnapshotTime}",
    DefaultRetentionDays = "${var.DefaultRetentionDays}",
    CustomTagName = "${var.EBSCustomTagNameInVolume}",
    AutoSnapshotDeletion = "${var.AutoSnapshotDeletion}",
    DefaultTimeZone = "${var.DefaultTimeZone}"
  }
  template_body = "${file("template/ebs-snapshot-scheduler_21_04_2017.template")}"
  tags {
    "Name" = "ebs-snapshot-stack"
    "Owner" = "aws-nfx"
    "Contact" = "roshpr@gmail.com"
    "Description" = "Lamda functions for EBS snapshot"
  }
}
