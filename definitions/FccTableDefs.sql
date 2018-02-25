# Downloaded from http://wireless.fcc.gov/uls/ebf/pa_ddef51.txt

create table dbo.PUBACC_A2
(
      Record_Type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      ULS_File_Number           char(14)             null,
      EBF_Number                varchar(30)          null,
      spectrum_manager_leasing  char(1)              null,
      defacto_transfer_leasing  char(1)              null,
      new_spectrum_leasing      char(1)              null,
      spectrum_subleasing       char(1)              null,
      xfer_control_lessee       char(1)              null,
      revision_spectrum_lease   char(1)              null,
      assignment_spectrum_lease char(1)              null,
      pfr_status		char(1)		     null
    		
)

go
create table dbo.PUBACC_AC
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      aircraft_count            int                  null,
      type_of_carrier           char(1)              null,
      portable_indicator        char(1)              null,
      fleet_indicator           char(1)              null,
      n_number                  char(10)             null
)

go

create table dbo.PUBACC_AD
(
      Record_Type               	char(2)              null,
      unique_system_identifier  	numeric(9,0)         not null,
      ULS_File_Number           	char(14)             null,
      EBF_Number                	varchar(30)          null,
      Application_Purpose       	char(2)              null,
      Application_Status       		char(1)              null,
      Application_Fee_Exempt    	char(1)              null,
      Regulatory_Fee_Exempt     	char(1)              null,
      Source                    	char(1)              null,
      requested_expiration_date_mmdd 	char(4)              null,
      Receipt_Date              	char(10)             null,
      Notification_Code         	char(1)              null,
      Notification_date         	char(10)             null,
      Expanding_Area_or_Contour 	char(1)              null,
      Change_Type               	char(1)              null,
      Original_Application_Purpose 	char(2)              null,
      Requesting_A_Waiver       	char(1)              null,
      How_Many_Waivers_Requested 	int                  null,
      Any_Attachments           	char(1)              null,
      Number_of_Requested_SIDs  	int                  null,
      fee_control_num           	char(16)             null,
      date_entered              	char(10)             null,
      reason                    	varchar(255)         null,
      frequency_coordination_indicat 	char(1)              null,
      emergency_sta             	char(1)              null,
      overall_change_type       	char(1)              null,
      slow_growth_ind           	char(1)              null,
      previous_waiver           	char(1)              null,
      waiver_deferral_fee       	char(1)              null,
      has_term_pending_ind		char(1)		     null
)

go


create table dbo.PUBACC_AG
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      action_requested		char(1)		     null,
      agreement_type		char(2) 	     null,
      agreement_name		varchar(50)	     null,
      des_ent_or_closed_bid_impact char(1)	     null,
      reserved_for_future	char(1)		     null,
      mod_to_rev		char(1)		     null						 	  	
)

go

create table dbo.PUBACC_AH
(
      record_type		char(2)		     not null,
      unique_system_identifier  numeric(9,0)         null,
      uls_file_num              char(14)             null,
      attachment_desc           varchar(60)          null, 
      attachment_file_id        char(18)             null
)

go

create table dbo.PUBACC_AM
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_num              char(14)             null,
      ebf_number                varchar(30)          null,
      callsign                  char(10)             null,
      operator_class            char(1)              null,
      group_code                char(1)              null,
      region_code               tinyint              null,
      trustee_callsign          char(10)             null,
      trustee_indicator         char(1)              null,
      physician_certification   char(1)              null,
      ve_signature              char(1)              null,
      systematic_callsign_change char(1)             null,
      vanity_callsign_change    char(1)              null,
      vanity_relationship       char(12)             null,
      previous_callsign         char(10)             null,
      previous_operator_class   char(1)              null,
      trustee_name              varchar(50)          null
)

go

create table dbo.PUBACC_AN
(
      record_type              	char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                	char(10)             null,
      antenna_action_performed  char(1)              null,
      antenna_number            int                  null,
      location_number           int                  null,
      receive_zone_code         char(6)              null,
      antenna_type_code         char(1)              null,
      height_to_tip            	numeric(5,1)         null,
      height_to_center_raat     numeric(5,1)         null,
      antenna_make              varchar(25)          null,
      antenna_model             varchar(25)          null,
      tilt                      numeric(3,1)         null,
      polarization_code         char(5)              null,
      beamwidth                 numeric(4,1)         null,
      gain                      numeric(4,1)         null,
      azimuth                   numeric(4,1)         null,
      height_above_avg_terrain  numeric(5,1)         null,
      diversity_height          numeric(5,1)         null,
      diversity_gain            numeric(4,1)         null,
      diversity_beam            numeric(4,1)         null,
      reflector_height          numeric(5,1)         null,
      reflector_width           numeric(4,1)         null,
      reflector_separation      numeric(5,1)         null,
      repeater_seq_num          int                  null,
      back_to_back_tx_dish_gain numeric(4,1)         null,
      back_to_back_rx_dish_gain numeric(4,1)         null,
      location_name             varchar(20)          null,
      passive_repeater_id       int                  null,
      alternative_cgsa_method   char(1)              null,
      path_number               int                  null,
      line_loss                 numeric(3,1)         null,
	status_code		char(1)		     null,
	status_date		datetime	     null      
)

go


create table dbo.PUBACC_AP
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      agreement_name		varchar(50)	     null,
      action_requested		char(1)		     null,
      legal_entity_name		varchar(50)	     null,
      first_name		varchar(20)	     null,
      mi                        char(1)              null,
      last_name                 varchar(20)          null,
      suffix                    char(3)              null,
      FCC_reg_number	        char(10)	     null	
)

go
create table dbo.PUBACC_AS
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      callsign                  char(10)             null,
      assoc_callsign            char(10)             null,
      status_code		char(1)		     null,
      status_date		datetime	     null,
      action_performed  	char(1)              null
)
 
go

create table dbo.PUBACC_AT
(
      Record_Type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      ULS_File_Number           char(14)             null,
      EBF_Number                varchar(30)          null,
      Attachment_Code           char(5)              null,
      Attachment_Description    varchar(60)          null,
      Attachment_Date           char(10)             null,
      attachment_file_name      varchar(60)          null,
      attachment_action_performed char(1)            null
)

go

