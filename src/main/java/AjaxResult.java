/**
 * Created by baidu on 16/10/23.
 */
public class AjaxResult {

    public static final Integer FAILURE = 1;
    public static final Integer SUCCESS = 0;
    public static final Integer ERROR = -1;

    private static final String SUCCESS_MSG = "success";

    private int errNo;
    private Object data;
    private String message;

    public static AjaxResult emptySuccessResult() {
        AjaxResult result = new AjaxResult();
        result.setErrNo(SUCCESS);
        result.setData(SUCCESS_MSG);
        return result;
    }

    public static AjaxResult successResult(Object data) {
        AjaxResult result = new AjaxResult();
        result.setErrNo(SUCCESS);
        result.setData(data);
        return result;
    }

    public int getErrNo() {
        return errNo;
    }

    public void setErrNo(int errNo) {
        this.errNo = errNo;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
