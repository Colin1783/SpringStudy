package com.study.mapper;

import com.study.domain.MyBean331;
import com.study.domain.MyBean332;
import com.study.domain.MyBean333;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Mapper
public interface Mapper04 {

	@Select(""" 
					SELECT string_col stringCol,
					int_col intCol,
					dec_col decCol,
					date_col dateCol,
					date_time_col dateTimeCol
					FROM my_table9
					""")
	List<MyBean331> select1();

	@Select(""" 
					SELECT *
					FROM my_table9
					""")
	List<MyBean332> select2();

	@Select("""
					SELECT *
					FROM my_table10
					""")
	List<MyBean333> select3();

	@Insert("""
					INSERT INTO my_table9
					(string_col,int_col,dec_col,date_col,date_time_col)
					VALUES (#{c1}, #{c2}, #{c3}, #{c4}, #{c5})
					""")
	void insert1(String c1, String c2, String c3, String c4, String c5);

	@Insert("""
					INSERT INTO my_table9
					(string_col,int_col,dec_col,date_col,date_time_col)
						VALUES (#{strVal}, #{intVal}, #{doubleVal}, #{dateVal}, #{dateTimeVal})
					""")
	void insert2(String strVal, Integer intVal, Double doubleVal, LocalDate dateVal, LocalDateTime dateTimeVal);

	@Insert("""
					INSERT INTO my_table10
					(title, name, age, price, published, inserted)
					VALUES (#{title}, #{name}, #{age}, #{price}, #{published}, #{inserted})
					""")
	void insert3(String title, String name, int age, double price, String published, String inserted);

	@Insert("""
					INSERT INTO my_table9
					(string_col, int_col, dec_col, date_col, date_time_col) 
					VALUES 
					    (#{stringCol}, #{intCol}, #{decCol}, #{dateCol}, #{dateTimeCol})
					""")
	void insert4(MyBean332 bean);

	@Insert("""
					INSERT INTO my_table10
					(title, name, age, price, published, inserted) 
					VALUES 
					    (#{title}, #{name}, #{age}, #{price}, #{published}, #{inserted})
					"""
	)
	void insert5(MyBean333 d);
}


