package com.library.dao.dgq;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BorrowingInfoMapper {
    int	insertBorrowinginfo(@Param("bookid")long bookid,@Param("studentno")long studentno);
    
}