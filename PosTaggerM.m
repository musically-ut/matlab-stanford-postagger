%  Example interface to Stanford POS Tagger from Matlab
%  Copyright (C) 2009-2014 Utkarsh Upadhyay
%  
%  This program is free software: you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation, either version 3 of the License, or
%  (at your option) any later version.
%  
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
%  
%  You should have received a copy of the GNU General Public License
%  along with this program.  If not, see <http://www.gnu.org/licenses/>.
%

% A small function to show how to use the stanford-tagger in Matlab.
% It requires the following files:
% 	1. english-left3words-distsim.tagger in the current path while running it. It can be found in $STANFORD_POS_TAGGER_PATH/models/
%	2. stanford-postagger.jar should be added to the classpath.
%	   Matlab command to do it: javaaddpath('$STANFORD_POS_TAGGER_PATH/stanford-postagger.jar')
% To run it simple use: PosTaggerM(sample_sentence)
%
% Sample input: This is a very small sample sentence for test purpose - Chomsky.
% Sample output: [This/DT, is/VBZ, a/DT, very/RB, small/JJ, sample/NN, sentence/NN, for/IN, test/NN, purpose/NN, -/:, Chomsky/NNP, ./.]
% 
% The result is an ArrayList of TaggedWords.

function result = PosTaggerM(str)
	
	% The imports are probably a one time requirement, and add no overhead.
	import java.io.*;
	import edu.stanford.nlp.tagger.maxent.MaxentTagger;

	%
	% This initializtion is expensive.
        % It is better to create the tagger once and then reuse it.
	%
	tagger = MaxentTagger('./english-left3words-distsim.tagger');
	result = java.util.ArrayList();
	sentences = MaxentTagger.tokenizeText(StringReader(str));
	for ii = 1:size(sentences)
		tSentence = tagger.tagSentence(sentences.get(ii-1));
		result.addAll(tSentence);
	end
end
