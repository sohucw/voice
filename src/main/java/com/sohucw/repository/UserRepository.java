package com.sohucw.repository;

import com.sohucw.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by baidu on 15/12/8.
 */

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer>{


    @Modifying
    @Transactional
    @Query("update UserEntity  u  set u.firstName=:qFirstName, u.lastName=:qLastName,u.password=:qPassword where u.id=:qId")
    public void updateUser (@Param("qFirstName") String firstName, @Param("qLastName") String lastName,
                            @Param("qPassword") String password, @Param("qId") Integer id);

}
