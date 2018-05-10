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
  class GetCorporationsCorporationIdIndustryJobs200Ok
    # Job activity ID
    attr_accessor :activity_id

    # blueprint_id integer
    attr_accessor :blueprint_id

    # Location ID of the location from which the blueprint was installed. Normally a station ID, but can also be an asset (e.g. container) or corporation facility
    attr_accessor :blueprint_location_id

    # blueprint_type_id integer
    attr_accessor :blueprint_type_id

    # ID of the character which completed this job
    attr_accessor :completed_character_id

    # Date and time when this job was completed
    attr_accessor :completed_date

    # The sume of job installation fee and industry facility tax
    attr_accessor :cost

    # Job duration in seconds
    attr_accessor :duration

    # Date and time when this job finished
    attr_accessor :end_date

    # ID of the facility where this job is running
    attr_accessor :facility_id

    # ID of the character which installed this job
    attr_accessor :installer_id

    # Unique job ID
    attr_accessor :job_id

    # Number of runs blueprint is licensed for
    attr_accessor :licensed_runs

    # ID of the location for the industry facility
    attr_accessor :location_id

    # Location ID of the location to which the output of the job will be delivered. Normally a station ID, but can also be a corporation facility
    attr_accessor :output_location_id

    # Date and time when this job was paused (i.e. time when the facility where this job was installed went offline)
    attr_accessor :pause_date

    # Chance of success for invention
    attr_accessor :probability

    # Type ID of product (manufactured, copied or invented)
    attr_accessor :product_type_id

    # Number of runs for a manufacturing job, or number of copies to make for a blueprint copy
    attr_accessor :runs

    # Date and time when this job started
    attr_accessor :start_date

    # status string
    attr_accessor :status

    # Number of successful runs for this job. Equal to runs unless this is an invention job
    attr_accessor :successful_runs

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
        :'activity_id' => :'activity_id',
        :'blueprint_id' => :'blueprint_id',
        :'blueprint_location_id' => :'blueprint_location_id',
        :'blueprint_type_id' => :'blueprint_type_id',
        :'completed_character_id' => :'completed_character_id',
        :'completed_date' => :'completed_date',
        :'cost' => :'cost',
        :'duration' => :'duration',
        :'end_date' => :'end_date',
        :'facility_id' => :'facility_id',
        :'installer_id' => :'installer_id',
        :'job_id' => :'job_id',
        :'licensed_runs' => :'licensed_runs',
        :'location_id' => :'location_id',
        :'output_location_id' => :'output_location_id',
        :'pause_date' => :'pause_date',
        :'probability' => :'probability',
        :'product_type_id' => :'product_type_id',
        :'runs' => :'runs',
        :'start_date' => :'start_date',
        :'status' => :'status',
        :'successful_runs' => :'successful_runs'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'activity_id' => :'Integer',
        :'blueprint_id' => :'Integer',
        :'blueprint_location_id' => :'Integer',
        :'blueprint_type_id' => :'Integer',
        :'completed_character_id' => :'Integer',
        :'completed_date' => :'DateTime',
        :'cost' => :'Float',
        :'duration' => :'Integer',
        :'end_date' => :'DateTime',
        :'facility_id' => :'Integer',
        :'installer_id' => :'Integer',
        :'job_id' => :'Integer',
        :'licensed_runs' => :'Integer',
        :'location_id' => :'Integer',
        :'output_location_id' => :'Integer',
        :'pause_date' => :'DateTime',
        :'probability' => :'Float',
        :'product_type_id' => :'Integer',
        :'runs' => :'Integer',
        :'start_date' => :'DateTime',
        :'status' => :'String',
        :'successful_runs' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'activity_id')
        self.activity_id = attributes[:'activity_id']
      end

      if attributes.has_key?(:'blueprint_id')
        self.blueprint_id = attributes[:'blueprint_id']
      end

      if attributes.has_key?(:'blueprint_location_id')
        self.blueprint_location_id = attributes[:'blueprint_location_id']
      end

      if attributes.has_key?(:'blueprint_type_id')
        self.blueprint_type_id = attributes[:'blueprint_type_id']
      end

      if attributes.has_key?(:'completed_character_id')
        self.completed_character_id = attributes[:'completed_character_id']
      end

      if attributes.has_key?(:'completed_date')
        self.completed_date = attributes[:'completed_date']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.has_key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.has_key?(:'facility_id')
        self.facility_id = attributes[:'facility_id']
      end

      if attributes.has_key?(:'installer_id')
        self.installer_id = attributes[:'installer_id']
      end

      if attributes.has_key?(:'job_id')
        self.job_id = attributes[:'job_id']
      end

      if attributes.has_key?(:'licensed_runs')
        self.licensed_runs = attributes[:'licensed_runs']
      end

      if attributes.has_key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.has_key?(:'output_location_id')
        self.output_location_id = attributes[:'output_location_id']
      end

      if attributes.has_key?(:'pause_date')
        self.pause_date = attributes[:'pause_date']
      end

      if attributes.has_key?(:'probability')
        self.probability = attributes[:'probability']
      end

      if attributes.has_key?(:'product_type_id')
        self.product_type_id = attributes[:'product_type_id']
      end

      if attributes.has_key?(:'runs')
        self.runs = attributes[:'runs']
      end

      if attributes.has_key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'successful_runs')
        self.successful_runs = attributes[:'successful_runs']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @activity_id.nil?
        invalid_properties.push('invalid value for "activity_id", activity_id cannot be nil.')
      end

      if @blueprint_id.nil?
        invalid_properties.push('invalid value for "blueprint_id", blueprint_id cannot be nil.')
      end

      if @blueprint_location_id.nil?
        invalid_properties.push('invalid value for "blueprint_location_id", blueprint_location_id cannot be nil.')
      end

      if @blueprint_type_id.nil?
        invalid_properties.push('invalid value for "blueprint_type_id", blueprint_type_id cannot be nil.')
      end

      if @duration.nil?
        invalid_properties.push('invalid value for "duration", duration cannot be nil.')
      end

      if @end_date.nil?
        invalid_properties.push('invalid value for "end_date", end_date cannot be nil.')
      end

      if @facility_id.nil?
        invalid_properties.push('invalid value for "facility_id", facility_id cannot be nil.')
      end

      if @installer_id.nil?
        invalid_properties.push('invalid value for "installer_id", installer_id cannot be nil.')
      end

      if @job_id.nil?
        invalid_properties.push('invalid value for "job_id", job_id cannot be nil.')
      end

      if @location_id.nil?
        invalid_properties.push('invalid value for "location_id", location_id cannot be nil.')
      end

      if @output_location_id.nil?
        invalid_properties.push('invalid value for "output_location_id", output_location_id cannot be nil.')
      end

      if @runs.nil?
        invalid_properties.push('invalid value for "runs", runs cannot be nil.')
      end

      if @start_date.nil?
        invalid_properties.push('invalid value for "start_date", start_date cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @activity_id.nil?
      return false if @blueprint_id.nil?
      return false if @blueprint_location_id.nil?
      return false if @blueprint_type_id.nil?
      return false if @duration.nil?
      return false if @end_date.nil?
      return false if @facility_id.nil?
      return false if @installer_id.nil?
      return false if @job_id.nil?
      return false if @location_id.nil?
      return false if @output_location_id.nil?
      return false if @runs.nil?
      return false if @start_date.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['active', 'cancelled', 'delivered', 'paused', 'ready', 'reverted'])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['active', 'cancelled', 'delivered', 'paused', 'ready', 'reverted'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          activity_id == o.activity_id &&
          blueprint_id == o.blueprint_id &&
          blueprint_location_id == o.blueprint_location_id &&
          blueprint_type_id == o.blueprint_type_id &&
          completed_character_id == o.completed_character_id &&
          completed_date == o.completed_date &&
          cost == o.cost &&
          duration == o.duration &&
          end_date == o.end_date &&
          facility_id == o.facility_id &&
          installer_id == o.installer_id &&
          job_id == o.job_id &&
          licensed_runs == o.licensed_runs &&
          location_id == o.location_id &&
          output_location_id == o.output_location_id &&
          pause_date == o.pause_date &&
          probability == o.probability &&
          product_type_id == o.product_type_id &&
          runs == o.runs &&
          start_date == o.start_date &&
          status == o.status &&
          successful_runs == o.successful_runs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [activity_id, blueprint_id, blueprint_location_id, blueprint_type_id, completed_character_id, completed_date, cost, duration, end_date, facility_id, installer_id, job_id, licensed_runs, location_id, output_location_id, pause_date, probability, product_type_id, runs, start_date, status, successful_runs].hash
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
