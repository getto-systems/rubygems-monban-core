require "monban/core"
require "getto/initialize_with"

require "monban/use_case/auth/token/full"
require "monban/use_case/auth/token/authy"

module Monban
  module UseCase
    module Auth
      module Token
        class General
          include Getto::InitializeWith

          initialize_with(
            error: Monban::Core::ERRORS,
            repository: [
              :login_type,
            ],
            full:  Full,
            authy: Authy,
          )

          def create(account_id:)
            login = repository.login_type(account_id: account_id)
            case login
            when "full"  then full.create(account_id: account_id)
            when "authy" then authy.create(account_id: account_id)
            else
              error.server_error! "invalid login: #{login} / #{account_id}"
            end
          end

        end
      end
    end
  end
end
