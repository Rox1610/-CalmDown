EventsResource.destroy_all
Resource.destroy_all
Blog.destroy_all
Diarie.destroy_all
Event.destroy_all
User.destroy_all
Profile.destroy_all

puts "Creation of profiles"
profile_auditif = Profile.create(name: :auditif)
profile_auditif.save!
profile_visuel = Profile.create(name: :visuel)
profile_visuel.save!

puts "Creation of users"
user_1 = User.create(first_name: "David", last_name: "Mboma", email: "david_m@gmail.com", password: "123456", profile: nil)
user_2 = User.create(first_name: "Cedric", last_name: "Lavoie", email: "ced_l@gmail.com", password: "123456", profile: nil)
user_3 = User.create(first_name: "Roxanne", last_name: "Devillers", email: "roxy_d@gmail.com", password: "123456", profile: nil)
user_4 = User.create(first_name: "Joe", last_name: "Mirland", email: "joe_m@gmail.com", password: "123456", profile: nil)
user_5 = User.create(first_name: "Simon", last_name: "Lacroix", email: "simon_l@gmail.com", password: "123456", profile: profile_auditif)

puts "Creation of events"
event_1 = Event.create(name: "Show", description: "Present my new christmas album to the public", start_time: "2022-12-19, 20:00", end_time: "2022-12-19, 21:00", user: user_5)
event_2 = Event.create(name: "Interview", description: "Interview for a new job", start_time: "2022-11-19, 15:00", end_time: "2022-11-19, 16:00", user: user_3)
event_3 = Event.create(name: "Interview bis", description: "Interview for another new job", start_time: "2022-11-25, 10:00", end_time: "2022-11-25, 11:00", user: user_3)

puts "Creation of blogs"
Blog.create(date: "2022-12-08", title: "why are we stressed before a presentation?", content: "There are a few potential reasons why someone might experience stress before giving a presentation. Some of the most common reasons include a fear of public speaking, a lack of preparation or confidence in one's ability to deliver the presentation, a fear of being judged or criticized by the audience, or a fear of failure. Additionally, the pressure to perform well and meet the expectations of the audience can also contribute to stress. Overall, stress before a presentation is a common experience and can be caused by a variety of different factors.", user: user_4)
Blog.create(date: "2022-11-28", title: "How to calm your inner storm", content: "One way to conjure up your wise mind is to imagine you're dealing with a crisis, whatever that might look like for you: perhaps you and your partner are fighting so much you're considering separating; or you've just lost your job; or you've just received bad news about a loved one. Now imagine a person you know who embodies the idea of wisdom: this could be someone in your life now or from your past, or someone you look up to, such as a famous person or someone in your community. Next, closing your eyes, imagine what that person would say to you in this difficult time; and allow yourself to sit with that for a few moments, really feeling the experience in your body as best as you can. Hearing their words and tone of voice, maybe you can even experience the sense of being hugged if that's comforting for you. This is you tapping into your wise mind.", user: user_5)
Blog.create(date: "2022-12-10", title: "10 tips to deal with stress", content: "1. Identify the sources of your stress and try to eliminate or reduce them. 2. Exercise regularly, as physical activity can help reduce stress and improve your overall health and well-being. 3. Adopt a healthy and balanced diet, and avoid relying on alcohol, caffeine, or sugary foods to cope with stress. 4. Try relaxation techniques such as deep breathing, meditation, or yoga to help calm your mind and body. 5. Get plenty of sleep, as sleep deprivation can worsen the effects of stress. 6. Take regular breaks and engage in activities you enjoy, such as hobbies or outdoor activities, to give your mind a break from stress. 7. Connect with others and develop a strong support system of friends and family who can provide emotional support during times of stress. 8. Practice gratitude and focus on the positive aspects of your life, as this can help reduce stress and improve your overall outlook. 9. Learn how to say 'no' and set healthy boundaries to avoid taking on more than you can handle and becoming overwhelmed. 10. Seek professional help if your stress is severe or persistent, as a mental health professional can provide additional strategies and support for managing stress.", user: user_1)
Blog.create(date: "2022-12-01", title: "How to relax before a presentation ?", content: "Here are a few tips to help you relax before a presentation:
  Take slow, deep breaths. This can help calm your nerves and reduce tension in your body.
  Practice relaxation techniques, such as progressive muscle relaxation or meditation. These can help you focus your mind and calm your body.
  Visualize yourself giving a successful presentation. Imagine yourself feeling confident and in control, and see yourself delivering the presentation smoothly and effectively.
  Get enough sleep the night before your presentation. Being well-rested can help you feel more relaxed and focused.
  Try to stay positive and avoid negative thoughts. Remind yourself that you are prepared and capable, and that you have the skills and knowledge to deliver a great presentation.
  If possible, arrive at the presentation location early to give yourself time to get settled and familiarize yourself with the surroundings. This can help you feel more at ease and in control.
  Use positive self-talk to boost your confidence. Remind yourself of your strengths and accomplishments, and focus on the positive aspects of your presentation.
  Remember, it's normal to feel anxious before a presentation. By using these relaxation techniques, you can help calm your nerves and boost your confidence", user: user_5)

puts "Creation of videos"
Resource.create(category: 0, content: "https://www.youtube.com/embed/JLXhgTGMISI", description: "Take a place confortably and relax by watching the aquarium",profile: profile_visuel, name: "aquarium")
Resource.create(category: 0, content: "https://www.youtube.com/embed/G-9_ndX5mgQ", description: "Take a place confortably and relax by watching the clean mountain river", profile: profile_visuel, name: "mountain")
Resource.create(category: 0, content: "https://www.youtube.com/embed/DcN9LtgFuas", description: "Take a place confortably and relax by watching the snow forest", profile: profile_visuel, name: "forest")
Resource.create(category: 0, content: "https://www.youtube.com/embed/7Nn7NZI_LN4", description: "Take a place confortably and relax by watching the domino", profile: profile_visuel, name: "cat")
Resource.create(category: 0, content: "https://www.youtube.com/embed/NwtZ9jfK7x8", description: "Take a place confortably and relax by watching the relaxing visual", profile: profile_visuel, name: "visual")

puts "Creation of musics"
Resource.create(category: 1, content: "https://www.mixcloud.com/widget/iframe/?hide_cover=1&mini=1&feed=%2Fyogatea%2Frelax-with-nature-dolphins-whales%2F", description: "Take a place confortably and listen to the whale sing from Tadoussac", profile: profile_auditif, name: "whale")
Resource.create(category: 1, content: "https://www.mixcloud.com/widget/iframe/?hide_cover=1&mini=1&feed=%2FOWM%2Frainforest-natural-sounds%2F", description: "Take a place confortably and listen to the sound of the rainforest", profile: profile_auditif, name: "rainforest")
Resource.create(category: 1, content: "https://www.mixcloud.com/widget/iframe/?hide_cover=1&mini=1&feed=%2Fyogatea%2Frelax-with-nature-woodland-nightfall%2F", description: "Take a place confortably and listen to the nature sounds", profile: profile_auditif, name: "nature")
Resource.create(category: 1, content: "https://www.mixcloud.com/widget/iframe/?hide_cover=1&mini=1&feed=%2FFteraki_Marabou%2Fthe-sound-of-rain-above-my-window%2F", description: "Take a place confortably and listen to the rain sounds", profile: profile_auditif, name: "rain")

puts "Creation of Diarie"
Diarie.create(rating: 0, description: "too much stressed", user: user_3, event: event_2)
Diarie.create(rating: 1, description: "a little bit better than last one", user: user_3, event: event_3)
