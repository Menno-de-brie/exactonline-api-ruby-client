module Elmas
  class BankAccount
    # An account needs a name
    include Elmas::Resource

    def base_path
      "crm/BankAccounts"
    end

    def mandatory_attributes
      [:account, :bank_account]
    end

    # https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=BankAccounts
    def other_attributes # rubocop:disable Metrics/MethodLength
      [
        :bank_account_holder_name, :BIC_code, :description, :main
      ]
    end
  end
end
