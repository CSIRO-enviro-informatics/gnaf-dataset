ALTER TABLE gnaf.ADDRESS_ALIAS ADD
 CONSTRAINT ADDRESS_ALIAS_PK PRIMARY KEY (address_alias_pid);

ALTER TABLE gnaf.ADDRESS_ALIAS_TYPE_AUT ADD
 CONSTRAINT ADDRESS_ALIAS_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.ADDRESS_DEFAULT_GEOCODE ADD
 CONSTRAINT ADDRESS_DEFAULT_GEOCODE_PK PRIMARY KEY (address_default_geocode_pid);

ALTER TABLE gnaf.ADDRESS_DETAIL ADD
 CONSTRAINT ADDRESS_DETAIL_PK PRIMARY KEY (address_detail_pid);

ALTER TABLE gnaf.ADDRESS_MESH_BLOCK_2011 ADD
 CONSTRAINT ADDRESS_MESH_BLOCK_2011_PK PRIMARY KEY (address_mesh_block_2011_pid);

ALTER TABLE gnaf.ADDRESS_MESH_BLOCK_2016 ADD
 CONSTRAINT ADDRESS_MESH_BLOCK_2016_PK PRIMARY KEY (address_mesh_block_2016_pid);

ALTER TABLE gnaf.ADDRESS_SITE ADD
 CONSTRAINT ADDRESS_SITE_PK PRIMARY KEY (address_site_pid);

ALTER TABLE gnaf.ADDRESS_SITE_GEOCODE ADD
 CONSTRAINT ADDRESS_SITE_GEOCODE_PK PRIMARY KEY (address_site_geocode_pid);

ALTER TABLE gnaf.ADDRESS_TYPE_AUT ADD
 CONSTRAINT ADDRESS_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.FLAT_TYPE_AUT ADD
 CONSTRAINT FLAT_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.GEOCODED_LEVEL_TYPE_AUT ADD
 CONSTRAINT GEOCODED_LEVEL_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.GEOCODE_RELIABILITY_AUT ADD
 CONSTRAINT GEOCODE_RELIABILITY_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.GEOCODE_TYPE_AUT ADD
 CONSTRAINT GEOCODE_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.LEVEL_TYPE_AUT ADD
 CONSTRAINT LEVEL_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.LOCALITY ADD
 CONSTRAINT LOCALITY_PK PRIMARY KEY (locality_pid);

ALTER TABLE gnaf.LOCALITY_ALIAS ADD
 CONSTRAINT LOCALITY_ALIAS_PK PRIMARY KEY (locality_alias_pid);

ALTER TABLE gnaf.LOCALITY_ALIAS_TYPE_AUT ADD
 CONSTRAINT LOCALITY_ALIAS_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.LOCALITY_CLASS_AUT ADD
 CONSTRAINT LOCALITY_CLASS_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.LOCALITY_NEIGHBOUR ADD
 CONSTRAINT LOCALITY_NEIGHBOUR_PK PRIMARY KEY (locality_neighbour_pid);

ALTER TABLE gnaf.LOCALITY_POINT ADD
 CONSTRAINT LOCALITY_POINT_PK PRIMARY KEY (locality_point_pid);

ALTER TABLE gnaf.MB_2011 ADD
 CONSTRAINT MB_2011_PK PRIMARY KEY (mb_2011_pid);

ALTER TABLE gnaf.MB_2016 ADD
 CONSTRAINT MB_2016_PK PRIMARY KEY (mb_2016_pid);

ALTER TABLE gnaf.MB_MATCH_CODE_AUT ADD
 CONSTRAINT MB_MATCH_CODE_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.PRIMARY_SECONDARY ADD
 CONSTRAINT PRIMARY_SECONDARY_PK PRIMARY KEY (primary_secondary_pid);

ALTER TABLE gnaf.PS_JOIN_TYPE_AUT ADD
 CONSTRAINT PS_JOIN_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.STATE ADD
 CONSTRAINT STATE_PK PRIMARY KEY (state_pid);