create table dbo.PUBACC_BC
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      callsign                  char(10)             null,
      broadcast_callsign        char(10)             null,
      broadcast_city            char(20)             null,
      broadcast_state           char(2)              null,
      parent_facility_id        int                  null,
      parent_class_code         char(2)              null,
      nonparent_type_code       char(1)              null
)


go


create table dbo.PUBACC_BD
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      involves_credit           char(1)              null,
      involves_payment          char(1)              null,
      involves_close_bidding    char(1)              null,
      credits_paid              char(1)              null,
      bc_same_elig_status       char(1)              null,
      bc_diff_elig_status       char(1)              null,
      bc_dnq_elig_status	char(1)              null,
      payments                  char(1)              null,
      ip_same_elig_status       char(1)              null,
      ip_diff_elig_status       char(1)              null,
      ip_dnq_elig_status        char(1)              null,
      closed_notification       char(1)              null,
      qualifies_for_cb          char(1)              null,
      dnq_for_cb                char(1)              null,
      bc_ten_percent		char(1)              null,
      bc_affiliate		char(1)              null,
      bc_cont_elig		char(1)              null,
      bc_shared			char(1)              null,
      document			char(1)              null,
      ip_ten_percent		char(1)              null,	
      ip_affiliate		char(1)              null, 
      ip_cont_elig		char(1)              null,
      ip_shared			char(1)              null,
      sec_date			char(10)              null,
      lien_date			char(10)              null,
      cb_ten_percent		char(1)              null,
      cb_affiliate		char(1)              null,
      cb_cont_elig		char(1)              null,
      cb_shared			char(1)              null
)


go


create table dbo.PUBACC_BE
(
      record_type                 char(2)              not null,
      unique_system_identifier    numeric(9,0)         not null,
      uls_file_number             char(14)             null,
      ebf_number                  varchar(30)          null,
      callsign                    char(10)             null,
      multichannel		  char(1)	       null,
      cable_tv			  char(1)	       null,
      programming_requirements	  char(1)	       null,
      interference_protection	  char(1)	       null

)



go

create table dbo.PUBACC_BF
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      call_sign                 char(10)             null,
      location_number           int                  null,
      antenna_number            int                  null,
      frequency_assigned        numeric(16,8)        null,
      buildout_code             int                  null,
      buildout_deadline         char(10)             null,
      buildout_date             char(10)             null,
      status_code		char(1)		     null,
      status_date		datetime	     null,
      frequency_number	        int		     null
)


go


create table dbo.PUBACC_BL
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      call_sign                 char(10)             null,
      location                  int                  null,
      buildout_code             int                  null,
      buildout_deadline         char(10)             null,
      buildout_date             char(10)             null,
      status_code		char(1)		     null,
      status_date		datetime	     null
)

go

create table dbo.PUBACC_BO
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      call_sign                 char(10)             null,
      buildout_code             int                  null,
      buildout_deadline         char(10)             null,
      buildout_date             char(10)             null,
      status_code		char(1)		     null,
      status_date		datetime	     null
)

go

create table dbo.PUBACC_BT
(
      record_Type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      ULS_File_Number           char(14)             null,
      EBF_Number                varchar(30)          null,
      Applicant_Status		char(1)              null
     			
)
go

create table dbo.PUBACC_CD
(
	Record_Type			char(2)		null,
	Unique_System_Identifier	numeric(9,0)	not null,
	ULS_File_Number			char(14)	null,
	EBF_Number			varchar(30)	null,
	Year_Sequence			smallint	not null,
	Gross_Revenues			money		null,
	Year_End_Date			datetime	null,
	Aggregate_Gros_Rvn_DE		money		null,
	Aggregate_Gros_Rvn_CB		money		null,
	Total_Assets			money		null								
)

go

create table dbo.PUBACC_CF
(
      Record_Type                       char(2)              null,
      unique_system_identifier          numeric(9,0)         not null,
      ULS_File_Number                   char(14)             null,
      EBF_Number                        varchar(30)          null,
      Item_Type_Indicator               char(1)              null,
      Item_Type                         char(14)             null,
      Constructed                       char(1)              null,
      Location_Number                   int                  null,
      Path_Number                       int                  null,
      Frequency_Assigned                numeric(16,8)        null,
      Frequency_Upper_Band              numeric(16,8)        null,
      number_of_mobiles                 int                  null,
      action_performed                  char(1)              null,
      actual_date_of_construction       datetime	     null,
      frequency_number                  int                  null,
      Assign_Callsign                   char(10)             null 

)

go

create table dbo.PUBACC_CG
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      station_available         char(1)              null,
      public_correspondence     char(1)              null,
      station_identifier        char(12)             null,
      aeronautical_enroute_call_sign char(10)        null,
      faa_office_notified       varchar(255)         null,
      date_faa_notified         char(10)             null,
      seeking_authorization     char(1)              null,
      regularly_engaged         char(1)              null,
      engaged                   char(1)              null,
      public_mooring            char(1)              null,
      servicing                 char(1)              null,
      fixed_station             char(1)              null,
      maritime_support          char(1)              null,
      aeronautical_fixed        char(1)              null,
      unicom                    char(1)              null,
      search_and_rescue         char(1)              null,
      flight_test_uhf           char(1)              null,
      flight_test_manufacturer  char(1)              null,
      flight_test_parent_corporation char(1)         null,
      flight_test_educational   char(1)              null,
      flight_school_certitication char(1)            null,
      lighter_than_air          char(1)              null,
      ballooning                char(1)              null,
      located_at_airport        char(1)              null,
      radiodetermination_not_faa char(1)             null,
      radiodetermination_equipment char(1)           null,
      radiodetermination_public char(1)              null,
      radiodetermination_elts   char(1)              null,
      civil_air_patrol          char(1)              null,
      aeronautical_enroute      char(1)              null,
      mobile_routine            char(1)              null,
      mobile_owner_operator     char(1)              null,
      mobile_agreement          char(1)              null,
      coast_ground_identifier   char(12)             null,
      selective_call_sign_identifier char(4)         null,
      station_class             char(4)              null,
      status_code		char(1)	             null,
      status_date		datetime	     null
)

go

create table dbo.PUBACC_CO
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_num              char(14)             null,
      callsign                  char(10)             null,
      comment_date              char(10)             null,
      description               varchar(255)         null,
      status_code		char(1)		     null,
      status_date		datetime             null
)

go

