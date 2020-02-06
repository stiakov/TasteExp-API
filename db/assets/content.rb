module Content
  def get_commerce_type
    ['Bar', 'Coffee Shop', 'Drive Inn', 'Fast Food', 'Restaurant', 'Soda Fountain']
  end

  def get_countries
    [
        {name: 'Afghanistan', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Albania', region: 'EASTERN EUROPE'},
        {name: 'Algeria', region: 'NORTHERN AFRICA'},
        {name: 'American Samoa', region: 'OCEANIA'},
        {name: 'Andorra', region: 'WESTERN EUROPE'},
        {name: 'Angola', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Anguilla', region: 'LATIN AMER. & CARIB'},
        {name: 'Antigua & Barbuda', region: 'LATIN AMER. & CARIB'},
        {name: 'Argentina', region: 'LATIN AMER. & CARIB'},
        {name: 'Armenia', region: 'C.W. OF IND. STATES'},
        {name: 'Aruba', region: 'LATIN AMER. & CARIB'},
        {name: 'Australia', region: 'OCEANIA'},
        {name: 'Austria', region: 'WESTERN EUROPE'},
        {name: 'Azerbaijan', region: 'C.W. OF IND. STATES'},
        {name: 'Bahamas, The', region: 'LATIN AMER. & CARIB'},
        {name: 'Bahrain', region: 'NEAR EAST'},
        {name: 'Bangladesh', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Barbados', region: 'LATIN AMER. & CARIB'},
        {name: 'Belarus', region: 'C.W. OF IND. STATES'},
        {name: 'Belgium', region: 'WESTERN EUROPE'},
        {name: 'Belize', region: 'LATIN AMER. & CARIB'},
        {name: 'Benin', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Bermuda', region: 'NORTHERN AMERICA'},
        {name: 'Bhutan', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Bolivia', region: 'LATIN AMER. & CARIB'},
        {name: 'Bosnia & Herzegovina', region: 'EASTERN EUROPE'},
        {name: 'Botswana', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Brazil', region: 'LATIN AMER. & CARIB'},
        {name: 'British Virgin Is.', region: 'LATIN AMER. & CARIB'},
        {name: 'Brunei', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Bulgaria', region: 'EASTERN EUROPE'},
        {name: 'Burkina Faso', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Burma', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Burundi', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Cambodia', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Cameroon', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Canada', region: 'NORTHERN AMERICA'},
        {name: 'Cape Verde', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Cayman Islands', region: 'LATIN AMER. & CARIB'},
        {name: 'Central African Rep.', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Chad', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Chile', region: 'LATIN AMER. & CARIB'},
        {name: 'China', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Colombia', region: 'LATIN AMER. & CARIB'},
        {name: 'Comoros', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Congo, Dem. Rep.', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Congo, Repub. of the', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Cook Islands', region: 'OCEANIA'},
        {name: 'Costa Rica', region: 'LATIN AMER. & CARIB'},
        {name: 'Cote d\'Ivoire', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Croatia', region: 'EASTERN EUROPE'},
        {name: 'Cuba', region: 'LATIN AMER. & CARIB'},
        {name: 'Cyprus', region: 'NEAR EAST'},
        {name: 'Czech Republic', region: 'EASTERN EUROPE'},
        {name: 'Denmark', region: 'WESTERN EUROPE'},
        {name: 'Djibouti', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Dominica', region: 'LATIN AMER. & CARIB'},
        {name: 'Dominican Republic', region: 'LATIN AMER. & CARIB'},
        {name: 'East Timor', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Ecuador', region: 'LATIN AMER. & CARIB'},
        {name: 'Egypt', region: 'NORTHERN AFRICA'},
        {name: 'El Salvador', region: 'LATIN AMER. & CARIB'},
        {name: 'Equatorial Guinea', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Eritrea', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Estonia', region: 'BALTICS'},
        {name: 'Ethiopia', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Faroe Islands', region: 'WESTERN EUROPE'},
        {name: 'Fiji', region: 'OCEANIA'},
        {name: 'Finland', region: 'WESTERN EUROPE'},
        {name: 'France', region: 'WESTERN EUROPE'},
        {name: 'French Guiana', region: 'LATIN AMER. & CARIB'},
        {name: 'French Polynesia', region: 'OCEANIA'},
        {name: 'Gabon', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Gambia, The', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Gaza Strip', region: 'NEAR EAST'},
        {name: 'Georgia', region: 'C.W. OF IND. STATES'},
        {name: 'Germany', region: 'WESTERN EUROPE'},
        {name: 'Ghana', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Gibraltar', region: 'WESTERN EUROPE'},
        {name: 'Greece', region: 'WESTERN EUROPE'},
        {name: 'Greenland', region: 'NORTHERN AMERICA'},
        {name: 'Grenada', region: 'LATIN AMER. & CARIB'},
        {name: 'Guadeloupe', region: 'LATIN AMER. & CARIB'},
        {name: 'Guam', region: 'OCEANIA'},
        {name: 'Guatemala', region: 'LATIN AMER. & CARIB'},
        {name: 'Guernsey', region: 'WESTERN EUROPE'},
        {name: 'Guinea', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Guinea-Bissau', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Guyana', region: 'LATIN AMER. & CARIB'},
        {name: 'Haiti', region: 'LATIN AMER. & CARIB'},
        {name: 'Honduras', region: 'LATIN AMER. & CARIB'},
        {name: 'Hong Kong', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Hungary', region: 'EASTERN EUROPE'},
        {name: 'Iceland', region: 'WESTERN EUROPE'},
        {name: 'India', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Indonesia', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Iran', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Iraq', region: 'NEAR EAST'},
        {name: 'Ireland', region: 'WESTERN EUROPE'},
        {name: 'Isle of Man', region: 'WESTERN EUROPE'},
        {name: 'Israel', region: 'NEAR EAST'},
        {name: 'Italy', region: 'WESTERN EUROPE'},
        {name: 'Jamaica', region: 'LATIN AMER. & CARIB'},
        {name: 'Japan', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Jersey', region: 'WESTERN EUROPE'},
        {name: 'Jordan', region: 'NEAR EAST'},
        {name: 'Kazakhstan', region: 'C.W. OF IND. STATES'},
        {name: 'Kenya', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Kiribati', region: 'OCEANIA'},
        {name: 'Korea, North', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Korea, South', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Kuwait', region: 'NEAR EAST'},
        {name: 'Kyrgyzstan', region: 'C.W. OF IND. STATES'},
        {name: 'Laos', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Latvia', region: 'BALTICS'},
        {name: 'Lebanon', region: 'NEAR EAST'},
        {name: 'Lesotho', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Liberia', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Libya', region: 'NORTHERN AFRICA'},
        {name: 'Liechtenstein', region: 'WESTERN EUROPE'},
        {name: 'Lithuania', region: 'BALTICS'},
        {name: 'Luxembourg', region: 'WESTERN EUROPE'},
        {name: 'Macau', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Macedonia', region: 'EASTERN EUROPE'},
        {name: 'Madagascar', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Malawi', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Malaysia', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Maldives', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Mali', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Malta', region: 'WESTERN EUROPE'},
        {name: 'Marshall Islands', region: 'OCEANIA'},
        {name: 'Martinique', region: 'LATIN AMER. & CARIB'},
        {name: 'Mauritania', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Mauritius', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Mayotte', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Mexico', region: 'LATIN AMER. & CARIB'},
        {name: 'Micronesia, Fed. St.', region: 'OCEANIA'},
        {name: 'Moldova', region: 'C.W. OF IND. STATES'},
        {name: 'Monaco', region: 'WESTERN EUROPE'},
        {name: 'Mongolia', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Montserrat', region: 'LATIN AMER. & CARIB'},
        {name: 'Morocco', region: 'NORTHERN AFRICA'},
        {name: 'Mozambique', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Namibia', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Nauru', region: 'OCEANIA'},
        {name: 'Nepal', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Netherlands', region: 'WESTERN EUROPE'},
        {name: 'Netherlands Antilles', region: 'LATIN AMER. & CARIB'},
        {name: 'New Caledonia', region: 'OCEANIA'},
        {name: 'New Zealand', region: 'OCEANIA'},
        {name: 'Nicaragua', region: 'LATIN AMER. & CARIB'},
        {name: 'Niger', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Nigeria', region: 'SUB-SAHARAN AFRICA'},
        {name: 'N. Mariana Islands', region: 'OCEANIA'},
        {name: 'Norway', region: 'WESTERN EUROPE'},
        {name: 'Oman', region: 'NEAR EAST'},
        {name: 'Pakistan', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Palau', region: 'OCEANIA'},
        {name: 'Panama', region: 'LATIN AMER. & CARIB'},
        {name: 'Papua New Guinea', region: 'OCEANIA'},
        {name: 'Paraguay', region: 'LATIN AMER. & CARIB'},
        {name: 'Peru', region: 'LATIN AMER. & CARIB'},
        {name: 'Philippines', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Poland', region: 'EASTERN EUROPE'},
        {name: 'Portugal', region: 'WESTERN EUROPE'},
        {name: 'Puerto Rico', region: 'LATIN AMER. & CARIB'},
        {name: 'Qatar', region: 'NEAR EAST'},
        {name: 'Reunion', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Romania', region: 'EASTERN EUROPE'},
        {name: 'Russia', region: 'C.W. OF IND. STATES'},
        {name: 'Rwanda', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Saint Helena', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Saint Kitts & Nevis', region: 'LATIN AMER. & CARIB'},
        {name: 'Saint Lucia', region: 'LATIN AMER. & CARIB'},
        {name: 'St Pierre & Miquelon', region: 'NORTHERN AMERICA'},
        {name: 'Saint Vincent and the Grenadines', region: 'LATIN AMER. & CARIB'},
        {name: 'Samoa', region: 'OCEANIA'},
        {name: 'San Marino', region: 'WESTERN EUROPE'},
        {name: 'Sao Tome & Principe', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Saudi Arabia', region: 'NEAR EAST'},
        {name: 'Senegal', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Serbia', region: 'EASTERN EUROPE'},
        {name: 'Seychelles', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Sierra Leone', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Singapore', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Slovakia', region: 'EASTERN EUROPE'},
        {name: 'Slovenia', region: 'EASTERN EUROPE'},
        {name: 'Solomon Islands', region: 'OCEANIA'},
        {name: 'Somalia', region: 'SUB-SAHARAN AFRICA'},
        {name: 'South Africa', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Spain', region: 'WESTERN EUROPE'},
        {name: 'Sri Lanka', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Sudan', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Suriname', region: 'LATIN AMER. & CARIB'},
        {name: 'Swaziland', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Sweden', region: 'WESTERN EUROPE'},
        {name: 'Switzerland', region: 'WESTERN EUROPE'},
        {name: 'Syria', region: 'NEAR EAST'},
        {name: 'Taiwan', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Tajikistan', region: 'C.W. OF IND. STATES'},
        {name: 'Tanzania', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Thailand', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Togo', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Tonga', region: 'OCEANIA'},
        {name: 'Trinidad & Tobago', region: 'LATIN AMER. & CARIB'},
        {name: 'Tunisia', region: 'NORTHERN AFRICA'},
        {name: 'Turkey', region: 'NEAR EAST'},
        {name: 'Turkmenistan', region: 'C.W. OF IND. STATES'},
        {name: 'Turks & Caicos Is', region: 'LATIN AMER. & CARIB'},
        {name: 'Tuvalu', region: 'OCEANIA'},
        {name: 'Uganda', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Ukraine', region: 'C.W. OF IND. STATES'},
        {name: 'United Arab Emirates', region: 'NEAR EAST'},
        {name: 'United Kingdom', region: 'WESTERN EUROPE'},
        {name: 'United States', region: 'NORTHERN AMERICA'},
        {name: 'Uruguay', region: 'LATIN AMER. & CARIB'},
        {name: 'Uzbekistan', region: 'C.W. OF IND. STATES'},
        {name: 'Vanuatu', region: 'OCEANIA'},
        {name: 'Venezuela', region: 'LATIN AMER. & CARIB'},
        {name: 'Vietnam', region: 'ASIA (EX. NEAR EAST)'},
        {name: 'Virgin Islands', region: 'LATIN AMER. & CARIB'},
        {name: 'Wallis and Futuna', region: 'OCEANIA'},
        {name: 'West Bank', region: 'NEAR EAST'},
        {name: 'Western Sahara', region: 'NORTHERN AFRICA'},
        {name: 'Yemen', region: 'NEAR EAST'},
        {name: 'Zambia', region: 'SUB-SAHARAN AFRICA'},
        {name: 'Zimbabwe', region: 'SUB-SAHARAN AFRICA'}
    ]
  end

  def getImages(index)
    image =  %w[
      https://i.imgur.com/u2YTmRX.jpg
      https://i.imgur.com/ED8tEIy.jpg
      https://i.imgur.com/qGM2e5a.jpg
      https://i.imgur.com/uU5DnUb.jpg
      https://i.imgur.com/ZGIU2R7.jpg
      https://i.imgur.com/mwTnxGb.jpg
      https://i.imgur.com/zjTWvOy.jpg
      https://i.imgur.com/WWTltUs.jpg
      https://i.imgur.com/kZ7fIfl.jpg
      https://i.imgur.com/6kitc4d.jpg
      https://i.imgur.com/oCQVBu6.jpg
      https://i.imgur.com/hcUwHnf.jpg
      https://i.imgur.com/k60KDzc.jpg
      https://i.imgur.com/wnyQ6sL.jpg
      https://i.imgur.com/C3XKEFy.jpg
      https://i.imgur.com/zvVWCFg.jpg
      https://i.imgur.com/F78iH0A.jpg
      https://i.imgur.com/EghMMj1.jpg
      https://i.imgur.com/bIvCUSD.jpg
      https://i.imgur.com/ZqEsK2H.jpg
      https://i.imgur.com/tN9hC3K.jpg
      https://i.imgur.com/0MSfsKG.jpg
      https://i.imgur.com/MWVzfoG.jpg
      https://i.imgur.com/P0qF5x1.jpg
      https://i.imgur.com/yyWunOf.jpg
    ]
    return image[index]
  end
end
