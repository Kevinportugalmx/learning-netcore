dotnet new sln -o Api 
dotnet new classlib -o Domain -f net7.0
dotnet new classlib -o Application -f net7.0
dotnet new classlib -o Infrastructure -f net7.0
dotnet new webapi -o Api -f net7.0
dotnet add Application/Application.csproj reference Domain/Domain.csproj
dotnet add Infrastructure/Infrastructure.csproj reference Domain/Domain.csproj
dotnet add Infrastructure/Infrastructure.csproj reference Application/Application.csproj
dotnet add Api/Api.csproj reference Application/Application.csproj  Infrastructure/Infrastructure.csproj
dotnet sln add Api/Api.csproj
dotnet sln add Application/Application.csproj
dotnet sln add Infrastructure/Infrastructure.csproj
dotnet sln add Domain/Domain.csproj
dotnet build
