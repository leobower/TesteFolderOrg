echo "Restoring dotnet app..."
/opt/rh/rh-dotnet20/root/bin/dotnet restore src/CRMIntegracaoCadastro.API/CRMIntegracaoCadastro.API.csproj -r rhel.7-x64
echo "Publishing dotnet app..."
/opt/rh/rh-dotnet20/root/bin/dotnet publish src/CRMIntegracaoCadastro.API/CRMIntegracaoCadastro.API.csproj -f netcoreapp2.0 -c Release -o /tmp/workspace/cicd-tools/cicd-tools-crm-api-clientes-pipeline/app/publish -r rhel.7-x64 --self-contained false /p:PublishWithAspNetCoreTargetManifest=false