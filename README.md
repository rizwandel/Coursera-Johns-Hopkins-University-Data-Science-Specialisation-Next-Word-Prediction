Coursera Johns Hopkins University Data Science Specialisation Capstone Project: "Next Word Prediction" 

The project is to build the model to predict the next word of a word or a word sequence.

1. The model was based on the English versions of blogs, news, and twitters in the Coursera-Swiftkey dataset. 
2. The raw data preprocessed to remove profanities, numbers, punctuations,etc.
3. From the clean data, three sets of unigrams, bigrams, and trigrams were generated and explored.
4. The counts of these n-grams indicated the prevalence of English stopwords when they were included
5. The model is created with the linear interpolation of unigram, bigram, and trigram probabilities to estimate the probability of the next word’s trigram.
6. The optimal weights of these probabilities resulted from a search using the simplex method to maximize the accuracy of the first next word predicted.
7. The model with stopwords predicted the first next word with about 9% accuracy.


> find the compiled code in Rpubs:http://rpubs.com/rizwanm789/NextWordPrediction



