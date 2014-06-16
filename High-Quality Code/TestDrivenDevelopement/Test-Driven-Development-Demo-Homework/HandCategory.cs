﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Poker
{
    public enum HandCategory
    {
        HighCard = 1,
        OnePair = 2,
        TwoPairs = 3,
        ThreeOfAKind = 4,
        Straight = 5,
        Flush = 6,
        FullHouse = 7,
        FourOfAKind = 8,
        StraightFlush = 9
    }
}