# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Chart 0.0.19 [DBCall 2.3.0] - 2025-12-05
### Application Versions
- **dbcall**: 2.3.0
### Helm changes
- Added `max_response_size` parameter to application configuration (default: 2097152 bytes / 2MB)
- Added documentation for configuration parameters (`prefetch`, `max_response_size`, `log_level`) in values.yaml
- Parameters can be managed through `global.dbcall` values

## Chart 0.0.18 [DBCall 2.3.0] - 2025-07-18
### Application Versions
- **dbcall**: 2.3.0
### Helm changes
- Added support for custom annotations in application deployments through configurable template values.

## Chart 0.0.17 [DBCall 2.2.0] - 2024-10-16
### Helm changes
- Metrics are enabled by default

## Chart 0.0.16 [DBCall 2.2.0] - 2024-08-23
### Helm changes
- Update `init-wait-resolve-rabbit` - add check if RabbitMQ address is not IP.
- Add `headless-service` for monitoring.
- Update `HPA`.

## Chart 0.0.15 [DBCall 2.1.0] - 2024-08-19
### Helm changes
- Change image registry to `hub.corezoid.com`.


## Chart 0.0.14 [DBCall 2.1.0] - 2024-07-29
### Helm changes
- Move init-wait to values file.


## Chart 0.0.13 [DBCall 2.1.0] - 2024-06-20
### Helm changes
- Changes for imagePullSecrets creation
```
      {{- if .Values.global.imagePullSecrets }}
      imagePullSecrets:
      {{- range $pullSecret := .Values.global.imagePullSecrets }}
        - name: {{ $pullSecret }}
      {{- end }}
      {{- end }}
```


## Chart 0.0.12 [DBCall 2.1.0] - 2024-06-17
### Helm changes
- Add initContainers for Wait RabbtMQ domaine resolve and port access.


## Chart 0.0.11 [DBCall 2.1.0] - 2024-06-11
### Helm changes
- Add affinity and tolerations
- Update image url createion - add new repo.
- Helm chart refactoring


## Chart 0.0.10 [DBCall 2.1.0] - 2023-12-19
### Helm changes
- New application version
- Fixed an issue with a blocking Mutex that was preventing connections to different databases.
- Updated dependencies.
- Alpine version bumped to 1.19.


## Chart 0.0.9 [DBCall 2.0.1] - 2023-11-14
### Helm changes
- New application version


## Chart 0.0.8 [DBCall 2.0.0] - 2023-03-28
### Helm changes
- New application
- Remove `postgres-secret`, `dbcall-service`


## Chart 0.0.6 [DBCall 1.8.9] - 2023-03-28
### Helm changes
- Rename `postgres-secret` name
- Add `annotations` for postgres secret


## Chart 0.0.5 [DBCall 1.8.9] - 2023-03-28
### Helm changes
- New applications versions:
    dbcall - 1.8.9
- Add new label `simulator.observability/scrape: "true"` in ServiceMonitor


## Chart 0.0.4 [DBCall 1.8.7] - 2023-03-28
### Helm changes
- Add ServiceMonitor
- Add affinity for pods


## Chart 0.0.3 [DBCall 1.8.7] - 2023-03-22
### Helm changes
- New applications versions:
    dbcall - 1.8.7
- New Chart version
