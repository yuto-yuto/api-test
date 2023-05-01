package server

import "errors"

var (
	ErrKeyNotFound      = errors.New("key not found")
	ErrKeyAlreadyExists = errors.New("key already exists")
)

type DataUpdater struct {
	values map[string]any
}

func NewDataUpdater() *DataUpdater {
	return &DataUpdater{
		values: map[string]any{},
	}
}

func (d *DataUpdater) Update(key string, value any) error {
	_, pre := d.values[key]
	if !pre {
		return ErrKeyNotFound
	}

	d.values[key] = value
	return nil
}

func (d *DataUpdater) AddOrUpdate(key string, value any) {
	d.values[key] = value
}
