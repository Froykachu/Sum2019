class Patient
  require 'symmetric_encryption/core'
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  field :name, type: String
  field :encrypted_SSN, :type => String, :encrypted => {random_iv: true}
  field :encrypted_phone, :type => String, :encrypted => {compress: true, random_iv: true}
  field :encrypted_mrn, :type => String, :encrypted => { random_iv: true}
  field :encrypted_dob, :type => String, :encrypted => {compress: true, random_iv: true}
end
