puts "Seeding Data ..."


## USERS

# New user format:
#
# User.create!({
#  name: '',
#  email: '',
#  password_digest: '',
#  location: 'Toronto',
#  linkedin_url: '',
#  github_url: '',
#  other_site: '',
#  twitter: '',
#  slack_name: '',
#  avatar_file_name: ''
# })

puts "Populating users table.."

User.destroy_all

User.create!({
  name: 'David Chasteau',
  email: 'davidchasteau@gmail.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: 'https://ca.linkedin.com/in/david-chasteau-6621b45a',
  github_url: 'Chasteau',
  other_site: '',
  twitter: '',
  slack_name: 'dchasteau'
})

User.create!({
  name: 'John Lennie',
  email: 'johnanthonylennie@gmail.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: 'https://ca.linkedin.com/in/john-lennie-b71b0885',
  github_url: 'john-lennie',
  other_site: '',
  twitter: '',
  slack_name: 'john-lennie'
})

User.create!({
  name: 'Tahuana Cirati',
  email: 'tahuana@gmail.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: 'https://ca.linkedin.com/in/tahuana-cirati-gomes',
  github_url: 'tahuana',
  other_site: '',
  twitter: '',
  slack_name: 'tahuana'
})

User.create!({
  name: 'Ian Duke',
  email: 'ian.c.duke@gmail.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '1andee',
  other_site: 'http://ianduke.io',
  twitter: 'iduke787',
  slack_name: 'ian.duke'
})

User.create!({
  name: 'Virgie Conway',
  email: 'virgieconway@quilm.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: 'virgie.conway',
  other_site: '',
  twitter: 'virgie.conway',
  slack_name: ''
})

