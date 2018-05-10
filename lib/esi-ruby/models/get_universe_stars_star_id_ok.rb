=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module EsiRuby
  # 200 ok object
  class GetUniverseStarsStarIdOk
    # Age of star in years
    attr_accessor :age

    # luminosity number
    attr_accessor :luminosity

    # name string
    attr_accessor :name

    # radius integer
    attr_accessor :radius

    # solar_system_id integer
    attr_accessor :solar_system_id

    # spectral_class string
    attr_accessor :spectral_class

    # temperature integer
    attr_accessor :temperature

    # type_id integer
    attr_accessor :type_id

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
        :'age' => :'age',
        :'luminosity' => :'luminosity',
        :'name' => :'name',
        :'radius' => :'radius',
        :'solar_system_id' => :'solar_system_id',
        :'spectral_class' => :'spectral_class',
        :'temperature' => :'temperature',
        :'type_id' => :'type_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'age' => :'Integer',
        :'luminosity' => :'Float',
        :'name' => :'String',
        :'radius' => :'Integer',
        :'solar_system_id' => :'Integer',
        :'spectral_class' => :'String',
        :'temperature' => :'Integer',
        :'type_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'age')
        self.age = attributes[:'age']
      end

      if attributes.has_key?(:'luminosity')
        self.luminosity = attributes[:'luminosity']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'radius')
        self.radius = attributes[:'radius']
      end

      if attributes.has_key?(:'solar_system_id')
        self.solar_system_id = attributes[:'solar_system_id']
      end

      if attributes.has_key?(:'spectral_class')
        self.spectral_class = attributes[:'spectral_class']
      end

      if attributes.has_key?(:'temperature')
        self.temperature = attributes[:'temperature']
      end

      if attributes.has_key?(:'type_id')
        self.type_id = attributes[:'type_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @age.nil?
        invalid_properties.push('invalid value for "age", age cannot be nil.')
      end

      if @luminosity.nil?
        invalid_properties.push('invalid value for "luminosity", luminosity cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @radius.nil?
        invalid_properties.push('invalid value for "radius", radius cannot be nil.')
      end

      if @solar_system_id.nil?
        invalid_properties.push('invalid value for "solar_system_id", solar_system_id cannot be nil.')
      end

      if @spectral_class.nil?
        invalid_properties.push('invalid value for "spectral_class", spectral_class cannot be nil.')
      end

      if @temperature.nil?
        invalid_properties.push('invalid value for "temperature", temperature cannot be nil.')
      end

      if @type_id.nil?
        invalid_properties.push('invalid value for "type_id", type_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @age.nil?
      return false if @luminosity.nil?
      return false if @name.nil?
      return false if @radius.nil?
      return false if @solar_system_id.nil?
      return false if @spectral_class.nil?
      spectral_class_validator = EnumAttributeValidator.new('String', ['K2 V', 'K4 V', 'G2 V', 'G8 V', 'M7 V', 'K7 V', 'M2 V', 'K5 V', 'M3 V', 'G0 V', 'G7 V', 'G3 V', 'F9 V', 'G5 V', 'F6 V', 'K8 V', 'K9 V', 'K6 V', 'G9 V', 'G6 V', 'G4 VI', 'G4 V', 'F8 V', 'F2 V', 'F1 V', 'K3 V', 'F0 VI', 'G1 VI', 'G0 VI', 'K1 V', 'M4 V', 'M1 V', 'M6 V', 'M0 V', 'K2 IV', 'G2 VI', 'K0 V', 'K5 IV', 'F5 VI', 'G6 VI', 'F6 VI', 'F2 IV', 'G3 VI', 'M8 V', 'F1 VI', 'K1 IV', 'F7 V', 'G5 VI', 'M5 V', 'G7 VI', 'F5 V', 'F4 VI', 'F8 VI', 'K3 IV', 'F4 IV', 'F0 V', 'G7 IV', 'G8 VI', 'F2 VI', 'F4 V', 'F7 VI', 'F3 V', 'G1 V', 'G9 VI', 'F3 IV', 'F9 VI', 'M9 V', 'K0 IV', 'F1 IV', 'G4 IV', 'F3 VI', 'K4 IV', 'G5 IV', 'G3 IV', 'G1 IV', 'K7 IV', 'G0 IV', 'K6 IV', 'K9 IV', 'G2 IV', 'F9 IV', 'F0 IV', 'K8 IV', 'G8 IV', 'F6 IV', 'F5 IV', 'A0', 'A0IV', 'A0IV2'])
      return false unless spectral_class_validator.valid?(@spectral_class)
      return false if @temperature.nil?
      return false if @type_id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] spectral_class Object to be assigned
    def spectral_class=(spectral_class)
      validator = EnumAttributeValidator.new('String', ['K2 V', 'K4 V', 'G2 V', 'G8 V', 'M7 V', 'K7 V', 'M2 V', 'K5 V', 'M3 V', 'G0 V', 'G7 V', 'G3 V', 'F9 V', 'G5 V', 'F6 V', 'K8 V', 'K9 V', 'K6 V', 'G9 V', 'G6 V', 'G4 VI', 'G4 V', 'F8 V', 'F2 V', 'F1 V', 'K3 V', 'F0 VI', 'G1 VI', 'G0 VI', 'K1 V', 'M4 V', 'M1 V', 'M6 V', 'M0 V', 'K2 IV', 'G2 VI', 'K0 V', 'K5 IV', 'F5 VI', 'G6 VI', 'F6 VI', 'F2 IV', 'G3 VI', 'M8 V', 'F1 VI', 'K1 IV', 'F7 V', 'G5 VI', 'M5 V', 'G7 VI', 'F5 V', 'F4 VI', 'F8 VI', 'K3 IV', 'F4 IV', 'F0 V', 'G7 IV', 'G8 VI', 'F2 VI', 'F4 V', 'F7 VI', 'F3 V', 'G1 V', 'G9 VI', 'F3 IV', 'F9 VI', 'M9 V', 'K0 IV', 'F1 IV', 'G4 IV', 'F3 VI', 'K4 IV', 'G5 IV', 'G3 IV', 'G1 IV', 'K7 IV', 'G0 IV', 'K6 IV', 'K9 IV', 'G2 IV', 'F9 IV', 'F0 IV', 'K8 IV', 'G8 IV', 'F6 IV', 'F5 IV', 'A0', 'A0IV', 'A0IV2'])
      unless validator.valid?(spectral_class)
        fail ArgumentError, 'invalid value for "spectral_class", must be one of #{validator.allowable_values}.'
      end
      @spectral_class = spectral_class
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          age == o.age &&
          luminosity == o.luminosity &&
          name == o.name &&
          radius == o.radius &&
          solar_system_id == o.solar_system_id &&
          spectral_class == o.spectral_class &&
          temperature == o.temperature &&
          type_id == o.type_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [age, luminosity, name, radius, solar_system_id, spectral_class, temperature, type_id].hash
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
        temp_model = EsiRuby.const_get(type).new
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
