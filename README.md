# sample-terraform-modules-consumer

A consumer of [sample-terraform-modules](https://github.com/chomatdam/sample-terraform-modules). It pins both modules by git tag so Renovate can open a PR when a module releases.

The modules are tagged per module, for example `greeting-v0.1.0`. Renovate cannot read that prefix by default, so `renovate.json` has one rule per module that tells it how to split the prefix from the version. A consumer of a module published on its own, with plain `vX.Y.Z` tags, would not need these rules.

The sources use `ssh` because both repos are private. Install the Mend Renovate GitHub App on this repo and on `sample-terraform-modules`, so Renovate can read the module tags.

To see it work, merge a `fix:` change to one module in `sample-terraform-modules`, merge that module's release PR, and wait for Renovate to open a PR here that bumps only that module's `ref`.
