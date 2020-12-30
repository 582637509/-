package cn.tedu.comic.entity;

import java.io.Serializable;

public class ResponseResult<T> implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5072484127828701991L;

	private Integer state = 200;
	private String message;
	private T data;
	
	public ResponseResult() {

	}

	public ResponseResult(Integer state, Exception e) {
		this.state = state;
		this.message = e.getMessage();
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "ResponseResult [state=" + state + ", message=" + message + ", data=" + data + "]";
	}

}