ALTER TABLE gnaf.STREET_CLASS_AUT ADD
 CONSTRAINT STREET_CLASS_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.STREET_LOCALITY ADD
 CONSTRAINT STREET_LOCALITY_PK PRIMARY KEY (street_locality_pid);

ALTER TABLE gnaf.STREET_LOCALITY_ALIAS ADD
 CONSTRAINT STREET_LOCALITY_ALIAS_PK PRIMARY KEY (street_locality_alias_pid);

ALTER TABLE gnaf.STREET_LOCALITY_ALIAS_TYPE_AUT ADD
 CONSTRAINT STREET_LOCALITY_ALIAS_TYPE__PK PRIMARY KEY (code);

ALTER TABLE gnaf.STREET_LOCALITY_POINT ADD
 CONSTRAINT STREET_LOCALITY_POINT_PK PRIMARY KEY (street_locality_point_pid);

ALTER TABLE gnaf.STREET_SUFFIX_AUT ADD
 CONSTRAINT STREET_SUFFIX_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.STREET_TYPE_AUT ADD
 CONSTRAINT STREET_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE gnaf.ADDRESS_ALIAS ADD
 CONSTRAINT ADDRESS_ALIAS_FK1 FOREIGN KEY (alias_pid)
  REFERENCES gnaf.ADDRESS_DETAIL (address_detail_pid);

ALTER TABLE gnaf.ADDRESS_ALIAS ADD
 CONSTRAINT ADDRESS_ALIAS_FK2 FOREIGN KEY (alias_type_code)
  REFERENCES gnaf.ADDRESS_ALIAS_TYPE_AUT (code);

ALTER TABLE gnaf.ADDRESS_ALIAS ADD
 CONSTRAINT ADDRESS_ALIAS_FK3 FOREIGN KEY (principal_pid)
  REFERENCES gnaf.ADDRESS_DETAIL (address_detail_pid);

ALTER TABLE gnaf.ADDRESS_DEFAULT_GEOCODE ADD
 CONSTRAINT ADDRESS_DEFAULT_GEOCODE_FK1 FOREIGN KEY (address_detail_pid)
  REFERENCES gnaf.ADDRESS_DETAIL (address_detail_pid);

ALTER TABLE gnaf.ADDRESS_DEFAULT_GEOCODE ADD
 CONSTRAINT ADDRESS_DEFAULT_GEOCODE_FK2 FOREIGN KEY (geocode_type_code)
  REFERENCES gnaf.GEOCODE_TYPE_AUT (code);

ALTER TABLE gnaf.ADDRESS_DETAIL ADD
 CONSTRAINT ADDRESS_DETAIL_FK1 FOREIGN KEY (address_site_pid)
  REFERENCES gnaf.ADDRESS_SITE (address_site_pid);

ALTER TABLE gnaf.ADDRESS_DETAIL ADD
 CONSTRAINT ADDRESS_DETAIL_FK2 FOREIGN KEY (flat_type_code)
  REFERENCES gnaf.FLAT_TYPE_AUT (code);

ALTER TABLE gnaf.ADDRESS_DETAIL ADD
 CONSTRAINT ADDRESS_DETAIL_FK3 FOREIGN KEY (level_geocoded_code)
  REFERENCES gnaf.GEOCODED_LEVEL_TYPE_AUT (code);

ALTER TABLE gnaf.ADDRESS_DETAIL ADD
 CONSTRAINT ADDRESS_DETAIL_FK4 FOREIGN KEY (level_type_code)
  REFERENCES gnaf.LEVEL_TYPE_AUT (code);

ALTER TABLE gnaf.ADDRESS_DETAIL ADD
 CONSTRAINT ADDRESS_DETAIL_FK5 FOREIGN KEY (locality_pid)
  REFERENCES gnaf.LOCALITY (locality_pid);

ALTER TABLE gnaf.ADDRESS_DETAIL ADD
 CONSTRAINT ADDRESS_DETAIL_FK6 FOREIGN KEY (street_locality_pid)
  REFERENCES gnaf.STREET_LOCALITY (street_locality_pid);

ALTER TABLE gnaf.ADDRESS_MESH_BLOCK_2011 ADD
 CONSTRAINT ADDRESS_MESH_BLOCK_2011_FK1 FOREIGN KEY (address_detail_pid)
  REFERENCES gnaf.ADDRESS_DETAIL (address_detail_pid);

