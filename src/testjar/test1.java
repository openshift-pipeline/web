package testjar;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import org.json.JSONString;
@Controller
@RequestMapping("/test")
public class test1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 Map<String,String> map=new HashMap<String,String>();
		Map ������� �û���,����,�绰����
		 */
		
		Map<String,String> map=new HashMap<String,String>();
		//Map ������� �û���,����,�绰����
		map.put("username", "liyang");
		map.put("pwd", "111111");h
		map.put("telephone", "152232323");
		
		//Map ת��  JSONObject �ַ���
		JSONObject jsonObj=new JSONObject(map);
		System.out.println(jsonObj.toString());
	}

	public String getTest1() {
		Map<String,String> map=new HashMap<String,String>();
		//Map ������� �û���,����,�绰����
		map.put("username", "liyang");
		map.put("pwd", "111111");
		map.put("telephone", "152232323");
		
		//Map ת��  JSONObject �ַ���
		JSONObject jsonObj=new JSONObject(map);
		return jsonObj.toString();
	}
	public String getTest2() {
		Map<String,String> map=new HashMap<String,String>();
		//Map ������� �û���,����,�绰����
		map.put("username", "���");
		map.put("pwd", "��˹�ٷ��Ŵ�ʹ");
		map.put("telephone", "����");
		
		//Map ת��  JSONObject �ַ���
		JSONObject jsonObj=new JSONObject(map);
		return jsonObj.toString();
	}
	@RequestMapping("/test11")
	@ResponseBody
	public String getTest11() {
		Map<String,String> map=new HashMap<String,String>();
		//Map ������� �û���,����,�绰����
		map.put("username", "���");
		map.put("pwd", "��˹�ٷ��Ŵ�ʹ");
		map.put("telephone", "����");
		
		//Map ת��  JSONObject �ַ���
		JSONObject jsonObj=new JSONObject(map);
		System.out.println(jsonObj);
		return jsonObj.toString();
	}
}
