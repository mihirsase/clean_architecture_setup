import 'dart:convert';

import 'package:shop_me/features/articles/data/models/news_article_model.dart';
import 'package:shop_me/features/articles/domain/entities/news_article_entity.dart';

const String fakeArticlesResponse = '''
{
    "status": "OK",
    "copyright": "Copyright (c) 2025 The New York Times Company.  All Rights Reserved.",
    "num_results": 20,
    "results": [
        {
            "uri": "nyt://article/0f9f7dff-51e4-5fd8-b07b-660ccea15b87",
            "url": "https://www.nytimes.com/2025/07/17/business/stephen-colbert-late-show-ending.html",
            "id": 100000010292279,
            "asset_id": 100000010292279,
            "source": "New York Times",
            "published_date": "2025-07-17",
            "updated": "2025-07-18 21:32:00",
            "section": "Business",
            "subsection": "",
            "nytdsection": "business",
            "adx_keywords": "Television;Comedy and Humor;United States Politics and Government;Colbert, Stephen;Trump, Donald J;CBS Corporation;Paramount Pictures",
            "column": null,
            "byline": "By John Koblin",
            "type": "Article",
            "title": "CBS Canceling ‘Late Show With Stephen Colbert’ After Next Season",
            "abstract": "The show will end in May, the network said, calling it “a purely financial decision.”",
            "des_facet": [
                "Television",
                "Comedy and Humor",
                "United States Politics and Government"
            ],
            "org_facet": [
                "CBS Corporation",
                "Paramount Pictures"
            ],
            "per_facet": [
                "Colbert, Stephen",
                "Trump, Donald J"
            ],
            "geo_facet": [],
            "media": [
                {
                    "type": "image",
                    "subtype": "photo",
                    "caption": "CBS said its decision to cancel “The Late Show With Stephen Colbert” was not related to “the show’s performance, content or other matters happening at Paramount,” the network’s owner.",
                    "copyright": "Scott Kowalchyk/CBS, via Getty Images",
                    "approved_for_syndication": 1,
                    "media-metadata": [
                        {
                            "url": "https://static01.nyt.com/images/2025/07/17/multimedia/17biz-colbert-lbzg/17biz-colbert-lbzg-thumbStandard.jpg",
                            "format": "Standard Thumbnail",
                            "height": 75,
                            "width": 75
                        },
                        {
                            "url": "https://static01.nyt.com/images/2025/07/17/multimedia/17biz-colbert-lbzg/17biz-colbert-lbzg-mediumThreeByTwo210.jpg",
                            "format": "mediumThreeByTwo210",
                            "height": 140,
                            "width": 210
                        },
                        {
                            "url": "https://static01.nyt.com/images/2025/07/17/multimedia/17biz-colbert-lbzg/17biz-colbert-lbzg-mediumThreeByTwo440.jpg",
                            "format": "mediumThreeByTwo440",
                            "height": 293,
                            "width": 440
                        }
                    ]
                }
            ],
            "eta_id": 0
        },
        {
            "uri": "nyt://article/307ffc2b-4bdf-5832-8582-fca9df185c96",
            "url": "https://www.nytimes.com/2025/07/19/us/politics/inside-trump-epstein-friendship.html",
            "id": 100000010292767,
            "asset_id": 100000010292767,
            "source": "New York Times",
            "published_date": "2025-07-19",
            "updated": "2025-07-21 12:18:33",
            "section": "U.S.",
            "subsection": "Politics",
            "nytdsection": "u.s.",
            "adx_keywords": "United States Politics and Government;Human Trafficking;Child Abuse and Neglect;Sex Crimes;Prostitution;Epstein, Jeffrey E (1953- );Trump, Donald J;Acosta, R Alexander;Bondi, Pamela J;Maxwell, Ghislaine;Mar-a-Lago (Palm Beach, Fla);Justice Department;Palm Beach (Fla);New York City",
            "column": null,
            "byline": "By Alan Feuer and Matthew Goldstein",
            "type": "Article",
            "title": "Inside the Long Friendship Between Trump and Epstein",
            "abstract": "For nearly 15 years, the two men socialized together in Manhattan and Palm Beach, Fla., before a falling out that preceded Mr. Epstein’s first arrest.",
            "des_facet": [
                "United States Politics and Government",
                "Human Trafficking",
                "Child Abuse and Neglect",
                "Sex Crimes",
                "Prostitution"
            ],
            "org_facet": [
                "Mar-a-Lago (Palm Beach, Fla)",
                "Justice Department"
            ],
            "per_facet": [
                "Epstein, Jeffrey E (1953- )",
                "Trump, Donald J",
                "Acosta, R Alexander",
                "Bondi, Pamela J",
                "Maxwell, Ghislaine"
            ],
            "geo_facet": [
                "Palm Beach (Fla)",
                "New York City"
            ],
            "media": [
                {
                    "type": "image",
                    "subtype": "photo",
                    "caption": "Mar-a-Lago in March 1996.",
                    "copyright": "Art Seitz/Gamma-Rapho, via Getty Images",
                    "approved_for_syndication": 1,
                    "media-metadata": [
                        {
                            "url": "https://static01.nyt.com/images/2025/07/18/multimedia/00dc-trump-epstein-fkbg/00dc-trump-epstein-fkbg-thumbStandard.jpg",
                            "format": "Standard Thumbnail",
                            "height": 75,
                            "width": 75
                        },
                        {
                            "url": "https://static01.nyt.com/images/2025/07/18/multimedia/00dc-trump-epstein-fkbg/00dc-trump-epstein-fkbg-mediumThreeByTwo210-v3.jpg",
                            "format": "mediumThreeByTwo210",
                            "height": 140,
                            "width": 210
                        },
                        {
                            "url": "https://static01.nyt.com/images/2025/07/18/multimedia/00dc-trump-epstein-fkbg/00dc-trump-epstein-fkbg-mediumThreeByTwo440-v3.jpg",
                            "format": "mediumThreeByTwo440",
                            "height": 293,
                            "width": 440
                        }
                    ]
                }
            ],
            "eta_id": 0
        },
        {
            "uri": "nyt://article/d6b1c77a-f893-585e-b3fd-c77bc91cc3ec",
            "url": "https://www.nytimes.com/2025/07/20/us/politics/epstein-employee-trump-investigation.html",
            "id": 100000010293436,
            "asset_id": 100000010293436,
            "source": "New York Times",
            "published_date": "2025-07-20",
            "updated": "2025-07-21 12:40:00",
            "section": "U.S.",
            "subsection": "Politics",
            "nytdsection": "u.s.",
            "adx_keywords": "United States Politics and Government;Child Abuse and Neglect;Sex Crimes;Epstein, Jeffrey E (1953- );Trump, Donald J;Farmer, Maria;Farmer, Annie;Maxwell, Ghislaine;Bondi, Pamela J;Federal Bureau of Investigation",
            "column": null,
            "byline": "By Mike Baker and Michael S. Schmidt",
            "type": "Article",
            "title": "An Accuser’s Story Suggests How Trump Might Appear in the Epstein Files",
            "abstract": "A former Jeffrey Epstein employee said that she told the F.B.I. in 1996 and 2006 about what she considered a troubling encounter with Donald J. Trump.",
            "des_facet": [
                "United States Politics and Government",
                "Child Abuse and Neglect",
                "Sex Crimes"
            ],
            "org_facet": [
                "Federal Bureau of Investigation"
            ],
            "per_facet": [
                "Epstein, Jeffrey E (1953- )",
                "Trump, Donald J",
                "Farmer, Maria",
                "Farmer, Annie",
                "Maxwell, Ghislaine",
                "Bondi, Pamela J"
            ],
            "geo_facet": [],
            "media": [
                {
                    "type": "image",
                    "subtype": "photo",
                    "caption": "Donald J. Trump and Jeffrey Epstein at Mar-a-Lago, Mr. Trump’s club in Palm Beach, Fla., in 1997.",
                    "copyright": "Davidoff Studios Photography/Archive Photos, via Getty Images",
                    "approved_for_syndication": 1,
                    "media-metadata": [
                        {
                            "url": "https://static01.nyt.com/images/2025/07/18/multimedia/18dc-epstein-victims-qvfb/18dc-epstein-victims-qvfb-thumbStandard.jpg",
                            "format": "Standard Thumbnail",
                            "height": 75,
                            "width": 75
                        },
                        {
                            "url": "https://static01.nyt.com/images/2025/07/18/multimedia/18dc-epstein-victims-qvfb/18dc-epstein-victims-qvfb-mediumThreeByTwo210.jpg",
                            "format": "mediumThreeByTwo210",
                            "height": 140,
                            "width": 210
                        },
                        {
                            "url": "https://static01.nyt.com/images/2025/07/18/multimedia/18dc-epstein-victims-qvfb/18dc-epstein-victims-qvfb-mediumThreeByTwo440.jpg",
                            "format": "mediumThreeByTwo440",
                            "height": 293,
                            "width": 440
                        }
                    ]
                }
            ],
            "eta_id": 0
        },
        {
            "uri": "nyt://article/bd9df5ce-9377-50be-92e8-f946c83c96cd",
            "url": "https://www.nytimes.com/2025/07/22/arts/music/ozzy-osbourne-dead.html",
            "id": 100000006713070,
            "asset_id": 100000006713070,
            "source": "New York Times",
            "published_date": "2025-07-22",
            "updated": "2025-07-23 11:48:59",
            "section": "Arts",
            "subsection": "Music",
            "nytdsection": "arts",
            "adx_keywords": "Deaths (Obituaries);Pop and Rock Music;Reality Television;Osbourne, Ozzy;Black Sabbath (Music Group);MTV Networks",
            "column": null,
            "byline": "By Gavin Edwards",
            "type": "Article",
            "title": "Ozzy Osbourne, ‘Prince of Darkness’ Turned Reality TV Star, Dies at 76",
            "abstract": "As the lead singer of Black Sabbath, he helped invent heavy metal. On “The Osbournes,” he presented a comedic counterpoint to his rock ’n’ roll infamy.",
            "des_facet": [
                "Deaths (Obituaries)",
                "Pop and Rock Music",
                "Reality Television"
            ],
            "org_facet": [
                "Black Sabbath (Music Group)",
                "MTV Networks"
            ],
            "per_facet": [
                "Osbourne, Ozzy"
            ],
            "geo_facet": [],
            "media": [
                {
                    "type": "image",
                    "subtype": "photo",
                    "caption": "Ozzy Osbourne in 2016 performing at Madison Square Garden in Manhattan.",
                    "copyright": "Chad Batka for The New York Times",
                    "approved_for_syndication": 1,
                    "media-metadata": [
                        {
                            "url": "https://static01.nyt.com/images/2023/07/10/multimedia/10osbourne1-mcgj/10osbourne1-mcgj-thumbStandard.jpg",
                            "format": "Standard Thumbnail",
                            "height": 75,
                            "width": 75
                        },
                        {
                            "url": "https://static01.nyt.com/images/2023/07/10/multimedia/10osbourne1-mcgj/10osbourne1-mcgj-mediumThreeByTwo210.jpg",
                            "format": "mediumThreeByTwo210",
                            "height": 140,
                            "width": 210
                        },
                        {
                            "url": "https://static01.nyt.com/images/2023/07/10/multimedia/10osbourne1-mcgj/10osbourne1-mcgj-mediumThreeByTwo440.jpg",
                            "format": "mediumThreeByTwo440",
                            "height": 293,
                            "width": 440
                        }
                    ]
                }
            ],
            "eta_id": 0
        }
    ]
}

''';

List<NewsArticleModel> getFakeArticles() {
  final decoded = jsonDecode(fakeArticlesResponse);
  final results = decoded['results'] as List<dynamic>;

  return results
      .map((articleJson) => NewsArticleModel.fromJson(articleJson))
      .toList();
}

List<NewsArticleEntity> getFakeArticleEntities() {
  final models = getFakeArticles();
  return NewsArticleEntity.fromModelList(models);
}
