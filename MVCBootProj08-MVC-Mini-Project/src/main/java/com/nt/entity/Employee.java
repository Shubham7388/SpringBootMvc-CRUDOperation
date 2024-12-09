package com.nt.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name="emp")
@Data
@RequiredArgsConstructor
@AllArgsConstructor
@NoArgsConstructor
public class Employee 
{
	@Id
	@SequenceGenerator(name="gen1", sequenceName = "emp_detail", initialValue = 1, allocationSize = 1)
	@GeneratedValue(generator = "gen1", strategy = GenerationType.SEQUENCE)
	private Integer empno;
	
	@NonNull
	@Column(length = 30)
	private String ename;
	
	@NonNull
	@Column(length = 20)
	private String job;
	
	@NonNull
	private Double Sal;
	
	@NonNull
	private Integer deptno;
}