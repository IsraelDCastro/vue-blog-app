# == Schema Information
#
# Table name: blogs
#
#  id              :bigint           not null, primary key
#  content         :string
#  image_url       :string
#  preview_content :string
#  status          :string
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Blog < ApplicationRecord
            
end
