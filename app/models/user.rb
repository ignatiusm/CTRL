class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :family_name, presence: true, allow_blank: false

  enum flagship: ['Acute Care Genomic Testing',
                  'Acute Lymphoblastic Leukaemia',
                  'Brain Malformations',
                  'Cardiovascular Genetic Disorders',
                  'chILDRANZ',
                  'Epileptic Encephalopathy',
                  'Genetic Immunology',
                  'Genomic Autopsy',
                  'Hereditary Cancer Syndromes (ICCon)',
                  'HIDDEN Renal Genetics',
                  'Intellectual Disability',
                  'Leukodystrophies',
                  'Mitochondrial Disorders',
                  'Neuromuscular Disorders',
                  'Renal Genetic Disorders',
                  'Solid Tumours']

  enum steps: %w[step_one
                 step_two
                 step_three
                 step_four
                 step_five]
end
