package home.data;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Entity
@Table(name="myhome")
@Data
public class HomeDto {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long num;
	
	@Column(name = "homename")
	private String homename;
	
	@Column(name = "homeprice")
	private int homeprice;
	
	@Column(name = "room")
	private int room;
	
	@Column(name = "homeaddr")
	private String homeaddr;
	
	@Column(name = "ipjooday")
	private String ipjooday;
	
	@CreationTimestamp
	@Column(updatable = false) 
	private Timestamp writeday;
	
}
