using System;
using System.Collections.Generic;

namespace BiblioUTAD.Models;

public partial class Subscriber
{
    public int Id { get; set; }

    public string Email { get; set; } = null!;
}