ALTER TABLE gnaf.ADDRESS_MESH_BLOCK_2011 ADD
 CONSTRAINT ADDRESS_MESH_BLOCK_2011_FK2 FOREIGN KEY (mb_2011_pid)
  REFERENCES gnaf.MB_2011 (mb_2011_pid);

ALTER TABLE gnaf.ADDRESS_MESH_BLOCK_2011 ADD
 CONSTRAINT ADDRESS_MESH_BLOCK_2011_FK3 FOREIGN KEY (mb_match_code)
  REFERENCES gnaf.MB_MATCH_CODE_AUT (code);

ALTER TABLE gnaf.ADDRESS_MESH_BLOCK_2016 ADD
 CONSTRAINT ADDRESS_MESH_BLOCK_2016_FK1 FOREIGN KEY (address_detail_pid)
  REFERENCES gnaf.ADDRESS_DETAIL (address_detail_pid);

ALTER TABLE gnaf.ADDRESS_MESH_BLOCK_2016 ADD
 CONSTRAINT ADDRESS_MESH_BLOCK_2016_FK2 FOREIGN KEY (mb_2016_pid)
  REFERENCES gnaf.MB_2016 (mb_2016_pid);

ALTER TABLE gnaf.ADDRESS_MESH_BLOCK_2016 ADD
 CONSTRAINT ADDRESS_MESH_BLOCK_2016_FK3 FOREIGN KEY (mb_match_code)
  REFERENCES gnaf.MB_MATCH_CODE_AUT (code);

ALTER TABLE gnaf.ADDRESS_SITE ADD
 CONSTRAINT ADDRESS_SITE_FK1 FOREIGN KEY (address_type)
  REFERENCES gnaf.ADDRESS_TYPE_AUT (code);

ALTER TABLE gnaf.ADDRESS_SITE_GEOCODE ADD
 CONSTRAINT ADDRESS_SITE_GEOCODE_FK1 FOREIGN KEY (address_site_pid)
  REFERENCES gnaf.ADDRESS_SITE (address_site_pid);

ALTER TABLE gnaf.ADDRESS_SITE_GEOCODE ADD
 CONSTRAINT ADDRESS_SITE_GEOCODE_FK2 FOREIGN KEY (geocode_type_code)
  REFERENCES gnaf.GEOCODE_TYPE_AUT (code);

ALTER TABLE gnaf.ADDRESS_SITE_GEOCODE ADD
 CONSTRAINT ADDRESS_SITE_GEOCODE_FK3 FOREIGN KEY (reliability_code)
  REFERENCES gnaf.GEOCODE_RELIABILITY_AUT (code);

ALTER TABLE gnaf.LOCALITY ADD
 CONSTRAINT LOCALITY_FK1 FOREIGN KEY (gnaf_reliability_code)
  REFERENCES gnaf.GEOCODE_RELIABILITY_AUT (code);

ALTER TABLE gnaf.LOCALITY ADD
 CONSTRAINT LOCALITY_FK2 FOREIGN KEY (locality_class_code)
  REFERENCES gnaf.LOCALITY_CLASS_AUT (code);

ALTER TABLE gnaf.LOCALITY ADD
 CONSTRAINT LOCALITY_FK3 FOREIGN KEY (state_pid)
  REFERENCES gnaf.STATE (state_pid);

ALTER TABLE gnaf.LOCALITY_ALIAS ADD
 CONSTRAINT LOCALITY_ALIAS_FK1 FOREIGN KEY (alias_type_code)
  REFERENCES gnaf.LOCALITY_ALIAS_TYPE_AUT (code);

ALTER TABLE gnaf.LOCALITY_ALIAS ADD
 CONSTRAINT LOCALITY_ALIAS_FK2 FOREIGN KEY (locality_pid)
  REFERENCES gnaf.LOCALITY (locality_pid);

ALTER TABLE gnaf.LOCALITY_NEIGHBOUR ADD
 CONSTRAINT LOCALITY_NEIGHBOUR_FK1 FOREIGN KEY (locality_pid)
  REFERENCES gnaf.LOCALITY (locality_pid);

