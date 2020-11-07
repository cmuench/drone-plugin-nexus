# Drone Nexus Artifact Upload Plugin

## Pipeline Example

### RAW Repository

```yaml
kind: pipeline
type: docker
name: default

steps:
- name: upload_artifact
  image: cmuench/drone-nexus
  settings:
    url: http://your-nexus-server.example
    curl_options: -v  # optional
    username: admin
    password: your-password
    repository_type: raw
    repository: my-repo
    asset_file: myfile.txt
    mimetype: "text/plain" # options -> if empty we will try to detect
    remote_path: foo/bar/zoz
    remote_filename: myfile.txt
```
