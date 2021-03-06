package cn.tedu.comic.service.ex;

public class UploadAvatarException extends ServiceException {

	private static final long serialVersionUID = 1961107806575001948L;

	public UploadAvatarException() {
		super();
	}

	public UploadAvatarException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public UploadAvatarException(String message, Throwable cause) {
		super(message, cause);
	}

	public UploadAvatarException(String message) {
		super(message);
	}

	public UploadAvatarException(Throwable cause) {
		super(cause);
	}

}
