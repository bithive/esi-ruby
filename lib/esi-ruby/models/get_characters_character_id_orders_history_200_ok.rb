=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module Esi
  # 200 ok object
  class GetCharactersCharacterIdOrdersHistory200Ok
    # Number of days the order was valid for (starting from the issued date). An order expires at time issued + duration
    attr_accessor :duration

    # For buy orders, the amount of ISK in escrow
    attr_accessor :escrow

    # True if the order is a bid (buy) order
    attr_accessor :is_buy_order

    # Signifies whether the buy/sell order was placed on behalf of a corporation.
    attr_accessor :is_corporation

    # Date and time when this order was issued
    attr_accessor :issued

    # ID of the location where order was placed
    attr_accessor :location_id

    # For buy orders, the minimum quantity that will be accepted in a matching sell order
    attr_accessor :min_volume

    # Unique order ID
    attr_accessor :order_id

    # Cost per unit for this order
    attr_accessor :price

    # Valid order range, numbers are ranges in jumps
    attr_accessor :range

    # ID of the region where order was placed
    attr_accessor :region_id

    # Current order state
    attr_accessor :state

    # The type ID of the item transacted in this order
    attr_accessor :type_id

    # Quantity of items still required or offered
    attr_accessor :volume_remain

    # Quantity of items required or offered at time order was placed
    attr_accessor :volume_total

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'duration' => :'duration',
        :'escrow' => :'escrow',
        :'is_buy_order' => :'is_buy_order',
        :'is_corporation' => :'is_corporation',
        :'issued' => :'issued',
        :'location_id' => :'location_id',
        :'min_volume' => :'min_volume',
        :'order_id' => :'order_id',
        :'price' => :'price',
        :'range' => :'range',
        :'region_id' => :'region_id',
        :'state' => :'state',
        :'type_id' => :'type_id',
        :'volume_remain' => :'volume_remain',
        :'volume_total' => :'volume_total'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'duration' => :'Integer',
        :'escrow' => :'Float',
        :'is_buy_order' => :'BOOLEAN',
        :'is_corporation' => :'BOOLEAN',
        :'issued' => :'DateTime',
        :'location_id' => :'Integer',
        :'min_volume' => :'Integer',
        :'order_id' => :'Integer',
        :'price' => :'Float',
        :'range' => :'String',
        :'region_id' => :'Integer',
        :'state' => :'String',
        :'type_id' => :'Integer',
        :'volume_remain' => :'Integer',
        :'volume_total' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.has_key?(:'escrow')
        self.escrow = attributes[:'escrow']
      end

      if attributes.has_key?(:'is_buy_order')
        self.is_buy_order = attributes[:'is_buy_order']
      end

      if attributes.has_key?(:'is_corporation')
        self.is_corporation = attributes[:'is_corporation']
      end

      if attributes.has_key?(:'issued')
        self.issued = attributes[:'issued']
      end

      if attributes.has_key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.has_key?(:'min_volume')
        self.min_volume = attributes[:'min_volume']
      end

      if attributes.has_key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.has_key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.has_key?(:'range')
        self.range = attributes[:'range']
      end

      if attributes.has_key?(:'region_id')
        self.region_id = attributes[:'region_id']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'type_id')
        self.type_id = attributes[:'type_id']
      end

      if attributes.has_key?(:'volume_remain')
        self.volume_remain = attributes[:'volume_remain']
      end

      if attributes.has_key?(:'volume_total')
        self.volume_total = attributes[:'volume_total']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @duration.nil?
        invalid_properties.push('invalid value for "duration", duration cannot be nil.')
      end

      if @is_corporation.nil?
        invalid_properties.push('invalid value for "is_corporation", is_corporation cannot be nil.')
      end

      if @issued.nil?
        invalid_properties.push('invalid value for "issued", issued cannot be nil.')
      end

      if @location_id.nil?
        invalid_properties.push('invalid value for "location_id", location_id cannot be nil.')
      end

      if @order_id.nil?
        invalid_properties.push('invalid value for "order_id", order_id cannot be nil.')
      end

      if @price.nil?
        invalid_properties.push('invalid value for "price", price cannot be nil.')
      end

      if @range.nil?
        invalid_properties.push('invalid value for "range", range cannot be nil.')
      end

      if @region_id.nil?
        invalid_properties.push('invalid value for "region_id", region_id cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @type_id.nil?
        invalid_properties.push('invalid value for "type_id", type_id cannot be nil.')
      end

      if @volume_remain.nil?
        invalid_properties.push('invalid value for "volume_remain", volume_remain cannot be nil.')
      end

      if @volume_total.nil?
        invalid_properties.push('invalid value for "volume_total", volume_total cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @duration.nil?
      return false if @is_corporation.nil?
      return false if @issued.nil?
      return false if @location_id.nil?
      return false if @order_id.nil?
      return false if @price.nil?
      return false if @range.nil?
      range_validator = EnumAttributeValidator.new('String', ['1', '10', '2', '20', '3', '30', '4', '40', '5', 'region', 'solarsystem', 'station'])
      return false unless range_validator.valid?(@range)
      return false if @region_id.nil?
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ['cancelled', 'expired'])
      return false unless state_validator.valid?(@state)
      return false if @type_id.nil?
      return false if @volume_remain.nil?
      return false if @volume_total.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] range Object to be assigned
    def range=(range)
      validator = EnumAttributeValidator.new('String', ['1', '10', '2', '20', '3', '30', '4', '40', '5', 'region', 'solarsystem', 'station'])
      unless validator.valid?(range)
        fail ArgumentError, 'invalid value for "range", must be one of #{validator.allowable_values}.'
      end
      @range = range
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ['cancelled', 'expired'])
      unless validator.valid?(state)
        fail ArgumentError, 'invalid value for "state", must be one of #{validator.allowable_values}.'
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          duration == o.duration &&
          escrow == o.escrow &&
          is_buy_order == o.is_buy_order &&
          is_corporation == o.is_corporation &&
          issued == o.issued &&
          location_id == o.location_id &&
          min_volume == o.min_volume &&
          order_id == o.order_id &&
          price == o.price &&
          range == o.range &&
          region_id == o.region_id &&
          state == o.state &&
          type_id == o.type_id &&
          volume_remain == o.volume_remain &&
          volume_total == o.volume_total
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [duration, escrow, is_buy_order, is_corporation, issued, location_id, min_volume, order_id, price, range, region_id, state, type_id, volume_remain, volume_total].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Esi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
