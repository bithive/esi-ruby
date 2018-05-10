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
  class GetSovereigntyStructures200Ok
    # The alliance that owns the structure. 
    attr_accessor :alliance_id

    # Solar system in which the structure is located. 
    attr_accessor :solar_system_id

    # Unique item ID for this structure.
    attr_accessor :structure_id

    # A reference to the type of structure this is. 
    attr_accessor :structure_type_id

    # The occupancy level for the next or current vulnerability window. This takes into account all development indexes and capital system bonuses. Also known as Activity Defense Multiplier from in the client. It increases the time that attackers must spend using their entosis links on the structure. 
    attr_accessor :vulnerability_occupancy_level

    # The time at which the next or current vulnerability window ends. At the end of a vulnerability window the next window is recalculated and locked in along with the vulnerabilityOccupancyLevel. If the structure is not in 100% entosis control of the defender, it will go in to 'overtime' and stay vulnerable for as long as that situation persists. Only once the defenders have 100% entosis control and has the vulnerableEndTime passed does the vulnerability interval expire and a new one is calculated. 
    attr_accessor :vulnerable_end_time

    # The next time at which the structure will become vulnerable. Or the start time of the current window if current time is between this and vulnerableEndTime. 
    attr_accessor :vulnerable_start_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alliance_id' => :'alliance_id',
        :'solar_system_id' => :'solar_system_id',
        :'structure_id' => :'structure_id',
        :'structure_type_id' => :'structure_type_id',
        :'vulnerability_occupancy_level' => :'vulnerability_occupancy_level',
        :'vulnerable_end_time' => :'vulnerable_end_time',
        :'vulnerable_start_time' => :'vulnerable_start_time'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alliance_id' => :'Integer',
        :'solar_system_id' => :'Integer',
        :'structure_id' => :'Integer',
        :'structure_type_id' => :'Integer',
        :'vulnerability_occupancy_level' => :'Float',
        :'vulnerable_end_time' => :'DateTime',
        :'vulnerable_start_time' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'alliance_id')
        self.alliance_id = attributes[:'alliance_id']
      end

      if attributes.has_key?(:'solar_system_id')
        self.solar_system_id = attributes[:'solar_system_id']
      end

      if attributes.has_key?(:'structure_id')
        self.structure_id = attributes[:'structure_id']
      end

      if attributes.has_key?(:'structure_type_id')
        self.structure_type_id = attributes[:'structure_type_id']
      end

      if attributes.has_key?(:'vulnerability_occupancy_level')
        self.vulnerability_occupancy_level = attributes[:'vulnerability_occupancy_level']
      end

      if attributes.has_key?(:'vulnerable_end_time')
        self.vulnerable_end_time = attributes[:'vulnerable_end_time']
      end

      if attributes.has_key?(:'vulnerable_start_time')
        self.vulnerable_start_time = attributes[:'vulnerable_start_time']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @alliance_id.nil?
        invalid_properties.push('invalid value for "alliance_id", alliance_id cannot be nil.')
      end

      if @solar_system_id.nil?
        invalid_properties.push('invalid value for "solar_system_id", solar_system_id cannot be nil.')
      end

      if @structure_id.nil?
        invalid_properties.push('invalid value for "structure_id", structure_id cannot be nil.')
      end

      if @structure_type_id.nil?
        invalid_properties.push('invalid value for "structure_type_id", structure_type_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @alliance_id.nil?
      return false if @solar_system_id.nil?
      return false if @structure_id.nil?
      return false if @structure_type_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alliance_id == o.alliance_id &&
          solar_system_id == o.solar_system_id &&
          structure_id == o.structure_id &&
          structure_type_id == o.structure_type_id &&
          vulnerability_occupancy_level == o.vulnerability_occupancy_level &&
          vulnerable_end_time == o.vulnerable_end_time &&
          vulnerable_start_time == o.vulnerable_start_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [alliance_id, solar_system_id, structure_id, structure_type_id, vulnerability_occupancy_level, vulnerable_end_time, vulnerable_start_time].hash
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
