


function CunWuGong takes integer num, integer id1, integer id2, string s, integer dp1, integer fy1, integer gg1, integer jm1, integer wx1, integer ys1 returns nothing
	local integer i = StringHash("��ѧ")
	call SaveInteger(YDHT, i+num, 0, num)
	call SaveInteger(YDHT, i+num, 1, id1)
	call SaveInteger(YDHT, i+num, 2, id2)
	call SaveStr(YDHT, i+num, 3, s)
	call SaveInteger(YDHT, i+num, 4, dp1)
	call SaveInteger(YDHT, i+num, 5, fy1)
	call SaveInteger(YDHT, i+num, 6, gg1)
	call SaveInteger(YDHT, i+num, 7, jm1)
	call SaveInteger(YDHT, i+num, 8, wx1)
	call SaveInteger(YDHT, i+num, 9, ys1)
endfunction
function CunWuGongS takes nothing returns nothing
	//˳�򣺵��ǡ���Ե�����ǡ����������ԡ�ҽ��
	call CunWuGong(1, 'I03J', 'A07A', "������ѧ", 0, 10, 0, 0, 14, 15)
	call CunWuGong(2, 'I03H', 'A06H', "������ѧ", 14, 12, 18, 0, 0, 0)
	call CunWuGong(3, 'I02V', 'A07Q', "�����ڹ�", 0, 12, 0, 18, 0, 14)
	call CunWuGong(4, 'I02U', 'A07P', "�����ڹ�", 17, 0, 0, 22, 0, 0)
	call CunWuGong(5, 'I03G', 'A06L', "������ѧ", 0, 0, 0, 15, 10, 12)
	call CunWuGong(6, 'I02Z', 'A0DN', "�����ڹ�", 17, 14, 18, 0, 0, 0)
	call CunWuGong(7, 'I02X', 'A07S', "�����ڹ�", 0, 17, 17, 17, 20, 0)
	call CunWuGong(8, 'I03I', 'A07N', "������ѧ", 13, 0, 12, 12, 16, 0)
	call CunWuGong(9, 'I02Y', 'A07T', "�����ڹ�", 22, 20, 0, 17, 0, 0)
	call CunWuGong(10, 'I03K', 'A06J', "������ѧ", 14, 0, 0, 16, 20, 0)
	call CunWuGong(11, 'I03D', 'A07O', "�����ڹ�", 0, 16, 0, 0, 0, 16)
	call CunWuGong(12, 'I03L', 'A07M', "������ѧ", 0, 14, 14, 14, 14, 0)
	call CunWuGong(13, 'I030', 'A07W', "�����ڹ�", 0, 0, 0, 23, 18, 17)
	call CunWuGong(14, 'I031', 'A07U', "�����ڹ�", 18, 20, 16, 0, 0, 0)
	call CunWuGong(15, 'I03E', 'A06M', "������ѧ", 0, 0, 18, 18, 0, 0)
	call CunWuGong(16, 'I033', 'A071', "������ѧ", 0, 12, 0, 16, 0, 11)
	call CunWuGong(17, 'I02W', 'A07R', "�����ڹ�", 0, 0, 0, 14, 12, 11)
	call CunWuGong(18, 'I03F', 'A06P', "������ѧ", 0, 0, 22, 17, 15, 0)
	call CunWuGong(19, 'I039', 'A07G', "������ѧ", 18, 21, 27, 0, 0, 0)
	call CunWuGong(20, 'I034', 'A07L', "������ѧ", 20, 0, 26, 18, 0, 0)
	call CunWuGong(21, 'I038', 'A07F', "������ѧ", 0, 19, 0, 22, 28, 0)
	call CunWuGong(22, 'I037', 'A07H', "������ѧ", 17, 25, 0, 0, 17, 0)
	call CunWuGong(23, 'I03B', 'A086', "������ѧ", 0, 23, 20, 0, 29, 0)
	call CunWuGong(24, 'I032', 'A07E', "������ѧ", 24, 0, 30, 24, 0, 0)
	call CunWuGong(25, 'I035', 'A085', "������ѧ", 0, 0, 0, 24, 19, 16)
	call CunWuGong(26, 'I036', 'A07J', "������ѧ", 23, 0, 0, 18, 0, 16)
	call CunWuGong(27, 'I03C', 'A089', "������ѧ", 23, 0, 0, 20, 22, 0)
	call CunWuGong(28, 'I03A', 'A07I', "������ѧ", 25, 0, 25, 25, 20, 0)
	call CunWuGong(29, 'I03S', 'A082', "�����ڹ�", 22, 32, 0, 22, 0, 25)
	call CunWuGong(30, 'I03O', 'A084', "�����ڹ�", 28, 19, 0, 28, 0, 0)
	call CunWuGong(31, 'I03T', 'S002', "�����ڹ�", 20, 0, 29, 0, 0, 23)
	call CunWuGong(32, 'I03Q', 'A07X', "�����ڹ�", 0, 23, 31, 33, 0, 0)
	call CunWuGong(33, 'I03M', 'A0D8', "�����ڹ�", 28, 24, 0, 33, 0, 30)
	call CunWuGong(34, 'I03P', 'A080', "�����ڹ�", 25, 0, 0, 32, 22, 32)
	call CunWuGong(35, 'I03U', 'A083', "�����ڹ�", 0, 24, 0, 30, 24, 21)
	call CunWuGong(36, 'I03R', 'A09D', "�����ڹ�", 0, 30, 0, 27, 34, 23)
	call CunWuGong(37, 'I09G', 'A0D2', "�����ڹ�", 0, 17, 17, 17, 20, 0)
	call CunWuGong(38, 'I09H', 'A0D4', "�����ڹ�", 0, 17, 17, 17, 20, 0)
	call CunWuGong(39, 'I09I', 'A0D6', "�����ڹ�", 0, 17, 17, 17, 20, 0)
	call CunWuGong(40, 'I09J', 'A0D1', "������ѧ", 13, 0, 12, 12, 16, 0)
	call CunWuGong(41, 'I09K', 'A0D3', "������ѧ", 13, 0, 12, 12, 16, 0)
	call CunWuGong(42, 'I0C2', 'A03N', "����", 0, 0, 0, 15, 14, 16)
	call CunWuGong(43, 'I0C3', 'A03P', "����", 0, 18, 26, 0, 0, 16)
	call CunWuGong(44, 'I0C4', 'A03L', "����", 12, 14, 16, 0, 0, 0)
	call CunWuGong(45, 'I0C5', 'A03Q', "����", 17, 0, 0, 0, 20, 0)
	call CunWuGong(46, 'I0C6', 'A03O', "����", 14, 15, 16, 0, 0, 12)
	call CunWuGong(47, 'I0C8', 'A0CE', "����", 12, 0, 0, 0, 18, 0)
	call CunWuGong(48, 'I0C9', 'A03T', "����", 14, 17, 0, 16, 0, 0)
	call CunWuGong(49, 'I0CA', 'A03U', "����", 0, 0, 0, 20, 0, 0)
	call CunWuGong(50, 'I0CB', 'A03W', "����", 0, 0, 0, 14, 14, 0)
	call CunWuGong(51, 'I0CC', 'A03V', "����", 0, 0, 0, 0, 15, 12)
	call CunWuGong(52, 'I0CD', 'A03Z', "����", 13, 17, 16, 0, 0, 0)
	call CunWuGong(53, 'I0CJ', 'A04V', "����", 15, 0, 16, 0, 17, 0)
	call CunWuGong(54, 'I0CT', 'A06A', "����", 15, 0, 15, 15, 15, 0) //����ľ��������
	call CunWuGong(55, 'I0CU', 'A06B', "����", 20, 20, 0, 18, 0, 0) //����ɳ����޷���
	call CunWuGong(56, 'I0CV', 'A06S', "����", 0, 0, 0, 25, 0, 25) //�������澭ɢƪ��
