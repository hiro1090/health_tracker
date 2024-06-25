module ApplicationHelper
  def calculate_bmi(weight, height)
    bmi = (weight / (height.to_f / 100) ** 2).round(1)#BMIの計算式
    bmi_status(bmi)
  end

  def bmi_status(bmi)
    case bmi
    when 0...18.5
      "<span class='text-primary'>Underweight (#{bmi})</span>".html_safe
    when 18.5...25
      "<span class='text-success'>Normal (#{bmi})</span>".html_safe
    when 25...30
      "<span class='text-warning'>Overweight (#{bmi})</span>".html_safe
    else
      "<span class='text-danger'>Obese (#{bmi})</span>".html_safe
    end
  end
end