create table dbo.PUBACC_CP
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      control_point_action_performed char(1)         null,
      control_point_number      int                  null,
      control_address           varchar(80)          null,
      control_city              char(20)             null,
      state_code                char(2)              null,
      control_phone             char(10)             null,
      control_county            varchar(60)          null,
      status_code		char(1)		     null,
      status_date		datetime	     null
)

go

create table dbo.PUBACC_CS
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      call_sign                 char(10)             null,
      location_number           int                  null,
      antenna_number            int                  null,
      frequency_assigned        numeric(16,8)        null,
      coser_result              char(5)              null,
      coser_num                 char(10)             null,
      coser_activity_type       char(1)              null,
      status_code		char(1)		     null,
      status_date		datetime	     null
)

go

create table dbo.PUBACC_EM
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      location_number           int                  null,
      antenna_number            int                  null,
      frequency_assigned        numeric(16,8)        null,
      emission_action_performed char(1)              null,
      emission_code             char(10)             null,
      digital_mod_rate          numeric(8,1)         null,
      digital_mod_type          char(255)            null,
      frequency_number          int                  null,
      status_code		char(1)		     null,
     status_date		datetime	     null,
     emission_sequence_id       int                  null
)

go

create table dbo.PUBACC_EN
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      entity_type               char(2)              null,
      licensee_id               char(9)              null,
      entity_name               varchar(200)         null,
      first_name                varchar(20)          null,
      mi                        char(1)              null,
      last_name                 varchar(20)          null,
      suffix                    char(3)              null,
      phone                     char(10)             null,
      fax                       char(10)             null,
      email                     varchar(50)          null,
      street_address            varchar(60)          null,
      city                      varchar(20)          null,
      state                     char(2)              null,
      zip_code                  char(9)              null,
      po_box                    varchar(20)          null,
      attention_line            varchar(35)          null,
      sgin                      char(3)              null,
      frn                       char(10)             null,
      applicant_type_code       char(1)              null,
      applicant_type_other      char(40)             null,
      status_code               char(1)		     null,
      status_date		datetime	     null
)

go


create table dbo.PUBACC_F2
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      action_performed          char(1)              null, 
      location_number           int                  null,
      antenna_number            int                  null,
      frequency_number          int                  null,
      frequency_assigned        numeric(16,8)        null,
      frequency_upper_band      numeric(16,8)        null,
      offset                    char(3)              null,
      frequency_channel_block   char(4)              null,
      equipment_class	        char(2)              null, 
      minimum_power_output	numeric(15,3)        null,
      date_first_use            datetime             null,
      status_code		char(1)		     null,
      status_date		datetime	     null,
      trans_meth                char(1)              null
)



go


create table dbo.PUBACC_FA
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      operator_class            char(2)              null,
      ship_radar_endorsement    char(1)              null,
      six_month_endorsement     char(1)              null,
      date_of_birth             char(10)             null,
      certification_not_restricted char(1)           null,
      cert_restricted_permit    char(1)              null,
      restricted_permit_limited_use char(1)          null,
      cole_manager_code         char(5)              null,
      dm_call_sign              char(10)             null,
      proof_of_passing          char(1)              null 
)

go

create table dbo.PUBACC_FC
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      coordination_number       char(25)             null,
      coordinator_name          varchar(40)          null,
      coordinator_phone         char(10)             null,
      freq_coordination_date    char(10)             null,
      action_performed          char(1)              null
)

go

create table dbo.PUBACC_FF
(
      record_type               char(2)              null ,
      unique_system_identifier  numeric(9,0)         null ,
      callsign                  char(10)             null ,
      location_number           int                  null ,
      antenna_number            int                  null ,
      frequency                 numeric(16,8)        null ,
      frequency_number          int                  null ,
      freq_freeform_cond_type   char(1)              null ,
      unique_freq_freeform_id   numeric(9,0)         null ,
      sequence_number           int                  null ,
      freq_freeform_condition   varchar(255)         null,
      status_code		char(1)		     null,
      status_date		datetime	     null
)
 
go

create table dbo.PUBACC_FR
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      frequency_action_performed char(1)             null,
      location_number           int                  null,
      antenna_number            int                  null,
      class_station_code        char(4)              null,
      op_altitude_code          char(2)              null,
      frequency_assigned        numeric(16,8)        null,
      frequency_upper_band      numeric(16,8)        null,
      frequency_carrier         numeric(16,8)        null,
      time_begin_operations     int                  null,
      time_end_operations       int                  null,
      power_output              numeric(15,3)        null,
      power_erp                 numeric(15,3)        null,
      tolerance                 numeric(6,5)         null,
      frequency_ind             char(1)              null,
      status                    char(1)              null,
      eirp                      numeric(7,1)         null,
      transmitter_make          varchar(25)          null,
      transmitter_model         varchar(25)          null,
      auto_transmitter_power_control char(1)         null,
      cnt_mobile_units          int                  null,
      cnt_mob_pagers            int                  null,
      freq_seq_id               int                  null,
      status_code		char(1)		     null,
      status_date		datetime	     null
)

go

create table dbo.PUBACC_FS
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      call_sign                 char(10)             null,
      location_number           int                  null,
      antenna_number            int                  null,
      frequency                 numeric(16,8)        null,
      frequency_number          int                  null,
      special_condition_type    char(1)              null,
      special_condition_code    int                  null,
      status_code		char(1)		     null,
      status_date		datetime	     null
      
)

go

 create table dbo.PUBACC_FT
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      freq_type_action_performed char(1)             null,
      location_number           int                  null,
      antenna_number            int                  null,
      frequency_assigned        numeric(16,8)        null,
      frequency_type_number     int                  null,
      frequency_type_code       char(2)              null

)

go