endfunction

//����װ��ϵͳ
function Cun takes integer id,string name,string s11,real i11,string s12,real i12,string s13,real i13,string s14,real i14 returns nothing
	local item it=CreateItem(id,0,0)
	local integer hp=R2I(GetWidgetLife(it))
	local integer lv=0
	if HaveSavedInteger(YDHT,id,id)==false then
		call SaveInteger(YDHT,id,id,id)
	endif
	if StringLength(s11)>0 and i11>0 then
		call SaveReal(YDHT,id,StringHash(s11),i11)
	endif
	if StringLength(s12)>0 and i12>0 then
		call SaveReal(YDHT,id,StringHash(s12),i12)
	endif
	if StringLength(s13)>0 and i13>0 then
		call SaveReal(YDHT,id,StringHash(s13),i13)
	endif
	if StringLength(s14)>0 and i14>0 then
		call SaveReal(YDHT,id,StringHash(s14),i14)
	endif
	call SaveReal(YDHT, id, StringHash("��������"), 100.)
	call RemoveItem(it)
	set it=null
endfunction


/*
 * ����װ�����Դ洢
 */
function Cuns takes nothing returns nothing
	//�����������ס���ʽ�˺�����������ʵ�˺�
	call Cun('I00C',"���۽�","������",5000,"��ʽ�˺�",750,"����",200,"��ʵ�˺�",200)
	call Cun('I00B',"���콣","������",4500,"��ʽ�˺�",700,"����",190,"��ʵ�˺�",0)
	call Cun('I00D',"������","������",4850,"��ʽ�˺�",720,"����",195,"��ʵ�˺�",300)
	call Cun('I04F',"�ϳ�","������",1000,"��ʽ�˺�",150,"����",0,"��ʵ�˺�",80)
	call Cun('I00P',"������","������",3000,"��ʽ�˺�",250,"����",150,"��ʵ�˺�",0)
	call Cun('I00Q',"�Ͻ�","������",2700,"��ʽ�˺�",230,"����",0,"��ʵ�˺�",100)
	call Cun('I01L',"���ֽ�","������",650,"��ʽ�˺�",80,"����",0,"��ʵ�˺�",0)
	call Cun('I01N',"������","������",800,"��ʽ�˺�",100,"����",0,"��ʵ�˺�",40)
	call Cun('I00X',"ԧ�쵶","������",1500,"��ʽ�˺�",150,"����",50,"��ʵ�˺�",0)
	call Cun('I097',"�򹷰�","������",4500,"��ʽ�˺�",650,"����",0,"��ʵ�˺�",0)
	call Cun('I099',"���ӽ�","������",2000,"��ʽ�˺�",100,"����",50,"��ʵ�˺�",50)
	call Cun('I09B',"����","������",4500,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",1000)
	call Cun('I09A',"��Ů��","������",1800,"��ʽ�˺�",50,"����",100,"��ʵ�˺�",50)
	call Cun('I09C',"˫�����","������",3800,"��ʽ�˺�",220,"����",220,"��ʵ�˺�",150)
	call Cun('I098',"Ѫ��","������",50000,"��ʽ�˺�",700,"����",0,"��ʵ�˺�",0)
	call Cun('I09D',"����","������",4850,"��ʽ�˺�",0,"����",900,"��ʵ�˺�",0)
	call Cun('I08V',"��������","������",10000,"��ʽ�˺�",350,"����",350,"��ʵ�˺�",350)
	call Cun('I02S',"����+1","������",1000,"��ʽ�˺�",150,"����",0,"��ʵ�˺�",0)
	call Cun('I02M',"����+2","������",2000,"��ʽ�˺�",300,"����",0,"��ʵ�˺�",0)
	call Cun('I02Q',"����+3","������",3000,"��ʽ�˺�",450,"����",0,"��ʵ�˺�",0)
	call Cun('I02R',"����+4","������",4000,"��ʽ�˺�",600,"����",0,"��ʵ�˺�",0)
	call Cun('I02P',"����+5","������",5000,"��ʽ�˺�",750,"����",0,"��ʵ�˺�",0)
	call Cun('I01F',"���","������",500,"��ʽ�˺�",50,"����",20,"��ʵ�˺�",0)
	call Cun('I01S',"��ɽ��","������",450,"��ʽ�˺�",30,"����",0,"��ʵ�˺�",0)
	call Cun('I020',"��ͭ��","������",0,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I01E',"��Ҷ��","������",600,"��ʽ�˺�",60,"����",0,"��ʵ�˺�",0)
	call Cun('I021',"����ǹ","������",200,"��ʽ�˺�",15,"����",0,"��ʵ�˺�",0)
	call Cun('I016',"������","������",800,"��ʽ�˺�",100,"����",0,"��ʵ�˺�",0)
	call Cun('I013',"��Ѫǹ","������",1200,"��ʽ�˺�",120,"����",0,"��ʵ�˺�",50)

	call Cun('I022',"����","����",35,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I01T',"����","����",60,"��ʽ�˺�",0,"����",15,"��ʵ�˺�",0)
	call Cun('I01H',"��Ƥ��","����",85,"��ʽ�˺�",0,"����",40,"��ʵ�˺�",0)
	call Cun('I01G',"��Ƥ��","����",90,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I017',"������","����",150,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I014',"�һ���","����",300,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I01O',"���ǽ���","����",150,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I04E',"�����","����",250,"��ʽ�˺�",0,"����",80,"��ʵ�˺�",0)
	call Cun('I00O',"��⬼�","����",450,"��ʽ�˺�",0,"����",100,"��ʵ�˺�",0)
	call Cun('I00F',"�����ݺ�","����",700,"��ʽ�˺�",200,"����",100,"��ʵ�˺�",200)
	call Cun('I00G',"�ƾ���˫","����",800,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I090',"��ս����","����",1000,"��ʽ�˺�",0,"����",250,"��ʵ�˺�",0)
	call Cun('I0AL',"��������","����",500,"��ʽ�˺�",300,"����",0,"��ʵ�˺�",0)
	call Cun('I09Z',"ͨ��","����",500,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)

	call Cun('I01Q',"�ƾ�ñ","����",20,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",30)
	call Cun('I00M',"���ƹ�","����",300,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I08Z',"��ս����","����",500,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I01R',"�ƾ�Ь","����",25,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",30)
	call Cun('I00T',"����Ь","����",200,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I00N',"̤��ѥ","����",200,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I08Y',"��ս����",null,0,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",500)
	call Cun('I01V',"��������","������",0,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",10)
	call Cun('I01U',"ɴ�޻���","������",0,"��ʽ�˺�",15,"����",0,"��ʵ�˺�",0)
	call Cun('I018',"������",null,0,"��ʽ�˺�",50,"����",20,"��ʵ�˺�",0)
	call Cun('I01D',"��读���",null,0,"��ʽ�˺�",100,"����",40,"��ʵ�˺�",0)
	call Cun('I01M',"���ֻ���","����",30,"��ʽ�˺�",40,"����",20,"������",250)
	call Cun('I00Z',"׷����",null,0,"��ʽ�˺�",120,"����",0,"��ʵ�˺�",0)
	call Cun('I00R',"���ᶾ��","������",1200,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",150)
	call Cun('I00S',"��������",null,0,"��ʽ�˺�",200,"����",100,"��ʵ�˺�",0)
	call Cun('I00H',"ħӰ����","������",2000,"��ʽ�˺�",300,"����",0,"��ʵ�˺�",0)
	call Cun('I00I',"̤�����","������",1800,"��ʽ�˺�",0,"����",150,"��ʵ�˺�",0)
	call Cun('I023',"������","����",0,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I024',"����","������",0,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I01X',"��������",null,0,"��ʽ�˺�",0,"����",15,"��ʵ�˺�",0)
	call Cun('I01Y',"ˮ�̻���",null,0,"��ʽ�˺�",10,"����",15,"��ʵ�˺�",0)
	call Cun('I01Z',"���ܻ���","����",0,"��ʽ�˺�",15,"����",0,"��ʵ�˺�",0)
	call Cun('I01W',"���ҷ�","����",0,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",15)
	call Cun('I01J',"�߾�����",null,0,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",20)
	call Cun('I01K',"�����ָ","������",200,"��ʽ�˺�",20,"����",0,"��ʵ�˺�",0)
	call Cun('I01I',"���ƽ�ָ",null,0,"��ʽ�˺�",30,"����",0,"��ʵ�˺�",0)
	call Cun('I019',"�׻���","������",300,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I01A',"��ħ����","����",50,"��ʽ�˺�",0,"����",40,"��ʵ�˺�",0)
	call Cun('I01B',"��������","������",500,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",60)
	call Cun('I01C',"�ε�����",null,0,"��ʽ�˺�",50,"����",0,"��ʵ�˺�",40)
	call Cun('I01P',"���ǽ�ָ",null,0,"��ʽ�˺�",0,"����",30,"��ʵ�˺�",0)
	call Cun('I010',"�ƺ���",null,0,"��ʽ�˺�",120,"����",60,"��ʵ�˺�",0)
	call Cun('I00Y',"������",null,0,"��ʽ�˺�",100,"����",0,"��ʵ�˺�",0)
	call Cun('I011',"Ӱ᰻���",null,0,"��ʽ�˺�",100,"����",0,"��ʵ�˺�",0)
	call Cun('I012',"���޻���",null,0,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",50)
	call Cun('I00U',"���𻤷�","������",1000,"��ʽ�˺�",200,"����",0,"��ʵ�˺�",0)
	call Cun('I00V',"��ħ����",null,0,"��ʽ�˺�",0,"����",150,"��ʵ�˺�",100)
	call Cun('I00W',"������","����",100,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I00J',"�񼣽�",null,0,"��ʽ�˺�",0,"����",150,"��ʵ�˺�",200)
	call Cun('I00K',"�����","������",1500,"��ʽ�˺�",0,"����",150,"��ʵ�˺�",0)
	call Cun('I00L',"�̰�ָ","����",200,"��ʽ�˺�",0,"����",0,"��ʵ�˺�",0)
	call Cun('I08W',"��������",null,0,"��ʽ�˺�",900,"����",400,"��ʵ�˺�",0)
	call Cun('I08X',"��������",null,0,"��ʽ�˺�",800,"����",0,"��ʵ�˺�",500)

	//���ǡ����ԡ���ѧ����
	call Cun('I00C',"���۽�","����",3,"����",2,"��ѧ����",2,null,0)
	call Cun('I00B',"���콣","����",3,"ҽ��",2,"��ѧ����",2,null,0)
	call Cun('I00D',"������","����",3,"��Ե",2,"��ѧ����",1,null,0)
	call Cun('I04F',"�ϳ�","����",2,null,0,null,0,null,0)
	call Cun('I00P',"������","����",2,"��Ե",2,"��ѧ����",1,null,0)
	call Cun('I00Q',"�Ͻ�","����",2,"ҽ��",2,null,0,null,0)
	call Cun('I01N',"������","ҽ��",1,null,0,null,0,null,0)
	call Cun('I01E',"��Ҷ��","����",1,null,0,null,0,null,0)
	call Cun('I00X',"ԧ�쵶","��Ե",2,null,0,null,0,null,0)
	call Cun('I097',"�򹷰�","����",3,"ȫ����",1,"��ѧ����",2,null,0)
	call Cun('I099',"���ӽ�","����",1,"ҽ��",1,"��ѧ����",1,null,0)
	call Cun('I09B',"����","����",4,"ȫ����",2,"��ѧ����",1,null,0)
	call Cun('I09A',"��Ů��","��Ե",1,"����",1,"��ѧ����",1,null,0)
	call Cun('I09C',"˫�����","����",3,"ȫ����",1,"��ѧ����",3,null,0)
	call Cun('I098',"Ѫ��","����",7,"����",4,"��ѧ����",2,null,0)
	call Cun('I09D',"����","��Ե",2,"ȫ����",2,"��ѧ����",3,null,0)
	call Cun('I08V',"��������","ȫ����",2,"��ѧ����",1,null,0,null,0)
	call Cun('I013',"��Ѫǹ","����",1,null,0,null,0,null,0)
	call Cun('I01L',"���ֽ�","����",1,null,0,null,0,null,0)

	call Cun('I01G',"��Ƥ��","����",1,null,0,null,0,null,0)
	call Cun('I014',"�һ���","����",1,null,0,null,0,null,0)
	call Cun('I01O',"���ǽ���","����",1,null,0,null,0,null,0)
	call Cun('I04E',"�����","����",1,"��Ե",1,null,0,null,0)
	call Cun('I00O',"��⬼�","����",2,"����",2,"��ѧ����",1,null,0)
	call Cun('I00F',"�����ݺ�","����",2,"����",2,"��Ե",1,null,0)
	call Cun('I00G',"�ƾ���˫","ҽ��",3,"����",2,null,0,null,0)
	call Cun('I090',"��ս����","ȫ����",1,"��ѧ����",1,null,0,null,0)
	call Cun('I0AL',"��������","ȫ����",1,"����",2,null,0,null,0)

	call Cun('I01Q',"�ƾ�ñ","����",1,null,0,null,0,null,0)
	call Cun('I00M',"���ƹ�","����",1,"����",2,"����",1,"��ѧ����",1)
	call Cun('I08Z',"��ս����","ȫ����",1,"��ѧ����",1,null,0,null,0)
	call Cun('I01R',"�ƾ�Ь","��Ե",1,null,0,null,0,null,0)
	call Cun('I00T',"����Ь","��Ե",2,"����",1,null,0,null,0)
	call Cun('I00N',"̤��ѥ","����",2,"��Ե",1,"ҽ��",1,null,0)
	call Cun('I08Y',"��ս����","ȫ����",1,"��ѧ����",1,null,0,null,0)
	call Cun('I01V',"��������","����",1,null,0,null,0,null,0)
	call Cun('I01U',"ɴ�޻���","����",1,null,0,null,0,null,0)
	call Cun('I01D',"��读���","����",1,null,0,null,0,null,0)
	call Cun('I015',"��������","����",1,null,0,null,0,null,0)
	call Cun('I01M',"���ֻ���","����",1,null,0,null,0,null,0)
	call Cun('I00Z',"׷����","����",2,null,0,null,0,null,0)
	call Cun('I00R',"���ᶾ��","����",2,"����",1,null,0,null,0)
	call Cun('I00S',"��������","����",3,"��ѧ����",1,null,0,null,0)
	call Cun('I00H',"ħӰ����","����",2,"����",2,"��ѧ����",1,null,0)
	call Cun('I00I',"̤�����","����",2,"����",2,null,0,null,0)
	call Cun('I01W',"���ҷ�","ҽ��",2,null,0,null,0,null,0)
	call Cun('I0AM',"��ľ����","ҽ��",5,null,0,null,0,null,0)
	call Cun('I01X',"��������","����",1,null,0,null,0,null,0)
	call Cun('I01Y',"ˮ�̻���","����",1,null,0,null,0,null,0)
	call Cun('I01Z',"���ܻ���","��Ե",1,null,0,null,0,null,0)
	call Cun('I01J',"�߾�����","��Ե",1,null,0,null,0,null,0)
	call Cun('I01I',"���ƽ�ָ","ҽ��",1,null,0,null,0,null,0)
	call Cun('I01A',"��ħ����","ҽ��",1,null,0,null,0,null,0)
	call Cun('I01B',"��������","��Ե",1,null,0,null,0,null,0)
	call Cun('I01C',"�ε�����","����",1,null,0,null,0,null,0)
	call Cun('I01P',"���ǽ�ָ","����",1,null,0,null,0,null,0)
	call Cun('I010',"�ƺ���","ҽ��",2,null,0,null,0,null,0)
	call Cun('I00Y',"������","����",2,null,0,null,0,null,0)
	call Cun('I0CH',"���������Ļ���","����",1,null,0,null,0,null,0)
	call Cun('I011',"Ӱ᰻���","����",2,"����",1,null,0,null,0)
	call Cun('I012',"���޻���","����",1,"����",2,null,0,null,0)
	call Cun('I00U',"���𻤷�","����",2,"ҽ��",1,null,0,null,0)
	call Cun('I00V',"��ħ����","����",1,"����",2,null,0,null,0)
	call Cun('I00W',"������","ҽ��",3,null,0,null,0,null,0)
	call Cun('I00J',"�񼣽�","��Ե",4,null,0,null,0,null,0)
	call Cun('I00K',"�����","����",1,"����",3,null,0,null,0)
	call Cun('I00L',"�̰�ָ","ҽ��",1,"����",1,"��Ե",2,null,0)
	call Cun('I08W',"��������","ȫ����",1,"��ѧ����",1,null,0,null,0)
	call Cun('I08X',"��������","ȫ����",1,"��ѧ����",1,null,0,null,0)

	//�����ٶȡ������˺��������ʡ�ɱ�ֻظ��������ظ��ȵ�
	call Cun('I00C',"���۽�","�����ٶ�",30,"�����˺�",0.6,"������",0.05,null,0)
	call Cun('I00B',"���콣","����",15,"�����ظ�",5,"ɱ�ֻظ�",2000,"�˺��ظ�",500)
	call Cun('I04F',"�ϳ�","�����ٶ�",30,"������",0.02,null,0,null,0)
	call Cun('I00P',"������","�����ٶ�",25,"ɱ�ֻظ�",1500,null,0,null,0)
	call Cun('I00Q',"�Ͻ�","�����˺�",0.6,"������",0.05,"ɱ�ֻظ�",1500,null,0)
	call Cun('I01L',"���ֽ�","�����ٶ�",20,"��Ѫ",0.05,"������",0.03,null,0)
	call Cun('I01N',"������","�����ظ�",2,null,0,null,0,null,0)
	call Cun('I00X',"ԧ�쵶","�����ٶ�",20,null,0,null,0,null,0)
	call Cun('I097',"�򹷰�","�����ٶ�",60,"�����˺�",1.5,null,0,null,0)
	call Cun('I099',"���ӽ�","��Ѫ",0.15,"�����ظ�",2,"ɱ�ֻظ�",500,"�����ظ�",200)
	call Cun('I09B',"����","�����˺�",0.9,"������",0.5,null,0,null,0)
	call Cun('I09A',"��Ů��","����",15,"�˺��ظ�",500,"�����˺�",0.3,"������",0.03)
	call Cun('I09C',"˫�����","��Ѫ",0.15,"�����ظ�",5,"ɱ�ֻظ�",2000,"�����ظ�",500)
	call Cun('I09C',"˫�����","����",15,"�˺��ظ�",800,"�����˺�",0.5,"������",0.05)
	call Cun('I098',"Ѫ��","�����ٶ�",60,"�����˺�",0.8,"ɱ�ֻظ�",10000,null,0)
	call Cun('I09D',"����","�����ظ�",15,"ɱ�ֻظ�",2000,"�����ظ�",1500,null,0)
	call Cun('I08V',"��������","�����ٶ�",60,"�����˺�",1,"������",0.2,"ɱ�ֻظ�",3000)
	call Cun('I02S',"����+1","�����ٶ�",20,"�����˺�",0.15,"ɱ�ֻظ�",300,null,0)
	call Cun('I02M',"����+2","�����ٶ�",30,"�����˺�",0.3,"ɱ�ֻظ�",600,null,0)
	call Cun('I02Q',"����+3","�����ٶ�",40,"�����˺�",0.45,"ɱ�ֻظ�",900,null,0)
	call Cun('I02R',"����+4","�����ٶ�",50,"�����˺�",0.6,"ɱ�ֻظ�",1200,null,0)
	call Cun('I02P',"����+5","�����ٶ�",60,"�����˺�",0.75,"ɱ�ֻظ�",1500,null,0)
	call Cun('I01S',"��ɽ��","�����˺�",0.15,"ɱ�ֻظ�",300,null,0,null,0)
	call Cun('I020',"��ͭ��","�����ٶ�",40,"ɱ�ֻظ�",0,null,0,null,0)
	call Cun('I0CI',"���޼��ù�����ͭ��","�����ٶ�",60,"ɱ�ֻظ�",0,null,0,null,0)
	call Cun('I01E',"��Ҷ��","�����ٶ�",15,"ɱ�ֻظ�",500,null,0,null,0)
	call Cun('I021',"����ǹ","����",0.3,"������",0.03,null,0,null,0)
	call Cun('I016',"������","��Ѫ",0.15,null,0,null,0,null,0)
	call Cun('I013',"��Ѫǹ","�����ٶ�",20,null,0,null,0,null,0)

	call Cun('I022',"����","��Ѫ",1000,"ɱ�ֻظ�",30,"�ƶ��ٶ�",30,null,0)
	call Cun('I01T',"����","��Ѫ",3000,"�˺��ظ�",70,null,0,null,0)
	call Cun('I01H',"��Ƥ��","��Ѫ",3000,null,0,null,0,null,0)
	call Cun('I01G',"��Ƥ��","��Ѫ",5000,"�˺��ظ�",100,"�����ظ�",250,null,0)
	call Cun('I017',"������","��Ѫ",10000,null,0,null,0,null,0)
	call Cun('I014',"�һ���","��Ѫ",20000,"����",10,null,0,null,0)
	call Cun('I01O',"���ǽ���","��Ѫ",7000,"�����ٶ�",30,"�˺��ظ�",300,null,0)
	call Cun('I04E',"�����","��Ѫ",15000,"�����ظ�",700,"��������",20,"�����ظ�",5)
	call Cun('I00O',"��⬼�","��Ѫ",40000,"�����ظ�",1200,"��������",20,null,0)
	call Cun('I00F',"�����ݺ�","��Ѫ",30000,"�˺��ظ�",500,null,0,null,0)
	call Cun('I00G',"�ƾ���˫","��Ѫ",50000,"�����ظ�",1500,"����",20,null,0)
	call Cun('I090',"��ս����","��Ѫ",100000,"�����ظ�",2000,"������",0.05,null,0)
	call Cun('I0AL',"��������","��Ѫ",100000,"�˺��ظ�",2000,"�����˺�",0.7,null,0)
	call Cun('I09Z',"ͨ��","��Ѫ",40000,null,0,null,0,null,0)

	call Cun('I01Q',"�ƾ�ñ","��Ѫ",1500,"�˺��ظ�",150,null,0,null,0)
	call Cun('I00M',"���ƹ�","��������",40,"�����˺�",0.2,null,0,null,0)
	call Cun('I08Z',"��ս����","��Ѫ",50000,"�����ٶ�",50,"�˺��ظ�",800,"��������",100)
	call Cun('I01R',"�ƾ�Ь","�����ظ�",150,"�ƶ��ٶ�",70,null,0,null,0)
	call Cun('I00T',"����Ь","��Ѫ",25000,"�ƶ��ٶ�",160,"��������",25,"�����ظ�",10)
	call Cun('I00N',"̤��ѥ","�ƶ��ٶ�",180,"ɱ�ֻظ�",1000,"�����ظ�",500,"�����ظ�",4)
	call Cun('I08Y',"��ս����","�ƶ��ٶ�",200,"����",30,"�˺��ظ�",600,"�����˺�",0.8)
	call Cun('I01V',"��������","�����ٶ�",15,"������",0.05,null,0,null,0)
	call Cun('I01U',"ɴ�޻���","�����ٶ�",15,"�����˺�",0.15,null,0,null,0)
	call Cun('I018',"������","�����ظ�",200,null,0,null,0,null,0)
	call Cun('I01D',"��读���","�����ٶ�",20,"ɱ�ֻظ�",600,"��Ѫ",6000,null,0)
	call Cun('I015',"��������","��Ѫ",0.03,"�����ظ�",300,"��������",20,null,0)
	call Cun('I01M',"���ֻ���","��Ѫ",2000,null,0,null,0,null,0)
	call Cun('I00Z',"׷����","�����ٶ�",25,"�˺��ظ�",400,"�����ظ�",5,null,0)
	call Cun('I00R',"���ᶾ��","�����ٶ�",30,"�˺��ظ�",400,"�����˺�",0.3,"������",0.02)
	call Cun('I00S',"��������","�����ٶ�",30,"ɱ�ֻظ�",1500,"�����ظ�",5,null,0)
	call Cun('I00H',"ħӰ����","�����ٶ�",40,"ɱ�ֻظ�",2000,null,0,null,0)
	call Cun('I00I',"̤�����","�����ٶ�",40,"�˺��ظ�",500,"�����˺�",0.5,"������",0.05)
	call Cun('I023',"������","�˺��ظ�",40,null,0,null,0,null,0)
	call Cun('I024',"����","ɱ�ֻظ�",100,"�����ظ�",50,null,0,null,0)
	call Cun('I0CH',"���������Ļ���","����",20,"ɱ�ֻظ�",100,"�����ظ�",50,null,0)
	call Cun('I01W',"���ҷ�","ɱ�ֻظ�",150,"�����ظ�",300,null,0,null,0)
	call Cun('I01X',"��������","ɱ�ֻظ�",250,"�����ظ�",150,null,0,null,0)
	call Cun('I01Y',"ˮ�̻���","ɱ�ֻظ�",200,"�����ظ�",120,"�����ظ�",3,"�˺��ظ�",60)
	call Cun('I01Z',"���ܻ���","ɱ�ֻظ�",150,"����",10,"�˺��ظ�",80,null,0)
	call Cun('I01J',"�߾�����","�����ٶ�",30,"������",0.02,null,0,null,0)
	call Cun('I01K',"�����ָ","�����ظ�",3,null,0,null,0,null,0)
	call Cun('I01I',"���ƽ�ָ","ɱ�ֻظ�",300,"�����˺�",0.1,null,0,null,0)
	call Cun('I019',"�׻���","��Ѫ",5000,null,0,null,0,null,0)
	call Cun('I01A',"��ħ����","ɱ�ֻظ�",800,"��������",40,"�����ظ�",5,null,0)
	call Cun('I01B',"��������","�ƶ��ٶ�",80,"�����ظ�",600,null,0,null,0)
	call Cun('I01C',"�ε�����",null,0,"�����ٶ�",15,"��Ѫ",8000,"�˺��ظ�",100)
	call Cun('I01P',"���ǽ�ָ",null,0,"�����ٶ�",15,"�����ظ�",200,"�����˺�",0.15)
	call Cun('I010',"�ƺ���","��Ѫ",13000,"ɱ�ֻظ�",500,"��������",25,"�����˺�",0.2)
	call Cun('I00Y',"������","�����ظ�",400,"��������",20,"�����ظ�",5,"������",0.02)
	call Cun('I011',"Ӱ᰻���","��Ѫ",0.05,"�����ٶ�",20,"�ƶ��ٶ�",100,"�����ظ�",400)
	call Cun('I012',"���޻���","��Ѫ",25000,"ɱ�ֻظ�",700,"�����ظ�",600,"������",0.01)
	call Cun('I00U',"���𻤷�","�����ٶ�",40,"ɱ�ֻظ�",1000,"�����˺�",0.3,null,0)
	call Cun('I00V',"��ħ����","��Ѫ",0.1,"��Ѫ",25000,"��������",15,"�����˺�",0.4)
	call Cun('I00W',"������","��Ѫ",0.05,"�����ٶ�",45,"�����ظ�",700,"������",0.01)
	call Cun('I00J',"�񼣽�","ɱ�ֻظ�",1000,"�˺��ظ�",500,"�����ظ�",8,null,0)
	call Cun('I00K',"�����","�����ٶ�",40,"�˺��ظ�",400,"��������",50,null,0)
	call Cun('I00L',"�̰�ָ","�����ٶ�",50,"�����ظ�",500,"��Ѫ",20000,"�����˺�",0.5)
	call Cun('I08W',"��������","�����ظ�",1000,"�����ظ�",7,"������",0.1,null,0)
	call Cun('I08X',"��������","��Ѫ",0.3,"�����ٶ�",0.5,"�����˺�",1,"������",0.05)
endfunction