import nltk
from pprint import pprint
from HanTa import HanoverTagger as ht

nltk.download('punkt')

tagger = ht.HanoverTagger('morphmodel_ger.pgz')

ouw_text = open("C:\\Users\\julian.lemmerich\\OneDrive\\User Data\\Uni\\Semester 8\\1008-ps Phraseologie\\Hausarbeit\\Data\Corpora\\OUW_combined.txt", encoding='utf16').read()
zeit_text = open("C:\\Users\\julian.lemmerich\\OneDrive\\User Data\\Uni\\Semester 8\\1008-ps Phraseologie\\Hausarbeit\\Data\Corpora\\Zeit_combined.txt", encoding='utf16').read()

ouw_list = nltk.tokenize.sent_tokenize(ouw_text)
zeit_list = nltk.tokenize.sent_tokenize(zeit_text)

ouw_lemmata = tagger.tag_sent(ouw_list,taglevel=1)
zeit_lemmata = tagger.tag_sent(zeit_list,taglevel=1)

pprint(ouw_lemmata)

#NO