# APTLY MACHINE
variable "aptly_machine_names" {
  description = "Host names for aptly machines"
  type = list(string)
  default = ["aptly000"]
}

variable "aptly_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "aptly000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "aptly_machine_ansible_group" {
  default = "aptly"
}


# arangodbmaster MACHINE
variable "arangodbmaster_machine_names" {
  description = "Host names for arangodbmaster machines"
  type = list(string)
  default = ["arangodbmaster000"]
}

variable "arangodbmaster_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "arangodbmaster000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "arangodbmaster_machine_ansible_group" {
  default = "arangodbmaster"
}


# arangodbnode MACHINE
variable "arangodbnode_machine_names" {
  description = "Host names for arangodbnode machines"
  type = list(string)
  default = ["arangodbnode000"]
}

variable "arangodbnode_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "arangodbnode000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "arangodbnode_machine_ansible_group" {
  default = "arangodbnode"
}


# consul MACHINE
variable "consul_machine_names" {
  description = "Host names for sample machines"
  type = list(string)
  default = ["consul000"]
}

variable "consul_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "consul000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "consul_machine_ansible_group" {
  default = "consul"
}


# dnsforwarder MACHINE
variable "dnsforwarder_machine_names" {
  description = "Host names for dnsforwarder machines"
  type = list(string)
  default = ["dns000"]
}

variable "dnsforwarder_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "dnsforwarder000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "dnsforwarder_machine_ansible_group" {
  default = "dnsforwarder"
}


# elasticsearchmaster MACHINE
variable "elasticsearchmaster_machine_names" {
  description = "Host names for elasticsearchmaster machines"
  type = list(string)
  default = ["elasticsearchmaster000"]
}

variable "elasticsearchmaster_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "elasticsearchmaster000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "elasticsearchmaster_machine_ansible_group" {
  default = "elasticsearchmaster"
}


# elasticsearchnode MACHINE
variable "elasticsearchnode_machine_names" {
  description = "Host names for elasticsearchnode machines"
  type = list(string)
  default = ["elasticsearchnode000"]
}

variable "elasticsearchnode_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "elasticsearchnode000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "elasticsearchnode_machine_ansible_group" {
  default = "elasticsearchnode"
}


# flink MACHINE
variable "flink_machine_names" {
  description = "Host names for flink machines"
  type = list(string)
  default = ["flink000"]
}

variable "flink_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "flink000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "flink_machine_ansible_group" {
  default = "flink"
}


# gitlab MACHINE
variable "gitlab_machine_names" {
  description = "Host names for gitlab machines"
  type = list(string)
  default = ["gitlab000"]
}

variable "gitlab_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "gitlab000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "gitlab_machine_ansible_group" {
  default = "gitlab"
}


# hadoop MACHINE
variable "hadoop_machine_names" {
  description = "Host names for hadoop machines"
  type = list(string)
  default = ["hadoop000"]
}

variable "hadoop_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "hadoop000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "hadoop_machine_ansible_group" {
  default = "hadoop"
}


# influxdb MACHINE
variable "influxdb_machine_names" {
  description = "Host names for influxdb machines"
  type = list(string)
  default = ["influxdb000"]
}

variable "influxdb_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "influxdb000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "influxdb_machine_ansible_group" {
  default = "influxdb"
}


# ipa MACHINE
variable "ipa_machine_names" {
  description = "Host names for ipa machines"
  type = list(string)
  default = ["ipa000"]
}

variable "ipa_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "ipa000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "ipa_machine_ansible_group" {
  default = "ipa"
}


# jenkinsmaster MACHINE
variable "jenkinsmaster_machine_names" {
  description = "Host names for jenkinsmaster machines"
  type = list(string)
  default = ["jenkinsmaster000"]
}

variable "jenkinsmaster_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "jenkinsmaster000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "jenkinsmaster_machine_ansible_group" {
  default = "jenkinsmaster"
}


# jenkinsnode MACHINE
variable "jenkinsnode_machine_names" {
  description = "Host names for jenkinsnode machines"
  type = list(string)
  default = ["jenkinsnode000"]
}

variable "jenkinsnode_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "jenkinsnode000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "jenkinsnode_machine_ansible_group" {
  default = "jenkinsnode"
}


# kafka MACHINE
variable "kafka_machine_names" {
  description = "Host names for sample machines"
  type = list(string)
  default = ["kafka000"]
}

variable "kafka_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "kafka000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "kafka_machine_ansible_group" {
  default = "kafka"
}


# nginx MACHINE
variable "nginx_machine_names" {
  description = "Host names for sample machines"
  type = list(string)
  default = ["nginx000"]
}

variable "nginx_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "nginx000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "nginx_machine_ansible_group" {
  default = "nginx"
}


# nifi MACHINE
variable "nifi_machine_names" {
  description = "Host names for nifi machines"
  type = list(string)
  default = ["nifi000"]
}

variable "nifi_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "nifi000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "nifi_machine_ansible_group" {
  default = "nifi"
}


# openvpn MACHINE
variable "openvpn_machine_names" {
  description = "Host names for openvpn machines"
  type = list(string)
  default = ["openvpn000"]
}

variable "openvpn_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "openvpn000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "openvpn_machine_ansible_group" {
  default = "openvpn"
}


# pki MACHINE
variable "pki_machine_names" {
  description = "Host names for sample machines"
  type = list(string)
  default = ["pki000"]
}

variable "pki_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "pki000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "pki_machine_ansible_group" {
  default = "pki"
}


# rundeck MACHINE
variable "rundeck_machine_names" {
  description = "Host names for rundeck machines"
  type = list(string)
  default = ["rundeck000"]
}

variable "rundeck_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "rundeck000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "rundeck_machine_ansible_group" {
  default = "rundeck"
}


# sonarqube MACHINE
variable "sonarqube_machine_names" {
  description = "Host names for sonarqube machines"
  type = list(string)
  default = ["sonarqube000"]
}

variable "sonarqube_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "sonarqube000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "sonarqube_machine_ansible_group" {
  default = "sonarqube"
}


# spark MACHINE
variable "spark_machine_names" {
  description = "Host names for spark machines"
  type = list(string)
  default = ["spark000"]
}

variable "spark_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "spark000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "spark_machine_ansible_group" {
  default = "spark"
}


# vault MACHINE
variable "vault_machine_names" {
  description = "Host names for vault machines"
  type = list(string)
  default = ["vault000"]
}

variable "vault_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "vault000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "vault_machine_ansible_group" {
  default = "vault"
}


# zookeeper MACHINE
variable "zookeeper_machine_names" {
  description = "Host names for zookeeper machines"
  type = list(string)
  default = ["zookeeper000"]
}

variable "zookeeper_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "zookeeper000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "zookeeper_machine_ansible_group" {
  default = "zookeeper"
}


# SAMPLE MACHINE
variable "sample_machine_names" {
  description = "Host names for sample machines"
  type = list(string)
  default = ["sample000"]
}

variable "sample_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "sample000" = "AAAAA001useast1-public-us-east-1a-sn"
  }
}

variable "sample_machine_ansible_group" {
  default = "sample"
}
