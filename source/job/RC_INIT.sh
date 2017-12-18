#Run_Cobol_initialize
if (${#argv} >= 1) then
	set USER_ID = ${argv[1]};
else
	set USER_ID = STN000;
endif
set JRCODE=000;
set MAP_JRCODE_FILE = ${JRCODE_PATH}${USER_ID}`openssl rand -base64 6`;
if ($?ERROR_EXEC_PATH) then
	set MAP_ERROR_FILE = ${ERROR_EXEC_PATH};
else
	set MAP_ERROR_FILE = ${ERROR_PATH}${USER_ID}`openssl rand -base64 6`;
endif
logger -i `echo ":start:${0}: $MAP_JRCODE_FILE $MAP_ERROR_FILE " `;
