WMSDIR := /home/wvn/dirs/projects/wm-standalone

main:
	${MAKE} -C ${HYWALL} -f makefile
	${MAKE} -C ${WMSDIR} -f makefile

clean:
	${MAKE} -C ${HYWALL} -f makefile clean
	${MAKE} -C ${WMSDIR} -f makefile clean
