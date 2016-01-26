//
//  Algorithms.swift
//  Xling
//
//  Created by Richard Wei on 1/9/16.
//  Copyright © 2016 xinranmsn. All rights reserved.
//

import Cocoa

public class Algorithms {
    /**
     * Viterbi Algorithm - Finding the most likely sequence of states
     * @param observationSequence obs - observation sequence
     * @param hmm - hidden Markov model
     * @return (probability, sequence)
     */
    public static func viterbi<StateType: Hashable, ObservationType: Hashable>(observationSequence obs: [ObservationType], hmm: HiddenMarkovModel<StateType, ObservationType>) -> (Float, [StateType]) {
        // FIXME: refactored HMM
        /*
        typealias CellType = [StateType: Float]
        typealias PathType = [StateType: [StateType]]
        
        var trellis = [[StateType: Float]()]
        var path = PathType()
        
        for y in states {
            trellis[0][y] = -logf(initial[y]!) - logf(emission[y]![observedSequence[0]]!)
            path[y] = [y]
        }
        for i in 1..<observedSequence.count {
            trellis.append(CellType())
            var newPath = PathType()
            for y in states {
                var bestArg: String = "" // state
                var bestProb: Float = FLT_MAX // log prob
                for y0 in states {
                    let prob = trellis[i-1][y0]! - logf(transition[y0]![y]!) - logf(emission[y]![observedSequence[i]]!)
                    if prob < bestProb {
                        bestArg = y0
                        bestProb = prob
                    }
                }
                trellis[i][y] = bestProb
                newPath[y] = path[bestArg]! + [y]
            }
            path = newPath
        }
        
        let n = observedSequence.count - 1
        var bestArg: StateType = ""
        var bestProb: Float = FLT_MAX
        for y in states {
            if trellis[n][y] < bestProb {
                bestProb = trellis[n][y]!
                bestArg = y
            }
        }
        
        return path[bestArg]!
        */
        return (0.0, [])
    }
}

