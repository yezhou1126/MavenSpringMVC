package com.yezhou.repository;

import com.yezhou.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Johnn on 2017/2/9.
 */
@Repository
public interface UserRepository extends JpaRepository<UserEntity,Integer> {

}
