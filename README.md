# Server Deployment Template

## Containers

| **Name** | **Description** | **Ports** | **Links** |
|---|---|---|---|
| [adguardhome](./docker-compose.yml#L5)  | Network-wide ads & trackers blocking DNS server. | `${DNS_INTERFACE}:53:53/tcp`, `${DNS_INTERFACE}:53:53/udp`, `${DNS_INTERFACE}:853:853/tcp`, `0.0.0.0:80:80`, `0.0.0.0:443:443` | [Docker Hub](https://hub.docker.com/r/adguard/adguardhome) |
| [certbot](./docker-compose.yml#L23)  | ACME client with DNS challenge support for Cloudflare. |  | [Docker Hub](https://hub.docker.com/r/certbot/dns-cloudflare) |
| [zabbix-agent](./docker-compose.yml#L38)  | Zabbix agent for monitoring. |  | [Docker Hub](https://hub.docker.com/r/zabbix/zabbix-agent) |



## Configuration
The `.env` file stores environment variables to make starting the containers easy. This should be modified to match your needs before starting the containers for the first time.

| **Variable** | **Description** | **Example** |
|---|---|---|
| `PUID` | System user ID to run containers as. | `1000` |
| `PGID` | System group ID to run containers as. | `1000` |
| `DNS_INTERFACE` | Interface to listen for DNS requests on. | `10.0.0.0` |
| `CONFIG_DIR` | Location of config storage on host. | `.config` |
| `DATA_DIR` | Location of data storage on host. | `.data` |
| `ZBX_SERVER_HOST` | Zabbix monitoring server host. | `zabbix.example.com` |
| `ZBX_REFRESHACTIVECHECKS` | Zabbix active check interval. | `60` |


## Contributions

First of all, **thanks for your interest!** But due to this being a personal project of mine tailored to my own needs, I cannot accept pull requests on this repository. Please feel free to fork and tweak this project though.