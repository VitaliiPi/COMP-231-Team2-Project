//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Restopay
{
    using System;
    using System.Collections.Generic;
    
    public partial class cart
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public Nullable<double> Amount { get; set; }
        public string Category { get; set; }
        public int TableNumber { get; set; }
        public Nullable<long> OrderNumber { get; set; }
        public Nullable<int> Quantity { get; set; }
    }
}