create table dbo.PUBACC_HD
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      license_status            char(1)              null,
      radio_service_code        char(2)              null,
      grant_date                char(10)             null,
      expired_date              char(10)             null,
      cancellation_date         char(10)             null,
      eligibility_rule_num      char(10)             null,
      applicant_type_code_reserved       char(1)              null,
      alien                     char(1)              null,
      alien_government          char(1)              null,
      alien_corporation         char(1)              null,
      alien_officer             char(1)              null,
      alien_control             char(1)              null,
      revoked                   char(1)              null,
      convicted                 char(1)              null,
      adjudged                  char(1)              null,
      involved_reserved      	char(1)              null,
      common_carrier            char(1)              null,
      non_common_carrier        char(1)              null,
      private_comm              char(1)              null,
      fixed                     char(1)              null,
      mobile                    char(1)              null,
      radiolocation             char(1)              null,
      satellite                 char(1)              null,
      developmental_or_sta      char(1)              null,
      interconnected_service    char(1)              null,
      certifier_first_name      varchar(20)          null,
      certifier_mi              char(1)              null,
      certifier_last_name       varchar(20)          null,
      certifier_suffix          char(3)              null,
      certifier_title           char(40)             null,
      gender                    char(1)              null,
      african_american          char(1)              null,
      native_american           char(1)              null,
      hawaiian                  char(1)              null,
      asian                     char(1)              null,
      white                     char(1)              null,
      ethnicity                 char(1)              null,
      effective_date            char(10)             null,
      last_action_date          char(10)             null,
      auction_id                int                  null,
      reg_stat_broad_serv       char(1)              null,
      band_manager              char(1)              null,
      type_serv_broad_serv      char(1)              null,
      alien_ruling              char(1)              null,
      licensee_name_change	char(1)		     null
)

go

create table dbo.PUBACC_HS
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      callsign                  char(10)             null,
      log_date                  char(10)             null,
      code                      char(6)              null
)

go

create table dbo.PUBACC_IA
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      international_address_1   varchar(60)          null,
      international_address_2   varchar(60)          null,
      international_city        varchar(30)          null,
      country                   varchar(20)          null,
      international_zip_code    varchar(20)          null,
      international_phone       char(20)             null,
      international_fax         char(20)             null
)

go

create table dbo.PUBACC_IR
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      call_sign                 char(10)             null,
      location_number           int                  null,
      antenna_number            int                  null,
      frequency_assigned        numeric(16,8)        null,
      irac_result               char(2)              null,
      fas_docket_num            char(8)              null,
      fccm_num                  char(10)             null,
      faa_ng_num                char(11)             null,
      status_code		char(1)		     null,
      status_date		datetime	     null,
      a_irac_status_code 	smallint     	     null
)

go

create table dbo.PUBACC_LA
 (
      record_type               char(2)              null ,
      unique_system_identifier  numeric(9,0)         null ,
      callsign                  char(10)             null ,
      attachment_code           char(1)              Null ,
      attachment_desc           varchar(60)          Null ,
      attachment_date           char(10)             Null ,
      attachment_filename       varchar(60)          Null ,
      action_performed          char(1)              Null
)

go

create table dbo.PUBACC_L2
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      location_action_performed	char(1)              null,
      location_number           int                  null,
      registration_required	char(1)              null,
      protection_date		datetime             null,
      link_reg_num              varchar(30)          null,
      link_reg_action_performed char(1)              null,
      mexico_clearance_indicator char(1)	     null,
      quiet_zone_consent        char(1)		     null,	
      status_code		char(1)		     null,
      status_date		datetime	     null
	
)

go

create table dbo.PUBACC_LF
 (
      record_type               char(2)              null ,
      unique_system_identifier  numeric(9,0)         null ,
      callsign                  char(10)             null ,
      location_number           int                  null ,
      loc_freeform_cond_type    char(1)              null ,
      unique_loc_freeform_id    numeric(9,0)         null ,
      sequence_number           int                  null ,
      loc_freeform_condition    varchar(255)         null,
      status_code		char(1)		     null,
      status_date		datetime	     null
)

go

create table dbo.PUBACC_LH
(
      record_type		char(2)		     not null,
      unique_system_identifier  numeric(9,0)         null,
      call_sign                 char(10)             null,
      attachment_desc           varchar(60)          null, 
      attachment_file_id        char(18)             null
)

go

create table dbo.PUBACC_LM
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      callsign                  char(10)             null,
      ext_implement_appr        char(1)              null,
      lm_eligibility_activity   varchar(255)         null,
      status_code		char(1)		     null,
      status_date		datetime	     null
)

go

create table dbo.PUBACC_LO
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      location_action_performed char(1)              null,
      location_type_code        char(1)              null,
      location_class_code       char(1)              null,
      location_number           int                  null,
      site_status               char(1)              null,
      corresponding_fixed_location int               null,
      location_address          varchar(80)          null,
      location_city             char(20)             null,
      location_county           varchar(60)          null,
      location_state            char(2)              null,
      radius_of_operation       numeric(5,1)         null,
      area_of_operation_code    char(1)              null,
      clearance_indicator       char(1)              null,
      ground_elevation          numeric(7,1)         null,
      lat_degrees               int                  null,
      lat_minutes               int                  null,
      lat_seconds               numeric(3,1)         null,
      lat_direction             char(1)              null,
      long_degrees              int                  null,
      long_minutes              int                  null,
      long_seconds              numeric(3,1)         null,
      long_direction            char(1)              null,
      max_lat_degrees           int                  null,
      max_lat_minutes           int                  null,
      max_lat_seconds           numeric(3,1)         null,
      max_lat_direction         char(1)              null,
      max_long_degrees          int                  null,
      max_long_minutes          int                  null,
      max_long_seconds          numeric(3,1)         null,
      max_long_direction        char(1)              null,
      nepa                      char(1)              null,
      quiet_zone_notification_date char(10)          null,
      tower_registration_number char(10)             null,
      height_of_support_structure numeric(7,1)       null,
      overall_height_of_structure numeric(7,1)       null,
      structure_type            char(7)              null,
      airport_id                char(4)              null,
      location_name             char(20)             null,
      units_hand_held           int                  null,
      units_mobile              int                  null,
      units_temp_fixed          int                  null,
      units_aircraft            int                  null,
      units_itinerant           int                  null,
      status_code		char(1)		     null,
      status_date		datetime	     null,
      earth_agree               char(1)              null


)

go

create table dbo.PUBACC_LS
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      call_sign                 char(10)             null,
      location_number           int                  null,
      special_condition_type    char(1)              null,
      special_condition_code    int                  null,
      status_code		char(1)		     null,
      status_date		datetime	     null
)

go

create table dbo.PUBACC_MC
(
      record_type               		char(2)              null,
      unique_system_identifier  		numeric(9,0)         not null,
      uls_file_number           		char(14)             null,
      ebf_number                		varchar(30)          null,
      call_sign                			char(10)             null,
      undefined_partitioned_area_id 	numeric(9,0)         null,
      partition_sequence_number 		int                  null,
      partition_lat_degrees     		int                  null,
      partition_lat_minutes     		int                  null,
      partition_lat_seconds     		numeric(3,1)         null,
      partition_lat_direction   		char(1)              null,
      partition_long_degrees    		int                  null,
      partition_long_minutes    		int                  null,
      partition_long_seconds    		numeric(3,1)         null,
      partition_long_direction  		char(1)              null,
	  undefined_partitioned_area		int					 null
)


