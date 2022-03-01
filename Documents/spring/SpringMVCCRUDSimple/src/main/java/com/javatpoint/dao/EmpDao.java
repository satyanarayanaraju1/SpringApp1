package com.javatpoint.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import com.javatpoint.beans.Employee;

public class EmpDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Employee p) {
		String sql = "insert into employee(name,age,address,doj,department,gender,contact,email) values('" + p.getName() + "'," + p.getAge()+ ",'" + p.getAddress() + "','" + p.getDoj() + "','" + p.getDepartment() + "','" + p.getGender() + "'," + p.getContact()+  ",'" + p.getEmail() + "')";
		return template.update(sql);
	}

	public int update(Employee p) {
		String sql = "update employee set name='" + p.getName() + "',age=" + p.getAge()+ " ,address='" + p.getAddress() + "',doj='" + p.getDoj()+ "',department='" + p.getDepartment() + "',gender='" + p.getGender() + "',contact= " + p.getContact()+  ",email='" + p.getEmail() + "' where id=" + p.getId() + "";
		return template.update(sql);
	}

	public int delete(int id) {
		String sql = "delete from employee where id=" + id + "";
		return template.update(sql);
	}

	public Employee getEmpById(int id) {
		String sql = "select * from employee where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Employee>(Employee.class));
	}

	public List<Employee> getEmployees() {
		return template.query("select * from employee", new RowMapper<Employee>() {
			public Employee mapRow(ResultSet rs, int row) throws SQLException {
				Employee e = new Employee();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setAge(rs.getInt(3));
				e.setAddress(rs.getString(4));
				e.setDoj(rs.getString(5));
				e.setDepartment(rs.getString(6));
				e.setGender(rs.getString(7));
				e.setContact(rs.getLong(8));
				e.setEmail(rs.getString(9));
				e.setCreated_dt(rs.getTimestamp(10));
				
			
				
				return e;
			}
		});
	}
}