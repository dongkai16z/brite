#BRITE Makefile.  April 2002

all:	buildc++ buildjava exe
 
clean:  c++clean javaclean guiclean	

buildc++:
	@if test -f C++/Makefile; then\
	 (cd C++; make) ; \
	 (make buildgui);\
	fi

c++clean:
	@if test -f C++/Makefile; then\
	 (cd C++; make clean); \
	fi

buildjava:
	@if test -f Java/Makefile; then \
	  (cd Java; make) ; \
	  (make buildgui); \
	fi

javaclean:
	@if test -f Java/Makefile; then\
	  (cd Java; make clean) ;\
	fi

buildgui:
	@if test -f GUI/Makefile; then \
	 (cd GUI; make) ; \
	fi

guiclean: 
	@if test -f GUI/Makefile; then\
	  (cd GUI; make clean ); \
	fi

exe:
	@echo "#!/bin/sh" > brite
	@echo "" >> brite
	@echo "java -classpath Java/:GUI/:. GUI.Brite" >> brite
	@chmod +x brite
