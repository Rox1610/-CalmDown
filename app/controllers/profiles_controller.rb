class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    count_visuel = 0
    count_auditif = 0
      count_visuel += 1 if params[:aquarium] == 1
      count_visuel += 1 if params[:river] == 1
      count_visuel += 1 if params[:mountains] == 1
      count_visuel += 1 if params[:stars] == 1
      count_visuel += 1 if params[:clouds] == 1
      count_visuel += 1 if params[:flute] == 1
      count_visuel += 1 if params[:rain] == 1
      count_visuel += 1 if params[:whale] == 1
      count_visuel += 1 if params[:mantra] == 1
      count_visuel += 1 if params[:forest] == 1
      count_visuel += 1 if params[:mantra] == 1
    if count_auditif > count_visuel
      profile = :auditif
    else
      profile = :visuel
    end
    current_user.profile = Profile.find_by(name: profile)
    if current_user.save
      redirect_to dashboard_path
    else
      redirect_to profile_new
    end
  end
end


#     if params[:river] == 1 && params[:stars] == 1 && params[:mountains] == 1 && params[:clouds] == 1 && params[:flute] == 1
#       profile = :visuel
#     else
#       profile = :auditif
#     end
#     current_user.profile = Profile.find_by(name: profile)
#     if current_user.save
#       redirect_to dashboard_path
#     else
#       redirect_to profile_new
#     end
#   end
# end

# if params[:stars] == 1
#   count_visuel += 1
# end
# if params[:clouds] == 1
#   count_visuel += 1
# end
# if params[:flute] == 1
#   count_auditif += 1
# end
# if params[:rain] == 1
#   count_auditif += 1
# end
# if params[:whale] == 1
#   count_auditif += 1
# end
# if params[:mantra] == 1
#   count_auditif += 1
# end
# if params[:forest] == 1
#   count_auditif += 1
# end
