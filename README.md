This repo describes swift's automatic linkage of modules if you import them and use symbols from them (see `import Dynamic` in [AppDelegate.swift](https://github.com/Usipov/SwiftAutoFrameworksLinkage/blob/master/LinkerTests/AppDelegate.swift)).
This repo was created to support [this](https://stackoverflow.com/q/54153785/2982854) stackoverflow question.

In this project, we have a main target (`LinkerTests`) and a dependent dynamic framework (`Dynamic`).

If you run the project, you will see the following dyld library load:

```
dyld: loaded: {DerivedDataPath}/Build/Products/Debug-iphonesimulator/Dynamic.framework/Dynamic
```

This dyld library load happens due to `import Dynamic` in `AppDelegate.swift` despite of the following:
1. `Link Binary With Libraries` build phase is empty
2. `CLANG_MODULES_AUTOLINK` is set to false

Update:
To achieve the desired result you should use `-disable-autolink-framework` swift compiler flag:
```
OTHER_SWIFT_FLAGS = "-Xfrontend" "-disable-autolink-framework" "-Xfrontend" "Dynamic"
```
