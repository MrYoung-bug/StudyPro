package com.cdut.studypro.daos;

import com.cdut.studypro.beans.Collect;
import com.cdut.studypro.beans.CollectExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CollectMapper {
    long countByExample(CollectExample example);

    int deleteByExample(CollectExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Collect record);

    int insertSelective(Collect record);

    List<Collect> selectByExample(CollectExample example);

    Collect selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Collect record, @Param("example") CollectExample example);

    int updateByExample(@Param("record") Collect record, @Param("example") CollectExample example);

    int updateByPrimaryKeySelective(Collect record);

    int updateByPrimaryKey(Collect record);

    List<Integer> selectCourseIdByStudentId(Integer id);

    int insertBatch(@Param("collects") List<Collect> collects);

    List<Integer> selectStudentIdByExample(CollectExample collectExample);
}