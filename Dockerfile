FROM registry.access.redhat.com/dotnet/dotnet-20-rhel7
WORKDIR /app
EXPOSE 8080
ADD publish/. .
CMD [ "dotnet", "TesteFolderOrg.dll" ]