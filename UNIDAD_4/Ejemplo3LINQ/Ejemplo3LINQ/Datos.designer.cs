﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Ejemplo3LINQ
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="Muestra3")]
	public partial class DatosDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Definiciones de métodos de extensibilidad
    partial void OnCreated();
    partial void InsertEmpleado(Empleado instance);
    partial void UpdateEmpleado(Empleado instance);
    partial void DeleteEmpleado(Empleado instance);
    #endregion
		
		public DatosDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["Muestra3ConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DatosDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DatosDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DatosDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DatosDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Empleado> Empleado
		{
			get
			{
				return this.GetTable<Empleado>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Empleado")]
	[global::System.Data.Linq.Mapping.InheritanceMappingAttribute(Code="Permanente", Type=typeof(EmpleadoPermanente))]
	[global::System.Data.Linq.Mapping.InheritanceMappingAttribute(Code="Contrato", Type=typeof(EmpleadoXContrato), IsDefault=true)]
	public abstract partial class Empleado : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID;
		
		private string _Nombre;
		
		private string _Genero;
		
		private string _Discriminador;
		
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDChanging(int value);
    partial void OnIDChanged();
    partial void OnNombreChanging(string value);
    partial void OnNombreChanged();
    partial void OnGeneroChanging(string value);
    partial void OnGeneroChanged();
    partial void OnDiscriminadorChanging(string value);
    partial void OnDiscriminadorChanged();
    #endregion
		
		public Empleado()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int ID
		{
			get
			{
				return this._ID;
			}
			set
			{
				if ((this._ID != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._ID = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Nombre", DbType="NVarChar(30) NOT NULL", CanBeNull=false)]
		public string Nombre
		{
			get
			{
				return this._Nombre;
			}
			set
			{
				if ((this._Nombre != value))
				{
					this.OnNombreChanging(value);
					this.SendPropertyChanging();
					this._Nombre = value;
					this.SendPropertyChanged("Nombre");
					this.OnNombreChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Genero", DbType="NVarChar(10) NOT NULL", CanBeNull=false)]
		public string Genero
		{
			get
			{
				return this._Genero;
			}
			set
			{
				if ((this._Genero != value))
				{
					this.OnGeneroChanging(value);
					this.SendPropertyChanging();
					this._Genero = value;
					this.SendPropertyChanged("Genero");
					this.OnGeneroChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Discriminador", DbType="NVarChar(12) NOT NULL", CanBeNull=false, IsDiscriminator=true)]
		public string Discriminador
		{
			get
			{
				return this._Discriminador;
			}
			set
			{
				if ((this._Discriminador != value))
				{
					this.OnDiscriminadorChanging(value);
					this.SendPropertyChanging();
					this._Discriminador = value;
					this.SendPropertyChanged("Discriminador");
					this.OnDiscriminadorChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	public partial class EmpleadoPermanente : Empleado
	{
		
		private System.Nullable<decimal> _SalarioAnual;
		
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnSalarioAnualChanging(System.Nullable<decimal> value);
    partial void OnSalarioAnualChanged();
    #endregion
		
		public EmpleadoPermanente()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SalarioAnual", DbType="Money")]
		public System.Nullable<decimal> SalarioAnual
		{
			get
			{
				return this._SalarioAnual;
			}
			set
			{
				if ((this._SalarioAnual != value))
				{
					this.OnSalarioAnualChanging(value);
					this.SendPropertyChanging();
					this._SalarioAnual = value;
					this.SendPropertyChanged("SalarioAnual");
					this.OnSalarioAnualChanged();
				}
			}
		}
	}
	
	public partial class EmpleadoXContrato : Empleado
	{
		
		private System.Nullable<decimal> _PagoXHora;
		
		private System.Nullable<int> _HorasXSemana;
		
    #region Definiciones de métodos de extensibilidad
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnPagoXHoraChanging(System.Nullable<decimal> value);
    partial void OnPagoXHoraChanged();
    partial void OnHorasXSemanaChanging(System.Nullable<int> value);
    partial void OnHorasXSemanaChanged();
    #endregion
		
		public EmpleadoXContrato()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PagoXHora", DbType="Money")]
		public System.Nullable<decimal> PagoXHora
		{
			get
			{
				return this._PagoXHora;
			}
			set
			{
				if ((this._PagoXHora != value))
				{
					this.OnPagoXHoraChanging(value);
					this.SendPropertyChanging();
					this._PagoXHora = value;
					this.SendPropertyChanged("PagoXHora");
					this.OnPagoXHoraChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HorasXSemana", DbType="Int")]
		public System.Nullable<int> HorasXSemana
		{
			get
			{
				return this._HorasXSemana;
			}
			set
			{
				if ((this._HorasXSemana != value))
				{
					this.OnHorasXSemanaChanging(value);
					this.SendPropertyChanging();
					this._HorasXSemana = value;
					this.SendPropertyChanged("HorasXSemana");
					this.OnHorasXSemanaChanged();
				}
			}
		}
	}
}
#pragma warning restore 1591
