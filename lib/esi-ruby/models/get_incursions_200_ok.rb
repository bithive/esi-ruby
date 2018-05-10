=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module Esi
  # 200 ok object
  class GetIncursions200Ok
    # The constellation id in which this incursion takes place
    attr_accessor :constellation_id

    # The attacking faction's id
    attr_accessor :faction_id

    # Whether the final encounter has boss or not
    attr_accessor :has_boss

    # A list of infested solar system ids that are a part of this incursion
    attr_accessor :infested_solar_systems

    # Influence of this incursion as a float from 0 to 1
    attr_accessor :influence

    # Staging solar system for this incursion
    attr_accessor :staging_solar_system_id

    # The state of this incursion
    attr_accessor :state

    # The type of this incursion
    attr_accessor :type

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
        :'constellation_id' => :'constellation_id',
        :'faction_id' => :'faction_id',
        :'has_boss' => :'has_boss',
        :'infested_solar_systems' => :'infested_solar_systems',
        :'influence' => :'influence',
        :'staging_solar_system_id' => :'staging_solar_system_id',
        :'state' => :'state',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'constellation_id' => :'Integer',
        :'faction_id' => :'Integer',
        :'has_boss' => :'BOOLEAN',
        :'infested_solar_systems' => :'Array<Integer>',
        :'influence' => :'Float',
        :'staging_solar_system_id' => :'Integer',
        :'state' => :'String',
        :'type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'constellation_id')
        self.constellation_id = attributes[:'constellation_id']
      end

      if attributes.has_key?(:'faction_id')
        self.faction_id = attributes[:'faction_id']
      end

      if attributes.has_key?(:'has_boss')
        self.has_boss = attributes[:'has_boss']
      end

      if attributes.has_key?(:'infested_solar_systems')
        if (value = attributes[:'infested_solar_systems']).is_a?(Array)
          self.infested_solar_systems = value
        end
      end

      if attributes.has_key?(:'influence')
        self.influence = attributes[:'influence']
      end

      if attributes.has_key?(:'staging_solar_system_id')
        self.staging_solar_system_id = attributes[:'staging_solar_system_id']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @constellation_id.nil?
        invalid_properties.push('invalid value for "constellation_id", constellation_id cannot be nil.')
      end

      if @faction_id.nil?
        invalid_properties.push('invalid value for "faction_id", faction_id cannot be nil.')
      end

      if @has_boss.nil?
        invalid_properties.push('invalid value for "has_boss", has_boss cannot be nil.')
      end

      if @infested_solar_systems.nil?
        invalid_properties.push('invalid value for "infested_solar_systems", infested_solar_systems cannot be nil.')
      end

      if @influence.nil?
        invalid_properties.push('invalid value for "influence", influence cannot be nil.')
      end

      if @staging_solar_system_id.nil?
        invalid_properties.push('invalid value for "staging_solar_system_id", staging_solar_system_id cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @constellation_id.nil?
      return false if @faction_id.nil?
      return false if @has_boss.nil?
      return false if @infested_solar_systems.nil?
      return false if @influence.nil?
      return false if @staging_solar_system_id.nil?
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ['withdrawing', 'mobilizing', 'established'])
      return false unless state_validator.valid?(@state)
      return false if @type.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ['withdrawing', 'mobilizing', 'established'])
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
          constellation_id == o.constellation_id &&
          faction_id == o.faction_id &&
          has_boss == o.has_boss &&
          infested_solar_systems == o.infested_solar_systems &&
          influence == o.influence &&
          staging_solar_system_id == o.staging_solar_system_id &&
          state == o.state &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [constellation_id, faction_id, has_boss, infested_solar_systems, influence, staging_solar_system_id, state, type].hash
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
