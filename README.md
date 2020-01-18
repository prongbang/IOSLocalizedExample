#  IOSLocalizedExample

## Setup localized

* Add `Localizations`

![Screenshot](Screenshots/1.png)


* New Group `Localization`

![Screenshot](Screenshots/2.png)

* New String File `Localizable.strings`

![Screenshot](Screenshots/3.png)

* Select `Localize…`

![Screenshot](Screenshots/4.png)

* Add `R.swift` to Podfile

```
pod 'R.swift'
```

* New Run Script Phase

![Screenshot](Screenshots/5.png)

* Drag the new Run Script phase above the Compile Sources phase and below Check Pods Manifest.lock

![Screenshot](Screenshots/6.png)

* Expand Run Script and paste the following script:

```
"$PODS_ROOT/R.swift/rswift" generate "$SRCROOT/R.generated.swift"
```

![Screenshot](Screenshots/7.png)


* Add `$TEMP_DIR/rswift-lastrun` to the `Input Files`

![Screenshot](Screenshots/8.png)

* Add `$SRCROOT/R.generated.swift` to the `Output Files`

![Screenshot](Screenshots/9.png)

* Build your project

![Screenshot](Screenshots/10.png)

* Result




