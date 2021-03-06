﻿
/*Problem 2. Binary to decimal

    Write a program to convert binary numbers to their decimal representation.
*/
using System;

namespace P02
{

    public class BinaryDecimal
    {
        public static void Main() // Example for 10101 to decimal formula is (2^4*1)+(2^3*0)+(2^2*1)+(2^1*0)+(2^0*1) = 16 + 0 + 4 + 0 + 1 = 21
        {
            //StreamReader reader = new StreamReader("..\\..\\input.txt");
            //Console.SetIn(reader);
            Console.Write("Enter binary number: ");
            string str = Console.ReadLine();
            long output = 0;
            long temp;
            for (int i = 0; i < str.Length; i++)
            {
                temp = long.Parse(str[i].ToString());
                output += (long)((Math.Pow(2, (str.Length - i - 1))) * temp);
            }
            Console.WriteLine("Decimal: " + output);
        }
    }
}