class Contact
  include ActiveModel::Model
  attr_accessor :name, :string
  attr_accessor :email, :string
  attr_accessor :content, :string

  validates_presence_of :name, :message => "El nom es obligatori"
  validates_presence_of :email :message => "Em cal un mail, per poder posar-me en contacte, si es necessari"
  validates_presence_of :content :message => "ep!!!, que fa falta el missatge"
  validates_format_of :email, :message => "comprar el mail, sembla que no té un format vàlid"
    :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :content, :maximum => 500

end