A small function to show how to use the [stanford-pos-tagger](http://nlp.stanford.edu/software/tagger.shtml) in Matlab.

## Requirements

It requires the following files:

  1. `english-left3words-distsim.tagger` in the current path while running it. It can be found in `$STANFORD_POS_TAGGER_PATH/models/`
  2. `stanford-postagger.jar` should be added to the classpath.
     Matlab command to do it: `javaaddpath('$STANFORD_POS_TAGGER_PATH/stanford-postagger.jar')`

## Usage

To run it simply drop it in the current working directory and run:

    PosTaggerM(sample_sentence)

Sample input: 

    This is a very small sample sentence for test purpose - Chomsky.

Sample output: 

    [This/DT, is/VBZ, a/DT, very/RB, small/JJ, sample/NN, sentence/NN, for/IN, test/NN, purpose/NN, -/:, Chomsky/NNP, ./.]

The result is an `ArrayList` of `TaggedWords`.

## Tested

Verified to work on:

 - `3.4.1` of the tagger
 - Matlab version `8.3.0.532 (R2014a)`
 - JRE 7 (version: `1.7`)

## Acknowledgements

This was initially hosted on [my homepage](http://utkarshu.in/PosTaggerM.m).
[Douglas](https://plus.google.com/u/2/116294795843827001984/posts) found the code
and 
