class Survey < ActiveRecord::Base
  belongs_to :user
  validates  :q40,
    presence: true

#  before_save :calculate_all_overall_happiness

 
  # def calculate_overallhappiness_x
  #   self.overall_happiness = ((calculate_personalresources_x + calculate_organizationalsystem_x + calculate_functioningatwork_x + calculate_experienceofwork_x)/4).round(1)
  # # end
  # def calculate_all_personal_resources
  #   num = Survey.count
  #   sum = Survey.sum(:personal_resources).to_f
  #   (sum/num).round(1)
  # end
  # def calculate_all_organizational_system
  #   num = Survey.count
  #   sum = Survey.sum(:organizational_system).to_f
  #   (sum/num).round(1)
  # end
  # def calculate_all_functioning_at_work
  #   num = Survey.count
  #   sum = Survey.sum(:functioning_at_work).to_f
  #   (sum/num).round(1)
  # end
  # def calculate_all_experience_of_work
  #   num = Survey.count
  #   sum = Survey.sum(:experience_of_work).to_f
  #   (sum/num).round(1)
  # end
  # def calculate_all_overall_happiness
  #   num = Survey.count
  #   sum = Survey.sum(:overall_happiness).to_f
  #   (sum/num).round(1)
  # end

  # def ordered_values
  #   field_names = Survey.columns.map {|c| c.name }

  #   i = 41
  #   while i < 81
  #     Survey.last.send(field_names[41])
  #     i = i + 1
  #   end
  # end
end
