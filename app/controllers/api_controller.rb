class ApiController < ApplicationController

	skip_before_filter :verify_authenticity_token

	def save_gcm_registration
		GcmRegistration.create(gcm_registration_id: params[:regid])
		render nothing: true
	end	

	def push_noti
		#Push::ConfigurationGcm.create(app: 'app_name', connections: 2, enabled: true, key: '<api key here>')
		GcmRegistration.all.each do |registration|
			puts registration.gcm_registration_id
		Push::MessageGcm.create(
		    app: 'blindApp',
		    device: registration.gcm_registration_id,
		    payload: { message: 'Hello World' },
		    collapse_key: 'Hi')
		render nothing: true
		end
	end	

	def editions
		news = [{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						}]
		render json: news
	end

	def zones
		news = [{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						}]
		render json: news
	end

	def news_feed
		news = [{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						},{ 
							title: "¿Qué es en realidad la magia?",
							body: "Pienso que la magia está presente en la vida diaria...",
							thumb: "images/thumb/cover.png",
							date: "11 Noviembre 2014"
						}]
		render json: news
	end

end