go


create table dbo.PUBACC_ME
(
      record_type              	char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number              	varchar(30)          null,
      callsign                	char(10)             null,
      mea_number		 		char(6)	     		 null,
      action_performed		 	char(1)	      		 null 
)

go


create table dbo.PUBACC_MH
(
      record_type                char(2)            not null,
      unique_system_identifier 	 numeric(9,0)       not null,
      uls_file_number          	 char(14)           null,
      ebf_number               	 varchar(30)        null,
      callsign                 	 char(10)           null,
      action_performed		 	 char(1)	    	null,
      channel_plan_number	 	 char(4)	     	null,
      channel_plan		 		 char(1)			null

)


go


create table dbo.PUBACC_MF
(
      record_type               char(2)        	null,
      unique_system_identifier  numeric(9,0)   	not null,
      uls_file_number           char(14)       	null,
      ebf_number                varchar(30)    	null,
      call_sign                 char(10)        null,
      partition_area_id			numeric(9,0)	null,
      lower_frequency          	numeric(16,8)   null,
      upper_frequency          	numeric(16,8)   null,
      def_und_ind				char(1)		null,
	  defined_partition_area 	char(6)		null
)

go

create table dbo.PUBACC_MI
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      facility_type_code        char(4)              null,
      statement_of_intention    char(1)              null,
      license_type_code         char(1)              null
)

go



create table dbo.PUBACC_MK
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      market_code               char(6)              null,
      channel_block             char(4)              null,
      submarket_code            int                  null,
      market_name               char(30)             null,
      coverage_partitioning     char(1)              null,
      coverage_dissagregation   char(1)              null,
      cellular_phase_id         smallint             null,
      population                numeric(9,0)         null,
      tribal_credit_indicator   char(1)              null,
      tribal_credit_calculation money                null,
      additional_credit_requested money              null,
      tribal_credit_awarded     money                null,
      additiona_credit_awarded  money                null,
      bc_pct			numeric(5,4)	     null,
      open_closed_bidding	char(1)		     null				
)

go

create table dbo.PUBACC_MP
(
      record_type            		char(2)         null,
      unique_system_identifier 		numeric(9,0)    not null,
      uls_file_number          		char(14)        null,
      ebf_number               		varchar(30)     null,
      call_sign                 	char(10)        null,
      market_partition_code   		char(6)         null,
      defined_partition_area    	varchar(60)     null,
      defined_area_population  		numeric(9,0) 	null,
      include_exclude_ind       	char(1)         null,
      partition_sequence_area_id	numeric(9,0)             null,
      action_performed				char(1)         null,
      census_figures              	int				null,
      def_undef_ind					char(1)			null,
	  partition_sequence_number 	int 			null
	  
)

go

create table dbo.PUBACC_MW
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      pack_indicator            char(1)              null,
      pack_registration_num     int                  null,
      pack_name                 varchar(50)          null,
      type_of_operation         varchar(45)          null,
      smsa_code                 char(6)              null,
      station_class             char(4)              null,
      cum_effect_is_major       char(1)              null,
      status_code		char(1)		     null,
      status_date		datetime	     null
)

go

create table dbo.PUBACC_OP



(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      callsign                  char(10)             null,
      location_number           int                  null,
      area_text_sequence_num    int                  null,
      area_of_operation         varchar(255)         null,
      status_code		char(1)		     null,
      status_date		datetime	     null
)

go

create table dbo.PUBACC_PA
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      callsign                  char(10)             null,
      path_action_performed     char(1)              null,
      path_number               int                  null,
      transmit_location_number  int                  null,
      transmit_antenna_number   int                  null,
      receiver_location_number  int                  null,
      receiver_antenna_number   int                  null,
      mas_dems_subtype          char(2)              null,
      path_type_desc            char(20)             null,
      passive_receiver_indicator char(1)             null,
      country_code              char(3)              null,
      interference_to_gso       char(1)              null,
      receiver_callsign         varchar(10)          null,
      angular_sep		numeric(3,2)         null,
      cert_no_alternative	char(1)		     null,
      cert_no_interference	char(1)  	     null,
	status_code		char(1)			null,
	status_date		datetime		null
)

go

create table dbo.PUBACC_PC
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      action_performed          char(1)              null,
      location_number           int                  null,
      antenna_number            int                  null,
      frequency                 numeric(16,8)        null,
      subscriber_call_sign      char(10)             null,
      city                      varchar(20)          null,
      state                     char(2)              null,
      lat_degrees               int                  null,
      lat_minutes               int                  null,
      lat_seconds               numeric(3,1)         null,
      lat_direction             char(1)              null,
      long_degrees              int                  null,
      long_minutes              int                  null,
      long_seconds              numeric(3,1)         null,
      long_direction            char(1)              null,
      point_of_com_frequency    numeric(16,8)        null,
	status_code		char(1)			null,
	status_date		datetime		null
)

go

create table dbo.PUBACC_RA
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      radial_action_performed   char(1)              null,
      location_number           int                  null,
      antenna_number            int                  null,
      frequency_number	        int                  null,
      frequency_assigned        numeric(16,8)        null,
      frequency_upper_band      numeric(16,8)        null,
      radial_direction          numeric(3,0)         null,
      radial_haat               numeric(5,1)         null,
      radial_erp                numeric(7,3)         null,
      dist_to_sab               numeric(4,1)         null,
      dist_to_cgsa              numeric(4,1)         null,
	status_code		char(1)			null,
	status_date		datetime		null
)

go

create table dbo.PUBACC_RC
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      radial_action_performed   char(1)              null,
      location_number           int                  null,
      antenna_number            int                  null,
      receiver_make             varchar(25)          null,
      receiver_model            varchar(25)          null,
      receiver_stability	numeric(6,5)         null,
      receiver_noise_figure	numeric(5,2)         null,
	status_code		char(1)			null,
	status_date		datetime		null

)

go

create table dbo.PUBACC_RE
(
      Record_Type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      ULS_File_Number           char(14)             null,
      EBF_Number                varchar(30)          null,
      Reason                    varchar(255)         null
)

