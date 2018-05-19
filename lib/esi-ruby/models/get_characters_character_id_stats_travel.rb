=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module Esi
  # travel object
  class GetCharactersCharacterIdStatsTravel
    # acceleration_gate_activations integer
    attr_accessor :acceleration_gate_activations

    # align_to integer
    attr_accessor :align_to

    # distance_warped_high_sec integer
    attr_accessor :distance_warped_high_sec

    # distance_warped_low_sec integer
    attr_accessor :distance_warped_low_sec

    # distance_warped_null_sec integer
    attr_accessor :distance_warped_null_sec

    # distance_warped_wormhole integer
    attr_accessor :distance_warped_wormhole

    # docks_high_sec integer
    attr_accessor :docks_high_sec

    # docks_low_sec integer
    attr_accessor :docks_low_sec

    # docks_null_sec integer
    attr_accessor :docks_null_sec

    # jumps_stargate_high_sec integer
    attr_accessor :jumps_stargate_high_sec

    # jumps_stargate_low_sec integer
    attr_accessor :jumps_stargate_low_sec

    # jumps_stargate_null_sec integer
    attr_accessor :jumps_stargate_null_sec

    # jumps_wormhole integer
    attr_accessor :jumps_wormhole

    # warps_high_sec integer
    attr_accessor :warps_high_sec

    # warps_low_sec integer
    attr_accessor :warps_low_sec

    # warps_null_sec integer
    attr_accessor :warps_null_sec

    # warps_to_bookmark integer
    attr_accessor :warps_to_bookmark

    # warps_to_celestial integer
    attr_accessor :warps_to_celestial

    # warps_to_fleet_member integer
    attr_accessor :warps_to_fleet_member

    # warps_to_scan_result integer
    attr_accessor :warps_to_scan_result

    # warps_wormhole integer
    attr_accessor :warps_wormhole

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'acceleration_gate_activations' => :'acceleration_gate_activations',
        :'align_to' => :'align_to',
        :'distance_warped_high_sec' => :'distance_warped_high_sec',
        :'distance_warped_low_sec' => :'distance_warped_low_sec',
        :'distance_warped_null_sec' => :'distance_warped_null_sec',
        :'distance_warped_wormhole' => :'distance_warped_wormhole',
        :'docks_high_sec' => :'docks_high_sec',
        :'docks_low_sec' => :'docks_low_sec',
        :'docks_null_sec' => :'docks_null_sec',
        :'jumps_stargate_high_sec' => :'jumps_stargate_high_sec',
        :'jumps_stargate_low_sec' => :'jumps_stargate_low_sec',
        :'jumps_stargate_null_sec' => :'jumps_stargate_null_sec',
        :'jumps_wormhole' => :'jumps_wormhole',
        :'warps_high_sec' => :'warps_high_sec',
        :'warps_low_sec' => :'warps_low_sec',
        :'warps_null_sec' => :'warps_null_sec',
        :'warps_to_bookmark' => :'warps_to_bookmark',
        :'warps_to_celestial' => :'warps_to_celestial',
        :'warps_to_fleet_member' => :'warps_to_fleet_member',
        :'warps_to_scan_result' => :'warps_to_scan_result',
        :'warps_wormhole' => :'warps_wormhole'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'acceleration_gate_activations' => :'Integer',
        :'align_to' => :'Integer',
        :'distance_warped_high_sec' => :'Integer',
        :'distance_warped_low_sec' => :'Integer',
        :'distance_warped_null_sec' => :'Integer',
        :'distance_warped_wormhole' => :'Integer',
        :'docks_high_sec' => :'Integer',
        :'docks_low_sec' => :'Integer',
        :'docks_null_sec' => :'Integer',
        :'jumps_stargate_high_sec' => :'Integer',
        :'jumps_stargate_low_sec' => :'Integer',
        :'jumps_stargate_null_sec' => :'Integer',
        :'jumps_wormhole' => :'Integer',
        :'warps_high_sec' => :'Integer',
        :'warps_low_sec' => :'Integer',
        :'warps_null_sec' => :'Integer',
        :'warps_to_bookmark' => :'Integer',
        :'warps_to_celestial' => :'Integer',
        :'warps_to_fleet_member' => :'Integer',
        :'warps_to_scan_result' => :'Integer',
        :'warps_wormhole' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'acceleration_gate_activations')
        self.acceleration_gate_activations = attributes[:'acceleration_gate_activations']
      end

      if attributes.has_key?(:'align_to')
        self.align_to = attributes[:'align_to']
      end

      if attributes.has_key?(:'distance_warped_high_sec')
        self.distance_warped_high_sec = attributes[:'distance_warped_high_sec']
      end

      if attributes.has_key?(:'distance_warped_low_sec')
        self.distance_warped_low_sec = attributes[:'distance_warped_low_sec']
      end

      if attributes.has_key?(:'distance_warped_null_sec')
        self.distance_warped_null_sec = attributes[:'distance_warped_null_sec']
      end

      if attributes.has_key?(:'distance_warped_wormhole')
        self.distance_warped_wormhole = attributes[:'distance_warped_wormhole']
      end

      if attributes.has_key?(:'docks_high_sec')
        self.docks_high_sec = attributes[:'docks_high_sec']
      end

      if attributes.has_key?(:'docks_low_sec')
        self.docks_low_sec = attributes[:'docks_low_sec']
      end

      if attributes.has_key?(:'docks_null_sec')
        self.docks_null_sec = attributes[:'docks_null_sec']
      end

      if attributes.has_key?(:'jumps_stargate_high_sec')
        self.jumps_stargate_high_sec = attributes[:'jumps_stargate_high_sec']
      end

      if attributes.has_key?(:'jumps_stargate_low_sec')
        self.jumps_stargate_low_sec = attributes[:'jumps_stargate_low_sec']
      end

      if attributes.has_key?(:'jumps_stargate_null_sec')
        self.jumps_stargate_null_sec = attributes[:'jumps_stargate_null_sec']
      end

      if attributes.has_key?(:'jumps_wormhole')
        self.jumps_wormhole = attributes[:'jumps_wormhole']
      end

      if attributes.has_key?(:'warps_high_sec')
        self.warps_high_sec = attributes[:'warps_high_sec']
      end

      if attributes.has_key?(:'warps_low_sec')
        self.warps_low_sec = attributes[:'warps_low_sec']
      end

      if attributes.has_key?(:'warps_null_sec')
        self.warps_null_sec = attributes[:'warps_null_sec']
      end

      if attributes.has_key?(:'warps_to_bookmark')
        self.warps_to_bookmark = attributes[:'warps_to_bookmark']
      end

      if attributes.has_key?(:'warps_to_celestial')
        self.warps_to_celestial = attributes[:'warps_to_celestial']
      end

      if attributes.has_key?(:'warps_to_fleet_member')
        self.warps_to_fleet_member = attributes[:'warps_to_fleet_member']
      end

      if attributes.has_key?(:'warps_to_scan_result')
        self.warps_to_scan_result = attributes[:'warps_to_scan_result']
      end

      if attributes.has_key?(:'warps_wormhole')
        self.warps_wormhole = attributes[:'warps_wormhole']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          acceleration_gate_activations == o.acceleration_gate_activations &&
          align_to == o.align_to &&
          distance_warped_high_sec == o.distance_warped_high_sec &&
          distance_warped_low_sec == o.distance_warped_low_sec &&
          distance_warped_null_sec == o.distance_warped_null_sec &&
          distance_warped_wormhole == o.distance_warped_wormhole &&
          docks_high_sec == o.docks_high_sec &&
          docks_low_sec == o.docks_low_sec &&
          docks_null_sec == o.docks_null_sec &&
          jumps_stargate_high_sec == o.jumps_stargate_high_sec &&
          jumps_stargate_low_sec == o.jumps_stargate_low_sec &&
          jumps_stargate_null_sec == o.jumps_stargate_null_sec &&
          jumps_wormhole == o.jumps_wormhole &&
          warps_high_sec == o.warps_high_sec &&
          warps_low_sec == o.warps_low_sec &&
          warps_null_sec == o.warps_null_sec &&
          warps_to_bookmark == o.warps_to_bookmark &&
          warps_to_celestial == o.warps_to_celestial &&
          warps_to_fleet_member == o.warps_to_fleet_member &&
          warps_to_scan_result == o.warps_to_scan_result &&
          warps_wormhole == o.warps_wormhole
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [acceleration_gate_activations, align_to, distance_warped_high_sec, distance_warped_low_sec, distance_warped_null_sec, distance_warped_wormhole, docks_high_sec, docks_low_sec, docks_null_sec, jumps_stargate_high_sec, jumps_stargate_low_sec, jumps_stargate_null_sec, jumps_wormhole, warps_high_sec, warps_low_sec, warps_null_sec, warps_to_bookmark, warps_to_celestial, warps_to_fleet_member, warps_to_scan_result, warps_wormhole].hash
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
