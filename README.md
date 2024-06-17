# drone-nextcloud-talk

Example usage:

```yaml
kind: pipeline
type: docker
name: NextCloud Talk Example

steps:
 
  ...

  - name: Talk notification
    image: macon/drone-nextcloud-talk
    settings:
      nc_token: <token (channel_id)>
      nc_secret: <shared secret>
      nc_endpoint: <nextcloud endpoint (https://cloud.mycompany.com)>
      message: |
        `${DRONE_REPO}` build #${DRONE_BUILD_NUMBER} 
        status: **${DRONE_BUILD_STATUS}**

        [commit](${DRONE_COMMIT_LINK})
    when:
      status: [success, failure, changed]
```

