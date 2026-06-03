.PHONY: generate clean

generate:
	xcodegen generate

clean:
	rm -rf TemplateUIKit.xcodeproj
