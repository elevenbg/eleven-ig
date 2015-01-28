define((require)->

  return {
    theme: {
      palette: [
        '#404040'
      ]
    }
    credit: '<div class="pull-left"><a href="http://eleven.bg/" target="_blank" class="social glyphicon glyphicon-globe" style="position: relative; top: 2px;"></a><a href="https://www.facebook.com/elevenbg" target="_blank" class="social brandico-facebook"></a><a href="https://twitter.com/elevenbg" target="_blank" class="social brandico-twitter-bird"></a><a href="/#disclaimer" target="_blank">Disclaimer</a></div><div class="pull-right">Built by <a href="http://numberpicture.com" target="_blank">NumberPicture <img src="../assets/square_24_white.png" alt="NumberPicture" /></a></div><div class="clearfix"></div>'
    sections: [
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
            figure: '2,596,622.98'
            prefix: '€'
            foreword: 'Our first batch of 11 companies joined us in September 2012 and since then we have been working around the clock to discover and invest in the best teams in the region.'
          }
          {
            type: 'figure'
            title: 'Number of companies invested in'
            figure: 46
          }
          {
            type: 'figure'
            title: 'Average size of investment'
            figure: '56,448.33'
            prefix: '€'
            # affix: 'euro'
            foreword: 'We invest using incremental investment approach - starting from EUR 50,000 for proof of concept during a 3+3 month acceleration program with the ability for additional up to EUR 150,000 follow-on seed investment.'
          }
          {
            type: 'figure'
            title: 'Additional investments'
            figure: '1,030,000.00'
            prefix: '€'
            foreword: 'Less than a year since their establishment, and in addition to Eleven’s EUR 655,000 investment, seven of our companies secured additional funding from third-party investors amounting to.'
          }
        ]
      }
      {
        type: 'secondary'
        heading: 'Applications'
        items: [
          {
            type: 'figure'
            title: 'The vast majority came from Europe' 
            figure: '94.5'
            affix: '%'
          }
          # {
          #   type: 'chart'
          #   title: 'Applications per continent'
          #   chartType: 'horStack'
          #   data: [
          #     ['Europe', 94.5]
          #     ['Asia', 2.7]
          #     ['N. America', 1.3]
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
              ['Bulgaria', 61.67]
              ['Serbia', 5.16]
              ['Romania', 3.33]
              ['United Kingdom', 2.94]
              ['Macedonia', 2.78]
              ['Croatia', 2.86]
              ['Bosnia and Herzegovina', 2.46]
              ['Armenia', 1.51]
              ['Kosovo', 1.35]
              ['Greece', 1.27]
              ['Germany', 1.11]
              ['India', 1.11]
              ['United States', 0.87]
              ['Georgia', 0.79]
              ['Italy', 0.79]
              ['Albania', 0.71]
              ['Russia', 0.63]
              ['Hungary', 0.48]
              ['Slovenia', 0.48]
              ['Ukraine', 0.48]
              ['Estonia', 0.48]
              ['Netherlands', 0.40]
              ['France', 0.40]
              ['Spain', 0.40]
              ['Colombia', 0.32]
              ['Denmark', 0.32]
              ['Austria', 0.32]
              ['Brazil', 0.32]
              ['Cyprus', 0.24]
              ['Kyrgyzstan', 0.24]
              ['Argentina', 0.24]
              ['Palestinian Territory', 0.24]
              ['Canada', 0.24]
              ['Japan', 0.24]
              ['Montenegro', 0.16]
              ['Belgium', 0.16]
              ['Israel', 0.16]
              ['Malaysia', 0.16]
              ['South Africa', 0.16]
              ['Mexico', 0.16]
              ['Portugal', 0.16]
              ['Turkey', 0.16]
              ['Jordan', 0.08]
              ['Lithuania', 0.08]
              ['Australia', 0.08]
              ['Taiwan', 0.08]
              ['Nigeria', 0.08]
              ['Hong Kong', 0.08]
              ['Chile', 0.08]
              ['Moldova', 0.08]
              ['Burkina Faso', 0.08]
              ['Sri Lanka', 0.08]
              ['Czech Republic', 0.08]
              ['Tanzania', 0.08]
              ['Lesotho', 0.08]
              ['Kazakhstan', 0.08]
              ['Azerbaijan', 0.08]
              ['Slovakia', 0.08]
              ['Latvia', 0.08]
              ['Indonesia', 0.08]
            ]
          }
          {
            type: 'figure'
            title: 'Acceptance rate'
            figure: 3.65
            # prefix: '€'
            affix: '%'
          }
        ]
      }
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
              ['1 Member', 2]
              ['2 Members', 28]
              ['3 Members', 37]
              ['4 Members', 13]
              ['5+ Members', 20]
            ]
            options: {
              valueLabelAffix: '%'
            }
          }
          {
            type: 'figure'
            title: 'Optimal Team Size'
            figure: 3
            # affix: ' members'
          }
        ]
      }
      {
        type: 'quaternary'
        heading: 'Founders'
        items: [
          {
            type: 'chart'
            chartType: 'bar'
            data: [
              ['Bulgaria',  57.8]
              ['Armenia', 1.8]
              ['Croatia', 9.2]
              ['Great Britain', 1.8]
              ['Italy', 2.8]
              ['Latvia',  2.8]
              ['Romania', 11]
              ['Russia',  0.9]
              ['Serbia',  9.2]
              ['South Africa',  0.9]
              ['Sweden',  0.9]
              ['USA ',0.9]
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
              ['Youngest', 16]
              ['Average', 30]
              ['Oldest', 70]
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
                back: "<h4>Maister Plus </h4><ul><li>Online marketplace where homeowners can hire and rate the best home improvement professional for the job at hand </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/filement.png" />'
                back: "<h4>Filement </h4><ul><li>Online based product that provides universal secure and direct access to any user device regardless of user’s location </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/soccerscout.jpg" />'
                back: "<h4>FootballScout Ltd. </h4><ul><li>Social network connecting football players and football managers worldwide </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 200,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/keenskim.png" />'
                back: "<h4>KeenSkim </h4><ul><li>A tool highlighting the relevant summary text of a web article, helping people learn more by reading less</li><li><strong>Inactive</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/soundvamp.png" />'
                back: "<h4>Lingalot </h4><ul><li>Music platform combining videos, lyrics, and in-context translations to allow learning of a foreign language with less effort</li><li><strong>Inactive</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/playgroundenergy.jpg" />'
                back: "<h4>Playground Energy</h4><ul><li>Devices transforming kinetic energy, produced from kids’ play on playground equipment, into electricity</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 200,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/sensika.png" />'
                back: "<h4>Sensika Technologies </h4><ul><li>Business intelligence tool, that crawls the web and delivers actionable and relevant insights to enterprises in near-real time </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 200,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/ulympix.jpg" />'
                back: "<h4>Ulympix</h4><ul><li>Online environment where everyone can organize a contest and engage followers, users or customers to participate and share </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/crowdsense.jpg" />'
                back: "<h4>Crowd Sense Technologies </h4><ul><li>Software development and consultancy services in the fields of marketing, sociology and market research, PR</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/gameleon.png" />'
                back: "<h4>Gameleon </h4><ul><li>Web platform to create and publish multiplayer games and gamify content</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/unioncy.jpg" />'
                back: "<h4>Global Disruptive Enterprises</h4><ul><li>Web platform for organizing and managing things people own and like</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 115,716.98</li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/nauchime.jpg" />'
                back: "<h4>Naychi.me</h4><ul><li>Nauchi.me is developing a web-based applications for sharing experience and skills </li><li><strong>Inactive</strong></li><li><strong>Invested:</strong> € 5,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/shareyourcart.png" />'
                back: "<h4>ShareYourCart</h4><ul><li>SaaS product increasing sales by connecting online retailers with their buyers' personal network </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/sponsia.jpg" />'
                back: "<h4>Sponsia</h4><ul><li>Event sponsorship marketplace</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/kidamom.jpg" />'
                back: "<h4>Kidamom</h4><ul><li>Entertainment Platform for kids</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/numberpicture.png" />'
                back: "<h4>NumberPicture</h4><ul><li>Web info graphic app that enables the creation of beautiful graphical stories</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/skiipi.png" />'
                back: "<h4>Skipii </h4><ul><li>Easiest way to stay in touch on snow slopes</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/wobeek.png" />'
                back: "<h4>WoBeeK </h4><ul><li>Platform for an amazing beekeeping world </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 35,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/biottery.png" />'
                back: "<h4>Biottery </h4><ul><li>Clean, tasty and easy to carry energy food products, supporting active people</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/datacraftandmagic.png" />'
                back: "<h4>Data Craft and Magic </h4><ul><li>Platform-independent software integration solution for information retrieval and semantic indexing over large-scale of text resources</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/datamaid.jpg" />'
                back: "<h4>DataMaid </h4><ul><li>Mobile and web app that organizes the users’ photos, notes, video, audio on a timeline </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/gruvit.png" />'
                back: "<h4>Gruvit </h4><ul><li>Social marketplace where musicians and party lovers meet to create an unique live performance</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/hungrio.png" />'
                back: "<h4>Hungrio</h4><ul><li>Real-time communication channel between restaurants and their clients</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/inselly.jpg" />'
                back: "<h4>inSelly</h4><ul><li>Tool for selling items via Instagram </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/magin.png" />'
                back: "<h4>Magin</h4><ul><li>Mobile application that aims to improve users’ productivity by semantic analysis of the messages </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 15,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/weiner.jpg" />'
                back: "<h4>Weiner Games </h4><ul><li>Online cross-platform games mainly for casinos and social places </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/taxime.png" />'
                back: "<h4>TaxiMe </h4><ul><li>Mobile application allowing the user to get a taxi quickly and easily</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/tropicalla.png" />'
                back: "<h4>Confetti Gaming</h4><ul><li>Online cross-platform game Tropicalla</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"
              }
              {
                front: '<img class="thumbnail" src="assets/logos/eventyard.png" />'
                back: "<h4>Eventyard</h4><ul><li>Online event management and discovery platform </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 85,906.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/zzzzapp.png" />'
                back: "<h4>Zzzzapp</h4><ul><li>Wireless  Software allowing any business to actively engage its on-site customers using Wi Fi and a 24/7 marketing platform</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/wonderswamp.JPG" />'
                back: "<h4>Wonder Swamp </h4><ul><li>Platform that complies crowd- sourced multiply- cam footage of an event, over music and turns it into a neat, professionally looking video </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/squee.png" />'
                back: "<h4>Squee</h4><ul><li>Mobile application for buying, selling, discovering indie gadgets</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/clicko.png" />'
                back: "<h4>CLICKO </h4><ul><li>Universal Bluetooth trigger for any type of electrical equipment </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/divesquare.png" />'
                back: "<h4>Divesquare.com </h4><ul><li>The world’s first social diving logbook</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/kanbanize.png" />'
                back: "<h4>Kanbanize</h4><ul><li>Free web based kanban tool which provides a virtual space for teams to visualize their work and follow the principles of Lean Manufacturing</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 125,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/farmhopping.jpg" />'
                back: "<h4>Farmhopping</h4><ul><li>Global web platform connecting farmers and urban people</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 40,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/lakoketa.jpg" />'
                back: "<h4>Trendsta </h4><ul><li>Mobile application La Koketa – a digital wardrobe and a personal stylist </li><li><strong>Inactive</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/vetcloud.bmp" />'
                back: "<h4>VetCloud </h4><ul><li>Development and sale of web applications for veterinary practice management</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 200,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/gymrealm.jpg" />'
                back: "<h4>Gym Realm</h4><ul><li>Cloud service for gyms </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/parudi.png" />'
                back: "<h4>Parudi </h4><ul><li>Freemium brain & puzzle, hidden objects type of game.</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/volofy.png" />'
                back: "<h4>Volofy </h4><ul><li>Platform for creating and supporting good causes - volunteer matching, fundraising and sharing ideas </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/quizens.png" />'
                back: "<h4>Quizens</h4><ul><li>Geolocation trivia </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/captnsocial.jpeg" />'
                back: "<h4>Capt’n Social</h4><ul><li>Platform for social media apps offered on an affordable pay-as-you-go model</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/casetrek.png" />'
                back: "<h4>CaseTrek </h4><ul><li>Fast and simple law practice management in the Cloud for law firms </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/lionsharp.jpg" />'
                back: "<h4>Lionsharp Solutions</h4><ul><li>Voiceboard: the tool to visualize and work with your ideas using gesture and voice control </li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 50,000.00</li>"

              }
              {
                front: '<img class="thumbnail" src="assets/logos/trendhattan.jpg" />'
                back: "<h4>TrendHattan</h4><ul><li>World fashion boutiques into global fashion place</li><li><strong>Active</strong></li><li><strong>Invested:</strong> € 25,000.00</li>"

              }
            ]
          }
          {
            type: 'figure'
            title: 'Total Portfolio Companies Value'
            figure: 23.2
            prefix: '€'
            affix: 'mil'
          }
        ]
      }
      {
        type: 'secondary'
        heading: 'Sectors'
        items: [
          {
            type: 'chart'
            foreword: '<span class="section-color"><strong>Green:</strong> number applied. </span><strong>Grey:</strong> number accepted.'
            chartType: 'bubble'
            title: 'Breakdown of the sectors'
            data: [
              ['Lifestyle', 133 ,7]
              ['Productivity',  164, 9]
              ['Social',  151, 9]
              ['Digital Media', 114 ,7]
              ['Games', 89  ,5]
              ['Hardware',  19 , 1]
              ['Engeneering', 75  ,1]
              ['Entertainment', 54  ,2]
              ['E-commerce',  143, 3]
              ['Other*',  139, 2]

            ]
          }
        ]
      }
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
              ['Entrepreneurial', 65]
              ['Analytical/Operational', 35]
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
