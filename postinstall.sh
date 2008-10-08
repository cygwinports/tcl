bindir=/usr/bin
includedir=/usr/include
libdir=/usr/lib
sbindir=/usr/sbin
ver=8.4
slot=804

${sbindir}/update-alternatives \
	--install	${bindir}/tclsh					tclsh			${bindir}/tclsh${ver}	${slot}	\
	--slave		${includedir}/tcl.h				tcl.h			${includedir}/tcl${ver}/tcl.h	\
	--slave		${includedir}/tclDecls.h		tclDecls.h		${includedir}/tcl${ver}/tclDecls.h	\
	--slave		${includedir}/tclPlatDecls.h	tclPlatDecls.h	${includedir}/tcl${ver}/tclPlatDecls.h	\
	--slave		${libdir}/libtcl.dll.a			libtcl.dll.a	${libdir}/libtcl${ver}.dll.a 	\
	--slave		${libdir}/libtclstub.a			libtclstub.a	${libdir}/libtclstub${ver}.a \
	--slave		${libdir}/tclConfig.sh			tclConfig.sh	${libdir}/tcl${ver}/tclConfig.sh

