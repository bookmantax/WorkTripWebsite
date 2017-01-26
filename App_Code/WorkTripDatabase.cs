﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class PreparerNote
{
    public int Id { get; set; }
    public int PreparerId { get; set; }
    public int UserId { get; set; }
    public string Notes { get; set; }
    public string Date { get; set; }
    public int Year { get; set; }
    public int NoteCreatorId { get; set; }

    public virtual TaxPreparer TaxPreparer { get; set; }
    public virtual TaxPreparer TaxPreparer1 { get; set; }
    public virtual User User { get; set; }
}

public partial class Role
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Role()
    {
        this.TaxPreparers = new HashSet<TaxPreparer>();
    }

    public int Id { get; set; }
    public string Name { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<TaxPreparer> TaxPreparers { get; set; }
}

public partial class Status
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Status()
    {
        this.UserToPreparers = new HashSet<UserToPreparer>();
    }

    public int Id { get; set; }
    public string Name { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UserToPreparer> UserToPreparers { get; set; }
}

public partial class TaxPreparer
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public TaxPreparer()
    {
        this.PreparerNotes = new HashSet<PreparerNote>();
        this.PreparerNotes1 = new HashSet<PreparerNote>();
        this.UserToPreparers = new HashSet<UserToPreparer>();
    }

    public int Id { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string PhoneNumber { get; set; }
    public string EmailAddress { get; set; }
    public string Password { get; set; }
    public int RoleId { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<PreparerNote> PreparerNotes { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<PreparerNote> PreparerNotes1 { get; set; }
    public virtual Role Role { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UserToPreparer> UserToPreparers { get; set; }
}

public partial class User
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public User()
    {
        this.PreparerNotes = new HashSet<PreparerNote>();
        this.User1099 = new HashSet<User1099>();
        this.UserMiscDocs = new HashSet<UserMiscDoc>();
        this.UserPerDiems = new HashSet<UserPerDiem>();
        this.UserToPreparers = new HashSet<UserToPreparer>();
        this.UserW2 = new HashSet<UserW2>();
    }

    public int Id { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Phone { get; set; }
    public string VerificationCode { get; set; }
    public bool Verified { get; set; }
    public string EmailAddress { get; set; }
    public string Password { get; set; }
    public string FacebookId { get; set; }
    public string MiddleName { get; set; }
    public string DateOfBirth { get; set; }
    public string Address { get; set; }
    public string Airport { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<PreparerNote> PreparerNotes { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<User1099> User1099 { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UserMiscDoc> UserMiscDocs { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UserPerDiem> UserPerDiems { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UserToPreparer> UserToPreparers { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UserW2> UserW2 { get; set; }
}

public partial class User1099
{
    public int Id { get; set; }
    public string Path { get; set; }
    public string Date { get; set; }
    public int UserId { get; set; }

    public virtual User User { get; set; }
}

public partial class UserMiscDoc
{
    public int Id { get; set; }
    public string Path { get; set; }
    public string Date { get; set; }
    public int UserId { get; set; }

    public virtual User User { get; set; }
}

public partial class UserPerDiem
{
    public int Id { get; set; }
    public int UserId { get; set; }
    public string Month { get; set; }
    public int Year { get; set; }
    public int Allowance { get; set; }

    public virtual User User { get; set; }
}

public partial class UserToPreparer
{
    public int Id { get; set; }
    public int UserId { get; set; }
    public int TaxPreparerId { get; set; }
    public int StatusId { get; set; }
    public int Year { get; set; }

    public virtual Status Status { get; set; }
    public virtual TaxPreparer TaxPreparer { get; set; }
    public virtual User User { get; set; }
}

public partial class UserW2
{
    public int Id { get; set; }
    public string Path { get; set; }
    public string Date { get; set; }
    public int UserId { get; set; }

    public virtual User User { get; set; }
}