User.create!({
  name: 'Ofelia Byers',
  email: 'ofeliabyers@parcoe.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Jackie Benson',
  email: 'jackiebenson@suremax.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Justine Morse',
  email: 'justinemorse@calcu.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Arline Webb',
  email: 'arlinewebb@noralex.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Mathews Eaton',
  email: 'mathewseaton@eschoir.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Sharp Atkinson',
  email: 'sharpatkinson@nebulean.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Page Beach',
  email: 'pagebeach@nitracyr.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Cote Guerra',
  email: 'coteguerra@scentric.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Angela Puckett',
  email: 'angelapuckett@zillar.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Johnson Oneal',
  email: 'johnsononeal@tourmania.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Dudley Clements',
  email: 'dudleyclements@printspan.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Williams Blair',
  email: 'williamsblair@deminimum.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Maldonado Rivas',
  email: 'maldonadorivas@mitroc.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Millicent Griffith',
  email: 'millicentgriffith@hawkster.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Pennington Robles',
  email: 'penningtonrobles@cytrak.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Rosella Valentine',
  email: 'rosellavalentine@zaya.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Maynard Mack',
  email: 'maynardmack@techtrix.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Sylvia Vinson',
  email: 'sylviavinson@talkalot.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Deidre Carney',
  email: 'deidrecarney@xplor.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Alana Bailey',
  email: 'alanabailey@codax.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Tami Solis',
  email: 'tamisolis@homelux.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Aurelia Barry',
  email: 'aureliabarry@zoarere.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Marquez Padilla',
  email: 'marquezpadilla@isostream.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Mayo Zamora',
  email: 'mayozamora@comvex.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Gwen Durham',
  email: 'gwendurham@cosmosis.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Foreman Puckett',
  email: 'foremanpuckett@miracula.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Nikki Rivera',
  email: 'nikkirivera@primordia.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Evangeline Poole',
  email: 'evangelinepoole@andershun.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Suarez Strickland',
  email: 'suarezstrickland@isotronic.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Mayo Foster',
  email: 'mayofoster@maxemia.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Abbott Rollins',
  email: 'abbottrollins@plasmox.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Jami Martin',
  email: 'jamimartin@isonus.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Trudy Wilkerson',
  email: 'trudywilkerson@cemention.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Higgins Castaneda',
  email: 'higginscastaneda@genesynk.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

User.create!({
  name: 'Lenore Delgado',
  email: 'lenoredelgado@waterbaby.com',
  password_digest: '$2a$10$APIbQo47cqKwGup0vGgZPeZa5VvqmUTwS80WX.APTqU.1c3oHTqKK',
  location: 'Toronto',
  linkedin_url: '',
  github_url: '',
  other_site: '',
  twitter: '',
  slack_name: ''
})

# SKILLS

# New skill format:
#
# Skill.create!({
#  skill_name: ''
# })

puts "Populating skills table.."

Skill.destroy_all

Skill.create!({
  skill_name: 'HTML'
})

Skill.create!({
  skill_name: 'CSS'
})

Skill.create!({
  skill_name: 'JavaScript'
})

Skill.create!({
  skill_name: 'React'
})

Skill.create!({
  skill_name: 'Ruby'
})

Skill.create!({
  skill_name: 'Rails'
})

Skill.create!({
  skill_name: 'PostgreSQL'
})

Skill.create!({
  skill_name: 'Python'
})

Skill.create!({
  skill_name: 'Haskell'
})

Skill.create!({
  skill_name: 'Fortran'
})

Skill.create!({
  skill_name: 'Clojure'
})

Skill.create!({
  skill_name: 'Racket'
})

Skill.create!({
  skill_name: 'Lisp'
})

Skill.create!({
  skill_name: 'Ember'
})

Skill.create!({
  skill_name: 'Node.js'
})

Skill.create!({
  skill_name: 'Meteor'
})

Skill.create!({
  skill_name: 'UX'
})

Skill.create!({
  skill_name: 'Jekyll'
})

Skill.create!({
  skill_name: 'Heroku'
})

Skill.create!({
  skill_name: 'Devops'
})

Skill.create!({
  skill_name: 'MongoDB'
})

Skill.create!({
  skill_name: 'Angular'
})

Skill.create!({
  skill_name: 'Elixir'
})

Skill.create!({
  skill_name: 'jQuery'
})

Skill.create!({
  skill_name: 'PHP'
})

Skill.create!({
  skill_name: 'Objective-C'
})

Skill.create!({
  skill_name: 'Express.js'
})

Skill.create!({
  skill_name: 'Scala'
})


# SKILL USERS

# New skill user format:
#
# SkillUser.create!({
#  user_id: 1,
#  mentor: false,
#  skill_id: 1
# })

puts "Populating skill_users table.."

SkillUser.destroy_all

# learners WHERE mentor: false

SkillUser.create!({
  user_id: 1,
  mentor: false,
  skill_id: 4
  })

SkillUser.create!({
 user_id: 1,
 mentor: false,
 skill_id: 6,
})

SkillUser.create!({
 user_id: 1,
 mentor: false,
 skill_id: 20
})

SkillUser.create!({
 user_id: 2,
 mentor: false,
 skill_id: 14
})

SkillUser.create!({
 user_id: 2,
 mentor: false,
 skill_id: 19
})

SkillUser.create!({
 user_id: 3,
 mentor: false,
 skill_id: 12
})

SkillUser.create!({
 user_id: 3,
 mentor: false,
 skill_id: 26
})

SkillUser.create!({
 user_id: 4,
 mentor: false,
 skill_id: 3
})

SkillUser.create!({
 user_id: 4,
 mentor: false,
 skill_id: 4
})

SkillUser.create!({
 user_id: 4,
 mentor: false,
 skill_id: 15
})

SkillUser.create!({
 user_id: 4,
 mentor: false,
 skill_id: 16
})

SkillUser.create!({
 user_id: 4,
 mentor: false,
 skill_id: 27
})

SkillUser.create!({
 user_id: 5,
 mentor: false,
 skill_id: 10
})

SkillUser.create!({
 user_id: 5,
 mentor: false,
 skill_id: 16
})

SkillUser.create!({
 user_id: 5,
 mentor: false,
 skill_id: 23
})

SkillUser.create!({
 user_id: 6,
 mentor: false,
 skill_id: 4
})

SkillUser.create!({
 user_id: 6,
 mentor: false,
 skill_id: 10
})

SkillUser.create!({
 user_id: 6,
 mentor: false,
 skill_id: 20
})

SkillUser.create!({
 user_id: 7,
 mentor: false,
 skill_id: 9
})

SkillUser.create!({
 user_id: 7,
 mentor: false,
 skill_id: 11
})

SkillUser.create!({
 user_id: 7,
 mentor: false,
 skill_id: 13
})

SkillUser.create!({
 user_id: 7,
 mentor: false,
 skill_id: 17
})

SkillUser.create!({
 user_id: 8,
 mentor: false,
 skill_id: 13
})

SkillUser.create!({
 user_id: 8,
 mentor: false,
 skill_id: 18
})

SkillUser.create!({
 user_id: 8,
 mentor: false,
 skill_id: 19
})

SkillUser.create!({
 user_id: 9,
 mentor: false,
 skill_id: 15
})

SkillUser.create!({
 user_id: 9,
 mentor: false,
 skill_id: 19
})

SkillUser.create!({
 user_id: 9,
 mentor: false,
 skill_id: 22
})

SkillUser.create!({
 user_id: 10,
 mentor: false,
 skill_id: 5
})

SkillUser.create!({
 user_id: 10,
 mentor: false,
 skill_id: 6
})

SkillUser.create!({
 user_id: 10,
 mentor: false,
 skill_id: 19
})

SkillUser.create!({
 user_id: 10,
 mentor: false,
 skill_id: 26
})

SkillUser.create!({
 user_id: 11,
 mentor: false,
 skill_id: 5
})

SkillUser.create!({
 user_id: 11,
 mentor: false,
 skill_id: 7
})

SkillUser.create!({
 user_id: 11,
 mentor: false,
 skill_id: 9
})

SkillUser.create!({
 user_id: 11,
 mentor: false,
 skill_id: 20
})

SkillUser.create!({
 user_id: 12,
 mentor: false,
 skill_id: 2
})

SkillUser.create!({
 user_id: 12,
 mentor: false,
 skill_id: 22
})

SkillUser.create!({
 user_id: 14,
 mentor: false,
 skill_id: 28
})

SkillUser.create!({
 user_id: 20,
 mentor: false,
 skill_id: 8
})

SkillUser.create!({
 user_id: 22,
 mentor: false,
 skill_id: 5
})

SkillUser.create!({
 user_id: 22,
 mentor: false,
 skill_id: 6
})

SkillUser.create!({
 user_id: 30,
 mentor: false,
 skill_id: 15
})

SkillUser.create!({
 user_id: 30,
 mentor: false,
 skill_id: 27
})

SkillUser.create!({
 user_id: 39,
 mentor: false,
 skill_id: 23
})

SkillUser.create!({
 user_id: 40,
 mentor: false,
 skill_id: 1
})

SkillUser.create!({
 user_id: 40,
 mentor: false,
 skill_id: 2
})

SkillUser.create!({
 user_id: 40,
 mentor: false,
 skill_id: 3
})

SkillUser.create!({
 user_id: 40,
 mentor: false,
 skill_id: 4
})

SkillUser.create!({
 user_id: 40,
 mentor: false,
 skill_id: 5
})




# mentors WHERE mentor: true

SkillUser.create!({
 user_id: 13,
 mentor: true,
 skill_id: 1
})

SkillUser.create!({
 user_id: 13,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 13,
 mentor: true,
 skill_id: 7
})

SkillUser.create!({
 user_id: 13,
 mentor: true,
 skill_id: 10
})

SkillUser.create!({
 user_id: 14,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 14,
 mentor: true,
 skill_id: 7
})

SkillUser.create!({
 user_id: 14,
 mentor: true,
 skill_id: 11
})

SkillUser.create!({
 user_id: 14,
 mentor: true,
 skill_id: 13
})

SkillUser.create!({
 user_id: 14,
 mentor: true,
 skill_id: 15
})

SkillUser.create!({
 user_id: 14,
 mentor: true,
 skill_id: 20
})

SkillUser.create!({
 user_id: 15,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 15,
 mentor: true,
 skill_id: 22
})

SkillUser.create!({
 user_id: 15,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 16,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 16,
 mentor: true,
 skill_id: 6
})

SkillUser.create!({
 user_id: 16,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 16,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 17,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 17,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 17,
 mentor: true,
 skill_id: 27
})

SkillUser.create!({
 user_id: 17,
 mentor: true,
 skill_id: 7
})

SkillUser.create!({
 user_id: 18,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 18,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 18,
 mentor: true,
 skill_id: 6
})

SkillUser.create!({
 user_id: 19,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 19,
 mentor: true,
 skill_id: 8
})

SkillUser.create!({
 user_id: 19,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 19,
 mentor: true,
 skill_id: 6
})

SkillUser.create!({
 user_id: 19,
 mentor: true,
 skill_id: 20
})

SkillUser.create!({
 user_id: 19,
 mentor: true,
 skill_id: 17
})

SkillUser.create!({
 user_id: 20,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 20,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 21,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 21,
 mentor: true,
 skill_id: 15
})

SkillUser.create!({
 user_id: 21,
 mentor: true,
 skill_id: 27
})

SkillUser.create!({
 user_id: 21,
 mentor: true,
 skill_id: 21
})

SkillUser.create!({
 user_id: 21,
 mentor: true,
 skill_id: 20
})

SkillUser.create!({
 user_id: 22,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 22,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 22,
 mentor: true,
 skill_id: 22
})

SkillUser.create!({
 user_id: 22,
 mentor: true,
 skill_id: 7
})

SkillUser.create!({
 user_id: 22,
 mentor: true,
 skill_id: 11
})

SkillUser.create!({
 user_id: 23,
 mentor: true,
 skill_id: 15
})

SkillUser.create!({
 user_id: 23,
 mentor: true,
 skill_id: 21
})

SkillUser.create!({
 user_id: 23,
 mentor: true,
 skill_id: 27
})

SkillUser.create!({
 user_id: 23,
 mentor: true,
 skill_id: 22
})

SkillUser.create!({
 user_id: 23,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 23,
 mentor: true,
 skill_id: 24
})

SkillUser.create!({
 user_id: 23,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 23,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 24,
 mentor: true,
 skill_id: 23
})

SkillUser.create!({
 user_id: 24,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 24,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 25,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 25,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 25,
 mentor: true,
 skill_id: 23
})

SkillUser.create!({
  user_id: 26,
  mentor: true,
  skill_id: 1
})

SkillUser.create!({
  user_id: 26,
  mentor: true,
  skill_id: 2
  })

SkillUser.create!({
 user_id: 26,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 26,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 26,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 26,
 mentor: true,
 skill_id: 6
})

SkillUser.create!({
 user_id: 26,
 mentor: true,
 skill_id: 19
})

SkillUser.create!({
 user_id: 26,
 mentor: true,
 skill_id: 26
})

SkillUser.create!({
 user_id: 27,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 27,
 mentor: true,
 skill_id: 24
})

SkillUser.create!({
 user_id: 27,
 mentor: true,
 skill_id: 1
})

SkillUser.create!({
 user_id: 27,
 mentor: true,
 skill_id: 2
})

SkillUser.create!({
 user_id: 27,
 mentor: true,
 skill_id: 25
})

SkillUser.create!({
 user_id: 27,
 mentor: true,
 skill_id: 7
})

SkillUser.create!({
 user_id: 28,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 28,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 28,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 28,
 mentor: true,
 skill_id: 6
})

SkillUser.create!({
 user_id: 29,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 29,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 29,
 mentor: true,
 skill_id: 6
})

SkillUser.create!({
 user_id: 29,
 mentor: true,
 skill_id: 22
})

SkillUser.create!({
 user_id: 30,
 mentor: true,
 skill_id: 18
})

SkillUser.create!({
 user_id: 31,
 mentor: true,
 skill_id: 1
})

SkillUser.create!({
 user_id: 31,
 mentor: true,
 skill_id: 2
})

SkillUser.create!({
 user_id: 31,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 31,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 31,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 31,
 mentor: true,
 skill_id: 6
})

SkillUser.create!({
 user_id: 31,
 mentor: true,
 skill_id: 7
})

SkillUser.create!({
 user_id: 31,
 mentor: true,
 skill_id: 15
})

SkillUser.create!({
 user_id: 31,
 mentor: true,
 skill_id: 24
})

SkillUser.create!({
 user_id: 31,
 mentor: true,
 skill_id: 25
})

SkillUser.create!({
 user_id: 32,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 32,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 32,
 mentor: true,
 skill_id: 8
})

SkillUser.create!({
 user_id: 32,
 mentor: true,
 skill_id: 15
})

SkillUser.create!({
 user_id: 33,
 mentor: true,
 skill_id: 1
})

SkillUser.create!({
 user_id: 33,
 mentor: true,
 skill_id: 2
})

SkillUser.create!({
 user_id: 33,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 33,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 33,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 33,
 mentor: true,
 skill_id: 6
})

SkillUser.create!({
 user_id: 33,
 mentor: true,
 skill_id: 17
})

SkillUser.create!({
 user_id: 34,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 34,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 34,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 34,
 mentor: true,
 skill_id: 6
})

SkillUser.create!({
 user_id: 34,
 mentor: true,
 skill_id: 23
})

SkillUser.create!({
 user_id: 35,
 mentor: true,
 skill_id: 1
})

SkillUser.create!({
 user_id: 35,
 mentor: true,
 skill_id: 2
})

SkillUser.create!({
 user_id: 35,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 35,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 35,
 mentor: true,
 skill_id: 6
})

SkillUser.create!({
 user_id: 35,
 mentor: true,
 skill_id: 25
})

SkillUser.create!({
 user_id: 36,
 mentor: true,
 skill_id: 1
})

SkillUser.create!({
 user_id: 36,
 mentor: true,
 skill_id: 2
})

SkillUser.create!({
 user_id: 36,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 36,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 36,
 mentor: true,
 skill_id: 6
})

SkillUser.create!({
 user_id: 36,
 mentor: true,
 skill_id: 8
})

SkillUser.create!({
 user_id: 36,
 mentor: true,
 skill_id: 9
})

SkillUser.create!({
 user_id: 36,
 mentor: true,
 skill_id: 11
})

SkillUser.create!({
 user_id: 36,
 mentor: true,
 skill_id: 15
})

SkillUser.create!({
 user_id: 37,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 37,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 37,
 mentor: true,
 skill_id: 5
})

SkillUser.create!({
 user_id: 37,
 mentor: true,
 skill_id: 7
})

SkillUser.create!({
 user_id: 37,
 mentor: true,
 skill_id: 17
})

SkillUser.create!({
 user_id: 37,
 mentor: true,
 skill_id: 21
})

SkillUser.create!({
 user_id: 37,
 mentor: true,
 skill_id: 27
})

SkillUser.create!({
 user_id: 38,
 mentor: true,
 skill_id: 1
})

SkillUser.create!({
 user_id: 38,
 mentor: true,
 skill_id: 2
})

SkillUser.create!({
 user_id: 38,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 38,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 38,
 mentor: true,
 skill_id: 22
})

SkillUser.create!({
 user_id: 38,
 mentor: true,
 skill_id: 24
})

SkillUser.create!({
 user_id: 39,
 mentor: true,
 skill_id: 3
})

SkillUser.create!({
 user_id: 39,
 mentor: true,
 skill_id: 4
})

SkillUser.create!({
 user_id: 39,
 mentor: true,
 skill_id: 5
})



puts "Populating completion_status table.."

# New completion status format:
#
# CompletionStatus.create!({
#   name: ""
# })

CompletionStatus.destroy_all

CompletionStatus.create!({
  name: 'In Progress'
})

CompletionStatus.create!({
  name: 'Complete'
})

CompletionStatus.create!({
  name: 'Cancelled'
})



puts "Populating projects table.."

# New project format:
#
# Project.create!({
#   name: "",
#   description: "",
#   start_date: '2017-07-10',
#   finish_date: '2017-07-15',
#   public: true,
#   project_url: 'https://www.github.com/*',
#   mentee_feedback: "",
#   mentor_feedback: "",
#   summary: "",
#   mentor_pending: false,
#   mentee_pending: false,
#   mentee_id: int,
#   mentor_id: int
# })

Project.destroy_all

Project.create!({
  name: "Midterm Project",
  description: "Build a smart to-do list app that autocategorizes your subject.",
  start_date: '2017-06-21',
  finish_date: '2017-06-26',
  public: true,
  project_url: "https://github.com/1andee/TODO-list",
  mentee_feedback: "Thank you for your patience & sage advice",
  mentor_feedback: "Namespacing/abstraction of routes could have been improved. To keep your server.js file from becoming bloated, you can app.use('route/to/prepend', importedRoutes()) to abstract some of your routes. Good work overall.",
  summary: "This was a challenging project",
  mentor_pending: false,
  mentee_pending: false,
  completion_status_id: 2,
  mentee_id: 4,
  mentor_id: 17
})

Project.create!({
  name: "Jungle Rails",
  description: "An e-commerce Rails app built for learning Rails through example. Add features and implement bugfixes into the legacy codebase of an existing e-commerce website to become familiar with Rails",
  start_date: '2017-07-26',
  # finish_date: '',
  public: true,
  project_url: "https://github.com/lighthouse-labs/jungle-rails",
  # summary: "",
  # mentee_feedback: "",
  # mentor_feedback: "",
  mentor_pending: true,
  mentee_pending: false,
  completion_status_id: 1,
  mentee_id: 11,
  # mentor_id:
})

Project.create!({
  name: "Overly ambitious project",
  description: "My plan is to make a scale-model reconstruction of the universe entirely within my IDE",
  start_date: '2017-07-03',
  finish_date: '2019-12-31',
  public: true,
  # project_url: "",
  # summary: "",
  # mentee_feedback: "",
  # mentor_feedback: "",
  mentor_pending: true,
  mentee_pending: false,
  completion_status_id: 1,
  mentee_id: 6,
  # mentor_id:
})

Project.create!({
  name: "Fortran. How does it work?",
  description: "My genius teacher said I should learn this over the summer",
  start_date: '2017-06-29',
  finish_date: '2017-09-01',
  public: true,
  # project_url: "",
  # summary: "",
  # mentee_feedback: "",
  # mentor_feedback: "",
  mentor_pending: false,
  mentee_pending: false,
  completion_status_id: 1,
  mentee_id: 5,
  mentor_id: 13
})

Project.create!({
  name: "Need an experienced mentor for React",
  description: "Must learn this FAST so I don't get fired!!",
  start_date: '2017-07-25',
  finish_date: '2017-08-03',
  public: true,
  # project_url: "",
  # summary: "",
  # mentee_feedback: "",
  # mentor_feedback: "",
  mentor_pending: false,
  mentee_pending: false,
  completion_status_id: 1,
  mentee_id: 2,
  mentor_id: 28
})


Project.create!({
  name: "Heroku for dummies",
  description: "If you want to deploy your Lighthouse projects, I can show you how.",
  start_date: '2017-07-11',
  finish_date: '2017-07-15',
  public: true,
  # project_url: "",
  # summary: "",
  # mentee_feedback: "",
  # mentor_feedback: "",
  mentor_pending: false,
  mentee_pending: false,
  completion_status_id: 2,
  mentee_id: 8,
  mentor_id: 26
})

Project.create!({
  name: "Machine learning!",
  description: "Need experienced mentor for my intense machine learning project that shall soon be unleashed unto the earth.",
  start_date: '2017-07-03',
  finish_date: '2017-08-09',
  public: true,
  project_url: "",
  # summary: "",
  # mentee_feedback: "",
  # mentor_feedback: "",
  mentor_pending: false,
  mentee_pending: false,
  completion_status_id: 1,
  mentee_id: 7,
  mentor_id: 14
})

Project.create!({
  name: "Scala",
  description: "Anyone here know Scala? Could use some guidance",
  start_date: '2017-05-27',
  # finish_date: '',
  public: true,
  project_url: "",
  # summary: "",
  # mentee_feedback: "",
  # mentor_feedback: "",
  mentor_pending: true,
  mentee_pending: false,
  completion_status_id: 1,
  mentee_id: 14,
  # mentor_id:
})

Project.create!({
  name: "Chatbot",
  description: "Looking to build a chatbot that interacts with Facebook Messenger. Mentors, get at me",
  start_date: '2017-06-28',
  finish_date: '2017-07-02',
  public: true,
  project_url: "https://github.com/ykworld/sadistic-chatbot",
  summary: "Struggled a bit with the API but thanks to my mentor, everything it is up and running.",
  mentee_feedback: "You should read up on the docs a bit more to understand the concepts a bit better. Keep it up!",
  mentor_feedback: "Overall, a great project. Keep up the good work.",
  mentor_pending: true,
  mentee_pending: false,
  completion_status_id: 2,
  mentee_id: 9,
  mentor_id: 21
})

Project.create!({
  name: "How does vertical alignment in CSS work?",
  description: "This doesn't make any sense.",
  start_date: '2017-07-18',
  finish_date: '2017-07-19',
  public: true,
  project_url: "https://www.w3schools.com/cssref/pr_pos_vertical-align.asp",
  summary: "Gave up",
  # mentee_feedback: "",
  # mentor_feedback: "",
  mentor_pending: false,
  mentee_pending: false,
  completion_status_id: 3,
  mentee_id: 12
  # mentor_id:
})

Project.create!({
  name: "Chatty app",
  description: "",
  start_date: '2017-06-21',
  finish_date: '2017-06-26',
  public: true,
  # project_url: "",
  # mentee_feedback: "",
  # mentor_feedback: "",
  # summary: "",
  mentor_pending: false,
  mentee_pending: false,
  completion_status_id: 2,
  mentee_id: 3,
  mentor_id: 15
})

Project.create!({
  name: "TinyURL",
  description: "",
  start_date: '',
  finish_date: '',
  public: true,
  # project_url: "",
  # mentee_feedback: "",
  # mentor_feedback: "",
  # summary: "",
  mentor_pending: false,
  mentee_pending: false,
  completion_status_id: 2,
  mentee_id: 10,
  mentor_id: 25
})

Project.create!({
  name: "Tweetr",
  description: "",
  start_date: '',
  finish_date: '',
  public: true,
  # project_url: "",
  # mentee_feedback: "",
  # mentor_feedback: "",
  # summary: "",
  mentor_pending: false,
  mentee_pending: false,
  completion_status_id: 2,
  mentee_id: 1,
  mentor_id: 27
})


puts "Populating project skills table.."

# New project skills format:
#
# ProjectSkill.create!({
#   project_id: int,
#   skill_id: int
# })

ProjectSkill.destroy_all

ProjectSkill.create!({
  project_id: 1,
  skill_id: 3
})

ProjectSkill.create!({
  project_id: 1,
  skill_id: 15
})

ProjectSkill.create!({
  project_id: 1,
  skill_id: 27
})

ProjectSkill.create!({
  project_id: 2,
  skill_id: 5
})

ProjectSkill.create!({
  project_id: 2,
  skill_id: 6
})

ProjectSkill.create!({
  project_id: 3,
  skill_id: 7
})

ProjectSkill.create!({
  project_id: 3,
  skill_id: 9
})

ProjectSkill.create!({
  project_id: 3,
  skill_id: 20
})

ProjectSkill.create!({
  project_id: 4,
  skill_id: 10
})

ProjectSkill.create!({
  project_id: 5,
  skill_id: 4
})

ProjectSkill.create!({
  project_id: 6,
  skill_id: 19
})

ProjectSkill.create!({
  project_id: 7,
  skill_id: 11
})

ProjectSkill.create!({
  project_id: 7,
  skill_id: 13
})

ProjectSkill.create!({
  project_id: 8,
  skill_id: 28
})

ProjectSkill.create!({
  project_id: 9,
  skill_id: 15
})

ProjectSkill.create!({
  project_id: 9,
  skill_id: 19
})


ProjectSkill.create!({
  project_id: 9,
  skill_id: 22
})


ProjectSkill.create!({
  project_id: 10,
  skill_id: 2
})

puts "Populating ratings table.."

# New rating format:
#
# Rating.create!({
# project_id: int,
# receiver_id: int
# giver_id: int,
# availability: int,
# accuracy: int,
# })

Rating.destroy_all

Rating.create!({
  project_id: 11,
  availability: 4,
  accuracy: 4,
  giver_id: 3,
  receiver_id: 15
})

Rating.create!({
  project_id: 1,
  availability: 5,
  accuracy: 4,
  giver_id: 4,
  receiver_id: 17
})

Rating.create!({
  project_id: 9,
  availability: 4,
  accuracy: 3,
  giver_id: 9,
  receiver_id: 21
  })

Rating.create!({
  project_id: 12,
  availability: 3,
  accuracy: 5,
  giver_id: 10,
  receiver_id: 25
})

Rating.create!({
  project_id: 6,
  availability: 3,
  accuracy: 4,
  giver_id: 8,
  receiver_id: 26
})

Rating.create!({
  project_id: 13,
  availability: 3,
  accuracy: 4,
  giver_id: 1,
  receiver_id: 27
})

# seeded ratings (non-project)
#
# Rating.create!({
#   receiver_id: ,
#   availability: 4,
#   accuracy: 4
# })

Rating.create!({
  receiver_id: 13,
  availability: 5,
  accuracy: 3
})

Rating.create!({
  receiver_id: 13,
  availability: 4,
  accuracy: 4
})

Rating.create!({
  receiver_id: 13,
  availability: 5,
  accuracy: 5
})

Rating.create!({
  receiver_id: 14,
  availability: 4,
  accuracy: 4
})

Rating.create!({
  receiver_id: 14,
  availability: 3,
  accuracy: 5
})

Rating.create!({
  receiver_id: 14,
  availability: 5,
  accuracy: 5
})

Rating.create!({
  receiver_id: 18,
  availability: 5,
  accuracy: 4
})

Rating.create!({
  receiver_id: 19,
  availability: 4,
  accuracy: 3
})

Rating.create!({
  receiver_id: 20,
  availability: 3,
  accuracy: 4
})

Rating.create!({
  receiver_id: 24,
  availability: 5,
  accuracy: 4
})

Rating.create!({
  receiver_id: 23,
  availability: 4,
  accuracy: 5
})

Rating.create!({
  receiver_id: 28,
  availability: 4,
  accuracy: 4
})

Rating.create!({
  receiver_id: 30,
  availability: 5
})

puts "DONE!"
