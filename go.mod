module github.com/BackToNull/Gin-example

go 1.23.2

require (
	github.com/astaxie/beego v1.12.3
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/fvbock/endless v0.0.0-20170109170031-447134032cb6
	github.com/gin-gonic/gin v1.10.0
	github.com/go-ini/ini v1.67.0
	github.com/go-sql-driver/mysql v1.9.0
	github.com/jinzhu/gorm v1.9.16
	github.com/unknwon/com v1.0.1
)

require (
	filippo.io/edwards25519 v1.1.0 // indirect
	github.com/KyleBanks/depth v1.2.1 // indirect
	github.com/PuerkitoBio/purell v1.2.1 // indirect
	github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578 // indirect
	github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751 // indirect
	github.com/bytedance/sonic v1.13.1 // indirect
	github.com/bytedance/sonic/loader v0.2.4 // indirect
	github.com/cloudwego/base64x v0.1.5 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.6 // indirect
	github.com/gabriel-vasile/mimetype v1.4.8 // indirect
	github.com/ghodss/yaml v1.0.0 // indirect
	github.com/gin-contrib/sse v1.0.0 // indirect
	github.com/go-openapi/jsonpointer v0.21.1 // indirect
	github.com/go-openapi/jsonreference v0.21.0 // indirect
	github.com/go-openapi/spec v0.21.0 // indirect
	github.com/go-openapi/swag v0.23.1 // indirect
	github.com/go-playground/locales v0.14.1 // indirect
	github.com/go-playground/universal-translator v0.18.1 // indirect
	github.com/go-playground/validator/v10 v10.25.0 // indirect
	github.com/goccy/go-json v0.10.5 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/cpuid/v2 v2.2.10 // indirect
	github.com/leodido/go-urn v1.4.0 // indirect
	github.com/mailru/easyjson v0.9.0 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pelletier/go-toml/v2 v2.2.3 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/shiena/ansicolor v0.0.0-20230509054315-a9deabde6e02 // indirect
	github.com/shurcooL/sanitized_anchor_name v1.0.0 // indirect
	github.com/swaggo/files v1.0.1 // indirect
	github.com/swaggo/gin-swagger v1.2.0 // indirect
	github.com/swaggo/swag v1.16.4 // indirect
	github.com/twitchyliquid64/golang-asm v0.15.1 // indirect
	github.com/ugorji/go/codec v1.2.12 // indirect
	github.com/urfave/cli v1.22.16 // indirect
	golang.org/x/arch v0.15.0 // indirect
	golang.org/x/crypto v0.36.0 // indirect
	golang.org/x/net v0.37.0 // indirect
	golang.org/x/sys v0.31.0 // indirect
	golang.org/x/text v0.23.0 // indirect
	golang.org/x/tools v0.31.0 // indirect
	google.golang.org/protobuf v1.36.5 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace (
	github.com/BackToNull/Gin-example/conf => ./conf
	github.com/BackToNull/Gin-example/middleware => ./middleware
	github.com/BackToNull/Gin-example/models => ./models
	github.com/BackToNull/Gin-example/pkg/e => ./pkg/e
	github.com/BackToNull/Gin-example/pkg/logging => ./pkg/logging
	github.com/BackToNull/Gin-example/pkg/setting => ./pkg/setting
	github.com/BackToNull/Gin-example/pkg/util => ./pkg/util
	github.com/BackToNull/Gin-example/routers => ./routers
	"github.com/BackToNull/Gin-example/docs" => ./docs
)
