.PHONY: generate clean setup

generate:
	xcodegen generate

setup:
	xcodegen generate
	pod install

clean:
	rm -rf TemplateUIKit.xcodeproj TemplateUIKit.xcworkspace Pods Podfile.lock
