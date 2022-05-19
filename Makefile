FILES   = *.py *.sh LICENSE *.md requirements.txt *.service
#*.prs
VERSION	= 1.0.0

simulator.prs:
		@echo "group=Application" 	>  simulator.prs
		@echo "name=Simulator" 		>> simulator.prs
		@echo "version=$(VERSION)" 	>> simulator.prs

zip:	simulator.prs
ifneq ("$(wildcard simulator-$(VERSION).zip)","")
	rm simulator-$(VERSION).zip
endif
		zip -r9T simulator-$(VERSION).zip $(FILES)

clean:
		rm simulator-$(VERSION).zip