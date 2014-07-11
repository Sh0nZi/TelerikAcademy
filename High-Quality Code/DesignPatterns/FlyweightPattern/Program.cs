﻿using System;

namespace FlyweightPattern
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            //create Aliens and store in factory
            AlienFactory factory = new AlienFactory();
            factory.SaveAlien(0, new LargeAlien());
            factory.SaveAlien(1, new LittleAlien());

            //now access the flyweight objects
            IAlien a = factory.GetAlien(0);
            IAlien b = factory.GetAlien(1);

            //show intrinsic states, all accessed in memory without calculations
            Console.WriteLine("Showing intrinsic states...");
            Console.WriteLine(string.Format("Alien of type 0 is {0}", a.Shape));
            Console.WriteLine(string.Format("Alien of type 1 is {0}", b.Shape));

            //show extrinsic states, need calculations
            Console.WriteLine("Showing extrinsic states...");
            Console.WriteLine(string.Format("Alien of type 0 is {0}", a.GetColor(0).ToString()));
            Console.WriteLine(string.Format("Alien of type 0 is {0}", a.GetColor(1).ToString()));
            Console.WriteLine(string.Format("Alien of type 1 is {0}", b.GetColor(0).ToString()));
            Console.WriteLine(string.Format("Alien of type 1 is {0}", b.GetColor(1).ToString()));
        }
    }
}