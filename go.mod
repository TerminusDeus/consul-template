module github.com/TerminusDeus/consul-template

go 1.12

replace github.com/hashicorp/go-hclog => github.com/TerminusDeus/go-hclog v0.1714.2-0.20230201170212-4dc6f6991ebe

require (
	github.com/BurntSushi/toml v0.3.1
	github.com/davecgh/go-spew v1.1.1
	github.com/google/btree v1.0.0 // indirect
	github.com/hashicorp/consul/api v1.4.0
	github.com/hashicorp/consul/sdk v0.4.1-0.20200910203702-bb2b5dd871ca
	github.com/hashicorp/go-gatedio v0.5.0
	github.com/hashicorp/go-hclog v0.16.2
	github.com/hashicorp/go-msgpack v0.5.5 // indirect
	github.com/hashicorp/go-multierror v1.1.1
	github.com/hashicorp/go-retryablehttp v0.6.7 // indirect
	github.com/hashicorp/go-rootcerts v1.0.2
	github.com/hashicorp/go-sockaddr v1.0.2
	github.com/hashicorp/go-syslog v1.0.0
	github.com/hashicorp/hcl v1.0.0
	github.com/hashicorp/logutils v1.0.0
	github.com/hashicorp/serf v0.9.4 // indirect
	github.com/hashicorp/vault/api v1.0.5-0.20190730042357-746c0b111519
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.17 // indirect
	github.com/mattn/go-shellwords v1.0.12
	github.com/mitchellh/go-homedir v1.1.0
	github.com/mitchellh/hashstructure v1.0.0
	github.com/mitchellh/mapstructure v1.5.0
	github.com/pkg/errors v0.9.1
	github.com/stretchr/testify v1.7.2
	golang.org/x/sys v0.4.0
	golang.org/x/time v0.0.0-20200630173020-3af7569d3a1e // indirect
	gopkg.in/square/go-jose.v2 v2.5.1 // indirect
	gopkg.in/yaml.v2 v2.3.0
)

replace github.com/golang/lint => golang.org/x/lint v0.0.0-20190409202823-959b441ac422

replace sourcegraph.com/sourcegraph/go-diff => github.com/sourcegraph/go-diff v0.5.1
