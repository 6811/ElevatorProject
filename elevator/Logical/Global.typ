(*********************************************************************************
 * Copyright:  
 * Author:    Chen
 * Created:   April 23, 2016/7:59 PM 
 *********************************************************************************
 * Declaration of global data types
 *********************************************************************************)

TYPE
	
 (*���ݾ��ӿ��źŶ���*)	
tTower_Interface: STRUCT 
		
		Sensor_DoorOpened : BOOL;(*�������ź�ָʾ�������Ѵ�*)
		Sensor_DoorClosed : BOOL;(*�������ź�ָʾ�������ѹر�*)
		
		Sensor_Floor1Approached :  BOOL;(*�������ź�ָʾ�����ѵ����Ӧ¥��*)
		Sensor_Floor2Approached :  BOOL;
		Sensor_Floor3Approached :  BOOL;
		Sensor_Floor4Approached :  BOOL;
		Sensor_Floor5Approached :  BOOL;
		Sensor_Floor6Approached :  BOOL;
		Sensor_Floor7Approached :  BOOL;
		
		Signal_Start_DoorMotor_P : BOOL; (*�����źţ������ش�����ʹ�����ŵ����ת�̶��ĽǶȣ��򿪽�����*)
		Signal_Start_DoorMotor_N : BOOL; (*�����źţ������ش�����ʹ�����ŵ����ת�̶��ĽǶȣ��رս�����*)
		
		Signal_Start_CabinMotor_P : BOOL; (*�����źţ������ش�����ʹ�������������ת����������*)
		Signal_Start_CabinMotor_N : BOOL; (*�����źţ������ش�����ʹ�������������ת����������*)
		Signal_Stop_CabinMotor : BOOL;    (*�����źţ������ش�����ʹ�����������ֹͣ*)
				
		Sensor_Position_Door : UINT;	  (*������λ�÷���*)
		Sensor_Position_Cabin : UINT;     (*���ᴹֱλ�÷���*)
		
END_STRUCT;
			


(*¥�����ӿ��źŶ���*)		
tFloor_Interface: STRUCT	
		Key_Up : BOOL;(*���ϰ�ť*)
		Key_Down : BOOL;(*���°�ť*)
		Display_Current_Floor_Left : USINT;(*����ݵ�ǰ¥����ʾ�����*)
		Display_Current_Floor_Right : USINT;(*�ҵ��ݵ�ǰ¥����ʾ�����*)
		Display_Current_Direction_Left : STRING[2];(*����ݵ�ǰ���з�����ʾ�����*)
		Display_Current_Direction_Right : STRING[2];(*�ҵ��ݵ�ǰ���з�����ʾ�����*)		    
END_STRUCT;

(*��Ӧ¥�������״̬*)
tCheckStatus : 
		(
		Checked:=16#3340,
		UnChecked:=16#FE10		
);

(*����ӿ��źŶ���*)
tCabin_Interface: STRUCT	
		
		Key_Open : BOOL; (*���Ű�ť*)
		Key_Close : BOOL; (*���Ű�ť*)
		Key_Floor1 : BOOL; (*Ŀ��¥�㰴ť*)
		Key_Floor2 : BOOL;
		Key_Floor3 : BOOL;
		Key_Floor4 : BOOL;
		Key_Floor5 : BOOL;
		Key_Floor6 : BOOL;
		Key_Floor7 : BOOL;
		Display_Floor1Selected : tCheckStatus;(*Ŀ��¥�㱻ѡ��ָʾ��*)
		Display_Floor2Selected : tCheckStatus;
		Display_Floor3Selected : tCheckStatus;
		Display_Floor4Selected : tCheckStatus;
		Display_Floor5Selected : tCheckStatus;
		Display_Floor6Selected : tCheckStatus;
		Display_Floor7Selected : tCheckStatus;
			
		Display_Current_Floor : USINT;  (*��ǰ¥����ʾ�����*)
		Display_Current_Direction : STRING[2];    (*��ǰ���з�����ʾ�����*)
		
END_STRUCT;
	
	
END_TYPE
