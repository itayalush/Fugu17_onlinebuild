ipa: all
	@echo Building Fugu17_Developer.ipa
	python3 Server/buildIPA.py Fugu17/Fugu17.ipa Fugu17_Developer.ipa

all %:
	@xattr -rc Tools >/dev/null 2>&1
	$(MAKE) -C Exploits/oobPCI $@
	$(MAKE) -C Fugu15 $@
	$(MAKE) -C FuguInstall $@
