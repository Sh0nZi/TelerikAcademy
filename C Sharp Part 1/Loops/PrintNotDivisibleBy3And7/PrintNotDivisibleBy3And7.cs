﻿using System;

class PrintNotDivisibleBy3And7
{
    static void Main()
    {
        string number = Console.ReadLine();
        uint n = uint.Parse(number);
        for (int i = 1; i <= n; i++)
        {
            if (i % 3 != 0 && i % 7 != 0)
            {
                Console.Write("{0} ", i);
            }

        }
        Console.WriteLine();
    }
}

