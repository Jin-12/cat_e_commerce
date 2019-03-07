class UserMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
 
  def order_validation_email(order)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = order.user
    @order = order

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://cat-e-commerce.herokuapp.com/'

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Confirmation de commande') 
  end
end
