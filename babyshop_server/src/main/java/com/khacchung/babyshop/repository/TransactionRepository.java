package com.khacchung.babyshop.repository;

import com.khacchung.babyshop.model.dao.Transaction;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TransactionRepository extends CrudRepository<Transaction, Integer> {

    @Query(value = "SELECT e FROM Transaction e WHERE e.userId = :userId")
    Page<Transaction> findTransaction(Pageable pageable,@Param("userId") int userId);
}