ALTER TABLE gnaf.LOCALITY_NEIGHBOUR ADD
 CONSTRAINT LOCALITY_NEIGHBOUR_FK2 FOREIGN KEY (neighbour_locality_pid)
  REFERENCES gnaf.LOCALITY (locality_pid);

ALTER TABLE gnaf.LOCALITY_POINT ADD
 CONSTRAINT LOCALITY_POINT_FK1 FOREIGN KEY (locality_pid)
  REFERENCES gnaf.LOCALITY (locality_pid);

ALTER TABLE gnaf.PRIMARY_SECONDARY ADD
 CONSTRAINT PRIMARY_SECONDARY_FK1 FOREIGN KEY (primary_pid)
  REFERENCES gnaf.ADDRESS_DETAIL (address_detail_pid);

ALTER TABLE gnaf.PRIMARY_SECONDARY ADD
 CONSTRAINT PRIMARY_SECONDARY_FK2 FOREIGN KEY (ps_join_type_code)
  REFERENCES gnaf.PS_JOIN_TYPE_AUT (code);

ALTER TABLE gnaf.PRIMARY_SECONDARY ADD
 CONSTRAINT PRIMARY_SECONDARY_FK3 FOREIGN KEY (secondary_pid)
  REFERENCES gnaf.ADDRESS_DETAIL (address_detail_pid);

ALTER TABLE gnaf.STREET_LOCALITY ADD
 CONSTRAINT STREET_LOCALITY_FK1 FOREIGN KEY (gnaf_reliability_code)
  REFERENCES gnaf.GEOCODE_RELIABILITY_AUT (code);

ALTER TABLE gnaf.STREET_LOCALITY ADD
 CONSTRAINT STREET_LOCALITY_FK2 FOREIGN KEY (locality_pid)
  REFERENCES gnaf.LOCALITY (locality_pid);

ALTER TABLE gnaf.STREET_LOCALITY ADD
 CONSTRAINT STREET_LOCALITY_FK3 FOREIGN KEY (street_class_code)
  REFERENCES gnaf.STREET_CLASS_AUT (code);

ALTER TABLE gnaf.STREET_LOCALITY ADD
 CONSTRAINT STREET_LOCALITY_FK4 FOREIGN KEY (street_suffix_code)
  REFERENCES gnaf.STREET_SUFFIX_AUT (code);

ALTER TABLE gnaf.STREET_LOCALITY ADD
 CONSTRAINT STREET_LOCALITY_FK5 FOREIGN KEY (street_type_code)
  REFERENCES gnaf.STREET_TYPE_AUT (code);

ALTER TABLE gnaf.STREET_LOCALITY_ALIAS ADD
 CONSTRAINT STREET_LOCALITY_ALIAS_FK1 FOREIGN KEY (alias_type_code)
  REFERENCES gnaf.STREET_LOCALITY_ALIAS_TYPE_AUT (code);

ALTER TABLE gnaf.STREET_LOCALITY_ALIAS ADD
 CONSTRAINT STREET_LOCALITY_ALIAS_FK2 FOREIGN KEY (street_locality_pid)
  REFERENCES gnaf.STREET_LOCALITY (street_locality_pid);

ALTER TABLE gnaf.STREET_LOCALITY_ALIAS ADD
 CONSTRAINT STREET_LOCALITY_ALIAS_FK3 FOREIGN KEY (street_suffix_code)
  REFERENCES gnaf.STREET_SUFFIX_AUT (code);

ALTER TABLE gnaf.STREET_LOCALITY_ALIAS ADD
 CONSTRAINT STREET_LOCALITY_ALIAS_FK4 FOREIGN KEY (street_type_code)
  REFERENCES gnaf.STREET_TYPE_AUT (code);

ALTER TABLE gnaf.STREET_LOCALITY_POINT ADD
 CONSTRAINT STREET_LOCALITY_POINT_FK1 FOREIGN KEY (street_locality_pid)
  REFERENCES gnaf.STREET_LOCALITY (street_locality_pid);




