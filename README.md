## Requirements

Container requires at runtime:

- `REPO_URL` env variable
  - git clone URL
- `/root/.ssh/id_rsa`
  - SSH key with push access to repository
- `/gitsync/worktree`
  - contents to sync

## Provides

`/bin/push.sh` script is the entry point.

## Running with Docker

In order to push `/home/myuser/notes` to the 'example/somerepo' GitHub repository:

```sh
docker run --rm -it --name gitsync \
  -e REPO_URL=git@github.com:example/somerepo.git \
  -v /home/myuser/.ssh/id_rsa:/root/.ssh/id_rsa \
  -v /home/myuser/notes:/gitsync/worktree \
  czak/gitsync
```
