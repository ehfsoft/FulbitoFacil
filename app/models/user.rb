class User < ActiveRecord::Base
  MAX_SIZECAMPO = 30
  MIN_NUMDOCUMENTO = 8
  MAX_NUMDOCUMENTO = 11
  LEN_NUMDOCUMENTO = MIN_NUMDOCUMENTO..MAX_NUMDOCUMENTO
  has_many :local
  belongs_to :documenttype
  validates_presence_of :name, :lastname, :maidenname, :sex, :documenttype_id, :documentnumber, 
  :email, :password, :datebirth, :message => "esta en blanco o no seleccionado."
  validates_uniqueness_of :documentnumber, :email, :message => "ya existe."
  validates_length_of :documentnumber, :within =>LEN_NUMDOCUMENTO, 
  :message => "debe tener como minimo 8 caracteres y como maximo 11."
  validates_format_of :email, :with => /^[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i, 
  :message => "no tiene el formato correcto."
  validates_confirmation_of :email, :message => "no es el mismo que el ingresado."
  validates_confirmation_of :password, :message => "no es el mismo que el ingresado."
  Pusher.app_id = '14736'
  Pusher.key = 'afd35af405d6d99f9d24'
  Pusher.secret = '28736f0f527eac5fd177'

  after_create :send_to_pusher

  def send_to_pusher
    logger.info "Hi?"
    Pusher['FulbitoFacil'].trigger("message:create",self.to_json)  
  end
end
