Resource.destroy_all
Blog.destroy_all
Event.destroy_all
Diarie.destroy_all
User.destroy_all
Profile.destroy_all

puts "Creation of profiles"

profile_visuel = Profile.create(name: :visuel)
profile_visuel.save!
profile_auditif = Profile.create(name: :auditif)
profile_auditif.save!

puts "Creation of users"
user_1 = User.create(first_name: "David", last_name: "Lune", email: "david.lune@gmail.com", password: "123456", profile: profile_visuel)
user_2 = User.create(first_name: "Cedric", last_name: "Mars", email: "ced.lune@proton.com", password: "123456", profile: profile_auditif)
user_3 = User.create(first_name: "Roxanne", last_name: "Venus", email: "roxy_proxy@hotmail.fr", password: "123456", profile: nil)
user_4 = User.create(first_name: "Joe", last_name: "Saturn", email: "mr.joe.saturne@gmail.com", password: "123456", profile: nil)

puts "Creation of events"
event_1 = Event.create(name: "Financial meeting", description: "Present to the entire company the result of the first financial semester", start_time: "2022-12-13, 15:00", end_time: "2022-12-13, 16:00", user: user_2)
event_2 = Event.create(name: "CalmDown Pitch", description: "Present the user story and the work done after one week", start_time: "2022-12-09, 18:00", end_time: "2022-12-09, 18:15", user: user_3)
event_3 = Event.create(name: "Final Pitch", description: "Present the final app after two weeks of intense work", start_time: "2022-12-16, 18:00", end_time: "2022-12-13, 16:00", user: user_3)

Diarie.create(description: "The presentation went well. No crash on heroku this time so no stres", event: event_2, user: user_3)

puts "Creation of blogs"
Blog.create(date: "2022-12-08", title: "How to calm down before a presentation", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fusce ut placerat orci nulla pellentesque dignissim enim sit amet. Nam libero justo laoreet sit amet cursus sit. Condimentum lacinia quis vel eros donec ac odio tempor. Penatibus et magnis dis parturient. Tellus in metus vulputate eu. Quis varius quam quisque id diam. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus. Accumsan in nisl nisi scelerisque eu. At varius vel pharetra vel turpis. Facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam. Pharetra vel turpis nunc eget lorem dolor sed. Eget mauris pharetra et ultrices. Morbi enim nunc faucibus a pellentesque. Sed id semper risus in. Elit sed vulputate mi sit amet. Id eu nisl nunc mi ipsum faucibus vitae. Eget gravida cum sociis natoque penatibus et magnis dis parturient. A condimentum vitae sapien pellentesque habitant morbi. Et netus et malesuada fames ac turpis. Interdum velit laoreet id donec ultrices tincidunt. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Elit duis tristique sollicitudin nibh sit amet commodo nulla. Tortor pretium viverra suspendisse potenti. Purus non enim praesent elementum facilisis leo vel fringilla. Mauris a diam maecenas sed. Ac turpis egestas maecenas pharetra convallis posuere morbi leo urna.", user: user_3)
Blog.create(date: "2022-11-28", title: "Best morning practices to deal with stress before a meeting", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fusce ut placerat orci nulla pellentesque dignissim enim sit amet. Nam libero justo laoreet sit amet cursus sit. Condimentum lacinia quis vel eros donec ac odio tempor. Penatibus et magnis dis parturient. Tellus in metus vulputate eu. Quis varius quam quisque id diam. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus. Accumsan in nisl nisi scelerisque eu. At varius vel pharetra vel turpis. Facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam. Pharetra vel turpis nunc eget lorem dolor sed. Eget mauris pharetra et ultrices. Morbi enim nunc faucibus a pellentesque. Sed id semper risus in. Elit sed vulputate mi sit amet. Id eu nisl nunc mi ipsum faucibus vitae. Eget gravida cum sociis natoque penatibus et magnis dis parturient. A condimentum vitae sapien pellentesque habitant morbi. Et netus et malesuada fames ac turpis. Interdum velit laoreet id donec ultrices tincidunt. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Elit duis tristique sollicitudin nibh sit amet commodo nulla. Tortor pretium viverra suspendisse potenti. Purus non enim praesent elementum facilisis leo vel fringilla. Mauris a diam maecenas sed. Ac turpis egestas maecenas pharetra convallis posuere morbi leo urna.", user: user_4)
Blog.create(date: "2022-12-02", title: "Share stress-free tips", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fusce ut placerat orci nulla pellentesque dignissim enim sit amet. Nam libero justo laoreet sit amet cursus sit. Condimentum lacinia quis vel eros donec ac odio tempor. Penatibus et magnis dis parturient. Tellus in metus vulputate eu. Quis varius quam quisque id diam. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus. Accumsan in nisl nisi scelerisque eu. At varius vel pharetra vel turpis. Facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam. Pharetra vel turpis nunc eget lorem dolor sed. Eget mauris pharetra et ultrices. Morbi enim nunc faucibus a pellentesque. Sed id semper risus in. Elit sed vulputate mi sit amet. Id eu nisl nunc mi ipsum faucibus vitae. Eget gravida cum sociis natoque penatibus et magnis dis parturient. A condimentum vitae sapien pellentesque habitant morbi. Et netus et malesuada fames ac turpis. Interdum velit laoreet id donec ultrices tincidunt. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Elit duis tristique sollicitudin nibh sit amet commodo nulla. Tortor pretium viverra suspendisse potenti. Purus non enim praesent elementum facilisis leo vel fringilla. Mauris a diam maecenas sed. Ac turpis egestas maecenas pharetra convallis posuere morbi leo urna.", user: user_2)

puts "Creation of videos"
Resource.create(category: 0, content: "https://www.youtube.com/embed/KLMhVJlOb3E", profile: profile_visuel)
Resource.create(category: 0, content: "https://www.youtube.com/embed/G-9_ndX5mgQ", profile: profile_visuel)
Resource.create(category: 0, content: "https://www.youtube.com/embed/DcN9LtgFuas", profile: profile_visuel)
Resource.create(category: 0, content: "https://www.youtube.com/embed/7Nn7NZI_LN4", profile: profile_visuel)
Resource.create(category: 0, content: "https://www.youtube.com/embed/NwtZ9jfK7x8", profile: profile_visuel)
