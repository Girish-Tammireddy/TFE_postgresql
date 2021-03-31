provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_db_instance" "tfe_postfresqldb" {
  allocated_storage    = 100
  db_subnet_group_name = var.db-subnetgrp
  engine               = "postgres"
  engine_version       = "11.5"
  identifier           = "TFE-test"
  instance_class       = "db.m5.large"
  password             = "password"
  skip_final_snapshot  = true
  storage_encrypted    = true
  username             = "postgres"
}
