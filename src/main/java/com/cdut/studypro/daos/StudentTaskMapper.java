package com.cdut.studypro.daos;

import com.cdut.studypro.beans.StudentTask;
import com.cdut.studypro.beans.StudentTaskExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StudentTaskMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student_task
     *
     * @mbg.generated Tue Mar 31 13:05:28 CST 2020
     */
    long countByExample(StudentTaskExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student_task
     *
     * @mbg.generated Tue Mar 31 13:05:28 CST 2020
     */
    int deleteByExample(StudentTaskExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student_task
     *
     * @mbg.generated Tue Mar 31 13:05:28 CST 2020
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student_task
     *
     * @mbg.generated Tue Mar 31 13:05:28 CST 2020
     */
    int insert(StudentTask record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student_task
     *
     * @mbg.generated Tue Mar 31 13:05:28 CST 2020
     */
    int insertSelective(StudentTask record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student_task
     *
     * @mbg.generated Tue Mar 31 13:05:28 CST 2020
     */
    List<StudentTask> selectByExample(StudentTaskExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student_task
     *
     * @mbg.generated Tue Mar 31 13:05:28 CST 2020
     */
    StudentTask selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student_task
     *
     * @mbg.generated Tue Mar 31 13:05:28 CST 2020
     */
    int updateByExampleSelective(@Param("record") StudentTask record, @Param("example") StudentTaskExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student_task
     *
     * @mbg.generated Tue Mar 31 13:05:28 CST 2020
     */
    int updateByExample(@Param("record") StudentTask record, @Param("example") StudentTaskExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student_task
     *
     * @mbg.generated Tue Mar 31 13:05:28 CST 2020
     */
    int updateByPrimaryKeySelective(StudentTask record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student_task
     *
     * @mbg.generated Tue Mar 31 13:05:28 CST 2020
     */
    int updateByPrimaryKey(StudentTask record);
}