define((require)->

  return {
    theme: {
      palette: [
        '#404040'
      ]
    }
    credit: '<div class="pull-left"><a href="http://eleven.bg/" target="_blank" class="social glyphicon glyphicon-globe" style="position: relative; top: 2px;"></a><a href="https://www.facebook.com/elevenbg" target="_blank" class="social brandico-facebook"></a><a href="https://twitter.com/elevenbg" target="_blank" class="social brandico-twitter-bird"></a><a href="/#disclaimer" target="_blank">Disclaimer</a></div><div class="pull-right">Built by <a href="http://numberpicture.com" target="_blank">NumberPicture <img src="../assets/square_24_white.png" alt="NumberPicture" /></a></div><div class="clearfix"></div>'
    sections: [

    #INTRO
      {
        type: 'primary'
        heading: '<h1 style="font-size: 90px;margin-top: -128px;margin-bottom: -100px;position: relative;color: #ffffff;font-weight: 700;"><span class="lvdc" style="font-size: 260px;">11</span> in numbers</h1>'
      }

      {
        type: 'primary'
        items: [
          {
            type: 'body'
            content: '<img class="pull-left" style="width: 100px;margin: -8px 10px 0 0;" src="../assets/logo.png" /><p> is shaped around the belief that the community is the edge of our programme and we link passionate entrepreneurs with dedicated mentors and investors that can help them build great businesses. We want each member of our community to be part of this success, and since we highly value transparency, from now on we will share and keep updated all information about our investment activity and the accomplishments of our startups.</p>'
          }
          {
            type: 'figure'
            title: 'Amount invested to date'
            figure: '6,862,290.17'
            prefix: '€'
            foreword: 'Our first batch of 11 companies joined us in September 2012 and since then we have been working around the clock to discover and invest in the best teams in the region.'
          }
          {
            type: 'figure'
            title: 'Number of companies invested in'
            figure: '93'
          }
          {
            type: 'figure'
            title: 'Average size of investment'
            figure: '73,788.07'

            prefix: '€'
            # affix: 'euro'
            foreword: 'We invest using incremental approach - starting from EUR 25,000 for 8% equity with the ability for additional EUR 75,000 after the first month of the acceleration program. Based on the progress and needs, Eleven can provide up to EUR 200,000 cumulative investment per company.'
          }
          {
            type: 'figure'
            title: 'Additional investments'
            figure: '2,451,921.36'
            prefix: '€'
            foreword: 'Less than a year since their establishment, and in addition to Eleven’s EUR 2,648,481.99 investment, 21 of our companies secured additional funding from third-party investors amounting to:'
          }
        ]
      }

    #APPLICATIONS
      {
        type: 'secondary'
        heading: 'Applications'
        items: [
          {
            type: 'figure'
            title: 'The vast majority came from Europe' 
            figure: '93.9'
            affix: '%'
          }
          # {
          #   type: 'chart'
          #   title: 'Applications per continent'
          #   chartType: 'horStack'
          #   data: [
          #     ['Europe', 93.9]
          #     ['Asia', 2.9]
          #     ['N. America', 1.9]
          #     ['S. America', 1]
          #     ['Africa', 0.4]
          #     ['Australia', 0.1]
          #   ]
          #   options: {
          #     valueLabelAffix: '%'
          #   }
          # }
          {
            type: 'map'
            mapType: 'worldTour'
            title: 'Applications came from ... countries'
            data: [
              ['Bulgaria', 60.76]
              ['Serbia', 5.69]
              ['Romania', 4.03]
              ['United Kingdom', 2.97]
              ['Macedonia', 2.41]
              ['Croatia', 2.78]
              ['Bosnia and Herzegovina', 1.76]
              ['Armenia', 1.02]
              ['Kosovo', 0.83]
              ['Greece', 1.25]
              ['Germany', 0.97]
              ['India', 1.25]
              ['United States', 1.62]
              ['Georgia', 0.46]
              ['Italy', 0.93]
              ['Albania', 0.42]
              ['Russia', 0.97]
              ['Hungary', 0.56]
              ['Slovenia', 1.34]
              ['Ukraine', 0.48]
              ['Estonia', 0.28]
              ['Netherlands', 0.56]
              ['France', 0.32]
              ['Spain', 0.51]
              ['Colombia', 0.19]
              ['Denmark', 0.23]
              ['Austria', 0.23]
              ['Brazil', 0.28]
              ['Cyprus', 0.14]
              ['Kyrgyzstan', 0.14]
              ['Argentina', 0.23]
              ['Palestinian Territory', 0.14]
              ['Canada', 0.23]
              ['Japan', 0.19]
              ['Montenegro', 0.46]
              ['Belgium', 0.23]
              ['Israel', 0.32]
              ['Malaysia', 0.09]
              ['South Africa', 0.09]
              ['Mexico', 0.09]
              ['Portugal', 0.37]
              ['Turkey', 0.19]
              ['Jordan', 0.09]
              ['Lithuania', 0.14]
              ['Australia', 0.05]
              ['Taiwan', 0.05]
              ['Nigeria', 0.09]
              ['Hong Kong', 0.05]
              ['Chile', 0.14]
              ['Moldova', 0.14]
              ['Burkina Faso', 0.05]
              ['Sri Lanka', 0.09]
              ['Czech Republic', 0.23]
              ['Tanzania', 0.05]
              ['Lesotho', 0.05]
              ['Kazakhstan', 0.05]
              ['Azerbaijan', 0.09]
              ['Slovakia', 0.09]
              ['Latvia', 0.14]
              ['Indonesia', 0.05]
              ['Sweden', 0.14]
              ['Switzerland', 0.14]
              ['Finland', 0.09]
              ['Iran', 0.09]
              ['Poland', 0.09]
              ['Algeria', 0.05]
              ['Bangladesh', 0.05]
              ['Egypt', 0.05]
              ['United Arab Emirates', 0.05]
              ['Uruguay', 0.05]
              ['Vietnam', 0.05]
            ]
          }
          {
            type: 'figure'
            title: 'Acceptance rate'
            figure: 3.57
            # prefix: '€'
            affix: '%'
          }
        ]
      }

    #TEAMS
      {
        type: 'tertiary'
        heading: 'Teams'
        items: [
          {
            type: 'svg'
            title: 'By country'
            src: 'assets/teams.svg'
          }
          {
            type: 'chart'
            title: 'Team sizes'
            chartType: 'horStack'
            data: [
              ['1 Member', 5]
              ['2 Members', 41]
              ['3 Members', 39]
              ['4 Members', 10]
              ['5+ Members', 5]
            ]
            options: {
              valueLabelAffix: '%'
            }
          }
          {
            type: 'figure'
            title: 'Optimal Team Size'
            figure: 2
            # affix: ' members'
          }
        ]
      }

    #FOUNDERS
      {
        type: 'quaternary'
        heading: 'Founders'
        items: [
          {
            type: 'chart'
            chartType: 'bar'
            data: [
              ['Armenia', 0.8]
              ['Belgium ',0.4]
              ['Bulgaria',  61.9]
              ['Croatia', 8.1]
              ['France',0.4]
              ['Italy', 2.5]
              ['Latvia',  1.3]
              ['Macedonia',0.4]
              ['Marocco',0.4]
              ['Montenegro',1.7]
              ['Romania', 5.1]
              ['Russia',  0.4]
              ['Serbia',  9.7]
              ['Slovenia',3.4]
              ['South Africa',  0.4]
              ['Sweden',  0.4]
              ['Turkey',0.4]
              ['Tunisia',0.4]
              ['USA',0.9]
              ['United Kingdom', 0.8]
            ]
            title: 'Countries of origin'
            options: {
              valueLabelAffix: '%'
            }
            foreword: 'Eleven is an international organization based in Sofia and we are happy to have brought to Bulgaria so much talent from all parts of the world.'
          }
          {
            type: 'chart'
            chartType: 'scale'
            data: [
              ['Youngest', 17]
              ['Average', 32]
              ['Oldest', 71]
            ]
            title: 'Ages'
          }
          {
            type: 'chart'
            chartType: 'donut'
            data: [
              ['Female', 12]
              ['Male', 88]
            ]
            title: 'Gender'
            options: {
              valueLabelAffix: '%'
            }
          }
        ]
      }

    #COMPANIES
      {
        type: 'primary'
        heading: 'Companies'
        items: [
          {
            type: 'flipGrid'
            title: 'Funded companies'
            items: [
              {
                front: '<img class="thumbnail" src="assets/logos/meisterplus.jpg" />'
                back: "<h4><a href=\"http://maistorplus.com/\" target=\"_blank\">Maistor Plus</a></h4><ul><li>Online marketplace where homeowners can hire and rate the best home improvement professional for the job at hand </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/filement.png" />'
                back: "<h4><a href=\"http://www.filement.com/\" target=\"_blank\">Filement</a></h4><ul><li>Online based product that provides universal secure and direct access to any user device regardless of user’s location </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/soccerscout.jpg" />'
                back: "<h4><a href=\"http://www.footballscout.com/\" target=\"_blank\">FootballScout</a></h4><ul><li>Social network connecting football players and football managers worldwide </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/keenskim.png" />'
                back: "<h4><a href=\"http://11.me/companies/keenskim/\" target=\"_blank\">KeenSkim</a></h4><ul><li>A tool highlighting the relevant summary text of a web article, helping people learn more by reading less</li><li><strong>Inactive</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/soundvamp.png" />'
                back: "<h4><a href=\"http://www.soundvamp.com/\" target=\"_blank\">Soundvamp</a></h4><ul><li>Music platform for interaction between musicians and their fans.</li><li><strong>Inactive</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/playgroundenergy.jpg" />'
                back: "<h4><a href=\"http://www.playgroundenergy.com/\" target=\"_blank\">Playground Energy</a></h4><ul><li>Devices transforming kinetic energy, produced from kids’ play on playground equipment, into electricity</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/sensika.png" />'
                back: "<h4><a href=\"http://sensika.com/#!/home\" target=\"_blank\">Sensika Technologies</a></h4><ul><li>Business intelligence tool, that crawls the web and delivers actionable and relevant insights to enterprises in near-real time </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/ulympix.jpg" />'
                back: "<h4><a href=\"http://www.ulympix.com/\" target=\"_blank\">Ulympix</a></h4><ul><li>Online environment where everyone can organize a contest and engage followers, users or customers to participate and share </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/crowdsense.jpg" />'
                back: "<h4><a href=\"http://11.me/companies/crowdsense/\" target=\"_blank\">Crowd Sense Technologies</a></h4><ul><li>Software development and consultancy services in the fields of marketing, sociology and market research, PR</li><li><strong>Inactive</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/gameleon.png" />'
                back: "<h4><a href=\"http://11.me/companies/gameleon/\" target=\"_blank\">Gameleon </a></h4><ul><li>Web platform to create and publish multiplayer games and gamify content</li><li><strong>Inactive</strong></li>"

              }


#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


              {
                front: '<img class="thumbnail" src="assets/logos/unioncy.jpg" />'
                back: "<h4><a href=\"http://11.me/companies/unioncy/\" target=\"_blank\">Global Disruptive Enterprises</a></h4><ul><li>Web platform for organizing and managing things people own and like.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/nauchime.jpg" />'
                back: "<h4><a href=\" http://nauchi.me/\" target=\"_blank\">Naychi.me</a></h4><ul><li>Nauchi.me is developing a web-based applications for sharing experience and skills.</li><li><strong>Inactive</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/shareyourcart.png" />'
                back: "<h4><a href=\"http://www.shareyourcart.com/\" target=\"_blank\">ShareYourCart</a></h4><ul><li>SaaS product increasing sales by connecting online retailers with their buyers' personal network.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/sponsia.jpg" />'
                back: "<h4><a href=\"http://sponsia.com/\" target=\"_blank\">Sponsia</a></h4><ul><li>Event sponsorship marketplace.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/kidamom.jpg" />'
                back: "<h4><a href=\"https://kidamom.com/\" target=\"_blank\">Kidamom</a></h4><ul><li>Entertainment Platform for kids.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/numberpicture.png" />'
                back: "<h4><a href=\"http://site.numberpicture.com/\" target=\"_blank\">NumberPicture</a></h4><ul><li>Web info graphic app that enables the creation of beautiful graphical stories.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/skiipi.png" />'
                back: "<h4><a href=\"http://getbueno.com/\" target=\"_blank\">Bueno </a></h4><ul><li>Easiest way to stay in touch on snow slopes.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/wobeek.png" />'
                back: "<h4><a href=\"http://beecloud.co/en/\" target=\"_blank\">WoBeeK </a></h4><ul><li>Platform for an amazing beekeeping world.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/biottery.png" />'
                back: "<h4><a href=\"http://www.biottery.com/\" target=\"_blank\">Biottery </a></h4><ul><li>Clean, tasty and easy to carry energy food products, supporting active people.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/datacraftandmagic.png" />'
                back: "<h4><a href=\"http://datacraftmagic.com/\" target=\"_blank\">Data Craft and Magic </a></h4><ul><li>Platform-independent software integration solution for information retrieval and semantic indexing over large-scale of text resources.</li><li><strong>Inactive</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/datamaid.jpg" />'
                back: "<h4><a href=\"http://www.datamaid.it/landing/\" target=\"_blank\">DataMaid </a></h4><ul><li>Mobile and web app that organizes the users’ photos, notes, video, audio on a timeline.</li><li><strong>Inactive</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/gruvit.png" />'
                back: "<h4><a href=\"http://www.gruvit.com/\" target=\"_blank\">Gruvit </a></h4><ul><li>Social marketplace where musicians and party lovers meet to create an unique live performance.</li><li><strong>Inactive</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/hungrio.png" />'
                back: "<h4><a href=\"http://hungr.io/\" target=\"_blank\">Hungrio</a></h4><ul><li>Real-time communication channel between restaurants and their clients.</li><li><strong>Inactive</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/inselly.jpg" />'
                back: "<h4><a href=\"http://inselly.com/landing\" target=\"_blank\">inSelly</a></h4><ul><li>Tool for selling items via Instagram.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/emailio.jpg" />'
                back: "<h4><a href=\"http://emailio.com/\" target=\"_blank\">Emailio</a></h4><ul><li>Mobile application that aims to improve users’ productivity by semantic analysis of the messages.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/weiner.jpg" />'
                back: "<h4><a href=\"http://wienergames.com/\" target=\"_blank\">Weiner Games </a></h4><ul><li>Online cross-platform games mainly for casinos and social places.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/taxime.png" />'
                back: "<h4><a href=\"http://taxime.to/\" target=\"_blank\">TaxiMe </a></h4><ul><li>Mobile application allowing the user to get a taxi quickly and easily.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/tropicalla.png" />'
                back: "<h4><a href=\"http://www.tropicalla.com/\" target=\"_blank\">Confetti Gaming</a></h4><ul><li>Online cross-platform game Tropicalla.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/eventyard.png" />'
                back: "<h4><a href=\"https://eventyard.net/\" target=\"_blank\">Eventyard</a></h4><ul><li>Online event management and discovery platform. </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/zzzzapp.png" />'
                back: "<h4><a href=\"http://zzzzapp.com/\" target=\"_blank\">Zzzzapp</a></h4><ul><li>Wireless  Software allowing any business to actively engage its on-site customers using Wi Fi and a 24/7 marketing platform.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/wonderswamp.JPG" />'
                back: "<h4><a href=\"http://wonderswamp.com/\" target=\"_blank\">Wonder Swamp </a></h4><ul><li>Platform that complies crowd- sourced multiply- cam footage of an event, over music and turns it into a neat, professionally looking video. </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/squee.png" />'
                back: "<h4><a href=\"http://www.squee.it/\" target=\"_blank\">Squee</a></h4><ul><li>Mobile application for buying, selling, discovering indie gadgets.</li><li><strong>Inactive</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/clicko.png" />'
                back: "<h4><a href=\"http://clickotrigger.com/\" target=\"_blank\">CLICKO </a></h4><ul><li>Universal Bluetooth trigger for any type of electrical equipment. </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/divesquare.png" />'
                back: "<h4><a href=\"https://divesquare.com/\" target=\"_blank\">Divesquare.com </a></h4><ul><li>The world’s first social diving logbook.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/kanbanize.png" />'
                back: "<h4><a href=\"https://kanbanize.com/\" target=\"_blank\">Kanbanize</a></h4><ul><li>Free web based kanban tool which provides a virtual space for teams to visualize their work and follow the principles of Lean Manufacturing.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/farmhopping.jpg" />'
                back: "<h4><a href=\"https://farmhopping.com/\" target=\"_blank\">Farmhopping</a></h4><ul><li>Global web platform connecting farmers and urban people.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/lakoketa.jpg" />'
                back: "<h4><a href=\"http://lakoketa.com/\" target=\"_blank\">Trendsta </a></h4><ul><li>Mobile application La Koketa – a digital wardrobe and a personal stylist. </li><li><strong>Inactive</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/vetcloud.bmp" />'
                back: "<h4><a href=\"http://vetcloud.co/#/\" target=\"_blank\">VetCloud </a></h4><ul><li>Development and sale of web applications for veterinary practice management.</li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/gymrealm.jpg" />'
                back: "<h4><a href=\"http://gymrealm.com/\" target=\"_blank\">Gym Realm</a></h4><ul><li>Cloud service for gyms. </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/parudi.png" />'
                back: "<h4><a href=\"http://11.me/companies/parudi/\" target=\"_blank\">Parudi </a></h4><ul><li>Freemium brain & puzzle, hidden objects type of game.</li><li><strong>Inactive</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/volofy.png" />'
                back: "<h4><a href=\"http://11.me/companies/volofy/\" target=\"_blank\">Volofy </a></h4><ul><li>Platform for creating and supporting good causes - volunteer matching, fundraising and sharing ideas. </li><li><strong>Inactive</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/quizens.png" />'
                back: "<h4><a href=\"http://11.me/companies/quizens/\" target=\"_blank\">Quizens</a></h4><ul><li>Geolocation trivia. </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/captnsocial.jpeg" />'
                back: "<h4><a href=\"http://www.captnsocial.com/en-us/\" target=\"_blank\">Capt’n Social</a></h4><ul><li>Platform for social media apps offered on an affordable pay-as-you-go model.</li><li><strong>Inactive</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/legaltrek.png" />'
                back: "<h4><a href=\"https://legaltrek.com/\" target=\"_blank\">LegalTrek </a></h4><ul><li>Fast and simple law practice management in the Cloud for law firms. </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/lionsharp.jpg" />'
                back: "<h4><a href=\"http://lionsharp.com/\" target=\"_blank\">Lionsharp Solutions</a></h4><ul><li>Voiceboard: the tool to visualize and work with your ideas using gesture and voice control. </li><li><strong>Active</strong></li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/trendhattan.jpg" />'
                back: "<h4><a href=\"https://www.trendhattan.com/\" target=\"_blank\">TrendHattan</a></h4><ul><li>World fashion boutiques into global fashion place.</li><li><strong>Inactive</strong></li>"
              }

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


              {
                front: '<img class="thumbnail" src="assets/logos/yanado.png" />'
                back: "<h4><a href=\"https://yanado.com/index.php\" target=\"_blank\">Yanado</a></h4><ul><li>Yanado is a teamwork collaboration tool, easy to use yet powerful enough for most demanding users. It has seamlessly integrated modules for tasks&project management with module for document collaboration.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/Farmia.png" />'
                back: "<h4><a href=\"http://farmia.co/\" target=\"_blank\">Farmia</a></h4><ul><li>We provide the complete livestock trade service from selling or buying, veterinarian checks and papers to organizing transport and finding the highest quality animals in the world on the web all in one place.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/Edgar.png" />'
                back: "<h4><a href=\"http://edgartells.me/\" target=\"_blank\">Edgar</a></h4><ul><li>Edgar is a storytelling toolkit for brands that transforms customers into fans.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/leap.jpg" />'
                back: "<h4><a href=\"http://thisisleap.com/\" target=\"_blank\">LEAP</a></h4><ul><li>Leap is a tool that helps you filter all your search through extreme sport communities in an easy, light and precise way.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/JTP.png" />'
                back: "<h4><a href=\"http://www.jointheplayers.com/\" target=\"_blank\">Join The Players</a></h4><ul><li>We are bringing the amateur sport to the next level</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/QD.png" />'
                back: "<h4><a href=\"http://www.quadrodynamics.com/\" target=\"_blank\">QuadroDynamics</a></h4><ul><li>We are specialized in the development of Unmanned Aerial Systems with 10 years of expirience.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/Stepsss.png" />'
                back: "<h4><a href=\"http://www.stepsss.co/\" target=\"_blank\">Stepsss</a></h4><ul><li>Stepsss is a smart pair of insoles to be used mainly in rehabilitation after foot injury. It tracks the way the patient steps, the pressure applied and sends this information to the doctor to be used in the rehabilitation process.</li><li><strong>Inactive</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/TVM.png" />'
                back: "<h4><a href=\"http://tourvia.me/\" target=\"_blank\">TourViaMe</a></h4><ul><li>TourVia.me is a marketplace for escorted tours. Finding, comparing and booking tours will finally be easy and fun. Start packing!</li><li><strong>Active</strong></li>"
             	}
              {
                front: '<img class="thumbnail" src="assets/logos/majio.png" />'
                back: "<h4><a href=\"http://maj.io/blog/\" target=\"_blank\">Majio</a></h4><ul><li>Find and match professionals faster, more accurately and cost effectively than any current solution in online recruitment and talent acquisition.</li><li><strong>Active</strong></li>"
             	}
              {
                front: '<img class="thumbnail" src="assets/logos/getix.png" />'
                back: "<h4><a href=\"http://11.me/companies/123-sale-with-me/\" target=\"_blank\">Getix</a></h4><ul><li>We help people to start Easy & Affordable their retail business with Point Of Sale application for fast and easy sales tracking in the cloud.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/Wrist.png" />'
                back: "<h4><a href=\"http://www.wr1st.com/\" target=\"_blank\">Wr1st</a></h4><ul><li>Bracelet for mobile festival payments.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/Tickit.jpg" />'
                back: "<h4><a href=\"http://stigni.bg/\" target=\"_blank\">Tickit</a></h4><ul><li>Application for online sales of bus tickets, up to date information and tips for the buses in Central and Eastern Europe.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/SE.png" />'
                back: "<h4><a href=\"http://senergy.rs/?lang=en\" target=\"_blank\">Strawberry energy</a></h4><ul><li>Strawberry Energy has invented the world’s first public solar charger for portable devices – Strawberry Tree.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/adormo.png" />'
                back: "<h4><a href=\"http://www.adormo.com/\" target=\"_blank\">Adormo</a></h4><ul><li>Adormo brings more tourists to apartment owners by creating professional listings and managing them in the online reservation portals.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/kown.jpg" />'
                back: "<h4><a href=\"https://kown.com/#\" target=\"_blank\">KOWN</a></h4><ul><li>The easy way to discover and back startups.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/boxgarden_2.jpg" />'
                back: "<h4><a href=\"http://11.me/companies/box-garden/\" target=\"_blank\">Box Garden</a></h4><ul><li>Fully automated home cultivator for organic herbs, vegetables, fruits and salads. Low power consumption, water saving, year-round produce.<li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/enhancv.jpeg" />'
                back: "<h4><a href=\"http://enhancv.com/\" target=\"_blank\">Enhancv</a></h4><ul><li>Enhancv helps people seize their top goals by teaching them how to portray themselves.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/qlibri.png" />'
                back: "<h4><a href=\"http://www.getqlibri.com/\" target=\"_blank\">Qlibri</a></h4><ul><li>Qlibri is a powerful tool used for creating native mobile applications within minutes.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/metrilo.png" />'
                back: "<h4><a href=\"https://www.metrilo.com/\" target=\"_blank\">Metrilo</a></h4><ul><li>Metrilo helps you understand, engage with and grow your customer base.</li><li><strong>Active</strong></li>"
             	}
              {
                front: '<img class="thumbnail" src="assets/logos/Kratos.png" />'
                back: "<h4><a href=\"http://kratostechnology.com/\" target=\"_blank\">Kratos Technology</a></h4><ul><li>Kratos’s e-government solution lets you do more with less resources. Benefit from an easy to use online platform, which streamlines processes in the municipality and builds citizen satisfaction.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/content360.png" />'
                back: "<h4><a href=\"https://authorinsights.com/\" target=\"_blank\">Content 360</a></h4><ul><li>Moneyball for Online Publishing.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/RaceCloud.jpg" />'
                back: "<h4><a href=\"http://www.racecloud.net/\" target=\"_blank\">RaceCloud</a></h4><ul><li>Innovative 3-component live telemetry for Go Karting.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/thebarba.jpg" />'
                back: "<h4><a href=\"http://www.thebarba.co/\" target=\"_blank\">The Barba</a></h4><ul><li>Organization of teambuildings on yachts.</li><li><strong>Active</strong></li>"
             	}
              {
                front: '<img class="thumbnail" src="assets/logos/TrainCampMe.png" />'
                back: "<h4><a href=\"https://traincamp.me/\" target=\"_blank\">TrainCamp</a></h4><ul><li>An intelligent platform that takes the entire ecosystem of “on and off-line” resources and offers it to the user in a meaningful way.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/Coprix Media.png" />'
                back: "<h4><a href=\"http://coprix.net/\" target=\"_blank\">Coprix Media</a></h4><ul><li>Certified multi platform interactive educational applications providing top quality educational content.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/arthesis.png" />'
                back: "<h4><a href=\"http://arthesiscovers.com/\" target=\"_blank\">Arthesis</a></h4><ul><li>Arthesis is 3d printed custom made cosmetic cover for people with leg prosthesis.</li><li><strong>Active</strong></li>"
                              }
              {
                front: '<img class="thumbnail" src="assets/logos/MelissaClimate.png" />'
                back: "<h4><a href=\"http://seemelissa.com/?lang=en\" target=\"_blank\">Melissa Climate</a></h4><ul><li>Smart control of your air conditioner. Melissa cuts up to 25% of your air conditioner’s energy consumption.</li><li><strong>Active</strong></li>"
             	}
              {
                front: '<img class="thumbnail" src="assets/logos/GoldenPages.jpg" />'
                back: "<h4><a href=\"http://www.goldenpages.bg/\" target=\"_blank\">Golden Media</a></h4><ul><li>Golden Media provides classified sales and advertising services to SMEs across Bulgaria and beyond.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/AVSD_2.png" />'
                back: "<h4><a href=\"http://11.me/companies/avsd/\" target=\"_blank\">Amplified Visual Software Design</a></h4><ul><li>A platform for designing, visualizing and analysing software in a 3D environment.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/uPlug.png" />'
                back: "<h4><a href=\"http://www.uplug.me/\" target=\"_blank\">U:Plug</a></h4><ul><li>The Power Outlet Reinvented. Beautifully designed, simple & elegant solution for charging all your electronics right from the wall outlet.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/dronamics.png" />'
                back: "<h4><a href=\"http://dronamics.com/\" target=\"_blank\">Dronamics</a></h4><ul><li>Cargo Drones. Development & production of Unmanned Aerial Systems for commercial use and special logistics missions.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/PL.png" />'
                back: "<h4><a href=\"http://www.phantomlogin.com/\" target=\"_blank\">PhantomLogin</a></h4><ul><li>Revolutionary new password system, adding extra level of security to your device.</li><li><strong>Active</strong></li>"
             	}
              {
                front: '<img class="thumbnail" src="assets/logos/tg.png" />'
                back: "<h4><a href=\"http://www.tryadgames.com/\" target=\"_blank\">TryadGames</a></h4><ul><li>Golden Media provides classified sales and advertising services to SMEs across Bulgaria and beyond.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/cybercity.png" />'
                back: "<h4><a href=\"http://cybercity.co/\" target=\"_blank\">CyberCity</a></h4><ul><li>Web and visitors builder for alternative subcultures and lifestyles (steampunk, tattoo, gothic, comics, magic, alternative music).</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/DextrophobiaRooms.png" />'
                back: "<h4><a href=\"http://dextrophobiarooms.com/?lang=en\" target=\"_blank\">Dextrophobia Rooms</a></h4><ul><li>Dextrophobia Rooms are the first in Bulgaria real-life room escape games. Rules are simple - one room, one team, one hour, one exit.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/sofly.png" />'
                back: "<h4><a href=\"http://www.sofly.tv/\" target=\"_blank\">SoFly</a></h4><ul><li>SoFly is a companion that shares you passion for TV and allows you to socially interact, shop and effortlessly discover what’s on screen.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/Scoutee.png" />'
                back: "<h4><a href=\"http://scoutee.co/\" target=\"_blank\">Scoutee</a></h4><ul><li>A hardware-software solution for gathering analytics for the performance of baseball players along with an online network for players and coaches.</li><li><strong>Active</strong></li>"
             	}
              {
                front: '<img class="thumbnail" src="assets/logos/tickey.jpg" />'
                back: "<h4><a href=\"http://tickey.me/\" target=\"_blank\">TICKEY</a></h4><ul><li>TICKEY provides unified and simplified way to pay urban transport fares via smartphone.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/enwake.jpg" />'
                back: "<h4><a href=\"http://enwake.me/\" target=\"_blank\">EnWake</a></h4><ul><li>World's first intelligent ray of sunshine. EnWake is an innovative solution aimed at optimizing and boosting energy levels and adjusting sleep/wake cycle according to a person’s lifestyle.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/maxcart.png" />'
                back: "<h4><a href=\"http://maxcart.bg/\" target=\"_blank\">Maxcart</a></h4><ul><li>SaaS solution that helps small and medium businesses manage their online and offline sales in a single platform.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/ab.jpg" />'
                back: "<h4><a href=\"http://angel-baby.eu/\" target=\"_blank\">AngelBaby</a></h4><ul><li>A brand that brings a modern and stylish look in the clothing for newborns and children of up to 4 years.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/adora.png" />'
                back: "<h4><a href=\"http://www.adora-med.com/\" target=\"_blank\">Adora</a></h4><ul><li>A device that allows doctors to open and review patient images and records using only voice and gesture control. This reduces surgery time and provides critical information just at the right time.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/Artery.jpg" />'
                back: "<h4><a href=\"http://11.me/companies/artery/\" target=\"_blank\">Artery</a></h4><ul><li>Web app that helps crafters selling online grow a multi-store presence via single-interface management and actionable marketing insight.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/colombio.png" />'
                back: "<h4><a href=\"http://www.colombio.net/\" target=\"_blank\">Colombio</a></h4><ul><li>The lifeline between media and news witnesses, facilitating the exchange of information, photographs, videos and so on.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/darthvader.png" />'
                back: "<h4><a href=\"http://11.me/companies/bakerstreet/\" target=\"_blank\">Baker Street</a></h4><ul><li>Production and delivery of bread and desserts that are tasty, healthy and nice looking.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/kuknall.png" />'
                back: "<h4><a href=\"http://kuknall.com/language/en/\" target=\"_blank\">Kuknall</a></h4><ul><li>This toilet footboard is an addition to your WC interior and simply makes the going to the toilet experience painless for everyone.</li><li><strong>Active</strong></li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/bguard.png" />'
                back: "<h4><a href=\"http://www.bguard.me/\" target=\"_blank\">BGuard</a></h4><ul><li>Bicycle anti-theft system connected to a user’s smartphone designed to prevent bicycle theft by combining high-tech with durability.</li><li><strong>Active</strong></li>"
              }
            ]
          }
          {
            type: 'figure'
            title: 'Total Portfolio Companies Value'
            figure: 47.5
            prefix: '€'
            affix: 'mil'
          }
        ]
      }

    #SECTORS (OLD)
      {
        type: 'secondary'
        heading: 'Sectors'
        items: [

          {
            type: 'chart'
            chartType: 'bar'
            data: [
              ['Cleantech',  4.3]
              ['Digital Media', 11.7]
              ['E-commerce', 11.7]
              ['Education', 4.3]
              ['E-government', 2.1]
              ['Entertainment', 14.9]
              ['Food',  7.4]
              ['Healthcare',  5.3]
              ['Human Resources',  2.1]
              ['Lifestyle',  4.3]
              ['Logistics', 4.3]
              ['Productivity', 10.6]
              ['Security', 1.1]
              ['Sports', 9.6]
              ['Tourism', 1.1]
              ['Other', 5.3]
            ]
            title: 'Industries'
            options: {
              valueLabelAffix: '%'
            }
            foreword: 'Eleven\'s portfolio is very diverse in terms of industries. ' 
          }
         {
            type: 'chart'
            title: 'Product type'
            chartType: 'horStack'
            data: [
              ['Games', 6]
              ['Hardware', 17]
              ['Marketplace', 19]
              ['Mobile', 7]
              ['Non IT', 10]
              ['SaaS', 28]
              ['Web', 13]
            ]
            options: {
              valueLabelAffix: '%'
            }
          }
        ]
      }

     #MENTORS
      {
        type: 'tertiary'
        heading: 'Mentors'
        items: [
          {
            type: 'body'
            content: 'We are building a network of mentors from all walks of life and from all over the world, and yet focusing on people who have been entrepreneurs in their own right, as their advice is most valuable.'
          }
          {
            type: 'figure'
            title: 'Number of mentors'
            figure: 250
          }
          {
            type: 'list'
            title: 'Origins of mentors'
            list: ['Bulgaria'
              'USA'
              'UK'
              'Israel'
              'Serbia'
              'Greece'
              'Croatia'
              'Romania'
              'France'
              'South Africa'
            ]
          }
          {
            type: 'chart'
            title: 'Background of mentors'
            chartType: 'donut'
            data: [
              ['Entrepreneurial', 77]
              ['Analytical/Operational', 23]
            ]
            options: {
              valueLabelAffix: '%'
            }
          }
        ]
      }
    ]
  }
)
      # {
      #   type: ''
      #   items: [
      #     {
      #       type: 'quote'
      #       title: 'This is my first quote'
      #       quote: 'blah, blah, blah'

      #     }
      #   ]
      # }
