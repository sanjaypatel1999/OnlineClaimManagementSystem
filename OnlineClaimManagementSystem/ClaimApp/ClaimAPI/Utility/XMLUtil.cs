using System.Xml.Serialization;

namespace ClaimAPI.Utility
{
    public class XMLUtil
    {
        public static string GenerateXML(object input)
        {
            XmlSerializer ser = new XmlSerializer(input.GetType());
            string result = string.Empty;

            using (MemoryStream memStm = new MemoryStream())
            {
                ser.Serialize(memStm, input);
                memStm.Position = 0;
                result = new StreamReader(memStm).ReadToEnd();
            }
			result = result.Replace("utf-8", "utf-16");
			return result;

        }
    }
}
