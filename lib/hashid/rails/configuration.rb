# frozen_string_literal: true

module Hashid
  module Rails
    class Configuration
      attr_accessor :salt,
                    :min_hash_length,
                    :alphabet,
                    :override_find,
                    :sign_hashids,
                    :fallback_to_unsigned

      def initialize
        @salt = ""
        @min_hash_length = 6
        @alphabet = "abcdefghijklmnopqrstuvwxyz" \
                    "ABCDEFGHIJKLMNOPQRSTUVWXYZ" \
                    "1234567890"
        @override_find = true
        @sign_hashids = true
        @fallback_to_unsigned = false
      end

      def for_table(table_name)
        ["#{table_name}#{salt}", min_hash_length, alphabet]
      end
    end
  end
end
