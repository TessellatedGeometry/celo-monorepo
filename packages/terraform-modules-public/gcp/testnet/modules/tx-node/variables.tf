variable block_time {
  type        = number
  description = "Number of seconds between each block"
}

variable celo_env {
  type        = string
  description = "Name of the Celo environment"
}

variable gcloud_project {
  type        = string
  description = "Name of the Google Cloud project to use"
}

variable instance_type {
  description = "The instance type"
  type        = string
  default     = "n1-standard-1"
}

variable ethstats_host {
  type        = string
  description = "Ethstats url or IP address"
}

variable genesis_content_base64 {
  type        = string
  description = "Content of the genesis file encoded in base64"
}

variable geth_exporter_docker_image_repository {
  type        = string
  description = "Repository of the geth exporter docker image"
}

variable geth_exporter_docker_image_tag {
  type        = string
  description = "Tag of the geth exporter docker image"
}

variable geth_node_docker_image_repository {
  type        = string
  description = "Repository of the geth docker image"
}

variable geth_node_docker_image_tag {
  type        = string
  description = "Tag of the geth docker image"
}

variable geth_verbosity {
  type        = number
  description = "Verbosity of the tx-nodes"
}

variable in_memory_discovery_table {
  type        = bool
  description = "Specifies whether to use an in memory discovery table"
}

variable network_id {
  type        = number
  description = "The network ID number"
}

variable network_name {
  type        = string
  description = "Name of the GCP network the tx-node VM is in"
}

variable tx_node_count {
  type        = number
  description = "Number of tx-nodes to create"
}

variable bootnodes_base64 {
  type        = string
  description = "Bootnodes ethereum address encoded as base64"
}

variable reset_geth_data {
  type        = bool
  description = "Specifies if the existing chain data should be removed while creating the instance"
  default     = true
}

variable txnode_max_peers {
  type        = number
  description = "Max number of peers to connect with"
  default     = 120
}

variable attestation_signer_addresses {
  type        = list(string)
  description = "The address to use for signing attestation requests"
}

variable attestation_signer_account_passwords {
  type        = list(string)
  description = "Array with the attestation_signer account passwords"
}

variable attestation_signer_private_keys {
  type        = list(string)
  description = "Array with the attestation_signer private keys"
}

variable service_account_scopes {
  type        = list(string)
  description = "Scopes to apply to the service account which all nodes in the cluster will inherit"
}