### Install icon and dll files

win32 {
	RC_FILE = $${PWD}/qtikz.rc
	icon.files = $${PWD}/qtikz.ico
	icon.path = $${PREFIX}
	INSTALLS += icon

	dlls.path = $${PREFIX}
	dlls.files += $${PWD}/poppler/*.dll \
		$${PWD}/poppler/pdftops.exe
	debug {
		dlls.files += $$[QT_INSTALL_BINS]/QtCored4.dll \
			$$[QT_INSTALL_BINS]/QtGuid4.dll \
			$$[QT_INSTALL_BINS]/QtXmld4.dll
	}
	dlls.files += $$[QT_INSTALL_BINS]/assistant.exe \
		$$[QT_INSTALL_BINS]/QtCore4.dll \
		$$[QT_INSTALL_BINS]/QtGui4.dll \
		$$[QT_INSTALL_BINS]/QtXml4.dll \
		$$[QT_INSTALL_BINS]/mingwm10.dll \
		$$[QT_INSTALL_BINS]/libgcc_s_dw2-1.dll
	INSTALLS += dlls

	installer.path = $${PREFIX}
	installer.files = $${PWD}/qtikz.nsi
	installer.extra = "echo !define VERSION \"$${APPVERSION}\" > $${PREFIX}/qtikz.nsh"
	INSTALLS += installer
}
