---
output: 
  html_document: 
    theme: spacelab
---


**ABOUT THE APPLICATION**

This application predicts the "next word" when entered a 'word' or a 'sequence of words' in the text box provided.

***HOW IT WORKS?***

1. This application takes single word or last two words of the text sentence(s) that the user has provided in the "text box" from English language.

2. Abbrevations, numbers, symbols and punctuations are removed by the model to predict the next word.

3. When no match is found, the application returns "UNK" which means unknown word.

***PREDICTION MODEL***

1. It uses the basic n-gram model which is based on the Katz Back-off algorithm with Good Turing smoothing

2. Basic n-gram model predicts next word based on the previous 1, 2, 3,4 or 5 words with Markov assumption

3. Vocabulary size of 11K words is created from the sample drawn from Coursera-Swiftkey zip files

4. I've used Trigrams as the first N-grams in this model. This takes into account the last word or last two words of the text. If no match is found, the bigrams is used. This takes the last one word of the user input into account. If there is still no match found, unigram is used next word.

5. As the size of vocabulary is very limited and the computation of basic n-gram model is also very expensive, the prediction model may return "UNK", which is unseen word in the vocabulary. That means the efficiency of the model to predict new words has to be improved with advanced ML techniques like deep learning algorithms.
