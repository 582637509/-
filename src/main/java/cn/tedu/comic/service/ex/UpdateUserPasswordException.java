package cn.tedu.comic.service.ex;

public class UpdateUserPasswordException extends ServiceException {

	private static final long serialVersionUID = -340565027420436306L;

	public UpdateUserPasswordException() {
		super();
	}

	public UpdateUserPasswordException(String message, Throwable cause) {
		super(message, cause);
	}

	public UpdateUserPasswordException(String message) {
		super(message);
	}

	public UpdateUserPasswordException(Throwable cause) {
		super(cause);
	}

}
