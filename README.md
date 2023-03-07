# Predicting next word using Probability Distribution of Ngrams in Training Corpus.
- Have  implemented Markov Chain like model for 2 and 3 word ngrams ( 5 words did not fit in free tier shiny)

## Link to just the Shiny Dashboard implementation
[Shiny Dashboard Implementation](https://github.com/vsnupoudel/shinyDashboard)

## TODO
- Calculate probabilities for single word also -1 gram - ( maybe top 1k words only)
- Remove low frequency ngrams
- Implement statistical testing - (chi squared)

## GPT2 implementation in another branch
- Flask endpoint for faster prediction done separately. Code changed to  load model object only the first time.
