package cn.tedu.comic.entity;

import java.io.Serializable;

public class Words implements Serializable {

	private static final long serialVersionUID = 1219552667572153671L;
	private Integer id;
	private Integer Uid; // 发表留言的用户ID
	private Integer UBid; // 书的作者ID,获取留言的对象
	private Integer bookid; // 书的ID
	private String words; // 正文部分
	private String time; // 留言时间
	private String headPortrait;// 头像
	private String username;// 用户名

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUid() {
		return Uid;
	}

	public void setUid(Integer uid) {
		Uid = uid;
	}

	public Integer getUBid() {
		return UBid;
	}

	public void setUBid(Integer uBid) {
		UBid = uBid;
	}

	public Integer getBookid() {
		return bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}

	public String getWords() {
		return words;
	}

	public void setWords(String words) {
		this.words = words;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getHeadPortrait() {
		return headPortrait;
	}

	public void setHeadPortrait(String headPortrait) {
		this.headPortrait = headPortrait;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "Words [id=" + id + ", Uid=" + Uid + ", UBid=" + UBid + ", bookid=" + bookid + ", words=" + words
				+ ", time=" + time + ", headPortrait=" + headPortrait + ", username=" + username + "]";
	}

}
