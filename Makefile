export IOS_DESTINATION=platform=iOS Simulator,OS=latest,name=iPhone 15 Pro

.PHONY: kmp
kmp:
	cd kmp && ./gradlew assembleXCFramework

.PHONY: ios
ios: kmp
	cd ios && xcodebuild -scheme sample -destination "${IOS_DESTINATION}"

.PHONY: clean
clean: clean-ios clean-kmp

.PHONY: clean-kmp
clean-kmp:
	cd kmp && ./gradlew clean

.PHONY: clean-ios
clean-ios:
	cd ios && xcodebuild clean -scheme sample -destination "${IOS_DESTINATION}"
