using System.ComponentModel.DataAnnotations;

public class ExampleModel
{
    [Required]
    [StringLength(10, ErrorMessage = "Name is too long.")]
    /* C# is static typed */
    public string Name { get; set;}
    
    [Required]
    [Range(18, 40, ErrorMessage = "You have the wrong age")]
    public int Age{get; set;}

    public ExampleModel(){
        Age = 30;
    }
}