package cn.tedu.comic.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 该类的实例是一条条浏览记录
 * 
 * @author Administrator
 *
 */
public class Record implements Serializable {

	private static final long serialVersionUID = 7859279875835332388L;

	private Integer id;
	private Integer uid;
	private String bookname;
	private String date;

	public Record() {
		super();
	}

	public Record(Integer uid, String bookname, String date) {
		super();
		this.uid = uid;
		this.bookname = bookname;
		this.date = date;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Record [id=" + id + ", uid=" + uid + ", bookname=" + bookname + ", date=" + date + "]";
	}

}
