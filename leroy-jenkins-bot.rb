require "cinch"

def help_command(message)
  message.reply <<-HERE
  Leroy will respond with silliness if your irc message matches the regex /.*(hello|le+roy|dragon|raid|spire|glen|todd|steven|eric|brian|mike|jeff|rod).*/i
  If you type "leroy, <command>", he will try to do something. The commands are: help
  HERE
end
responses = [ "at least I have chicken...", 
  "Leeeeeeeeeeroy Jenkins", 
  "alright, let's do this",
  "Project Rookery_in_the_upper_blackrock_spire raid #1: FAILURE in 2 minutes: http://knowyourmeme.com/memes/leeroy-jenkins",
  "Strange women lying in ponds distributing swords is no basis for a system of government. Supreme executive power derives from a mandate from the masses, not from some farcical aquatic ceremony.",
"Three rings for the Elven kings under the sky, seven for the Dwarf lords in their halls of stone, nine for the mortal men doomed to die, one for the Dark Lord on his dark throne, in the land of Mordor where the shadows lie. One ring to rule them all, one ring to find them, one ring the bring them all, and in the darkness bind them. In the land of Mordor where the shadows lie.",
"I'm sorry, Dave. I'm afraid I can't do that.",
"Spock. This child is about to wipe out every living thing on Earth. Now, what do you suggest we do... spank it?",
"With great power there must also come great responsibility.",
"If you can't take a little bloody nose, maybe you oughtta go back home and crawl under your bed. It's not safe out here. It's wondrous, with treasures to satiate desires both subtle and gross; but it's not for the timid.",
"Five card stud, nothing wild. And the sky's the limit",
"We're all very different people. We're not Watusi. We're not Spartans. We're Americans, with a capital 'A', huh? You know what that means? Do ya? That means that our forefathers were kicked out of every decent country in the world. We are the wretched refuse. We're the underdog.",
"If I'm not back in five minutes, just wait longer.",
"I'm going to give you a little advice. There's a force in the universe that makes things happen. And all you have to do is get in touch with it, stop thinking, let things happen, and be the ball.",
"Some days, you just can't get rid of a bomb!",
"Bill, strange things are afoot at the Circle K.",
"Invention, my dear friends, is 93% perspiration, 6% electricity, 4% evaporation, and 2% butterscotch ripple.",
"Didja ever look at a dollar bill, man? There's some spooky shit goin' on there. And it's green too.",
"Alright, alright alright.",
"Heya, Tom', it's Bob from the office down the hall. Good to see you, buddy; how've you been? Things have been alright for me except that I'm a zombie now. I really wish you'd let us in.",
"Never argue with the data.",
"Oooh right, it's actually quite a funny story once you get past all the tragic elements and the over-riding sense of doom.",
"Fantastic!",
"This is the way society functions. Aren't you a part of society?",
"Okay. You people sit tight, hold the fort and keep the home fires burning. And if we're not back by dawn... call the president.",
"No matter where you go, there you are. ",
"Do you know of the Klingon proverb that tells us revenge is a dish that is best served cold? It is very cold in space.",
"Ray, if someone asks you if you're a god, you say YES!",
"Greetings, programs!",
"I guess you picked the wrong god-damned rec room to break into, didn't you?!",
"I find your lack of faith disturbing.",
"Hokey religions and ancient weapons are no substitute for a good blaster at your side, kid.",
"Try not. Do, or do not. There is no try.",
"It's a moral imperative.",
"Talk with your mouth full / bite the hand that feeds you / bite off more than you can chew / dare to be stupid",
"Well, let's say this Twinkie represents the normal amount of psychokinetic energy in the New York area. Based on this morning's reading, it would be a Twinkie thirty-five feet long, weighing approximately six hundred pounds.",
"This episode was BADLY written!",
"Worst. Episode. Ever.",
"Goonies never say die.",
"Nothing shocks me--I'm a scientist.",
"Bright light! Bright light!",
"The Road goes ever on and on/Down from the door where it began/Now far ahead the Road has gone/And I must follow, if I can/Pursuing it with eager feet/Until it joins some larger way/Where many paths and errands meet/And whither then? I cannot say.",
"Human sacrifice, dogs and cats living together... mass hysteria!",
"If we knew what it was we were doing, it would not be called research, would it?",
"Wait a minute, Doc. Ah... Are you telling me you built a time machine... out of a DeLorean?",
"Don't call me a mindless philosopher, you overweight blob of grease!",
"I'd just as soon kiss a wookiee!",
"But one thing's sure: Inspector Clay is dead, murdered, and somebody's responsible.",
"I know kung fu.",
"This is your receipt for your husband... and this is my receipt for your receipt.",
"Your soul-suckin' days are over, amigo!",
"I don't believe there's a power in the 'verse that can stop Kaylee from being cheerful. Sometimes you just wanna duct-tape her mouth and dump her in the hold for a month.",
"Would you say I have a plethora of pinatas?",
"Never go in against a Sicilian when death is on the line!",
"There is no Earthly way of knowing... which direction we are going. There is no knowing where we're rowing, or which way the river's flowing. Is it raining? Is it snowing? Is a hurricane a'blowing? Not a speck of light is showing so the danger much be growing. Are the fires of hell a'glowing? Is the grisley reaper mowing? YES! The danger must be growing for the rowers keep on rowing AND THEY'RE CERTAINLY NOT SHOWING ANY SIGNS THAT THEY ARE SLOWING!!",
"Time...to die.",
"Now I am become Death, the destroyer of worlds",
"Check, please.",
"So say we all.",
"After very careful consideration, sir, I've come to the conclusion that your new defense system sucks.",
"I am a leaf on the wind, watch how I soar.",
"No matter what you hear in there, no matter how cruelly I beg you, no matter how terribly I may scream, do not open this door or you will undo everything I have worked for.",
"Ahh, a bear in his natural habitat: a Studebaker.",
"He's dead, Jim.",
"Who's gonna turn down a Junior Mint? It's chocolate, it's peppermint--it's delicious!",
"Bring out your dead.",
"My name is Inigo Montoya. You killed my father. Prepare to die!",
"Why a duck? Why-a no chicken?",
"Redrum.",
"Who knows what evil lurks in the hearts of men? The Shadow knows.",
"We're going to need a bigger boat.",
"Oooh, ahhh, that's how it always starts. Then later there's running and screaming.",
"Greetings, my friend. We are all interested in the future, for that is where you and I are going to spend the rest of our lives. And remember my friend, future events such as these will affect you in the future.",
"Gentlemen, you can't fight in here! This is the War Room!",
"These aren't the droids you're looking for.",
"Take your stinking paws off me, you damn dirty ape!",
"You maniacs! You blew it up! Oh, damn you! Damn you all to hell!",
"Klaatu barada nikto.",
"Monsters from the Id.",
"ET phone home.",
"What... is the air-speed velocity of an unladen swallow?",
"We thought you was a toad!",
"Face it tiger, you just hit the jackpot!",
"You don't have to be a gun.",
"Danger Will Robinson! Danger!",
"Yeah, well. The Dude abides.",
"All things serve the beam.",
"You can't fool me! There ain't no Sanity Clause!",
"Like the fella says, in Italy for 30 years under the Borgias they had warfare, terror, murder, and bloodshed, but they produced Michelangelo, Leonardo da Vinci, and the Renaissance. In Switzerland they had brotherly love--they had 500 years of democracy and peace, and what did that produce? The cuckoo clock.",
"And I said, I don't care if they lay me off either, because I told, I told Bill that if they move my desk one more time, then, then I'm, I'm quitting, I'm going to quit. And, and I told Don too, because they've moved my desk four times already this year, and I used to be over by the window, and I could see the squirrels, and they were married, but then, they switched from the Swingline to the Boston stapler, but I kept my Swingline stapler because it didn't bind up as much, and I kept the staples for the Swingline stapler and it's not okay because if they take my stapler then I'll set the building on fire...",
"Michael, I did nothing. I did absolutely nothing, and it was everything that I thought it could be.",
"Now I have a machine gun. Ho ho ho.",
"Gimme some sugar, baby.",
"Well hello Mister Fancypants. Well, I've got news for you pal, you ain't leadin' but two things, right now: Jack and sh*t... and Jack left town.",
"Kneel before Zod.",
"Shall we play a game?",
"Daddy would have gotten us Uzis.",
"It's 106 miles to Chicago, we've got a full tank of gas, half a pack of cigarettes, it's dark and we're wearing sunglasses." "Hit it!",
"Make it so",
"Engage",
"Ya Ta!",
"End Of Line"]

bot = Cinch::Bot.new do
  configure do |c|
    c.server   = "irc.openlogic.local"
    c.channels = ["#eng"]
    c.nick = 'leeroy_jenkins-bot'
  end
  
  on :join, "#lobby" do |m, channel|
    channel = channel || m.channel
    
    puts channel.methods

    if channel
      bot.part(channel) if channel.name == '#lobby'
    end
  end

  on :message, /^le+roy,\s+(command).*/i do |m, command|
    if command == "help"
      help_command(m)
    else
      m.reply "What!?!!??!1"
    end
  end

  on :message, /.*(hello|le+roy|dragon|raid|spire|glen|todd|steven|eric|brian|mike|jeff|rod).*/i do |m|
    if m.message =~ /^le+roy,\s+help.*/i
      help_command(m)
    else
      m.reply responses.sample
    end
  end

end

bot.start
