﻿namespace ComputersSystem
{
    internal class LaptopBattery : IBattery
    {
        public LaptopBattery()
        {
            this.Percentage = 100 / 2;
        }

        public int Percentage { get; set; }

        public void Charge(int percents)
        {
            this.Percentage += percents;
            if (this.Percentage > 100)
            {
                this.Percentage = 100;
            }

            if (this.Percentage < 0)
            {
                this.Percentage = 0;
            }
        }
    }
}