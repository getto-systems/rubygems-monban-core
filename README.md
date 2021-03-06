# monban-core

[rubygems: monban-core](https://rubygems.org/gems/monban-core)

[Monban](https://github.com/getto-systems/rubygems-monban-core) - core

The authentication plugin for web api based on jwt


###### Table of Contents

- [Requirements](#Requirements)
- [Usage](#Usage)
- [License](#License)

<a id="Requirements"></a>
## Requirements

- developed on ruby: 2.5.1


<a id="Usage"></a>
## Usage

### Errors

`error` class should be respond to below methods

```ruby
module Monban
  module Core
    ERRORS = [
      :invalid_account!,
      :invalid_login!,
      :invalid_params!,
      :not_found!,
      :renew_token_expired!,
      :conflict!,
      :server_error!,
    ]
  end
end
```

## Install

Add this line to your application's Gemfile:

```ruby
gem 'monban-core'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install monban-core
```


<a id="License"></a>
## License

monban/core is licensed under the [MIT](LICENSE) license.

Copyright &copy; since 2018 shun@getto.systems
