This repo describes swift's automatic linkage of modules if you import them.
This repo was created to support stackoverflow questions.

In this project, we have a main target (`LinkerTests`) and a dependent dynamic framework (`Dynamic`).

If you run the project, you will see the following dyld library load:

```
dyld: loaded: {DerivedDataPath}/Build/Products/Debug-iphonesimulator/Dynamic.framework/Dynamic
```

This dyld library load happens due to `import Dynamic` in `AppDelegate.swift` despite of the following:
1. `Link Binary With Libraries` build phase is empty
2. `CLANG_MODULES_AUTOLINK` is set to false
