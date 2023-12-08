namespace ClaimAPI.Models
{
    public class Role
    {
        public string Id { get; set; }
        public string RoleName { get; set; }
        public int Status { get; set; }
    }

    public class UserRights
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Descr { get; set; }
        public string Ischecked { get; set; }

    }
    public class ProgramsRights
    {
        public string id { get; set; }
        public int ischecked { get; set; }
    }
}
