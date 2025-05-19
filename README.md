# Server Deployment Template

## Containers

| **Name** | **Description** | **Ports** | **Links** |
|---|---|---|---|
| [portainer-agent](./docker-compose.monitoring.yml#L5)  | Portainer edge agent. |  | [GitHub](https://github.com/portainer/agent) |
| [zabbix-agent](./docker-compose.monitoring.yml#L21)  | Zabbix agent for monitoring. |  | [Docker Hub](https://hub.docker.com/r/zabbix/zabbix-agent) |
| [adguardhome](./docker-compose.yml#L7)  | Network-wide ads & trackers blocking DNS server. | `${DNS_INTERFACE}:53:53/tcp`, `${DNS_INTERFACE}:53:53/udp`, `${DNS_INTERFACE}:853:853/tcp`, `0.0.0.0:80:80`, `0.0.0.0:443:443` | [Docker Hub](https://hub.docker.com/r/adguard/adguardhome) |
| [certbot](./docker-compose.yml#L25)  | ACME client with DNS challenge support for Cloudflare. |  | [Docker Hub](https://hub.docker.com/r/certbot/dns-cloudflare) |



## Configuration
The `.env` file stores environment variables to make starting the containers easy. This should be modified to match your needs before starting the containers for the first time.

| **Variable** | **Description** | **Example** |
|---|---|---|
| `PUID` | System user ID to run containers as. | `1000` |
| `PGID` | System group ID to run containers as. | `1000` |
| `DNS_INTERFACE` | Interface to listen for DNS requests on. | `10.0.0.0` |
| `CONFIG_DIR` | Location of config storage on host. | `.config` |
| `DATA_DIR` | Location of data storage on host. | `.data` |
| `ZBX_HOSTNAME` | Zabbix server hostname. | `zabbix-server` |
| `ZBX_SERVER_HOST` | Zabbix monitoring server host. | `zabbix.example.com` |
| `ZBX_REFRESHACTIVECHECKS` | Zabbix active check interval. | `60` |


## Contributions

First of all, **thanks for your interest!** But due to this being a personal project of mine tailored to my own needs, I cannot accept pull requests on this repository. Please feel free to fork and tweak this project though.