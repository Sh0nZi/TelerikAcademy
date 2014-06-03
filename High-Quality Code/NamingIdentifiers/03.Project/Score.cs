﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project
{
    public class Score
    {
        public string Name { get; set; }

        public int Points { get; set; }

        public Score() { }

        public Score(string name, int points)
        {
            this.Name = name;
            this.Points = points;
        }
    }
}