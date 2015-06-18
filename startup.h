#ifndef STARTUP_H
#define	STARTUP_H
int  main ();//donot call this

/* 作成者　川上　輝
 * 作成日時     2015/6/10
 * 用途　すべてのモジュールの初期化を行う
 *
 */
void init();//all reset

/* 作成者　川上　輝
 * 作成日時　2015/6/10
 * 用途　ピンへモジュールを割り当て入出力設定を行う。
 * 契約　割り込み禁止
 */
void init_port();


/*作成　川上　輝
 * 作成日時　2015/6/11
 * 用途　ADCの設定
 * 契約　割り込み禁止
 */
void init_adc();

/* 作成　川上　輝
 * 作成日時　2015/6/11
 * 用途　OCの初期化
 * 契約　割り込み禁止,Timer2 の利用(継続)
 */

void init_oc();


#endif	/* STARTUP_H */

