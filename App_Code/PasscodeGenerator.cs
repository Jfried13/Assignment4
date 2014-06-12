using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for PasscodeGenerator
/// </summary>
public class PasscodeGenerator
{
    Random rand;
    public PasscodeGenerator()
    {
        rand = new Random();
    }


    public int GetPasscode()
    {
        return rand.Next(1000000, 9999999);
    }
}

