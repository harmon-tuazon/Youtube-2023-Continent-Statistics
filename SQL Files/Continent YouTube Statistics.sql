SELECT
    CASE
        WHEN country IN ('Algeria','Angola','Benin','Botswana','Burkina Faso','Burundi','Cabo Verde','Cameroon','Central African Republic',
            'Chad','Comoros','Congo, Dem. Rep', 'Congo, Rep.','Cote d''Ivoire','Djibouti','Egypt','Equatorial Guinea','Eritrea',
            'Eswatini (formerly Swaziland)','Ethiopia','Gabon','Gambia','Ghana','Guinea','Guinea-Bissau','Kenya', 'Lesotho',
            'Liberia', 'Libya' ,'Madagascar','Malawi','Mali','Mauritania','Mauritius','Morocco','Mozambique','Namibia',
            'Niger','Nigeria','Rwanda','Sao Tome and Principe','Senegal','Seychelles','Sierra Leone','Somalia','South Africa',
            'South Sudan','Sudan','Tanzania','Togo','Tunisia','Uganda','Zambia','Zimbabwe') THEN 'Africa'

        WHEN Country IN ('Albania','Andorra', 'Armenia','Austria','Azerbaijan','Belarus','Belgium','Bosnia and Herzegovina',
            'Bulgaria','Croatia','Cyprus','Czechia','Denmark','Estonia','Finland','France','Georgia','Germany',
            'Greece','Hungary','Iceland','Ireland','Italy','Kazakhstan','Kosovo','Latvia','Liechtenstein','Lithuania',
            'Luxembourg','Malta','Moldova','Monaco','Montenegro','Netherlands','Macedonia, FYR','Norway','Poland','Portugal',
            'Romania','Russia','San Marino','Serbia','Slovakia','Slovenia','Spain','Sweden','Switzerland','Turkey',
            'Ukraine','United Kingdom','Vatican City') THEN 'Europe'

        WHEN Country IN ('Afghanistan','Armenia','Azerbaijan','Bahrain','Bangladesh', 'Bhutan','Brunei','Cambodia','China','Cyprus',
            'Georgia','India','Indonesia','Iran','Iraq','Israel','Japan','Jordan','Kazakhstan','Kuwait','Kyrgyzstan','Laos',
            'Lebanon','Malaysia','Maldives','Mongolia','Myanmar','Nepal','North Korea','Oman','Pakistan','Palestine','Philippines',
            'Qatar','Russia','Saudi Arabia','Singapore','South Korea','Sri Lanka','Syria','Taiwan','Tajikistan','Thailand',
            'Timor-Leste','Turkey','Turkmenistan','United Arab Emirates','Uzbekistan','Vietnam','Yemen') THEN 'Asia'

        WHEN Country IN ('Antigua and Barbuda','Bahamas','Barbados','Belize','Canada','Costa Rica','Cuba','Dominica',
            'Dominican Republic','El Salvador','Grenada','Guatemala','Haiti','Honduras','Jamaica','Mexico',
            'Nicaragua','Panama','Saint Vincent and the Grenadines','United States') THEN 'North_America'

        WHEN Country IN ('Argentina','Bolivia','Brazil','Chile','Colombia','Ecuador','Guyana','Paraguay','Peru','Suriname',
            'Uruguay','Venezuela') THEN 'South_America'

        WHEN Country IN ('Australia','Fiji','Kiribati','Marshall Islands','Micronesia','Nauru','New Zealand','Palau',
            'Papua New Guinea','Samoa','Solomon Islands','Tonga','Tuvalu','Vanuatu') THEN 'Australia_and_Oceania '
        ELSE 'Unknown'
    END AS continents,

    SUM(subscribers) AS total_subs,
    SUM(uploads) AS total_uploads,
    SUM(video_views) AS total_views,
    ROUND(((SUM(highest_yearly_earnings) + SUM(lowest_yearly_earnings))/2),0) AS total_earnings,
    COUNT(youtuber) AS total_num_youtubers

FROM  "Global_YouTube_Statistics_2023"
GROUP BY continents
ORDER BY total_earnings DESC, total_subs DESC, total_views DESC;
