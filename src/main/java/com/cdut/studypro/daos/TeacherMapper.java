package com.cdut.studypro.daos;

import com.cdut.studypro.beans.Student;
import com.cdut.studypro.beans.Teacher;
import com.cdut.studypro.beans.TeacherExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface TeacherMapper {
    long countByExample(TeacherExample example);

    int deleteByExample(TeacherExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    List<Teacher> selectByExample(TeacherExample example);

    Teacher selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Teacher record, @Param("example") TeacherExample example);

    int updateByExample(@Param("record") Teacher record, @Param("example") TeacherExample example);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);

    Integer getIdByTelephone(String phone);

    //批量插入数据
    int insertBatch(@Param("teachers") List<Teacher> teachers);

    //带学院和课程的条件查询
    List<Teacher> selectByExampleWithCollegeAndCourse(TeacherExample example);
}