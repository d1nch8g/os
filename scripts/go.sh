
go install mvdan.cc/gofumpt@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.50.1
go install github.com/swaggo/swag/cmd/swag@latest
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
source /etc/environment && export PATH=$(go env GOPATH)/bin:$PATH
echo 'export PATH=$(go env GOPATH)/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
