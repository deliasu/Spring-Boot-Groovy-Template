package net.csdcodes

import org.apache.ibatis.annotations.Delete
import org.apache.ibatis.annotations.Insert
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.Select
import org.apache.ibatis.annotations.Update

@Mapper
interface ProductMapper {
    @Insert("INSERT INTO products(title, description)  VALUES (#{title}, #{description})")
    int insert(Product product);

    @Select("SELECT * FROM products")
    List<Product> findAll();

    @Select("SELECT * FROM products WHERE id = #{id}")
    Product findById(@Param("id") long id);

    @Update("Update products set title = #{title},  description = #{description} where id = #{id}")
    int update(Product product);

    @Delete("DELETE FROM products WHERE id = #{id}")
    int deleteById(@Param("id") long id);
}