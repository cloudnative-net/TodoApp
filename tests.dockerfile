FROM mcr.microsoft.com/dotnet/core/sdk:3.1 as build
WORKDIR /app
COPY ./src/TodoApp.Api/*.csproj ./src/TodoApp.Api/
COPY ./src/TodoApp.Tests/*.csproj ./src/TodoApp.Tests/
COPY ./TodoApp.Api.sln ./

RUN dotnet restore

COPY ./src/ ./src/

ENTRYPOINT [ "dotnet", "test" ]