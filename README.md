# Terraform Modules Monorepo

This repository contains a collection of reusable Terraform modules for managing Azure infrastructure. Each module is organized under the [`_tfmodules/`](./_tfmodules/) directory and is designed to be used independently or as building blocks for larger deployments.

## Project Structure

- [`_tfmodules/`](./_tfmodules/): Core directory containing all Terraform modules.
  - `_apps/`: Application-related modules.
  - `aad_v1/`: Azure Active Directory resources.
  - `acr_v1/`, `acr_upload_v1/`, `acr_uploads_v1/`: Azure Container Registry modules.
  - `aks_v1/`, `aks_add_nodepool_v1/`: Azure Kubernetes Service modules.
  - `appsrv_v1/`, `appsrv_linux_v1/`, `appsrv_plan_v1/`: App Service and App Service Plan modules.
  - `helm_az_fileshare_pv_v1/`, `helm_ingress_v1/`, `helm_kv_to_secret_v1/`: Helm chart deployment modules.
  - `kv_v1/`, `kv_v2/`: Key Vault modules.
  - `monitoring_v1/`: Monitoring and logging resources.
  - `mysql_flex_v1/`, `mysql_server_v1/`, `mysql_server_v2/`: MySQL server modules.
  - `private_dns_link_v1/`, `private_dns_zone_v1/`, `pvt_dns_zone_v1/`, `pvt_dns_zones_v1/`: Private DNS and networking modules.
  - _...and more._

- [`tfapps/`](./tfapps/): Example or application-specific Terraform configurations.
- [`terraform.exe`](./terraform.exe): Local Terraform binary (optional, for convenience).

## Getting Started

1. **Clone the repository:**
   ```sh
   git clone <repo-url>
   cd terraformnew