go

create table dbo.PUBACC_RI
(
	Record_Type               	char(2)              	not null,
     	unique_system_identifier  	numeric(9,0)         	not null,
      	ULS_File_Number         	char(14)             	null,
      	EBF_Number               	varchar(30)          	null,
	Entity_Type			char(1)			not null,
	Year_Sequence_ID		smallint		not null,
        Gross_Revenues			money			null,
	Year_End_Date			datetime		not null,
	Average_Gross_Revenues		money			null,
	Asset_Disclosure		money			null,
        Statement_Type                  char(1)                 not null,
        In_Existence                    char(1)                 null
)
go


create table dbo.PUBACC_RZ
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      antenna_action_performed  char(1)              null,
      location_number           int                  null,
      antenna_number            int                  null,
      receive_zone_number       int                  null,
      receive_zone              char(6)              null
)

go

create table dbo.PUBACC_SC
(


      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)              null,
      ebf_number                varchar(30)           null, 
      callsign                  char(10)             null ,
      special_condition_type    char(1)              null,
      special_condition_code    int                  null,
	status_code		char(1)			null,
	status_date		datetime		null
)

go

create table dbo.PUBACC_SE

(

      record_type              char(2)               null,
      unique_system_identifier numeric(9,0)          null,
      uls_file_number          char(14)              null,
      ebf_number               varchar(30)           null,
      call_sign                char(10)              null,
      ship_call_sign           char(10)              null,
      port_registry            varchar(35)           null,
      owner                    char(1)               null,
      operater                 char(1)               null,
      charter                  char(1)               null,
      agent                    char(1)               null,
      radiotelephone_exempt_req char(1)              null,
      gmdss_exemp_req          char(1)               null,
      radio_dir_exempt_req     char(1)               null,
      prev_exempt_file_number  varchar(10)           null,
      foreign_port             char(1)               null,
      vessel_size_exempt       char(1)               null,
      equipment_exempt          char(1)               null,
      ltd_routes_exempt        char(1)               null,
      cond_voyages_exempt      char(1)               null,
      other_exempt             char(1)               null,
      other_exempt_desc        varchar(50)           null,
      ship_type                char(1)               null,
      number_of_crew           int               null,
      number_passengers        int               null,
      number_others            int               null,
      count_vhf                int               null,
      count_vhf_dsc            char(1)               null,
      count_epirb              int               null,
      count_survival           int               null,
      count_earth_station      int               null,
      count_auto_alarm         int               null,
      count_single_side_band   int               null,
      single_side_band_type_mf char(1)               null,
      single_side_band_type_hf char(1)               null,
      single_side_band_type_dsc char(1)              null,
      count_of_navtex          int               null,
      count_of_9_ghz_radar     int               null,
      count_of_500_khz_distress int              null,
      count_of_reserve_power   int               null,
      count_of_other           int               null,
      description_of_other     varchar(50)           null
)

go



create table dbo.PUBACC_SF
(
      record_type               char(2)              null ,
      unique_system_identifier  numeric(9,0)         null ,
      uls_file_number           char(14)              null,
      ebf_number                varchar(30)           null, 
      callsign                  char(10)             null ,
      lic_freeform_cond_type    char(1)              null ,
      unique_lic_freeform_id    numeric(9,0)         null ,
      sequence_number           int              null ,
      lic_freeform_condition    varchar(255)         null,
	status_code		char(1)			null,
	status_date		datetime		null
)
 

go


create table dbo.PUBACC_SG
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      segment_action_performed  char(1)              null,
      path_number               int              null,
      transmit_location         int              null,
      transmit_antenna          int              null,
      receiver_location         int              null,
      receiver_antenna          int              null,
      segment_number            int              null,
      segment_length            numeric(12,6)        null,
	status_code		char(1)			null,
	status_date		datetime		null
)

go

create table dbo.PUBACC_SH
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      callsign                  char(10)             null,
      type_of_authorization     char(1)              null,
      count_in_fleet            int              null,
      general_class             char(3)              null,
      special_class             char(3)              null,
      ship_name                 varchar(35)          null,
      ship_number               char(12)             null,
      international_voyages     char(1)              null,
      foreign_communications    char(1)              null,
      radiotelegraph            char(1)              null,
      mmsi_request              char(1)              null,
      gross_tonnage             int              null,
      ship_length               int              null,
      working_freq_s1           char(3)              null,
      working_freq_s2           char(3)              null,
      self_id_number            char(5)              null,
      comsat_id_number          char(7)              null,
      station_number            numeric(9,0)         null,
      required_cat_a            char(1)              null,
      required_cat_b            char(1)              null,
      required_cat_c            char(1)              null,
      required_cat_d            char(1)              null,
      required_cat_e            char(1)              null
)

go

create table dbo.PUBACC_SI
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      sid                       char(4)              null,
      action_performed          char(1)              null
)

go

create table dbo.PUBACC_SR
(
      record_type               char(2)             null,
      unique_system_identifier	numeric(9,0)	    not null,
      uls_file_number    	char(14)            null,
      ebf_number	        varchar(30)         null,
      call_sign	                char(10)            null,
      epirb_identification_code char(15)            null,  
      INMARSAT_A            	char(1)             null,   
      INMARSAT_B                char(1)             null,     
      INMARSAT_C                char(1)             null, 
      INMARSAT_M                char(1)             null,   
      INMARSAT_Mini             char(1)             null,    
      VHF                       char(1)             null,        
      MF                        char(1)             null,          
      HF                        char(1)             null,           
      DSC                       char(1)             null,        
      epirb_406_mhz             char(1)             null,    
      epirb_121_5_mhz           char(1)             null,  
      sart                      char(1)             null,           
      raft_count                numeric(6,0)        null,  
      lifeboat_count            numeric(6,0)        null,
      vessel_capacity           numeric(6,0)        null
)

go


create table dbo.PUBACC_SV

(

      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      voyage_number             int              null,
      voyage_description        varchar(255)         null
)

go



