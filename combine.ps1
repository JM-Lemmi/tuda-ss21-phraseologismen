# from https://stackoverflow.com/a/43292579/9397749

Get-ChildItem "C:\Users\julian.lemmerich\OneDrive\User Data\Uni\Semester 8\1008-ps Phraseologie\Hausarbeit\Data\Corpora\OUW_txtraw\*" -include *.txt | Get-Content | out-file "C:\Users\julian.lemmerich\OneDrive\User Data\Uni\Semester 8\1008-ps Phraseologie\Hausarbeit\Data\Corpora\OUW_combined.txt"

Get-ChildItem "C:\Users\julian.lemmerich\OneDrive\User Data\Uni\Semester 8\1008-ps Phraseologie\Hausarbeit\Data\Corpora\Zeit_txtraw\*" -include *.txt | Get-Content | out-file "C:\Users\julian.lemmerich\OneDrive\User Data\Uni\Semester 8\1008-ps Phraseologie\Hausarbeit\Data\Corpora\Zeit_combined.txt"

#output has to be different than input folder, otherwise it will fall into a loop and keep addit itself to the concatenated file.
# Encoding Flags are needed for both Get-Content as well as Out-File!