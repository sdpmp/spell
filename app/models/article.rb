class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy, before_add: :a_method_before_add
  validates :title, presence: true, uniqueness: { case_sensitive: false },
                    length: { minimum: 5 },
                    format: { without: /\A\d+\z/,
                              message: "only allows letters" } 
  
  before_validation :normalize_title, on: [ :create, :update]  


#  after_initialize do |article|
#    puts "You have initialized an object!"
#  end
 
#  after_find do |article|
#    puts "You have found an object!"
#  end


  after_touch do |article|
    puts "================== You have touched an object! ========================"
  end


  def normalize_title
    self.title = self.title.downcase.titleize
  end

#  validate :a_method_used_for_validation_purposes

#  def a_method_used_for_validation_purposes
#    errors[:base] << "This person is invalid because ..."
#  end


  def a_method_before_add(comment)
    puts "================== Something before comment get added! ========================"
  end

end
                    

