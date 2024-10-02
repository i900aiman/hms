package configuration

import (
	"database/sql"
	"fmt"
	"sync"

	_ "github.com/go-sql-driver/mysql"
)

var (
	db   *sql.DB
	once sync.Once
)

func GetMySQLDB() (*sql.DB, error) {
	once.Do(func() {
		adapter := "mysql"
		host := "localhost"
		username := "root"
		password := ""
		dbname := "hhms"
		port := "3306"
		var err error
		db, err = sql.Open(adapter, username+":"+password+"@tcp("+host+":"+port+")/"+dbname)
		if err != nil {
			fmt.Errorf("configs: ConnectDatabase: unable to connect to database: %w", err)
			return
		}
		if err = db.Ping(); err != nil {
			fmt.Errorf("configs: ConnectDatabase: unable to ping database: %w", err)
			return
		}
	})
	return db, nil
}