create table dbo.PUBACC_TA
(
      Record_Type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      pro_forma                 char(1)              null,
      full_assignment           char(1)              null,
      method_of_accomplishment  char(1)              null,
      method_other_description  varchar(30)          null,
      voluntary_involuntary     char(1)              null,
      assignor_certifier_first_name varchar(20)      null,
      assignor_certifier_mi     varchar(1)           null,
      assignor_certifier_last_name char(20)          null,
      assignor_certifier_suffix varchar(3)           null,
      assignor_certifier_title  varchar(40)          null,
      assignee_gross_rev_1      money                null,
      assignee_gross_rev_2      money                null,
      assignee_gross_rev_3      money                null,
      assignee_tot_assets       money                null,
      same_small_category       char(1)              null,
      applying_for_installments char(1)              null,
      notification_of_forebearance char(1)           null,
      wireless_need_approval    char(1)              null,
      non_wireless_need_approval char(1)             null,
      male_or_female            char(1)              null,
      african_american          char(1)              null,
      native_american           char(1)              null,
      native_pacific_islander   char(1)              null,
      asian                     char(1)              null,
      white                     char(1)              null,
      ethnicity                 char(1)              null,
      consent_date              char(10)             null,
      consummation_date         char(10)             null,
      consummation_deadline     char(10)             null,
      eligibility_category      varchar(30)          null,
      other_wireless_file_num   char(14)             null,
      occurred                  char(1)              null,
      involuntary_date          char(10)             null,
      forbearance_date          char(10)             null,
      full_partial_ind          char(1)              null,
      geo_overlap               char(1)              null,
      tenmhz_geo_overlap        char(1)              null,
      reduced_providers         char(1)              null,
      multichannel              char(1)              null,
      cable_tv                  char(1)              null,
      program_reqs              char(1)              null,
      ownership_required        char(1)              null,
      ownership_file_num        char(14)             null,
      other_wireless_app	char(1)              null,
      public_safety		char(1)              null,
      tl_short_term		char(1)              null,
      mw_link_ind		char(1)              null
)
go

create table dbo.PUBACC_TL
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      market_code               char(6)              null,
      channel_block             char(4)              null,
      action_performed          char(1)              null,
      tribal_land_name          varchar(80)          null,
      tribal_certification      char(1)              null,
      tribal_land_type          varchar(10)          null,
      square_kilometers         numeric(8,0)         null
)

go

create table dbo.PUBACC_UA
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      action_performed          char(1)              null,
      cellular_phase            int              null,
      market_code               char(6)              null,
      submarket_code            int              null,
      channel_block             char(4)              null
)

go

create table dbo.PUBACC_VC
(


      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      request_sequence          int              null,
      callsign_requested        char(10)             null
)

go


create table dbo.PUBACC_LC
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign			char(10)             null,		
      a_ls_class_code		char(2)              null,		
      a_ls_allocation_type	char(1)              null, 
      a_ls_term			char(1)              null
      
)

go


create table dbo.PUBACC_LD
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      lease_id			char(10)             null,		
      issue_date                datetime	     null,
      expired_date              datetime             null, 
      cancellation_date         datetime             null,
      lease_never_comm_ind      char(1)              null
      
)

go


create table dbo.PUBACC_LL
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign			char(10)             null,		
      lease_id			char(10)             null,      
      unique_system_identifier_2   numeric(9,0)         null     /*(the licensee) */
)

go

create table dbo.PUBACC_L3
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      lease_id                 char(10)             null, 
      ls_site_link_id           numeric(9,0)         null,  
      location_action_performed char(1)              null,
      location_type_code        char(1)              null,
      location_class_code       char(1)              null,
      location_number           int              null,
      site_status               char(1)              null,
      corresponding_fixed_location int           null,
      location_address          varchar(80)          null,
      location_city             char(20)             null,
      location_county           varchar(60)          null,
      location_state            char(2)              null,
      radius_of_operation       numeric(5,1)         null,
      area_of_operation_code    char(1)              null,
      clearance_indicator       char(1)              null,
      ground_elevation          numeric(7,1)         null,
      lat_degrees               int              null,
      lat_minutes               int              null,
      lat_seconds               numeric(3,1)         null,
      lat_direction             char(1)              null,
      long_degrees              int              null,
      long_minutes              int              null,
      long_seconds              numeric(3,1)         null,
      long_direction            char(1)              null,
      max_lat_degrees           int              null,
      max_lat_minutes           int              null,
      max_lat_seconds           numeric(3,1)         null,
      max_lat_direction         char(1)              null,
      max_long_degrees          int              null,
      max_long_minutes          int              null,
      max_long_seconds          numeric(3,1)         null,
      max_long_direction        char(1)              null,
      nepa                      char(1)              null,
      quiet_zone_notification_date char(10)          null,
      tower_registration_number char(10)             null,
      height_of_support_structure numeric(7,1)       null,
      overall_height_of_structure numeric(7,1)       null,
      structure_type            char(7)              null,
      airport_id                char(4)              null,
      location_name             char(20)             null,
      units_hand_held           int              null,
      units_mobile              int              null,
      units_temp_fixed          int              null,
      units_aircraft            int              null,
      units_itinerant           int              null,
      status_code		char(1)			null,
      status_date		datetime		null
)

go


create table dbo.PUBACC_L4
(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
     lease_id                 char(10)             null, 
      ls_site_link_id           numeric(9,0)         null, 
      location_action_performed	char(1)              null,
      location_number           int              null,
      registration_required	char(1)              null,
      protection_date		datetime             null,
      link_reg_num              varchar(30)          null,
      link_reg_action_performed char(1)              null,
      mexico_clearance_indicator char(1)	     null,
      quiet_zone_consent        char(1)	             null,	
	status_code		char(1)		     null,
	status_date		datetime	     null
	
)

go


create table dbo.PUBACC_O2

(
      record_type               char(2)              not null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      callsign                  char(10)             null,
     lease_id                 char(10)             null, 
      ls_site_link_id           numeric(9,0)         null, 
      location_number           int              null,
      area_text_sequence_num    int              null,
      area_of_operation         varchar(255)         null,
      status_code		char(1)			null,
      status_date		datetime		null
)

go



create table dbo.PUBACC_L5
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      call_sign                 char(10)             null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      lease_id                 char(10)             null, 
      ls_site_link_id           numeric(9,0)         null, 
      location_number           int              null,
      special_condition_type    char(1)              null,
      special_condition_code    int              null,
      status_code		char(1)			null,
      status_date		datetime		null
)

go


