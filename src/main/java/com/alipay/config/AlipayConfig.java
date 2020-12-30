
package com.alipay.config;
import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016091900550735";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCJ1rFfwn1ihrdO8+couVZ7M+fPE1Thlf0+h9v5VumOEBKfdTC9Xgh0bLz13xGbZvuQ8yWVRdHZnMcT4xM6GXUKOtg9w7moi+x+/jXHRJGw1krAd+WeRPsCayUfBVCSROclULwJ+pINkHgzKFiWzKn2ZGolae/pNHqKbXg3/2Oss5kQuw5zECIN17007TXhKFi1opGgAMIYjA2gU8RnMpJ939P3ZBiIrUXVqow/6L3rTuGzrZe+JrRdKKMlxPrwqEqz18YWgkMgVA7i/5yB45uZ6Yi/1Fh8TRJIVavaJCRmJzDVAGwLINJV7f9TjsV4sovYbfEcgr1EXOhEJEwlRLj9AgMBAAECggEAH/kfF9ljgFFDgBrvifDD8Lwvj0cqr1E9dx3IluPkNUHhL//dGHARggAfLOFbkjKnNA5Sr3eMn+/P9fr8YMO69G6F7n3SORiL+UE6dEihiuWKXW7yYm4Z04vLBpETCXrWKz+4/o+TBXZ3i1ZWhlRfMHpGbPtP3UaBDk8qTcL9+fcutHm703t0/6Oui8xdvHtKFT5+YUe1844SgSQFNZmAKcwtdtn7gkEapo2qwnyLzAM2avxZ9qkDiCgOZUZJmiYyrfwC+A2ZLBg21Kev0xS13674Le3WBeL0WVLxJK0Qpy88ENd7kdoWwkQEbvsGJ24kxi55RKgPCTTdS40QZaBuQQKBgQDd4RZnNizbb6y4AlTLz5QXasnK1WfRKBOqFyszGdn3Y5um8WMStEJ8HJ5lfiW6Apg6RXU5tgzlp2dxAssBV87PlNuUnmBJlPpx6TRjpI70tfeWiuHrElW+R9clY0cZkC4DWmgaPeV3cQNRkPWyXDc4D/9r5HWnskkDUAeI+ogr6QKBgQCfCRsq1oNqRCoKXAGSCEQnr88d5CALMDEnszc2X4VwCblK+ysdzkbv/SSDcOiHnwnv1rcwesOVgIONdCq6geq+pVsWOKMD2wNX/CSIZz2IERhxxUxabFdHIa5Geqpu069dPEuF0IEptzvecb3vVe83SMxLTeut2WnE82Ymx7Q79QKBgQCIGk+Mxk2j2ZAAW+W6E74K00WvN1L0mPnfB1FHil8LAr3zHPUh/xMdYMzFAymPPZI1hG/RE9w7b4Hjb8wpKbzB1tUPCEuWN12dTGkHimTqtUiHvu+wK9IO47CUzZ5Kjwe6pNVg64D70IYxnZMpcqmoqR+MBlspoBJrhsbofo3TKQKBgQCYC1yt1+hL8F9BCDV4J+8BAlRBf5gjGi/khLKEiU5JjwJXbUoLdOrdBmeiQpANGT+mzODWuIfEptkeo7E2Hn8PRYeP9xXi2cCYnbdPsWRicfWsz7PvvySyHMFBIIVQ75D40mxhwrW57DSQtq2f48iQUkj+tcBctT8pzIodCVCHAQKBgErJfgec78MfHJsFN/GOh3OZ86tPa+1yyWNWiFlj+sA5rdDookP9K4IiKJYnacMi24ng8Idxb4Qogo3w7Za29LFFucFiIzQt+nK/YKi1Cdcbw/JMOtDFH2mUymgcObw3pF0T7FCJ5SXZDLr2DnC75DR7ZMzJdz7eQhnjE7355lYB";
    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtq8VnD+cZE6cX3OvOSEYMf5dJtN/Xlm2vBe55rB79NIhbXHeaxfhPLUy08gnM+g/FQk0V8Y2Veb5j354E6EoiuAJqcgmGBPNV8gAi8z8Cksqny3m62MFxfw1jhtPLfw4U6LMXmAelcGJ+S5U70bfs08M+PwEsRbDWDDhwB3XgT7SIuoVIW/U8kKXbNpte35xVlEGZ3A/xULnubMLkhf0eOuTxoHQFtUfqakYtpWu+IdQqX/PtZN7dvZOEDJbkyY7y4Q5q0YM3erBOreGdQGlzpPAME5BZkmYXmHSFlSxDqnG3TMaAcXwTUrILgQQpaocu1gZpuMSy29+nrIJHwCCNwIDAQAB";
    
	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://176.128.17.252:8096/xiaodaicomic/web/notify_url.jsp";//176.128.20.251:8081

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	//public static String return_url = "http://localhost:8081/hcw-ver16/web/return_url.jsp";
	public static String return_url = "http://176.128.17.252:8096/xiaodaicomic/pay/showOk.do";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "E:\\test\\pay";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

