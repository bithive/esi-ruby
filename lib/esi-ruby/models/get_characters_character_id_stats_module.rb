=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module EsiRuby
  # module object
  class GetCharactersCharacterIdStatsModule
    # activations_armor_hardener integer
    attr_accessor :activations_armor_hardener

    # activations_armor_repair_unit integer
    attr_accessor :activations_armor_repair_unit

    # activations_armor_resistance_shift_hardener integer
    attr_accessor :activations_armor_resistance_shift_hardener

    # activations_automated_targeting_system integer
    attr_accessor :activations_automated_targeting_system

    # activations_bastion integer
    attr_accessor :activations_bastion

    # activations_bomb_launcher integer
    attr_accessor :activations_bomb_launcher

    # activations_capacitor_booster integer
    attr_accessor :activations_capacitor_booster

    # activations_cargo_scanner integer
    attr_accessor :activations_cargo_scanner

    # activations_cloaking_device integer
    attr_accessor :activations_cloaking_device

    # activations_clone_vat_bay integer
    attr_accessor :activations_clone_vat_bay

    # activations_cynosural_field integer
    attr_accessor :activations_cynosural_field

    # activations_damage_control integer
    attr_accessor :activations_damage_control

    # activations_data_miners integer
    attr_accessor :activations_data_miners

    # activations_drone_control_unit integer
    attr_accessor :activations_drone_control_unit

    # activations_drone_tracking_modules integer
    attr_accessor :activations_drone_tracking_modules

    # activations_eccm integer
    attr_accessor :activations_eccm

    # activations_ecm integer
    attr_accessor :activations_ecm

    # activations_ecm_burst integer
    attr_accessor :activations_ecm_burst

    # activations_energy_destabilizer integer
    attr_accessor :activations_energy_destabilizer

    # activations_energy_vampire integer
    attr_accessor :activations_energy_vampire

    # activations_energy_weapon integer
    attr_accessor :activations_energy_weapon

    # activations_festival_launcher integer
    attr_accessor :activations_festival_launcher

    # activations_frequency_mining_laser integer
    attr_accessor :activations_frequency_mining_laser

    # activations_fueled_armor_repairer integer
    attr_accessor :activations_fueled_armor_repairer

    # activations_fueled_shield_booster integer
    attr_accessor :activations_fueled_shield_booster

    # activations_gang_coordinator integer
    attr_accessor :activations_gang_coordinator

    # activations_gas_cloud_harvester integer
    attr_accessor :activations_gas_cloud_harvester

    # activations_hull_repair_unit integer
    attr_accessor :activations_hull_repair_unit

    # activations_hybrid_weapon integer
    attr_accessor :activations_hybrid_weapon

    # activations_industrial_core integer
    attr_accessor :activations_industrial_core

    # activations_interdiction_sphere_launcher integer
    attr_accessor :activations_interdiction_sphere_launcher

    # activations_micro_jump_drive integer
    attr_accessor :activations_micro_jump_drive

    # activations_mining_laser integer
    attr_accessor :activations_mining_laser

    # activations_missile_launcher integer
    attr_accessor :activations_missile_launcher

    # activations_passive_targeting_system integer
    attr_accessor :activations_passive_targeting_system

    # activations_probe_launcher integer
    attr_accessor :activations_probe_launcher

    # activations_projected_eccm integer
    attr_accessor :activations_projected_eccm

    # activations_projectile_weapon integer
    attr_accessor :activations_projectile_weapon

    # activations_propulsion_module integer
    attr_accessor :activations_propulsion_module

    # activations_remote_armor_repairer integer
    attr_accessor :activations_remote_armor_repairer

    # activations_remote_capacitor_transmitter integer
    attr_accessor :activations_remote_capacitor_transmitter

    # activations_remote_ecm_burst integer
    attr_accessor :activations_remote_ecm_burst

    # activations_remote_hull_repairer integer
    attr_accessor :activations_remote_hull_repairer

    # activations_remote_sensor_booster integer
    attr_accessor :activations_remote_sensor_booster

    # activations_remote_sensor_damper integer
    attr_accessor :activations_remote_sensor_damper

    # activations_remote_shield_booster integer
    attr_accessor :activations_remote_shield_booster

    # activations_remote_tracking_computer integer
    attr_accessor :activations_remote_tracking_computer

    # activations_salvager integer
    attr_accessor :activations_salvager

    # activations_sensor_booster integer
    attr_accessor :activations_sensor_booster

    # activations_shield_booster integer
    attr_accessor :activations_shield_booster

    # activations_shield_hardener integer
    attr_accessor :activations_shield_hardener

    # activations_ship_scanner integer
    attr_accessor :activations_ship_scanner

    # activations_siege integer
    attr_accessor :activations_siege

    # activations_smart_bomb integer
    attr_accessor :activations_smart_bomb

    # activations_stasis_web integer
    attr_accessor :activations_stasis_web

    # activations_strip_miner integer
    attr_accessor :activations_strip_miner

    # activations_super_weapon integer
    attr_accessor :activations_super_weapon

    # activations_survey_scanner integer
    attr_accessor :activations_survey_scanner

    # activations_target_breaker integer
    attr_accessor :activations_target_breaker

    # activations_target_painter integer
    attr_accessor :activations_target_painter

    # activations_tracking_computer integer
    attr_accessor :activations_tracking_computer

    # activations_tracking_disruptor integer
    attr_accessor :activations_tracking_disruptor

    # activations_tractor_beam integer
    attr_accessor :activations_tractor_beam

    # activations_triage integer
    attr_accessor :activations_triage

    # activations_warp_disrupt_field_generator integer
    attr_accessor :activations_warp_disrupt_field_generator

    # activations_warp_scrambler integer
    attr_accessor :activations_warp_scrambler

    # link_weapons integer
    attr_accessor :link_weapons

    # overload integer
    attr_accessor :overload

    # repairs integer
    attr_accessor :repairs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'activations_armor_hardener' => :'activations_armor_hardener',
        :'activations_armor_repair_unit' => :'activations_armor_repair_unit',
        :'activations_armor_resistance_shift_hardener' => :'activations_armor_resistance_shift_hardener',
        :'activations_automated_targeting_system' => :'activations_automated_targeting_system',
        :'activations_bastion' => :'activations_bastion',
        :'activations_bomb_launcher' => :'activations_bomb_launcher',
        :'activations_capacitor_booster' => :'activations_capacitor_booster',
        :'activations_cargo_scanner' => :'activations_cargo_scanner',
        :'activations_cloaking_device' => :'activations_cloaking_device',
        :'activations_clone_vat_bay' => :'activations_clone_vat_bay',
        :'activations_cynosural_field' => :'activations_cynosural_field',
        :'activations_damage_control' => :'activations_damage_control',
        :'activations_data_miners' => :'activations_data_miners',
        :'activations_drone_control_unit' => :'activations_drone_control_unit',
        :'activations_drone_tracking_modules' => :'activations_drone_tracking_modules',
        :'activations_eccm' => :'activations_eccm',
        :'activations_ecm' => :'activations_ecm',
        :'activations_ecm_burst' => :'activations_ecm_burst',
        :'activations_energy_destabilizer' => :'activations_energy_destabilizer',
        :'activations_energy_vampire' => :'activations_energy_vampire',
        :'activations_energy_weapon' => :'activations_energy_weapon',
        :'activations_festival_launcher' => :'activations_festival_launcher',
        :'activations_frequency_mining_laser' => :'activations_frequency_mining_laser',
        :'activations_fueled_armor_repairer' => :'activations_fueled_armor_repairer',
        :'activations_fueled_shield_booster' => :'activations_fueled_shield_booster',
        :'activations_gang_coordinator' => :'activations_gang_coordinator',
        :'activations_gas_cloud_harvester' => :'activations_gas_cloud_harvester',
        :'activations_hull_repair_unit' => :'activations_hull_repair_unit',
        :'activations_hybrid_weapon' => :'activations_hybrid_weapon',
        :'activations_industrial_core' => :'activations_industrial_core',
        :'activations_interdiction_sphere_launcher' => :'activations_interdiction_sphere_launcher',
        :'activations_micro_jump_drive' => :'activations_micro_jump_drive',
        :'activations_mining_laser' => :'activations_mining_laser',
        :'activations_missile_launcher' => :'activations_missile_launcher',
        :'activations_passive_targeting_system' => :'activations_passive_targeting_system',
        :'activations_probe_launcher' => :'activations_probe_launcher',
        :'activations_projected_eccm' => :'activations_projected_eccm',
        :'activations_projectile_weapon' => :'activations_projectile_weapon',
        :'activations_propulsion_module' => :'activations_propulsion_module',
        :'activations_remote_armor_repairer' => :'activations_remote_armor_repairer',
        :'activations_remote_capacitor_transmitter' => :'activations_remote_capacitor_transmitter',
        :'activations_remote_ecm_burst' => :'activations_remote_ecm_burst',
        :'activations_remote_hull_repairer' => :'activations_remote_hull_repairer',
        :'activations_remote_sensor_booster' => :'activations_remote_sensor_booster',
        :'activations_remote_sensor_damper' => :'activations_remote_sensor_damper',
        :'activations_remote_shield_booster' => :'activations_remote_shield_booster',
        :'activations_remote_tracking_computer' => :'activations_remote_tracking_computer',
        :'activations_salvager' => :'activations_salvager',
        :'activations_sensor_booster' => :'activations_sensor_booster',
        :'activations_shield_booster' => :'activations_shield_booster',
        :'activations_shield_hardener' => :'activations_shield_hardener',
        :'activations_ship_scanner' => :'activations_ship_scanner',
        :'activations_siege' => :'activations_siege',
        :'activations_smart_bomb' => :'activations_smart_bomb',
        :'activations_stasis_web' => :'activations_stasis_web',
        :'activations_strip_miner' => :'activations_strip_miner',
        :'activations_super_weapon' => :'activations_super_weapon',
        :'activations_survey_scanner' => :'activations_survey_scanner',
        :'activations_target_breaker' => :'activations_target_breaker',
        :'activations_target_painter' => :'activations_target_painter',
        :'activations_tracking_computer' => :'activations_tracking_computer',
        :'activations_tracking_disruptor' => :'activations_tracking_disruptor',
        :'activations_tractor_beam' => :'activations_tractor_beam',
        :'activations_triage' => :'activations_triage',
        :'activations_warp_disrupt_field_generator' => :'activations_warp_disrupt_field_generator',
        :'activations_warp_scrambler' => :'activations_warp_scrambler',
        :'link_weapons' => :'link_weapons',
        :'overload' => :'overload',
        :'repairs' => :'repairs'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'activations_armor_hardener' => :'Integer',
        :'activations_armor_repair_unit' => :'Integer',
        :'activations_armor_resistance_shift_hardener' => :'Integer',
        :'activations_automated_targeting_system' => :'Integer',
        :'activations_bastion' => :'Integer',
        :'activations_bomb_launcher' => :'Integer',
        :'activations_capacitor_booster' => :'Integer',
        :'activations_cargo_scanner' => :'Integer',
        :'activations_cloaking_device' => :'Integer',
        :'activations_clone_vat_bay' => :'Integer',
        :'activations_cynosural_field' => :'Integer',
        :'activations_damage_control' => :'Integer',
        :'activations_data_miners' => :'Integer',
        :'activations_drone_control_unit' => :'Integer',
        :'activations_drone_tracking_modules' => :'Integer',
        :'activations_eccm' => :'Integer',
        :'activations_ecm' => :'Integer',
        :'activations_ecm_burst' => :'Integer',
        :'activations_energy_destabilizer' => :'Integer',
        :'activations_energy_vampire' => :'Integer',
        :'activations_energy_weapon' => :'Integer',
        :'activations_festival_launcher' => :'Integer',
        :'activations_frequency_mining_laser' => :'Integer',
        :'activations_fueled_armor_repairer' => :'Integer',
        :'activations_fueled_shield_booster' => :'Integer',
        :'activations_gang_coordinator' => :'Integer',
        :'activations_gas_cloud_harvester' => :'Integer',
        :'activations_hull_repair_unit' => :'Integer',
        :'activations_hybrid_weapon' => :'Integer',
        :'activations_industrial_core' => :'Integer',
        :'activations_interdiction_sphere_launcher' => :'Integer',
        :'activations_micro_jump_drive' => :'Integer',
        :'activations_mining_laser' => :'Integer',
        :'activations_missile_launcher' => :'Integer',
        :'activations_passive_targeting_system' => :'Integer',
        :'activations_probe_launcher' => :'Integer',
        :'activations_projected_eccm' => :'Integer',
        :'activations_projectile_weapon' => :'Integer',
        :'activations_propulsion_module' => :'Integer',
        :'activations_remote_armor_repairer' => :'Integer',
        :'activations_remote_capacitor_transmitter' => :'Integer',
        :'activations_remote_ecm_burst' => :'Integer',
        :'activations_remote_hull_repairer' => :'Integer',
        :'activations_remote_sensor_booster' => :'Integer',
        :'activations_remote_sensor_damper' => :'Integer',
        :'activations_remote_shield_booster' => :'Integer',
        :'activations_remote_tracking_computer' => :'Integer',
        :'activations_salvager' => :'Integer',
        :'activations_sensor_booster' => :'Integer',
        :'activations_shield_booster' => :'Integer',
        :'activations_shield_hardener' => :'Integer',
        :'activations_ship_scanner' => :'Integer',
        :'activations_siege' => :'Integer',
        :'activations_smart_bomb' => :'Integer',
        :'activations_stasis_web' => :'Integer',
        :'activations_strip_miner' => :'Integer',
        :'activations_super_weapon' => :'Integer',
        :'activations_survey_scanner' => :'Integer',
        :'activations_target_breaker' => :'Integer',
        :'activations_target_painter' => :'Integer',
        :'activations_tracking_computer' => :'Integer',
        :'activations_tracking_disruptor' => :'Integer',
        :'activations_tractor_beam' => :'Integer',
        :'activations_triage' => :'Integer',
        :'activations_warp_disrupt_field_generator' => :'Integer',
        :'activations_warp_scrambler' => :'Integer',
        :'link_weapons' => :'Integer',
        :'overload' => :'Integer',
        :'repairs' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'activations_armor_hardener')
        self.activations_armor_hardener = attributes[:'activations_armor_hardener']
      end

      if attributes.has_key?(:'activations_armor_repair_unit')
        self.activations_armor_repair_unit = attributes[:'activations_armor_repair_unit']
      end

      if attributes.has_key?(:'activations_armor_resistance_shift_hardener')
        self.activations_armor_resistance_shift_hardener = attributes[:'activations_armor_resistance_shift_hardener']
      end

      if attributes.has_key?(:'activations_automated_targeting_system')
        self.activations_automated_targeting_system = attributes[:'activations_automated_targeting_system']
      end

      if attributes.has_key?(:'activations_bastion')
        self.activations_bastion = attributes[:'activations_bastion']
      end

      if attributes.has_key?(:'activations_bomb_launcher')
        self.activations_bomb_launcher = attributes[:'activations_bomb_launcher']
      end

      if attributes.has_key?(:'activations_capacitor_booster')
        self.activations_capacitor_booster = attributes[:'activations_capacitor_booster']
      end

      if attributes.has_key?(:'activations_cargo_scanner')
        self.activations_cargo_scanner = attributes[:'activations_cargo_scanner']
      end

      if attributes.has_key?(:'activations_cloaking_device')
        self.activations_cloaking_device = attributes[:'activations_cloaking_device']
      end

      if attributes.has_key?(:'activations_clone_vat_bay')
        self.activations_clone_vat_bay = attributes[:'activations_clone_vat_bay']
      end

      if attributes.has_key?(:'activations_cynosural_field')
        self.activations_cynosural_field = attributes[:'activations_cynosural_field']
      end

      if attributes.has_key?(:'activations_damage_control')
        self.activations_damage_control = attributes[:'activations_damage_control']
      end

      if attributes.has_key?(:'activations_data_miners')
        self.activations_data_miners = attributes[:'activations_data_miners']
      end

      if attributes.has_key?(:'activations_drone_control_unit')
        self.activations_drone_control_unit = attributes[:'activations_drone_control_unit']
      end

      if attributes.has_key?(:'activations_drone_tracking_modules')
        self.activations_drone_tracking_modules = attributes[:'activations_drone_tracking_modules']
      end

      if attributes.has_key?(:'activations_eccm')
        self.activations_eccm = attributes[:'activations_eccm']
      end

      if attributes.has_key?(:'activations_ecm')
        self.activations_ecm = attributes[:'activations_ecm']
      end

      if attributes.has_key?(:'activations_ecm_burst')
        self.activations_ecm_burst = attributes[:'activations_ecm_burst']
      end

      if attributes.has_key?(:'activations_energy_destabilizer')
        self.activations_energy_destabilizer = attributes[:'activations_energy_destabilizer']
      end

      if attributes.has_key?(:'activations_energy_vampire')
        self.activations_energy_vampire = attributes[:'activations_energy_vampire']
      end

      if attributes.has_key?(:'activations_energy_weapon')
        self.activations_energy_weapon = attributes[:'activations_energy_weapon']
      end

      if attributes.has_key?(:'activations_festival_launcher')
        self.activations_festival_launcher = attributes[:'activations_festival_launcher']
      end

      if attributes.has_key?(:'activations_frequency_mining_laser')
        self.activations_frequency_mining_laser = attributes[:'activations_frequency_mining_laser']
      end

      if attributes.has_key?(:'activations_fueled_armor_repairer')
        self.activations_fueled_armor_repairer = attributes[:'activations_fueled_armor_repairer']
      end

      if attributes.has_key?(:'activations_fueled_shield_booster')
        self.activations_fueled_shield_booster = attributes[:'activations_fueled_shield_booster']
      end

      if attributes.has_key?(:'activations_gang_coordinator')
        self.activations_gang_coordinator = attributes[:'activations_gang_coordinator']
      end

      if attributes.has_key?(:'activations_gas_cloud_harvester')
        self.activations_gas_cloud_harvester = attributes[:'activations_gas_cloud_harvester']
      end

      if attributes.has_key?(:'activations_hull_repair_unit')
        self.activations_hull_repair_unit = attributes[:'activations_hull_repair_unit']
      end

      if attributes.has_key?(:'activations_hybrid_weapon')
        self.activations_hybrid_weapon = attributes[:'activations_hybrid_weapon']
      end

      if attributes.has_key?(:'activations_industrial_core')
        self.activations_industrial_core = attributes[:'activations_industrial_core']
      end

      if attributes.has_key?(:'activations_interdiction_sphere_launcher')
        self.activations_interdiction_sphere_launcher = attributes[:'activations_interdiction_sphere_launcher']
      end

      if attributes.has_key?(:'activations_micro_jump_drive')
        self.activations_micro_jump_drive = attributes[:'activations_micro_jump_drive']
      end

      if attributes.has_key?(:'activations_mining_laser')
        self.activations_mining_laser = attributes[:'activations_mining_laser']
      end

      if attributes.has_key?(:'activations_missile_launcher')
        self.activations_missile_launcher = attributes[:'activations_missile_launcher']
      end

      if attributes.has_key?(:'activations_passive_targeting_system')
        self.activations_passive_targeting_system = attributes[:'activations_passive_targeting_system']
      end

      if attributes.has_key?(:'activations_probe_launcher')
        self.activations_probe_launcher = attributes[:'activations_probe_launcher']
      end

      if attributes.has_key?(:'activations_projected_eccm')
        self.activations_projected_eccm = attributes[:'activations_projected_eccm']
      end

      if attributes.has_key?(:'activations_projectile_weapon')
        self.activations_projectile_weapon = attributes[:'activations_projectile_weapon']
      end

      if attributes.has_key?(:'activations_propulsion_module')
        self.activations_propulsion_module = attributes[:'activations_propulsion_module']
      end

      if attributes.has_key?(:'activations_remote_armor_repairer')
        self.activations_remote_armor_repairer = attributes[:'activations_remote_armor_repairer']
      end

      if attributes.has_key?(:'activations_remote_capacitor_transmitter')
        self.activations_remote_capacitor_transmitter = attributes[:'activations_remote_capacitor_transmitter']
      end

      if attributes.has_key?(:'activations_remote_ecm_burst')
        self.activations_remote_ecm_burst = attributes[:'activations_remote_ecm_burst']
      end

      if attributes.has_key?(:'activations_remote_hull_repairer')
        self.activations_remote_hull_repairer = attributes[:'activations_remote_hull_repairer']
      end

      if attributes.has_key?(:'activations_remote_sensor_booster')
        self.activations_remote_sensor_booster = attributes[:'activations_remote_sensor_booster']
      end

      if attributes.has_key?(:'activations_remote_sensor_damper')
        self.activations_remote_sensor_damper = attributes[:'activations_remote_sensor_damper']
      end

      if attributes.has_key?(:'activations_remote_shield_booster')
        self.activations_remote_shield_booster = attributes[:'activations_remote_shield_booster']
      end

      if attributes.has_key?(:'activations_remote_tracking_computer')
        self.activations_remote_tracking_computer = attributes[:'activations_remote_tracking_computer']
      end

      if attributes.has_key?(:'activations_salvager')
        self.activations_salvager = attributes[:'activations_salvager']
      end

      if attributes.has_key?(:'activations_sensor_booster')
        self.activations_sensor_booster = attributes[:'activations_sensor_booster']
      end

      if attributes.has_key?(:'activations_shield_booster')
        self.activations_shield_booster = attributes[:'activations_shield_booster']
      end

      if attributes.has_key?(:'activations_shield_hardener')
        self.activations_shield_hardener = attributes[:'activations_shield_hardener']
      end

      if attributes.has_key?(:'activations_ship_scanner')
        self.activations_ship_scanner = attributes[:'activations_ship_scanner']
      end

      if attributes.has_key?(:'activations_siege')
        self.activations_siege = attributes[:'activations_siege']
      end

      if attributes.has_key?(:'activations_smart_bomb')
        self.activations_smart_bomb = attributes[:'activations_smart_bomb']
      end

      if attributes.has_key?(:'activations_stasis_web')
        self.activations_stasis_web = attributes[:'activations_stasis_web']
      end

      if attributes.has_key?(:'activations_strip_miner')
        self.activations_strip_miner = attributes[:'activations_strip_miner']
      end

      if attributes.has_key?(:'activations_super_weapon')
        self.activations_super_weapon = attributes[:'activations_super_weapon']
      end

      if attributes.has_key?(:'activations_survey_scanner')
        self.activations_survey_scanner = attributes[:'activations_survey_scanner']
      end

      if attributes.has_key?(:'activations_target_breaker')
        self.activations_target_breaker = attributes[:'activations_target_breaker']
      end

      if attributes.has_key?(:'activations_target_painter')
        self.activations_target_painter = attributes[:'activations_target_painter']
      end

      if attributes.has_key?(:'activations_tracking_computer')
        self.activations_tracking_computer = attributes[:'activations_tracking_computer']
      end

      if attributes.has_key?(:'activations_tracking_disruptor')
        self.activations_tracking_disruptor = attributes[:'activations_tracking_disruptor']
      end

      if attributes.has_key?(:'activations_tractor_beam')
        self.activations_tractor_beam = attributes[:'activations_tractor_beam']
      end

      if attributes.has_key?(:'activations_triage')
        self.activations_triage = attributes[:'activations_triage']
      end

      if attributes.has_key?(:'activations_warp_disrupt_field_generator')
        self.activations_warp_disrupt_field_generator = attributes[:'activations_warp_disrupt_field_generator']
      end

      if attributes.has_key?(:'activations_warp_scrambler')
        self.activations_warp_scrambler = attributes[:'activations_warp_scrambler']
      end

      if attributes.has_key?(:'link_weapons')
        self.link_weapons = attributes[:'link_weapons']
      end

      if attributes.has_key?(:'overload')
        self.overload = attributes[:'overload']
      end

      if attributes.has_key?(:'repairs')
        self.repairs = attributes[:'repairs']
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
          activations_armor_hardener == o.activations_armor_hardener &&
          activations_armor_repair_unit == o.activations_armor_repair_unit &&
          activations_armor_resistance_shift_hardener == o.activations_armor_resistance_shift_hardener &&
          activations_automated_targeting_system == o.activations_automated_targeting_system &&
          activations_bastion == o.activations_bastion &&
          activations_bomb_launcher == o.activations_bomb_launcher &&
          activations_capacitor_booster == o.activations_capacitor_booster &&
          activations_cargo_scanner == o.activations_cargo_scanner &&
          activations_cloaking_device == o.activations_cloaking_device &&
          activations_clone_vat_bay == o.activations_clone_vat_bay &&
          activations_cynosural_field == o.activations_cynosural_field &&
          activations_damage_control == o.activations_damage_control &&
          activations_data_miners == o.activations_data_miners &&
          activations_drone_control_unit == o.activations_drone_control_unit &&
          activations_drone_tracking_modules == o.activations_drone_tracking_modules &&
          activations_eccm == o.activations_eccm &&
          activations_ecm == o.activations_ecm &&
          activations_ecm_burst == o.activations_ecm_burst &&
          activations_energy_destabilizer == o.activations_energy_destabilizer &&
          activations_energy_vampire == o.activations_energy_vampire &&
          activations_energy_weapon == o.activations_energy_weapon &&
          activations_festival_launcher == o.activations_festival_launcher &&
          activations_frequency_mining_laser == o.activations_frequency_mining_laser &&
          activations_fueled_armor_repairer == o.activations_fueled_armor_repairer &&
          activations_fueled_shield_booster == o.activations_fueled_shield_booster &&
          activations_gang_coordinator == o.activations_gang_coordinator &&
          activations_gas_cloud_harvester == o.activations_gas_cloud_harvester &&
          activations_hull_repair_unit == o.activations_hull_repair_unit &&
          activations_hybrid_weapon == o.activations_hybrid_weapon &&
          activations_industrial_core == o.activations_industrial_core &&
          activations_interdiction_sphere_launcher == o.activations_interdiction_sphere_launcher &&
          activations_micro_jump_drive == o.activations_micro_jump_drive &&
          activations_mining_laser == o.activations_mining_laser &&
          activations_missile_launcher == o.activations_missile_launcher &&
          activations_passive_targeting_system == o.activations_passive_targeting_system &&
          activations_probe_launcher == o.activations_probe_launcher &&
          activations_projected_eccm == o.activations_projected_eccm &&
          activations_projectile_weapon == o.activations_projectile_weapon &&
          activations_propulsion_module == o.activations_propulsion_module &&
          activations_remote_armor_repairer == o.activations_remote_armor_repairer &&
          activations_remote_capacitor_transmitter == o.activations_remote_capacitor_transmitter &&
          activations_remote_ecm_burst == o.activations_remote_ecm_burst &&
          activations_remote_hull_repairer == o.activations_remote_hull_repairer &&
          activations_remote_sensor_booster == o.activations_remote_sensor_booster &&
          activations_remote_sensor_damper == o.activations_remote_sensor_damper &&
          activations_remote_shield_booster == o.activations_remote_shield_booster &&
          activations_remote_tracking_computer == o.activations_remote_tracking_computer &&
          activations_salvager == o.activations_salvager &&
          activations_sensor_booster == o.activations_sensor_booster &&
          activations_shield_booster == o.activations_shield_booster &&
          activations_shield_hardener == o.activations_shield_hardener &&
          activations_ship_scanner == o.activations_ship_scanner &&
          activations_siege == o.activations_siege &&
          activations_smart_bomb == o.activations_smart_bomb &&
          activations_stasis_web == o.activations_stasis_web &&
          activations_strip_miner == o.activations_strip_miner &&
          activations_super_weapon == o.activations_super_weapon &&
          activations_survey_scanner == o.activations_survey_scanner &&
          activations_target_breaker == o.activations_target_breaker &&
          activations_target_painter == o.activations_target_painter &&
          activations_tracking_computer == o.activations_tracking_computer &&
          activations_tracking_disruptor == o.activations_tracking_disruptor &&
          activations_tractor_beam == o.activations_tractor_beam &&
          activations_triage == o.activations_triage &&
          activations_warp_disrupt_field_generator == o.activations_warp_disrupt_field_generator &&
          activations_warp_scrambler == o.activations_warp_scrambler &&
          link_weapons == o.link_weapons &&
          overload == o.overload &&
          repairs == o.repairs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [activations_armor_hardener, activations_armor_repair_unit, activations_armor_resistance_shift_hardener, activations_automated_targeting_system, activations_bastion, activations_bomb_launcher, activations_capacitor_booster, activations_cargo_scanner, activations_cloaking_device, activations_clone_vat_bay, activations_cynosural_field, activations_damage_control, activations_data_miners, activations_drone_control_unit, activations_drone_tracking_modules, activations_eccm, activations_ecm, activations_ecm_burst, activations_energy_destabilizer, activations_energy_vampire, activations_energy_weapon, activations_festival_launcher, activations_frequency_mining_laser, activations_fueled_armor_repairer, activations_fueled_shield_booster, activations_gang_coordinator, activations_gas_cloud_harvester, activations_hull_repair_unit, activations_hybrid_weapon, activations_industrial_core, activations_interdiction_sphere_launcher, activations_micro_jump_drive, activations_mining_laser, activations_missile_launcher, activations_passive_targeting_system, activations_probe_launcher, activations_projected_eccm, activations_projectile_weapon, activations_propulsion_module, activations_remote_armor_repairer, activations_remote_capacitor_transmitter, activations_remote_ecm_burst, activations_remote_hull_repairer, activations_remote_sensor_booster, activations_remote_sensor_damper, activations_remote_shield_booster, activations_remote_tracking_computer, activations_salvager, activations_sensor_booster, activations_shield_booster, activations_shield_hardener, activations_ship_scanner, activations_siege, activations_smart_bomb, activations_stasis_web, activations_strip_miner, activations_super_weapon, activations_survey_scanner, activations_target_breaker, activations_target_painter, activations_tracking_computer, activations_tracking_disruptor, activations_tractor_beam, activations_triage, activations_warp_disrupt_field_generator, activations_warp_scrambler, link_weapons, overload, repairs].hash
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