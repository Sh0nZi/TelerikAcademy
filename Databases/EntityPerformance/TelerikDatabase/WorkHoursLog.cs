//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TelerikDatabase
{
    using System;
    using System.Collections.Generic;
    
    public partial class WorkHoursLog
    {
        public int LogID { get; set; }
        public Nullable<int> WorkHourEntryIDNew { get; set; }
        public Nullable<System.DateTime> EntryDateNew { get; set; }
        public string TaskNew { get; set; }
        public Nullable<int> EntryHoursNew { get; set; }
        public string EntryCommentsNew { get; set; }
        public Nullable<int> EmployeeIDNew { get; set; }
        public string CommandType { get; set; }
    }
}