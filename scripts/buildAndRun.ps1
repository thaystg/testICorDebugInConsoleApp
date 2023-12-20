dotnet build;
$env:MONO_ENV_OPTIONS="--debugger-agent=transport=dt_socket,address=127.0.0.1:1234,server=y,suspend=y"
if (-Not $IsWindows) {
    bin/Debug/testICorDebugInConsoleApp
}
else {
    bin\Debug\testICorDebugInConsoleApp.exe;
}