create table dbo.PUBACC_L6
 (
      record_type               char(2)              null ,
      unique_system_identifier  numeric(9,0)         null ,
      callsign                  char(10)             null ,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      lease_id                 char(10)             null, 
      ls_site_link_id           numeric(9,0)         null, 
      location_number           int              null ,
      loc_freeform_cond_type    char(1)              null ,
      unique_loc_freeform_id    numeric(9,0)         null ,
      sequence_number           int              null ,
      loc_freeform_condition    varchar(255)         null,
      status_code		char(1)			null,
      status_date		datetime		null
)

go


create table dbo.PUBACC_A3
(
      record_type              	 char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                	char(10)             null,
      lease_id                 char(10)             null, 
      ls_site_link_id           numeric(9,0)         null, 
      antenna_action_performed  char(1)              null,
      antenna_number            int              null,
      location_number          	int              null,
      receive_zone_code         char(6)              null,
      antenna_type_code         char(1)              null,
      height_to_tip            	numeric(5,1)         null,
      height_to_center_raat     numeric(5,1)         null,
      antenna_make              varchar(25)          null,
      antenna_model             varchar(25)          null,
      tilt                      numeric(3,1)         null,
      polarization_code         char(5)              null,
      beamwidth                 numeric(4,1)         null,
      gain                      numeric(4,1)         null,
      azimuth                   numeric(4,1)         null,
      height_above_avg_terrain  numeric(5,1)         null,
      diversity_height          numeric(5,1)         null,
      diversity_gain            numeric(4,1)         null,
      diversity_beam            numeric(4,1)         null,
      reflector_height          numeric(5,1)         null,
      reflector_width           numeric(4,1)         null,
      reflector_separation      numeric(5,1)         null,
      repeater_seq_num          int              null,
      back_to_back_tx_dish_gain numeric(4,1)         null,
      back_to_back_rx_dish_gain numeric(4,1)         null,
      location_name             varchar(20)          null,
      passive_repeater_id       int              null,
      alternative_cgsa_method   char(1)              null,
      path_number               int              null,
      line_loss                 numeric(3,1)         null,
	status_code		char(1)			null,
	status_date		datetime		null      
)

go

create table dbo.PUBACC_F3
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      lease_id                 char(10)             null, 
      ls_site_link_id           numeric(9,0)         null, 
      frequency_action_performed char(1)             null,
      location_number           int              null,
      antenna_number            int              null,
      class_station_code        char(4)              null,
      op_altitude_code          char(2)              null,
      frequency_assigned        numeric(16,8)        null,
      frequency_upper_band      numeric(16,8)        null,
      frequency_carrier         numeric(16,8)        null,
      time_begin_operations     int              null,
      time_end_operations       int              null,
      power_output              numeric(15,3)        null,
      power_erp                 numeric(15,3)        null,
      tolerance                 numeric(6,5)         null,
      frequency_ind             char(1)              null,
      status                    char(1)              null,
      eirp                      numeric(7,1)         null,
      transmitter_make          varchar(25)          null,
      transmitter_model         varchar(25)          null,
      auto_transmitter_power_control char(1)         null,
      cnt_mobile_units          int              null,
      cnt_mob_pagers            int              null,
      freq_seq_id               int              null,
	status_code		char(1)			null,
	status_date		datetime		null      

)

go


create table dbo.PUBACC_F4
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      lease_id                 char(10)              null, 
      ls_site_link_id           numeric(9,0)         null, 
      action_performed          char(1)              null, 
      location_number           int                  null,
      antenna_number            int		     null,
      frequency_number          int                  null,
      frequency_assigned        numeric(16,8)        null,
      frequency_upper_band      numeric(16,8)        null,
      frequency_offset          char(3)              null,
      frequency_channel_block   char(4)              null,
      equipment_class	        char(2)              null, 
      minimum_power_output	numeric(15,3)        null,
      date_first_use            datetime             null,
	status_code		char(1)		     null,
	status_date		datetime	     null
)

go


create table dbo.PUBACC_F5
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      call_sign                 char(10)             null,
      lease_id                 char(10)             null, 
      ls_site_link_id           numeric(9,0)         null, 
      location_number           int              null,
      antenna_number            int              null,
      frequency                 numeric(16,8)        null,
      frequency_number          int              null,
      special_condition_type    char(1)              null,
      special_condition_code    int              null,
	status_code		char(1)			null,
	status_date		datetime		null
      
)

go


create table dbo.PUBACC_F6
(
      record_type               char(2)              null ,
      unique_system_identifier  numeric(9,0)         null ,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      callsign                  char(10)             null ,
      lease_id                 char(10)             null, 
      ls_site_link_id           numeric(9,0)         null, 
      location_number           int              null ,
      antenna_number            int              null ,
      frequency_number          int              null ,
      frequency                numeric(16,8)         null ,
      freq_freeform_cond_type   char(1)              null ,
      unique_freq_freeform_id   numeric(9,0)         null ,
      sequence_number           int              null ,
      freq_freeform_condition   varchar(255)         null,
      status_code		char(1)			null,
      status_date		datetime		null
)
 
go


create table dbo.PUBACC_P2
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      callsign                  char(10)             null,
      lease_id                 char(10)              null, 
      ls_site_link_id           numeric(9,0)         null, 
      path_action_performed     char(1)              null,
      path_number               int                  null,
      transmit_location_number  int                  null,
      transmit_antenna_number   int                  null,
      receiver_location_number  int                  null,
      receiver_antenna_number   int                  null,
      mas_dems_subtype          char(2)              null,
      path_type_desc            char(20)             null,
      passive_receiver_indicator char(1)             null,
      country_code              char(3)              null,
      interference_to_gso       char(1)              null,
      receiver_callsign         varchar(10)          null,
      angular_sep		numeric(3,2)         null,
      cert_no_alternative	char(1)		     null,
      cert_no_interference	char(1)  	     null,
	status_code		char(1)			null,
	status_date		datetime		null
)

go

create table dbo.PUBACC_TP
(
      record_type               char(2)              null,
      unique_system_identifier  numeric(9,0)         not null,
      uls_file_number           char(14)             null,
      ebf_number                varchar(30)          null,
      call_sign                 char(10)             null,
      location_number           integer              null,
      antenna_number            integer              null,
      frequency_number          integer              null,
      freq_proto_seq_id         integer              null,
      freq_proto_code_desc	varchar(40)	     not null,
      a_freq_proto_other        varchar(255)         null,
      action_performed          char(1)              null, 
      status_code		char(1)			null,
      status_date		datetime		null
)

go

