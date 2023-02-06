module github.com/TerminusDeus/consul-template

go 1.12

require (
	github.com/BurntSushi/toml v0.3.1
	github.com/armon/go-metrics v0.3.9 // indirect
	github.com/davecgh/go-spew v1.1.1
	github.com/frankban/quicktest v1.10.0 // indirect
	github.com/golang/snappy v0.0.4 // indirect
	github.com/google/btree v1.0.0 // indirect
	github.com/google/go-cmp v0.5.5 // indirect
	github.com/hashicorp/consul/api v1.4.0
	github.com/hashicorp/consul/sdk v0.4.1-0.20200910203702-bb2b5dd871ca
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-gatedio v0.5.0
	github.com/hashicorp/go-hclog v0.14.1
	github.com/hashicorp/go-immutable-radix v1.3.1 // indirect
	github.com/hashicorp/go-msgpack v0.5.5 // indirect
	github.com/hashicorp/go-multierror v1.1.1
	github.com/hashicorp/go-retryablehttp v0.6.7 // indirect
	github.com/hashicorp/go-rootcerts v1.0.2
	github.com/hashicorp/go-sockaddr v1.0.2
	github.com/hashicorp/go-syslog v1.0.0
	github.com/hashicorp/go-uuid v1.0.2 // indirect
	github.com/hashicorp/golang-lru v0.5.4 // indirect
	github.com/hashicorp/hcl v1.0.0
	github.com/hashicorp/logutils v1.0.0
	github.com/hashicorp/serf v0.9.4 // indirect
	github.com/hashicorp/vault/api v1.0.5-0.20190730042357-746c0b111519
	github.com/hashicorp/vault/sdk v0.1.14-0.20190730042320-0dc007d98cc8
	github.com/kr/text v0.2.0 // indirect
	github.com/mattn/go-shellwords v1.0.12
	github.com/mitchellh/go-homedir v1.1.0
	github.com/mitchellh/hashstructure v1.0.0
	github.com/mitchellh/mapstructure v1.3.3
	github.com/pierrec/lz4 v2.5.2+incompatible // indirect
	github.com/pkg/errors v0.9.1
	github.com/stretchr/testify v1.7.2
	golang.org/x/crypto v0.0.0-20210711020723-a769d52b0f97 // indirect
	golang.org/x/sys v0.0.0-20220503163025-988cb79eb6c6
	golang.org/x/time v0.0.0-20200630173020-3af7569d3a1e // indirect
	golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1 // indirect
	gopkg.in/square/go-jose.v2 v2.5.1 // indirect
	gopkg.in/yaml.v2 v2.3.0
)

replace github.com/golang/lint => golang.org/x/lint v0.0.0-20190409202823-959b441ac422

replace sourcegraph.com/sourcegraph/go-diff => github.com/sourcegraph/go-diff v0.5.1
