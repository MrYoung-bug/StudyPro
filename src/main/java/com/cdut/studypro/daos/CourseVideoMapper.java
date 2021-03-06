package com.cdut.studypro.daos;

import com.cdut.studypro.beans.CourseVideo;
import com.cdut.studypro.beans.CourseVideoExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CourseVideoMapper {
    long countByExample(CourseVideoExample example);

    int deleteByExample(CourseVideoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CourseVideo record);

    int insertSelective(CourseVideo record);

    List<CourseVideo> selectByExample(CourseVideoExample example);

    CourseVideo selectByPrimaryKey(Integer id);

    CourseVideo selectByChapterId(Integer id);

    int updateByExampleSelective(@Param("record") CourseVideo record, @Param("example") CourseVideoExample example);

    int updateByExample(@Param("record") CourseVideo record, @Param("example") CourseVideoExample example);

    int updateByPrimaryKeySelective(CourseVideo record);

    int updateByPrimaryKey(CourseVideo record);

    List<Integer> selectVideoIdByExample(CourseVideoExample courseVideoExample);

    List<CourseVideo> selectByExampleWithCourseChapter(CourseVideoExample courseVideoExample);

    List<CourseVideo> selectByExampleWithChapterAndCourseAndTeacher(CourseVideoExample courseVideoExample);

    List<String> selectPathByExample(CourseVideoExample courseVideoExample);
}
