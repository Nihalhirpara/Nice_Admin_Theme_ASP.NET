using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace niceadmintheme.Areas.MST_Student.Models
{
    public class MST_StudentModel
    {
        public int? StudentID { get; set; }
        public int? BranchID { get; set; }
        public int? CityID { get; set; }
        [Required]
        [DisplayName("Student Name")]
        public string StudentName { get; set;}
        [Required]
        [DisplayName("MobileNoStudent ")]
        public string MobileNoStudent { get; set;}
        [Required]
        [DisplayName("MobileNoFather ")]
        public string MobileNoFather { get; set;}
        [Required]
        [DisplayName("Email ")]
        public string Email { get; set; }
        [Required]
        [DisplayName("Address ")]
        public string Address { get; set; }
        [Required]
        [DisplayName("BirthDate ")]
        public DateTime BirthDate { get; set; }

    }

    public class MST_StudentFilterModel
    {
        public int? StudentID { get; set; }
        public string? StudentName { get; set; }
        public int? CityID { get; set; }
        public int? BranchID { get; set; }
    }
}
