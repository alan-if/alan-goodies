@ECHO OFF
ECHO.
ECHO [94m################################################
ECHO #[93m Optimizing all images via imagemin-power-cli [94m#
ECHO ################################################[0m
ECHO.
:: ==========================================
:: Check that imagemin-power-cli is installed
:: ==========================================
CALL imagemin-power > NUL 2>&1 ^
 || (
    ECHO [91m^*^*^* ERROR! ^*^*^*
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO You need to install imagemin-power-cli:
    ECHO.
    ECHO https://www.npmjs.com/package/imagemin-power-cli
    ECHO [91m~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO [91m/// Aborting ///[0m
    EXIT /B 1
)
:: ==========================================
:: Optimize images, one extension at the time
:: ==========================================
CALL :optimize png
CALL :optimize svg

ECHO [92m/// Done ///[0m
EXIT /B

:: ==========================================
:: Function |            :optimize <file-ext>
:: ==========================================
:optimize
ECHO [90m================================================[94m
ECHO Optimizing [93m^*.%1[94m images
ECHO [90m================================================[93m
CALL imagemin-power -vro ./ ./**/*.%1
EXIT /B
