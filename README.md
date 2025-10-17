# Server Deployment Template

## Containers

| **Name** | **Description** | **Ports** | **Links** |
|---|---|---|---|
| [traefik](./docker-compose.yml#L9)  | The Cloud Native Application Proxy. | `${DNS_INTERFACE}:853:853/tcp`, `0.0.0.0:80:80`, `0.0.0.0:443:443`, `0.0.0.0:636:636` | [GitHub](https://github.com/traefik/traefik) |
| [adguardhome](./stacks/docker-compose.adguardhome.yml#L5)  | Network-wide ads & trackers blocking DNS server. | `${DNS_INTERFACE}:53:53/tcp`, `${DNS_INTERFACE}:53:53/udp` | [Docker Hub](https://hub.docker.com/r/adguard/adguardhome) |
| [authentik-ldap](./stacks/docker-compose.authentik.yml#L5)  |  | `0.0.0.0:389:3389/tcp` |  |
| [authentik-postgres](./stacks/docker-compose.authentik.yml#L26)  |  |  |  |
| [authentik-redis](./stacks/docker-compose.authentik.yml#L49)  |  |  |  |
| [authentik-server](./stacks/docker-compose.authentik.yml#L66)  | Open Source Identity Provider. |  | [Website](https://goauthentik.io/) |
| [authentik-worker](./stacks/docker-compose.authentik.yml#L108)  |  |  |  |
| [portainer-agent](./stacks/docker-compose.monitoring.yml#L5)  | Portainer edge agent. |  | [GitHub](https://github.com/portainer/agent) |
| [zabbix-agent](./stacks/docker-compose.monitoring.yml#L21)  | Zabbix agent for monitoring. |  | [Docker Hub](https://hub.docker.com/r/zabbix/zabbix-agent) |



## Configuration
The `.env` file stores environment variables to make starting the containers easy. This should be modified to match your needs before starting the containers for the first time.

| **Variable** | **Description** | **Example** |
|---|---|---|
| `HOST` | The main host for web-based services. | `etch` |
| `SMTP_HOST` | SMTP mail server host. | `mail.example.com` |
| `SMTP_USER` | SMTP username. | `postmaster@example.com` |
| `PUID` | System user ID to run containers as. | `1000` |
| `PGID` | System group ID to run containers as. | `1000` |
| `DNS_INTERFACE` | Interface to listen for DNS requests on. | `0.0.0.0` |
| `DATA_DIR` | Location of data storage on host. | `data` |
| `ADMIN_EMAIL` | Administrative email address. | `somebody@example.com` |
| `LAN_SUBNET` | Local subnet. | `10.0.0.0/24` |
| `ZBX_HOSTNAME` | Zabbix server hostname. | `zabbix-server` |
| `ZBX_SERVER_HOST` | Zabbix monitoring server host. | `zabbix.example.com` |
| `ZBX_REFRESHACTIVECHECKS` | Zabbix active check interval. | `60` |


## Contributions

First of all, **thanks for your interest!** But due to this being a personal project of mine tailored to my own needs, I cannot accept pull requests on this repository. Please feel free to fork and tweak this project though.