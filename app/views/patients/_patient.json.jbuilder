json.extract! patient, :id, :name, :SSN, :phone, :mrn, :dob, :created_at, :updated_at
json.url patient_url(patient, format: :json)
