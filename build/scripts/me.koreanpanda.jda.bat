@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  com.winworldpc.winbot startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and ME_KOREANPANDA_JDA_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\com.winworldpc.winbot.jar;%APP_HOME%\lib\JDA-4.0.0_62.jar;%APP_HOME%\lib\botCommons-1.0.45.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\log4j-core-2.12.1.jar;%APP_HOME%\lib\log4j-api-2.12.1.jar;%APP_HOME%\lib\java-dotenv-5.1.1.jar;%APP_HOME%\lib\lavaplayer-1.3.20.jar;%APP_HOME%\lib\groovy-jsr223-3.0.0-alpha-4.jar;%APP_HOME%\lib\google-api-services-youtube-v3-rev212-1.25.0.jar;%APP_HOME%\lib\jda-utilities-examples-3.0.2.jar;%APP_HOME%\lib\jda-utilities-command-3.0.2.jar;%APP_HOME%\lib\jda-utilities-menu-3.0.2.jar;%APP_HOME%\lib\reliqua-2.4.8.jar;%APP_HOME%\lib\google-api-client-1.25.0.jar;%APP_HOME%\lib\google-oauth-client-1.25.0.jar;%APP_HOME%\lib\google-http-client-jackson2-1.25.0.jar;%APP_HOME%\lib\google-http-client-1.25.0.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\okhttp-4.0.1.jar;%APP_HOME%\lib\okio-2.2.2.jar;%APP_HOME%\lib\kotlin-stdlib-1.3.41.jar;%APP_HOME%\lib\annotations-16.0.1.jar;%APP_HOME%\lib\lava-common-1.1.0.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\nv-websocket-client-2.5.jar;%APP_HOME%\lib\opus-java-1.0.4.pom;%APP_HOME%\lib\commons-collections4-4.1.jar;%APP_HOME%\lib\trove4j-3.0.3.jar;%APP_HOME%\lib\jackson-databind-2.9.8.jar;%APP_HOME%\lib\jda-utilities-doc-3.0.2.jar;%APP_HOME%\lib\jda-utilities-commons-3.0.2.jar;%APP_HOME%\lib\commons-text-1.6.jar;%APP_HOME%\lib\jsoup-1.11.3.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\lavaplayer-natives-1.3.13.jar;%APP_HOME%\lib\httpclient-4.5.6.jar;%APP_HOME%\lib\commons-io-2.6.jar;%APP_HOME%\lib\jackson-core-2.9.8.jar;%APP_HOME%\lib\base64-2.3.9.jar;%APP_HOME%\lib\groovy-3.0.0-alpha-4.jar;%APP_HOME%\lib\opus-java-api-1.0.4.jar;%APP_HOME%\lib\opus-java-natives-1.0.4.jar;%APP_HOME%\lib\jackson-annotations-2.9.0.jar;%APP_HOME%\lib\json-20160810.jar;%APP_HOME%\lib\commons-lang3-3.8.1.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.3.41.jar;%APP_HOME%\lib\httpcore-4.4.10.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\guava-20.0.jar;%APP_HOME%\lib\jna-4.4.0.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar

@rem Execute com.winworldpc.winbot
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %ME_KOREANPANDA_JDA_OPTS%  -classpath "%CLASSPATH%" com.winworldpc.winbot.Bot %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable ME_KOREANPANDA_JDA_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%ME_KOREANPANDA_JDA_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
