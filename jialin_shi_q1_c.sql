/*c. Find the names of apps which have at least two different reviews. (Requirement: do not use subquery.)*/


select app as appName from googleplaystore_user_reviews
group by app
having count(distinct review) >=2; 


/*+-------------------------------------------------------+
| appName                                               |
+-------------------------------------------------------+
| 10 Best Foods for You                                 |
| 11st                                                  |
| 1800 Contacts - Lens Store                            |
| 1LINE – One Line with One Touch                       |
| 2018Emoji Keyboard ???? Emoticons Lite -sticker&gif   |
| 21-Day Meditation Experience                          |
| 2Date Dating App, Love and matching                   |
| 2GIS: directory & navigator                           |
| 2ndLine - Second Phone Number                         |
| 2RedBeans                                             |
| 30 Day Fitness Challenge - Workout at Home            |
| 365Scores - Live Scores                               |
| 3D Live Neon Weed Launcher                            |
| 4 in a Row                                            |
| 4K Wallpapers and Ultra HD Backgrounds                |
| 7 Cups: Anxiety & Stress Chat                         |
| 7 Day Food Journal Challenge                          |
| 7 Minute Workout                                      |
| 7 Weeks - Habit & Goal Tracker                        |
| 8 Ball Pool                                           |
| 850 Sports News Digest                                |
| 8fit Workouts & Meal Planner                          |
| 95Live -SG#1 Live Streaming App                       |
| A Call From Santa Claus!                              |
| A Word A Day                                          |
| A&E - Watch Full Episodes of TV Shows                 |
| A+ Gallery - Photos & Videos                          |
| A+ Mobile                                             |
| ABC Kids - Tracing & Phonics                          |
| ABC News - US & World News                            |
| ABC Preschool Free                                    |
| ABCmouse.com                                          |
| Abs Training-Burn belly fat                           |
| AC - Tips & News for Android™                         |
| Account Manager                                       |
| Accounting App - Zoho Books                           |
| AccuWeather: Daily Forecast & Live Weather Reports    |
| ACE Elite                                             |
| Acorn TV: World-class TV from Britain and Beyond      |
| Acorns - Invest Spare Change                          |
| AD - Nieuws, Sport, Regio & Entertainment             |
| Ada - Your Health Guide                               |
| Add Text To Photo                                     |
| Adobe Acrobat Reader                                  |
| Adobe Photoshop Express:Photo Editor Collage Maker    |
| Advanced Task Killer                                  |
| AdWords Express                                       |
| Agar.io                                               |
| Age Calculator                                        |
| Agoda – Hotel Booking Deals                           |
| Air Traffic                                           |
| AirAsia                                               |
| Airbnb                                                |
| Airport + Flight Tracker Radar                        |
| Airway Ex - Intubate. Anesthetize. Train.             |
| Akinator                                              |
| Alarm Clock                                           |
| Alarm Clock Free                                      |
| Alfred Home Security Camera                           |
| AliExpress - Smarter Shopping, Better Living          |
| All Email Providers                                   |
| All Events in City                                    |
| All Football - Latest News & Videos                   |
| All Football GO- Live Score, Games                    |
| All Language Translator Free                          |
| All Maths Formulas                                    |
| All Mental disorders                                  |
| All Social Networks                                   |
| All Video Downloader 2018                             |
| All-in-One Mahjong 3 FREE                             |
| All-In-One Toolbox: Cleaner, Booster, App Manager     |
| Allegiant                                             |
| Allrecipes Dinner Spinner                             |
| AlReader -any text book reader                        |
| Alto's Adventure                                      |
| Amazon Drive                                          |
| Amazon for Tablets                                    |
| Amazon FreeTime – Kids’ Videos, Books, & TV shows     |
| Amazon Kindle                                         |
| Amazon Prime Video                                    |
| Amazon Shopping                                       |
| AMC Theatres                                          |
| American Airlines                                     |
| Amex Mobile                                           |
| Amino: Communities and Chats                          |
| Amtrak                                                |
| Anatomy Learning - 3D Atlas                           |
| Ancestry                                              |
| Android Auto - Maps, Media, Messaging & Voice         |
| Android Messages                                      |
| AndroZip™ FREE File Manager                           |
| Anger of stick 5 : zombie                             |
| Angry Birds 2                                         |
| Angry Birds Classic                                   |
| Angry Birds Rio                                       |
| Animal Planet GO                                      |
| Animated Photo Editor                                 |
| Anime Avatar Creator: Make Your Own Avatar            |
| Anime Manga Coloring Book                             |
| Anthem Anywhere                                       |
| Anthem BC Anywhere                                    |
| Any.do: To-do list, Calendar, Reminders & Planner     |
| AOL - News, Mail & Video                              |
| AP Mobile - Breaking News                             |
| Apartment Decorating Ideas                            |
| Apartment List: Housing, Apt, and Property Rentals    |
| Apartment, Home Rental Search: Realtor.com Rentals    |
| Apartments & Rentals - Zillow                         |
| Apartments.com Rental Search                          |
| APE Weather ( Live Forecast)                          |
| Apex Launcher                                         |
| Apk Installer                                         |
| App vault                                             |
| AppLock                                               |
| AppLock - Fingerprint                                 |
| APUS Launcher - Theme, Wallpaper, Hide Apps           |
| Archos File Manager                                   |
| Arrow.io                                              |
| ARY NEWS                                              |
| ARY NEWS URDU                                         |
| Asana: organize team projects                         |
| Ascape VR: 360° Virtual Travel                        |
| ASOS                                                  |
| Asphalt 8: Airborne                                   |
| Associated Credit Union Mobile                        |
| Asteroids 3D live wallpaper                           |
| ASUS Calling Screen                                   |
| ASUS Cover for ZenFone 2                              |
| ASUS Quick Memo                                       |
| ASUS Sound Recorder                                   |
| ASUS SuperNote                                        |
| AT&T Navigator: Maps, Traffic                         |
| AT&T Smart Wi-Fi                                      |
| AT&T Visual Voicemail                                 |
| Atlan3D Navigation: Korea navigator                   |
| AutoCAD - DWG Viewer & Editor                         |
| AutoScout24 Switzerland – Find your new car           |
| Avakin Life - 3D virtual world                        |
| AVG Cleaner – Speed, Battery & Memory Booster         |
| Aviary Effects: Classic                               |
| Aviary Stickers: Free Pack                            |
| Azar                                                  |
| Azpen eReader                                         |
| B612 - Beauty & Filter Camera                         |
| Babbel – Learn Languages                              |
| Babbel – Learn Spanish                                |
| Baby ABC in box! Kids alphabet games for toddlers!    |
| Baby Monitor                                          |
| Baby Name Together                                    |
| Baby Panda Care                                       |
| Baby Panda Learns Shapes                              |
| Baby Panda Musical Genius                             |
| Baby Panda’s Juice Shop                               |
| Baby puzzles                                          |
| Baby Tiger Care - My Cute Virtual Pet Friend          |
| Backgrounds (HD Wallpapers)                           |
| Backgrounds HD (Wallpapers)                           |
| BaconReader for Reddit                                |
| Bad Piggies                                           |
| Badoo - Free Chat & Dating App                        |
| Banfield Pet Health Tracker                           |
| Banjo                                                 |
| Bank of America Mobile Banking                        |
| BankMobile Vibe App                                   |
| Banorte Movil                                         |
| Barbie Life™                                          |
| Barbie Magical Fashion                                |
| Barbie™ Fashion Closet                                |
| Barclays US for Android                               |
| Barcode Scanner                                       |
| Baritastic - Bariatric Tracker                        |
| Baseball Boy!                                         |
| Basketball FRVR - Shoot the Hoop and Slam Dunk!       |
| Basketball Stars                                      |
| Bathroom Decorating Ideas                             |
| Battlelands Royale                                    |
| BBC Media Player                                      |
| BBC News                                              |
| BBC Sport                                             |
| BBM - Free Calls & Messages                           |
| BBVA Compass Banking                                  |
| BBVA Spain                                            |
| BBW Dating & Curvy Singles Chat- LargeFriends         |
| BBW Dating & Plus Size Chat                           |
| BBWCupid - BBW Dating App                             |
| Be A Legend: Soccer                                   |
| Beautiful Design Birthday Cake                        |
| Beautiful Widgets Free                                |
| Beautiful Widgets Pro                                 |
| Beauty Camera - Selfie Camera                         |
| Beauty Makeup Snappy Collage Photo Editor - Lidow     |
| BeautyPlus - Easy Photo Editor & Selfie Camera        |
| Bed Time Fan - White Noise Sleep Sounds               |
| BELONG Beating Cancer Together                        |
| BeSoccer - Soccer Live Score                          |
| BEST CAR SOUNDS                                       |
| Best Car Wallpapers                                   |
| Best Fiends - Free Puzzle Game                        |
| Best Ovulation Tracker Fertility Calendar App Glow    |
| Best Wallpapers Backgrounds(100,000+ 4K HD)           |
| Best Wallpapers QHD                                   |
| BestCam Selfie-selfie, beauty camera, photo editor    |
| BET NOW - Watch Shows                                 |
| BetterMe: Weight Loss Workouts                        |
| Betterment                                            |
| BeWild Free Dating & Chat App                         |
| BEYBLADE BURST app                                    |
| BeyondMenu Food Delivery                              |
| BeyondPod Podcast Manager                             |
| Bible                                                 |
| Big Days - Events Countdown                           |
| BIG Launcher                                          |
| BiggerCity: Chat for gay bears, chubs & chasers       |
| BigOven Recipes, Meal Planner, Grocery List & More    |
| Bike Computer - GPS Cycling Tracker                   |
| Binaural Beats Meditation                             |
| Binaural Beats Therapy                                |
| BioLife Plasma Services                               |
| Birds Sounds Ringtones & Wallpapers                   |
| Black People Meet Singles Date                        |
| BLK - Swipe. Match. Chat.                             |
| Block Puzzle                                          |
| Block Puzzle Classic Legend !                         |
| Blogaway for Android (Blogger)                        |
| Blogger                                               |
| Bloglovin'                                            |
| Blood Donor                                           |
| Blood Pressure                                        |
| Blood Pressure Log - MyDiary                          |
| Blood Pressure(BP) Diary                              |
| Bloomberg Professional                                |
| Bloomberg: Market & Financial News                    |
| Blossom Blast Saga                                    |
| Blur Image Background                                 |
| Blur Image Background Editor (Blur Photo Editor)      |
| BluTV                                                 |
| Booking.com Travel Deals                              |
| Bowmasters                                            |
| Box                                                   |
| Boxed Wholesale                                       |
| Boys Photo Editor - Six Pack & Men's Suit             |
| Brain Waves - Binaural Beats                          |
| Branch                                                |
| Breaking News, Local news, Attacks and Alerts Free    |
| Brightest Flashlight Free ®                           |
| Brightest LED Flashlight                              |
| Brilliant                                             |
| Brit + Co                                             |
| British Airways                                       |
| Browser 4G                                            |
| Bualuang mBanking                                     |
| Bubble Shooter                                        |
| Bubble Shooter 2                                      |
| Bubble Shooter Genies                                 |
| Bubble Shooter Space                                  |
| Bubble Witch 3 Saga                                   |
| Build a Bridge!                                       |
| Burner - Free Phone Number                            |
| Business Calendar 2                                   |
| Butterfly Live Wallpaper                              |
| Buzz Launcher-Smart&Free Theme                        |
| BuzzFeed: News, Tasty, Quizzes                        |
| BZWBK24 mobile                                        |
| C Programming                                         |
| C++ Programming                                       |
| C++ Tutorials                                         |
| Cache Cleaner-DU Speed Booster (booster & cleaner)    |
| Calculator - free calculator, multi calculator app    |
| Calculator - unit converter                           |
| Calculator Plus Free                                  |
| Calculator with Percent (Free)                        |
| CALCU™ Stylish Calculator Free                        |
| Calendar Widget Month + Agenda                        |
| Calendar+ Schedule Planner App                        |
| Call Blocker                                          |
| Call Control - Call Blocker                           |
| Call of Duty:Black Ops Zombies                        |
| CallApp: Caller ID, Blocker & Phone Call Recorder     |
| Caller ID +                                           |
| Calls & Text by Mo+                                   |
| Calls Blacklist - Call Blocker                        |
| Calm - Meditate, Sleep, Relax                         |
| Calorie Counter & Diet Tracker                        |
| Calorie Counter - EasyFit free                        |
| Calorie Counter - Macros                              |
| Calorie Counter - MyFitnessPal                        |
| Calorie Counter - MyNetDiary                          |
| Cameringo Lite. Filters Camera                        |
| Candy Bomb                                            |
| Candy Camera - selfie, beauty camera, photo editor    |
| Candy Crush Jelly Saga                                |
| Candy Crush Saga                                      |
| Candy Crush Soda Saga                                 |
| Candy Day                                             |
| Candy Pop Story                                       |
| Candy selfie - photo editor, live filter camera       |
| Candy Smash                                           |
| Canva: Poster, banner, card maker & graphic design    |
| Canvas Student                                        |
| Cat Sim Online: Play with Cats                        |
| CATS: Crash Arena Turbo Stars                         |
| Caviar - Food Delivery                                |
| CBS News                                              |
| CBS Sports App - Scores, News, Stats & Watch Live     |
| CBS Sports Fantasy                                    |
| CDL Practice Test 2018 Edition                        |
| Chakra Cleansing                                      |
| Championat                                            |
| Chapters: Interactive Stories                         |
| Chase Mobile                                          |
| Chat Rooms, Avatars, Date - Galaxy                    |
| ChatVideo Meet new people                             |
| Cheap Flights & Hotels momondo                        |
| Cheap hotel deals and discounts — Hotellook           |
| Cheapflights – Flight Search                          |
| CheapTickets – Hotels, Flights & Travel Deals         |
| Checkers ??                                           |
| Checkout 51: Grocery coupons                          |
| CheckPoints ???? Rewards App                          |
| Choice Hotels                                         |
| Choices: Stories You Play                             |
| Christian Dating For Free App                         |
| Chrome Beta                                           |
| Chrome Dev                                            |
| CIA - Caller ID & Call Blocker                        |
| Cinemark Theatres                                     |
| Cisco Webex Meetings                                  |
| Cisco Webex Teams                                     |
| Citi Mobile®                                          |
| Citibanamex Movil                                     |
| Citizens Bank Mobile Banking                          |
| CityMaps2Go Plan Trips Travel Guide Offline Maps      |
| Clash of Clans                                        |
| Clash Royale                                          |
| CM Browser - Ad Blocker , Fast Download , Privacy     |
| CM Flashlight (Compass, SOS)                          |
| CM Launcher 3D - Theme, Wallpapers, Efficient         |
| CM Locker - Security Lockscreen                       |
| CMB Free Dating App                                   |
| CNBC: Breaking Business News & Live Market Data       |
| CNN Breaking US & World News                          |
| Color by Number - Draw Sandbox Pixel Art              |
| Color by Number – New Coloring Book                   |
| Color Flashlight                                      |
| Color Road                                            |
| Color Touch Effects                                   |
| Colorfit - Drawing & Coloring                         |
| Colorful Glitter Neon Butterfly Keyboard Theme        |
| Colorfy: Coloring Book for Adults - Free              |
| Coloring & Learn                                      |
| Coloring book moana                                   |
| ColorNote Notepad Notes                               |
| ColorSnap® Visualizer                                 |
| Comedy Central                                        |
| Common Core                                           |
| Comptia A+ 220-901 & 220-902                          |
| ConnectLine                                           |
| Contacts                                              |
| Contacts+                                             |
| Content Transfer                                      |
| ConvertPad - Unit Converter                           |
| Cookbook Recipes                                      |
| Cooking Channel                                       |
| Cooking Fever                                         |
| Cooking Madness - A Chef's Restaurant Games           |
| COOKING MAMA Let's Cook!                              |
| Cookpad                                               |
| Cool Popular Ringtones 2018 ????                      |
| Cool Reader                                           |
| Couch to 10K Running Trainer                          |
| Couch to 5K by RunDouble                              |
| Couchsurfing Travel App                               |
| Cougar Dating Life : Date Older Women Sugar Mummy     |
| Couple - Relationship App                             |
| Credit Karma                                          |
| Credit Sesame                                         |
| CreditWise from Capital One                           |
| Crew - Free Messaging and Scheduling                  |
| Cricbuzz - Live Cricket Scores & News                 |
| Cricket Visual Voicemail                              |
| Crossy Road                                           |
| Crunchyroll - Everything Anime                        |
| Current debit card and app made for teens             |
| Curriculum vitae App CV Builder Free Resume Maker     |
| Cut the Rope FULL FREE                                |
| CVS Caremark                                          |
| CW Seed                                               |
| CWT To Go                                             |
| Cycling - Bike Tracker                                |
| Cymera Camera- Photo Editor, Filter,Collage,Layout    |
| Czech Public Transport IDOS                           |
| Daily Workouts - Exercise Fitness Routine Trainer     |
| Daily Yoga - Yoga Fitness Plans                       |
| Dailyhunt (Newshunt) - Latest News, Viral Videos      |
| Dairy Queen                                           |
| Daniel Tiger for Parents                              |
| DashClock Widget                                      |
| Dashlane Free Password Manager                        |
| Dating App, Flirt & Chat : W-Match                    |
| Dating for 50 plus Mature Singles – FINALLY           |
| Davis's Drug Guide                                    |
| Davis's Drug Guide for Nurses                         |
| DC Comics                                             |
| DC Super Hero Girls™                                  |
| DEAD TARGET: FPS Zombie Apocalypse Survival Games     |
| Debonairs Pizza                                       |
| DEER HUNTER 2018                                      |
| Delta Dental                                          |
| Device Help                                           |
| Diabetes & Diet Tracker                               |
| Diabetes:M                                            |
| Diamond Zipper Lock Screen                            |
| Diary with lock                                       |
| Diary with lock password                              |
| Dictionary - Merriam-Webster                          |
| Digg                                                  |
| DigiCal Calendar Agenda                               |
| Digit Save Money Automatically                        |
| Digital Alarm Clock                                   |
| DINO HUNTER: DEADLY SHORES                            |
| Dino War: Rise of Beasts                              |
| Dinosaur Simulator: Dino World                        |
| Discover Mobile                                       |
| Disney Heroes: Battle Mode                            |
| Disney Magic Kingdoms: Build Your Own Magical Park    |
| DisneyNOW – TV Shows & Games                          |
| DIY Garden Ideas                                      |
| DIY On A Budget                                       |
| DMV Permit Practice Test 2018 Edition                 |
| Do It Later: Tasks & To-Dos                           |
| Docs To Go™ Free Office Suite                         |
| Doctor On Demand                                      |
| Doctor Pets                                           |
| Dog Licks Screen Wallpaper                            |
| Dog Run - Pet Dog Simulator                           |
| Dog Sim Online: Raise a Family                        |
| Domino's Pizza USA                                    |
| Dominos Game ??                                       |
| Doodle Jump                                           |
| Door Lock Screen                                      |
| DoorDash - Food Delivery                              |
| Dosecast - Medication Reminder                        |
| Down Dog: Great Yoga Anywhere                         |
| Dr. Panda & Toto's Treehouse                          |
| Dr. Panda Restaurant 3                                |
| Dr. Panda Town: Vacation                              |
| DraftKings - Daily Fantasy Sports                     |
| DRAGON BALL LEGENDS                                   |
| Dragon Hills                                          |
| Draw A Stickman                                       |
| Draw In                                               |
| Drawing for Kids Learning Games for Toddlers age 3    |
| Dream League Soccer 2018                              |
| DreamTrips                                            |
| DreamWorks Friends                                    |
| Dresses Ideas & Fashions +3000                        |
| Droid Zap by Motorola                                 |
| DroidAdmin for Android - Advice                       |
| Dropbox                                               |
| Drugs.com Medication Guide                            |
| DSLR Camera Hd Ultra Professional                     |
| DStv Now                                              |
| DU Browser—Browse fast & fun                          |
| DU Recorder – Screen Recorder, Video Editor, Live     |
| Dude Perfect 2                                        |
| Dumb Ways to Die 2: The Games                         |
| Dungeon Hunter Champions: Epic Online Action RPG      |
| Dunkin' Donuts                                        |
| Duolingo: Learn Languages Free                        |
| DuraSpeed                                             |
| E*TRADE Mobile                                        |
| Easy Hair Style Design                                |
| Easy Healthy Recipes                                  |
| Easy Installer - Apps On SD                           |
| Easy Makeup Tutorials                                 |
| Easy Origami Ideas                                    |
| Easy Recipes                                          |
| Easy Voice Recorder                                   |
| EasyBib: Citation Generator                           |
| Eat Fit - Diet and Health Free                        |
| Eat24 Food Delivery & Takeout                         |
| EatStreet Food Delivery App                           |
| Ebates: Cash Back, Coupons, Rewards & Savings         |
| Ebook Reader                                          |
| Ecobank Mobile Banking                                |
| Edmodo                                                |
| Educational Games 4 Kids                              |
| Educational Games for Kids                            |
| English with Lingualeo                                |
| English-Myanmar Dictionary                            |
| Entel                                                 |
| Episode - Choose Your Story                           |
| Epocrates Plus                                        |
| Equestria Girls                                       |
| Essential Anatomy 3                                   |
| Essential Resources                                   |
| Etsy: Handmade & Vintage Goods                        |
| Etta Homes                                            |
| Eurosport                                             |
| Eve Period Tracker - Love, Sex & Relationships App    |
| Even - organize your money, get paid early            |
| Evernote – Organizer, Planner for Notes & Memos       |
| Evie Launcher                                         |
| ExDialer - Dialer & Contacts                          |
| Expedia Hotels, Flights & Car Rental Travel Deals     |
| Expense IQ Money Manager                              |
| Experian - Free Credit Report                         |
| Extreme Car Driving Simulator                         |
| Extreme Coupon Finder                                 |
| Extreme Match                                         |
| Extreme Racing 2 - Real driving RC cars game!         |
| EyeCloud                                              |
| EyeEm - Camera & Photo Filter                         |
| EzCalculator                                          |
| Fabulous: Motivate Me! Meditate, Relax, Sleep         |
| Face Filter, Selfie Editor - Sweet Camera             |
| Facebook                                              |
| Facebook Ads Manager                                  |
| Facebook Lite                                         |
| Facebook Local                                        |
| Facebook Pages Manager                                |
| Fake Call - Fake Caller ID                            |
| Fallout Shelter                                       |
| Family Album Mitene: Private Photo & Video Sharing    |
| Family Dollar                                         |
| Family GPS Tracker and Chat + Baby Monitor Online     |
| Family GPS tracker KidControl + GPS by SMS Locator    |
| Family Locator - GPS Tracker                          |
| FamilySearch Tree                                     |
| Fancy Widgets                                         |
| Fandango Movies - Times + Tickets                     |
| FanDuel: Daily Fantasy Sports                         |
| Fantasy Football                                      |
| Fantasy Football & NFL News                           |
| Fantasy Football Manager (FPL)                        |
| Farm Fruit Pop: Party Time                            |
| Farm Heroes Saga                                      |
| Farming Simulator 14                                  |
| Farming Simulator 18                                  |
| Fashion in Vogue                                      |
| Fast News                                             |
| Fast Scanner : Free PDF Scan                          |
| Fast Secure VPN                                       |
| FastMeet: Chat, Dating, Love                          |
| Fat Burning Workout - Home Weight lose                |
| Fate/Grand Order (English)                            |
| FBReader: Favorite Book Reader                        |
| FERZU - Furries Social Network                        |
| FidMe Loyalty Cards & Deals at Grocery Supermarket    |
| FIFA - Tournaments, Soccer News & Live Scores         |
| File Browser by Astro (File Manager)                  |
| File Explorer                                         |
| File Manager                                          |
| File Manager -- Take Command of Your Files Easily     |
| Files Go by Google: Free up space on your phone       |
| FilterGrid - Cam&Photo Editor                         |
| Filters for B Live                                    |
| Filters for Selfie                                    |
| FINAL FANTASY BRAVE EXVIUS                            |
| Final Fantasy XV: A New Empire                        |
| Financial Times                                       |
| Find a Way: Addictive Puzzle                          |
| Find Dining Restaurant Finder                         |
| Find&Save - Local Shopping                            |
| FindShip                                              |
| Firefox Browser fast & private                        |
| Firefox Focus: The privacy browser                    |
| Fishdom                                               |
| Fitbit                                                |
| Flashlight                                            |
| Flashlight & LED Torch                                |
| Flashlight - Torch LED Light                          |
| Flashlight HD LED                                     |
| Flickr                                                |
| Flight & Hotel Booking App - ixigo                    |
| Flightradar24 Flight Tracker                          |
| Flights                                               |
| Flip the Gun - Simulator Game                         |
| FlipaClip - Cartoon animation                         |
| Flipboard: News For Our Time                          |
| Flipkart Online Shopping App                          |
| Flipp - Weekly Shopping                               |
| Flippy Campus - Buy & sell on campus at a discount    |
| FlirtChat - ?Free Dating/Flirting App?                |
| Floor Plan Creator                                    |
| Flow Free                                             |
| Flowers Live Wallpaper                                |
| Fly Delta                                             |
| FollowMyHealth®                                       |
| Font Studio- Photo Texts Image                        |
| Food Calorie Calculator                               |
| Food Network                                          |
| Fooducate Healthy Weight Loss & Calorie Counter       |
| Football Live Scores                                  |
| ForecaWeather                                         |
| Fortune City - A Finance App                          |
| FOSSIL Q: DESIGN YOUR DIAL                            |
| Four In A Line                                        |
| Four In A Line Free                                   |
| Foursquare City Guide                                 |
| Foursquare Swarm: Check In                            |
| FOX                                                   |
| Fox Business                                          |
| Fox News – Breaking News, Live Video & News Alerts    |
| FOX NOW - On Demand & Live TV                         |
| FOX Sports: Live Streaming, Scores & News             |
| Fraction Calculator Plus Free                         |
| Free & Premium VPN - FinchVPN                         |
| Free Dating & Flirt Chat - Choice of Love             |
| Free Dating App & Flirt Chat - Cheers                 |
| Free Dating App & Flirt Chat - Match with Singles     |
| Free Dating App - Meet Local Singles - Flirt Chat     |
| Free Dating App - YoCutie - Flirt, Chat & Meet        |
| Free Dating Hook Up Messenger                         |
| Free Foreclosure Real Estate Search by USHUD.com      |
| Free Hypnosis                                         |
| Free Live Talk-Video Call                             |
| Free live weather on screen                           |
| Free Panda Radio Music                                |
| Free phone calls, free texting SMS on free number     |
| Free Sports TV                                        |
| Free TV Shows App:News, TV Series, Episode, Movies    |
| Free VIN Report for Used Cars                         |
| FREEDOME VPN Unlimited anonymous Wifi Security        |
| Freeletics: Personal Trainer & Fitness Workouts       |
| Freeme Launcher—Stylish Theme                         |
| FreePrints – Free Photos Delivered                    |
| Fresh EBT - Food Stamp Balance                        |
| FreshBooks Classic                                    |
| Frontback - Social Photos                             |
| Frozen Free Fall                                      |
| Fruit Block - Puzzle Legend                           |
| Fruit Ninja®                                          |
| Fruits Bomb                                           |
| Fuelio: Gas log & costs                               |
| Full Screen Caller ID                                 |
| FUN Keyboard – Emoji Keyboard, Sticker,Theme & GIF    |
| Fun Kid Racing                                        |
| Fun Kid Racing - Motocross                            |
| Funny Alarm Clock Ringtones                           |
| Funny Pics                                            |
| Fuzzy Seasons: Animal Forest                          |
| G Cloud Backup                                        |
| Galactic Core Free Wallpaper                          |
| Galaxy Attack: Alien Shooter                          |
| Game of Thrones: Conquest™                            |
| Gametime - Tickets to Sports, Concerts, Theater       |
| Garden Coloring Book                                  |
| Garden Fruit Legend                                   |
| Garden Photo Frames - Garden Photo Editor             |
| Gardenscapes                                          |
| Garena Free Fire                                      |
| Garmin Connect™                                       |
| GasBuddy: Find Cheap Gas                              |
| Gay Sugar Daddy Dating & Hookup – Sudy Gay            |
| Gboard - the Google Keyboard                          |
| GCash - Buy Load, Pay Bills, Send Money               |
| Gems or jewels ?                                      |
| Genius Scan - PDF Scanner                             |
| Gmail                                                 |
| GMAT Math Flashcards                                  |
| GMAT Question Bank                                    |
| GMX Mail                                              |
| GO Keyboard - Cute Emojis, Themes and GIFs            |
| GO Keyboard - Emoticon keyboard, Free Theme, GIF      |
| GO Notifier                                           |
| GO SMS Pro - Messenger, Free Themes, Emoji            |
| GO Weather - Widget, Theme, Wallpaper, Efficient      |
| Goal Live Scores                                      |
| GoBank                                                |
| Goibibo - Flight Hotel Bus Car IRCTC Booking App      |
| Goku Wallpaper Art                                    |
| Gold Butterfly Keyboard Theme                         |
| Golden Dictionary (EN-AR)                             |
| Golden Launcher                                       |
| Goldstar: Live Event Tickets                          |
| Golf Channel                                          |
| Golf GPS by SwingxSwing                               |
| Golf GPS Rangefinder: Golf Pad                        |
| GolfLogix GPS + Putt Breaks                           |
| GolfNow: Tee Time Deals at Golf Courses, Golf GPS     |
| Golfshot Plus: Golf GPS                               |
| Golfshot: Golf GPS + Tee Times                        |
| GoodRx Drug Prices and Coupons                        |
| Google                                                |
| Google Ads                                            |
| Google Duo - High Quality Video Calls                 |
| Google Earth                                          |
| Google Fit - Fitness Tracking                         |
| Google Handwriting Input                              |
| Google Keep                                           |
| Google My Business                                    |
| Google News                                           |
| Google Pay                                            |
| Google PDF Viewer                                     |
| Google Photos                                         |
| Google Primer                                         |
| Google Slides                                         |
| Google Street View                                    |
| Google Translate                                      |
| Google Trips - Travel Planner                         |
| Google Voice                                          |
| Google+                                               |
| GoPro (formerly Capture)                              |
| GPS Map Free                                          |
| GPS Speedometer and Odometer                          |
| GPS Speedometer, Distance Meter                       |
| GPS Status & Toolbox                                  |
| GPS Traffic Speedcam Route Planner by ViaMichelin     |
| Granny                                                |
| Graphing Calculator                                   |
| GRE Flashcards                                        |
| GRE Prep & Practice by Magoosh                        |
| GRE Tutor                                             |
| Grim Soul: Dark Fantasy Survival                      |
| Groovebook Photo Books & Gifts                        |
| GroupMe                                               |
| Groupon - Shop Deals, Discounts & Coupons             |
| Grubhub: Food Delivery                                |
| GS SHOP                                               |
| Guns of Glory                                         |
| GUNSHIP BATTLE: Helicopter 3D                         |
| Gyft - Mobile Gift Card Wallet                        |
| H Pack                                                |
| H TV                                                  |
| H&M                                                   |
| Hacker's Keyboard                                     |
| Hairstyles step by step                               |
| Hamilton — The Official App                           |
| Hangouts                                              |
| Happify                                               |
| Happy Birthday Songs Offline                          |
| Happy Fruits Bomb - Cube Blast                        |
| Happy Street                                          |
| Harkins Theatres                                      |
| Harry Potter: Hogwarts Mystery                        |
| HauteLook                                             |
| Hay Day                                               |
| Haystack TV: Local & World News - Free                |
| HBO GO: Stream with TV Package                        |
| HD Camera                                             |
| HD Camera - Best Cam with filters & panorama          |
| HD Camera - Quick Snap Photo & Video                  |
| HD Camera for Android                                 |
| HD Camera Pro for Android                             |
| HD Camera Ultra                                       |
| HD Movie Video Player                                 |
| HD Video Player                                       |
| HD Widgets                                            |
| HDFC Bank MobileBanking                               |
| Headspace: Meditation & Mindfulness                   |
| Health and Nutrition Guide                            |
| HealtheLife                                           |
| Healthy Recipes Free                                  |
| Helix Jump                                            |
| Hello Kitty Lunchbox                                  |
| Hello Kitty Nail Salon                                |
| Hello Stars                                           |
| HelloTalk — Chat, Speak & Learn Foreign Languages     |
| Hero Hunters                                          |
| Herpes Dating: 1,000K+ Singles                        |
| Herpes Positive Singles Dating                        |
| HESI A2 Pocket Prep                                   |
| Hide App, Private Dating, Safe Chat - PrivacyHider    |
| Hide Something - Photo, Video                         |
| Hideman VPN                                           |
| High Blood Pressure Symptoms                          |
| High-Powered Flashlight                               |
| High-Speed Camera (GIF,Burst)                         |
| Hill Climb Racing                                     |
| Hill Climb Racing 2                                   |
| Hily: Dating, Chat, Match, Meet & Hook up             |
| Hinge: Dating & Relationships                         |
| HipChat - Chat Built for Teams                        |
| Hipmunk Hotels & Flights                              |
| HISTORY: Watch TV Show Full Episodes & Specials       |
| Hitwe - meet people and chat                          |
| Hole19: Golf GPS App, Rangefinder & Scorecard         |
| Home Decor Showpiece Art making: Medium Difficulty    |
| Home Scouting® MLS Mobile                             |
| Home Security Camera WardenCam - reuse old phones     |
| Home Workout - No Equipment                           |
| Home Workout for Men - Bodybuilding                   |
| Home workouts - fat burning, abs, legs, arms,chest    |
| Homes.com ???? For Sale, Rent                         |
| Homescapes                                            |
| Homesnap Real Estate & Rentals                        |
| Homestyler Interior Design & Decorating Ideas         |
| HomeWork                                              |
| Homework Planner                                      |
| Honkai Impact 3rd                                     |
| Hopper - Watch & Book Flights                         |
| Horoscopes – Daily Zodiac Horoscope and Astrology     |
| Horses Live Wallpaper                                 |
| Hostelworld: Hostels & Cheap Hotels Travel App        |
| Hot Wheels: Race Off                                  |
| Hotels Combined - Cheap deals                         |
| Hotels.com: Book Hotel Rooms & Find Vacation Deals    |
| HotelTonight: Book amazing deals at great hotels      |
| Hotspot Shield Free VPN Proxy & Wi-Fi Security        |
| Hotstar                                               |
| Hotwire Hotel & Car Rental App                        |
| Housing-Real Estate & Property                        |
| HTC Calendar                                          |
| HTC File Manager                                      |
| HTC Gallery                                           |
| HTC Help                                              |
| HTC Lock Screen                                       |
| HTC Mail                                              |
| HTC Sense Input                                       |
| HTC Sense Input-AR                                    |
| HTC Service ? DLNA                                    |
| HTC Service—Video Player                              |
| HTC Social Plugin - Facebook                          |
| HTC Speak                                             |
| HTC Weather                                           |
+-------------------------------------------------------+
816 rows in set (0.02 sec)
*/