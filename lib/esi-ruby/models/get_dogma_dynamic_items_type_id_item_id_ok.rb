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
  class GetDogmaDynamicItemsTypeIdItemIdOk
    # The ID of the character who created the item
    attr_accessor :created_by

    # dogma_attributes array
    attr_accessor :dogma_attributes

    # dogma_effects array
    attr_accessor :dogma_effects

    # The type ID of the mutator used to generate the dynamic item.
    attr_accessor :mutator_type_id

    # The type ID of the source item the mutator was applied to create the dynamic item.
    attr_accessor :source_type_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_by' => :'created_by',
        :'dogma_attributes' => :'dogma_attributes',
        :'dogma_effects' => :'dogma_effects',
        :'mutator_type_id' => :'mutator_type_id',
        :'source_type_id' => :'source_type_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created_by' => :'Integer',
        :'dogma_attributes' => :'Array<GetDogmaDynamicItemsTypeIdItemIdDogmaAttribute>',
        :'dogma_effects' => :'Array<GetDogmaDynamicItemsTypeIdItemIdDogmaEffect>',
        :'mutator_type_id' => :'Integer',
        :'source_type_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.has_key?(:'dogma_attributes')
        if (value = attributes[:'dogma_attributes']).is_a?(Array)
          self.dogma_attributes = value
        end
      end

      if attributes.has_key?(:'dogma_effects')
        if (value = attributes[:'dogma_effects']).is_a?(Array)
          self.dogma_effects = value
        end
      end

      if attributes.has_key?(:'mutator_type_id')
        self.mutator_type_id = attributes[:'mutator_type_id']
      end

      if attributes.has_key?(:'source_type_id')
        self.source_type_id = attributes[:'source_type_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @created_by.nil?
        invalid_properties.push('invalid value for "created_by", created_by cannot be nil.')
      end

      if @dogma_attributes.nil?
        invalid_properties.push('invalid value for "dogma_attributes", dogma_attributes cannot be nil.')
      end

      if @dogma_effects.nil?
        invalid_properties.push('invalid value for "dogma_effects", dogma_effects cannot be nil.')
      end

      if @mutator_type_id.nil?
        invalid_properties.push('invalid value for "mutator_type_id", mutator_type_id cannot be nil.')
      end

      if @source_type_id.nil?
        invalid_properties.push('invalid value for "source_type_id", source_type_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @created_by.nil?
      return false if @dogma_attributes.nil?
      return false if @dogma_effects.nil?
      return false if @mutator_type_id.nil?
      return false if @source_type_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_by == o.created_by &&
          dogma_attributes == o.dogma_attributes &&
          dogma_effects == o.dogma_effects &&
          mutator_type_id == o.mutator_type_id &&
          source_type_id == o.source_type_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created_by, dogma_attributes, dogma_effects, mutator_type_id, source_type_id].hash
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
