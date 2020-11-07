# Drone Nexus Artifact Upload Plugin

## Pipeline Example

```yaml
kind: pipeline
type: docker
name: default

steps:
- name: upload_artifact
  image: cmuench/drone-nexus
  settings:
    url: http://your-nexus-server.example
    username: admin
    password: your-password
    repository: raw
    asset_file: myfile.txt
    remote_path: foo/bar/zoz
    remote_filename: myfile.txt
```
