#include <mysql.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif
	my_bool chCharMap_init(UDF_INIT *initid, UDF_ARGS *args, char *message);
	char *chCharMap(UDF_INIT *initid, UDF_ARGS *args, char *result,unsigned long *length, char *is_null, char *error __attribute__((unused)));
	void chCharMap_deinit(UDF_INIT *initid);
#ifdef __cplusplus
}
#endif

// exec関数実行前に呼ばれる
my_bool chCharMap_init(UDF_INIT *initid, UDF_ARGS *args, char *message){
	// 引数が文字列1つであるかどうかを調べる
	if(args->arg_count <= 3 && args->arg_type[0]==STRING_RESULT){
		if(args->arg_count == 1){
			return 0;
		}else if(args->arg_count == 2 && args->arg_type[1]==INT_RESULT){
			return 0;
		}else if(args->arg_count == 3 && args->arg_type[1]==INT_RESULT && args->arg_type[2]==INT_RESULT){
			return 0;
		}
		strcpy(message, "Expected exactly one string type parameter OR length" );
		return 1;
	} else {
		strcpy(message, "Expected exactly one string type parameter" );
		return 1;
	}
}

// exec関数呼び出し終了後に呼ばれる
void chCharMap_deinit(UDF_INIT *initid){
	// 今回は後処理は何もなし
}

// exec関数本体
char *chCharMap(UDF_INIT *initid, UDF_ARGS *args, char *result,unsigned long *length, char *is_null, char *error __attribute__((unused))){
	char str[1024]="";
	//NULL文字が入ると切れるので変換先不明は変換なし
	//                  0      1     2     3     4     5     6     7     8     9     A     B     C     D     E     F
	char asciic[16][16]= {
					 { 0x00 , 0x01 , 0x02 , 0x03 , 0x04 , 0x05 , 0x06 , 0x07 , 0x08 , 0x09 , 0x0A , 0x0B , 0x0C , 0x0D , 0x0E , 0x0F}    //0
					,{ 0x10 , 0x11 , 0x12 , 0x13 , 0x14 , 0x15 , 0x16 , 0x17 , 0x18 , 0x19 , 0x1A , 0x1B , 0x1C , 0x1D , 0x1E , 0x1F}    //1
					,{ 0x20 , 0x21 , 0x22 , 0x23 , 0x24 , 0x25 , 0x26 , 0x27 , 0x28 , 0x29 , 0x2A , 0x2B , 0x2C , 0x2D , 0x2E , 0x2F}    //2 !"#$
					,{ 0xF0 , 0xF1 , 0xF2 , 0xF3 , 0xF4 , 0xF5 , 0xF6 , 0xF7 , 0xF8 , 0xF9 , 0x3A , 0x3B , 0x3C , 0x3D , 0x3E , 0x3F}    //301234568789
					,{ 0x40 , 0x41 , 0x42 , 0x43 , 0x44 , 0x45 , 0x46 , 0x47 , 0x48 , 0x49 , 0x4A , 0x4B , 0x4C , 0x4D , 0x4E , 0x4F}    //4@ABCDEFGHIJKLMNO
					,{ 0x50 , 0x51 , 0x52 , 0x53 , 0x54 , 0x55 , 0x56 , 0x57 , 0x58 , 0x59 , 0x5A , 0x5B , 0x5C , 0x5D , 0x5E , 0x5F}    //5PQRSTUVWXYZ[\]^_ _は6Dだが5Fのままに
					,{ 0x60 , 0x61 , 0x62 , 0x63 , 0x64 , 0x65 , 0x66 , 0x67 , 0x68 , 0x69 , 0x6A , 0x6B , 0x6C , 0x6D , 0x6E , 0x6F}    //6
					,{ 0x70 , 0x71 , 0x72 , 0x73 , 0x74 , 0x75 , 0x76 , 0x77 , 0x78 , 0x79 , 0x7A , 0x7B , 0x7C , 0x7D , 0x7E , 0x7F}    //7
					,{ 0x80 , 0x81 , 0x82 , 0x83 , 0x84 , 0x85 , 0x86 , 0x87 , 0x88 , 0x89 , 0x8A , 0x8B , 0x8C , 0x8D , 0x8E , 0x8F}    //8
					,{ 0x90 , 0x91 , 0x92 , 0x93 , 0x94 , 0x95 , 0x96 , 0x97 , 0x98 , 0x99 , 0x9A , 0x9B , 0x9C , 0x9D , 0x9E , 0x9F}    //9
					,{ 0xA0 , 0xA1 , 0xA2 , 0xA3 , 0xA4 , 0xA5 , 0xA6 , 0xA7 , 0xA8 , 0xA9 , 0xAA , 0xAB , 0xAC , 0xAD , 0xAE , 0xAF}    //A
					,{ 0xB0 , 0xB1 , 0xB2 , 0xB3 , 0xB4 , 0xB5 , 0xB6 , 0xB7 , 0xB8 , 0xB9 , 0xBA , 0xBB , 0xBC , 0xBD , 0xBE , 0xBF}    //B
					,{ 0xC0 , 0xC1 , 0xC2 , 0xC3 , 0xC4 , 0xC5 , 0xC6 , 0xC7 , 0xC8 , 0xC9 , 0xCA , 0xCB , 0xCC , 0xCD , 0xCE , 0xCF}    //C
					,{ 0xD0 , 0xD1 , 0xD2 , 0xD3 , 0xD4 , 0xD5 , 0xD6 , 0xD7 , 0xD8 , 0xD9 , 0xDA , 0xDB , 0xDC , 0xDD , 0xDE , 0xDF}    //D
					,{ 0xE0 , 0xE1 , 0xE2 , 0xE3 , 0xE4 , 0xE5 , 0xE6 , 0xE7 , 0xE8 , 0xE9 , 0xEA , 0xEB , 0xEC , 0xED , 0xEE , 0xFF}    //E
					,{ 0xF0 , 0xF1 , 0xF2 , 0xF3 , 0xF4 , 0xF5 , 0xF6 , 0xF7 , 0xF8 , 0xF9 , 0xFA , 0xFB , 0xFC , 0xFD , 0xFE , 0xFF}    //F
				};
	long long targLen=0,skip=0;
	int ii=0,pnt=0;

	targLen = args->lengths[0];
	if(args->arg_type[1] == INT_RESULT ){
		skip = *((long long*) args->args[1]);
		skip--;
	}
	if(args->arg_type[2] == INT_RESULT ){
		//targetの長さを限定
		targLen = *((long long*) args->args[2]);
	}
	for(ii=0;pnt < targLen;ii++ ){
		//デバッグ
		if(ii < skip){
			continue;
		}
//		sprintf(str,"logger -i \"75chCharMap %02d %x %d %02d \"",ii,args->args[0][ii],skip,targLen);
//		system(str);
		//先頭にFが埋まっているので0Fで&をとって最後の16bitのみに
		result[pnt] = asciic[((args->args[0][ii] >> 4) & 0x0F)][(args->args[0][ii] & 0x0F)];
		pnt++;
	}
	result[pnt]=0x00;
//	sprintf(str,"logger -i \"75chCharMap %s %s %d %d %d %d \"",args->args[0],result,args->args[1],args->args[2],skip,targLen);
//	system(str);

	*length = targLen;

	return result;
}
