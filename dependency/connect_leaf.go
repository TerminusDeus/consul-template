package dependency

import (
	"fmt"
	"net/url"

	"github.com/hashicorp/go-hclog"
	"github.com/pkg/errors"
)

var (
	// Ensure implements
	_ Dependency = (*ConnectLeafQuery)(nil)
)

type ConnectLeafQuery struct {
	stopCh chan struct{}

	service string
}

func NewConnectLeafQuery(service string) *ConnectLeafQuery {
	return &ConnectLeafQuery{
		stopCh:  make(chan struct{}, 1),
		service: service,
	}
}

func (d *ConnectLeafQuery) Fetch(clients *ClientSet, opts *QueryOptions, logger hclog.Logger) (
	interface{}, *ResponseMetadata, error,
) {
	select {
	case <-d.stopCh:
		return nil, nil, ErrStopped
	default:
	}
	opts = opts.Merge(nil)
	logger.Trace(fmt.Sprintf("%s: GET %s", d, &url.URL{
		Path:     "/v1/agent/connect/ca/leaf/" + d.service,
		RawQuery: opts.String(),
	}))

	cert, md, err := clients.Consul().Agent().ConnectCALeaf(d.service,
		opts.ToConsulOpts())
	if err != nil {
		return nil, nil, errors.Wrap(err, d.String())
	}

	logger.Trace(fmt.Sprintf("%s: returned response", d))

	rm := &ResponseMetadata{
		LastIndex:   md.LastIndex,
		LastContact: md.LastContact,
		Block:       true,
	}

	return cert, rm, nil
}

func (d *ConnectLeafQuery) Stop() {
	close(d.stopCh)
}

func (d *ConnectLeafQuery) CanShare() bool {
	return false
}

func (d *ConnectLeafQuery) Type() Type {
	return TypeConsul
}

func (d *ConnectLeafQuery) String() string {
	if d.service != "" {
		return fmt.Sprintf("connect.caleaf(%s)", d.service)
	}
	return "connect.caleaf"
}
