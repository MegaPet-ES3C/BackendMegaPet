using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BackendMegaPet.Shelter.Resources;

public class SaveShelterResource
{
    [Required]
    public int Id { get; set; }
    [Required]
    [MaxLength(50)]
    public string address { get; set; }
    [Required]
    [MaxLength(50)]
    public string image { get; set; }
    [Required]
    public int phone { get; set; }
    [Required]
    [MaxLength(50)]
    public string district { get; set; }
    [Required]
    [MaxLength(50)]
    public string location { get; set; }
    [Required]
    [MaxLength(500)]
    public string urlImage { get; set; }
    [Required]
    [MaxLength(500)]
    public string urlWebPage { get; set; }
    [Required]
    [MaxLength(500)]
    public string description { get; set; }


}