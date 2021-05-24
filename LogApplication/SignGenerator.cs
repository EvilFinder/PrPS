using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Security.Cryptography;

namespace LogApplication
{
    public static class SignGenerator
    {
        public static string GetSign(string s)
        {
            var provider = new MD5CryptoServiceProvider();

            var hash = provider.ComputeHash(Encoding.Default.GetBytes(s));

            return BitConverter.ToString(hash).ToLower().Replace("-", "");
        }
    }
}