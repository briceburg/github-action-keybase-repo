# github-action-keybase-repo

Shallow clones a keybase repository to the [inputs.target](./action.yml) directory.

## Example usage

```yml
- name: clone keybase repository
  id: keybase
  uses: briceburg/github-action-keybase-repo@v0
  with:
    keybase_username: ${{ secrets.KEYBASE_USERNAME }}
    keybase_paperkey: ${{ secrets.KEYBASE_PAPERKEY }}
    repo: keybase://team/acme/secrets_repo

- name: list contents of keybase repository
  run: |
    ls -la ${{ steps.keybase.outputs.target }}
     
```

The [integration workflow](./.github/workflows/integration.yml) shows real-world usage, including output consumption.

### Inputs

name | :ballot_box_with_check: | description
--- | --- | ---
keybase_username | **required** | Keybase Username, e.g. `pat-acme`
keybase_paperkey | **required** | Keybase Paper Key (for oneshot mode), e.g. `full moon sunday blurb`
repo | **required** | Repository name.`keybase://team/acme/secrets_repo` or `https://github.com/acme/secrets_repo.git`
target | _optional_ | Target directory (can be absolute or relative to workspace). If not provided, will checkout to the github runner temporary directory (`env.RUNNER_TEMP`) which empties after the job completes. :thought_balloon: It's recommended to copy into a [.gitignored](https://git-scm.com/docs/gitignore) target.

### Outputs

name | description
--- | ---
target | Path to repository checkout.
