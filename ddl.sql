
--final table ddl
CREATE TABLE provider (
        provider_id SERIAL PRIMARY KEY,
        provider_name VARCHAR(255) NOT NULL,
        npi VARCHAR(10), -- National Provider Identifier
        provider_type_concept_id INTEGER, -- Foreign key to the concept table
        specialty_concept_id INTEGER, -- Foreign key to the concept table for provider specialty
        care_site_id INTEGER REFERENCES care_site(care_site_id), -- Foreign key to care_site table
                provider_source_value VARCHAR(50) ,-- Source value for the provider identifier

        specialty_source_value VARCHAR(50), -- Source value for the specialty
        provider_id_source_value VARCHAR(50) -- Source value for the provider identifier
  );

    CREATE TABLE care_site (
        care_site_id SERIAL PRIMARY KEY,
        care_site_name VARCHAR(255),
        place_of_service_concept_id INTEGER,
        location_id INTEGER,
        care_site_source_value VARCHAR(50),
        place_of_service_source_value VARCHAR(50)
  );

   INSERT INTO provider (provider_name, npi, specialty, care_site, provider_source_value, specialty_source_value, provider_id_source_value) VALUES
        ('Dr. John Doe', '1234567890', 'Cardiology', 'City Hospital', 'JD001', 'Cardiology', 'JD-NPI'),
        ('Dr. Jane Smith', '2345678901', 'Pediatrics', 'Village Clinic', 'JS002', 'Pediatrics', 'JS-NPI'),
        ('Dr. Johnathan Doe', '3456789012', 'Neurology', 'Metro Medical Center', 'JD003', 'Neurology', 'JD-NPI-NEW'),
        ('Dr. Jane S.', '4567890123', 'Pediatrics', 'Suburban Health', 'JS004', 'Pediatrics', 'JS-NPI-SHORT'),
        ('Dr. J. Doe', '5678901234', 'Cardiology', 'Eastside Clinic', 'JD005', 'Cardiology', 'JD-NPI-ALT'),
        ('Dr. Emily Johnson', '6789012345', 'Oncology', 'North Health Institute', 'EJ006', 'Oncology', 'EJ-NPI'),
        ('Dr. Michael Brown', '7890123456', 'Orthopedics', 'Downtown Health', 'MB007', 'Orthopedics', 'MB-NPI'),
        ('Dr. Sarah Wilson', '8901234567', 'Dermatology', 'Metro Medical Center', 'SW008', 'Dermatology', 'SW-NPI'),
        ('Dr. Chris Davis', '9012345678', 'General Practice', 'City Hospital', 'CD009', 'General Practice', 'CD-NPI'),
        ('Dr. Laura Taylor', '0123456789', 'Internal Medicine', 'Village Clinic', 'LT010', 'Internal Medicine', 'LT-NPI'),
        ('Dr. Kevin Garcia', '1234567800', 'Cardiology', 'City Hospital', 'KG011', 'Cardiology', 'KG-NPI'),
        ('Dr. Patricia Martinez', '2345678909', 'Pediatrics', 'Suburban Health', 'PM012', 'Pediatrics', 'PM-NPI'),
        ('Dr. Robert Lee', '3456789018', 'Neurology', 'Eastside Clinic', 'RL013', 'Neurology', 'RL-NPI'),
        ('Dr. Linda Rodriguez', '4567890127', 'Dermatology', 'Downtown Health', 'LR014', 'Dermatology', 'LR-NPI');


        ALTER TABLE provider REPLICA IDENTITY FULL;