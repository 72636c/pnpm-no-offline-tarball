# pnpm-no-offline-tarball

## v7.19.0

```diff
PNPM_VERSION=7.19.0 ./install.sh
+ sha256:cf8762bf8f378cc87c8e51c99a22815dcd9b86e6af6bd4d08ef8f7bb95fa1be8
+ Lockfile is up to date, resolution step is skipped
+ Progress: resolved 1, reused 0, downloaded 0, added 0
+ .                                        |   +1 +
-  WARN  EXDEV: cross-device link not permitted, link '/workdir/.pnpm-store/v3/files/1d/0688424f69c0e7322aeb720e4e28d9af3b5a7a2dc18b8b198156e377a61a6e05bc824528fca0f8e61ac39b137a028029ff82e5229ad400a3cc22e2bdb687ad-exec' -> '/workdir/node_modules/.pnpm/@types+node@18.11.18/node_modules/@types/_tmp_1_5f239c41367837d0d5e393e5dda39a27/LICENSE'
+ Falling back to copying packages from store
+ Packages are copied from the content-addressable store to the virtual store.
+   Content-addressable store is at: /workdir/.pnpm-store/v3
+   Virtual store is at:             node_modules/.pnpm
+ Done in 721ms
+ Progress: resolved 1, reused 1, downloaded 0, added 1, done
```

[pnpm/pnpm#5318](https://github.com/pnpm/pnpm/issues/5318) covers the `WARN`.

## v7.20.0

```diff
PNPM_VERSION=7.20.0 ./install.sh
+ sha256:3f5b5c6528de1325c8898d42d88a0344954785f21e60e480401793e04ac0fa82
+ Lockfile is up to date, resolution step is skipped
+ Progress: resolved 1, reused 0, downloaded 0, added 0
+ .                                        |   +1 +
+ undefined
-  ERR_PNPM_NO_OFFLINE_TARBALL  A package is missing from the store but cannot download it in offline mode. The missing package may be downloaded from https://registry.npmjs.org/@types/node/-/node-18.11.18.tgz.
```
