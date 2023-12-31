�@S E   [ e m s d b ]  
 G O  
 / * * * * * *   O b j e c t :     U s e r D e f i n e d F u n c t i o n   [ d b o ] . [ H a s h P a s s w o r d ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   f u n c t i o n   [ d b o ] . [ H a s h P a s s w o r d ] ( @ p a s s   v a r c h a r ( 1 0 0 ) )  
 r e t u r n s   n v a r c h a r ( 5 0 0 )  
 a s  
 b e g i n  
 d e c l a r e   @ a f t e r h a s h   v a r b i n a r y ( 5 0 0 )   =   H A S H B Y T E S ( ' S H A 2 _ 2 5 6 ' ,   @ p a s s )  
 r e t u r n   c o n v e r t ( n v a r c h a r ( 1 0 0 0 ) ,   @ a f t e r h a s h ,   2 )    
 e n d  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C l a i m _ M a s t e r ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C l a i m _ M a s t e r ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ C l a i m _ T i t l e ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ C l a i m _ R e a s o n ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ A m o u n t ]   [ d e c i m a l ] ( 1 8 ,   0 )   N U L L ,  
 	 [ C l a i m D t ]   [ d a t e t i m e ]   N U L L ,  
 	 [ E v i d e n c e ]   [ v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ C l a i m _ D e s c r i p t i o n ]   [ v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ C u r r e n t S t a t u s ]   [ v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ S t a t u s ]   [ t i n y i n t ]   N U L L ,  
 	 [ U s e r I d ]   [ i n t ]   N U L L ,  
 	 [ E x p e n s e D t ]   [ d a t e t i m e ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ C l a i m I d ]   [ i n t ]   N U L L ,  
 	 [ A c t i o n ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ A c t i o n B y ]   [ i n t ]   N U L L ,  
 	 [ A c t i o n D t ]   [ d a t e t i m e ]   N U L L ,  
 	 [ R e m a r k s ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ S t a t u s ]   [ t i n y i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ C u r r e n t A c t i o n ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ N e x t A c t i o n ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ S t a t u s ]   [ t i n y i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ E m p l o y e e _ C l a i m _ R o l e _ M a s t e r ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ E m p l o y e e _ C l a i m _ R o l e _ M a s t e r ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ R o l e ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ A c t i o n ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ S t a t u s ]   [ t i n y i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ E m p l o y e e _ C l a i m _ T r a n s a c t i o n ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ E m p l o y e e _ C l a i m _ T r a n s a c t i o n ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ T r a n s a c t i o n _ N o ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ E m p l o y e e _ I d ]   [ i n t ]   N U L L ,  
 	 [ A m o u n t ]   [ d e c i m a l ] ( 1 8 ,   0 )   N U L L ,  
 	 [ T r a n s a c t i o n D t ]   [ d a t e t i m e ]   N U L L ,  
 	 [ C l a i m I d ]   [ i n t ]   N U L L ,  
 	 [ S t a t u s ]   [ t i n y i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P r o g r a m _ M a s t e r ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P r o g r a m _ M a s t e r ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P _ t i t l e ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ P a t h ]   [ v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ D e s c r ]   [ v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ D i s p l a y _ S e q u e n c e ]   [ i n t ]   N U L L ,  
 	 [ S t a t u s ]   [ t i n y i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P r o g r a m _ m a s t e r _ t e m p ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P r o g r a m _ m a s t e r _ t e m p ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P _ t i t l e ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ P a t h ]   [ v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ D e s c r ]   [ v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ D i s p l a y _ S e q u e n c e ]   [ i n t ]   N U L L ,  
 	 [ S t a t u s ]   [ t i n y i n t ]   N U L L  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ R o l e I d ]   [ i n t ]   N U L L ,  
 	 [ E m p I d ]   [ i n t ]   N U L L ,  
 	 [ S t a t u s ]   [ t i n y i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ R o l e _ m a s t e r ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ R o l e _ m a s t e r ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ R o l e ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ S t a t u s ]   [ t i n y i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T b l _ R i g h t s ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T b l _ R i g h t s ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P r o g r a m e _ i d ]   [ i n t ]   N U L L ,  
 	 [ U s e r I d ]   [ i n t ]   N U L L ,  
 	 [ R o l e I d ]   [ i n t ]   N U L L ,  
 	 [ S t a t u s ]   [ t i n y i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U s e r _ M a s t e r ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ U s e r _ M a s t e r ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N m ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ E m a i l ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ M o b i l e ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ P a s s w o r d ]   [ v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ M a n a g e r _ I d ]   [ i n t ]   N U L L ,  
 	 [ S t a t u s ]   [ t i n y i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ C l a i m _ M a s t e r ]   O N    
  
 I N S E R T   [ d b o ] . [ C l a i m _ M a s t e r ]   ( [ I d ] ,   [ C l a i m _ T i t l e ] ,   [ C l a i m _ R e a s o n ] ,   [ A m o u n t ] ,   [ C l a i m D t ] ,   [ E v i d e n c e ] ,   [ C l a i m _ D e s c r i p t i o n ] ,   [ C u r r e n t S t a t u s ] ,   [ S t a t u s ] ,   [ U s e r I d ] ,   [ E x p e n s e D t ] )   V A L U E S   ( 1 ,   N ' F o o d   e x p e n s e ' ,   N ' F o o d ' ,   C A S T ( 4 5 0 0   A S   D e c i m a l ( 1 8 ,   0 ) ) ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 2 T 2 1 : 3 5 : 0 1 . 2 7 3 '   A S   D a t e T i m e ) ,   N ' E v i d e n c e F i l e s / E v i d e n c e _ c b 7 8 9 4 3 7 - a 5 7 0 - 4 f 5 b - 9 e 3 f - 5 a c 4 6 f 2 9 b c b 0 . j p g ' ,   N ' t e s t ' ,   N ' C o m p l e t e d ' ,   1 ,   2 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 3 T 0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ C l a i m _ M a s t e r ]   ( [ I d ] ,   [ C l a i m _ T i t l e ] ,   [ C l a i m _ R e a s o n ] ,   [ A m o u n t ] ,   [ C l a i m D t ] ,   [ E v i d e n c e ] ,   [ C l a i m _ D e s c r i p t i o n ] ,   [ C u r r e n t S t a t u s ] ,   [ S t a t u s ] ,   [ U s e r I d ] ,   [ E x p e n s e D t ] )   V A L U E S   ( 2 ,   N ' M o b i l e   R e c h a r g e ' ,   N ' M o b i l e   R e c h a r g e ' ,   C A S T ( 1 0 0 0   A S   D e c i m a l ( 1 8 ,   0 ) ) ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 6 T 2 0 : 4 1 : 4 1 . 7 8 7 '   A S   D a t e T i m e ) ,   N ' E v i d e n c e F i l e s / E v i d e n c e _ 0 7 9 1 f 5 7 3 - 8 2 3 e - 4 a 4 a - 9 5 e 9 - d 3 6 a 3 7 f 3 6 7 6 c . t x t ' ,   N ' r e q u i r e d   r e m u b u r s h i m e n t ' ,   N ' C o m p l e t e d ' ,   1 ,   2 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 6 T 0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ C l a i m _ M a s t e r ]   ( [ I d ] ,   [ C l a i m _ T i t l e ] ,   [ C l a i m _ R e a s o n ] ,   [ A m o u n t ] ,   [ C l a i m D t ] ,   [ E v i d e n c e ] ,   [ C l a i m _ D e s c r i p t i o n ] ,   [ C u r r e n t S t a t u s ] ,   [ S t a t u s ] ,   [ U s e r I d ] ,   [ E x p e n s e D t ] )   V A L U E S   ( 3 ,   N ' g g ' ,   N ' T r a v e l ' ,   C A S T ( 5 5   A S   D e c i m a l ( 1 8 ,   0 ) ) ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 7 T 1 2 : 1 1 : 1 6 . 7 4 0 '   A S   D a t e T i m e ) ,   N ' E v i d e n c e F i l e s / E v i d e n c e _ 6 5 e 7 b 9 0 8 - 1 9 9 4 - 4 2 6 3 - a 7 e c - d b 4 2 3 9 6 2 a d 3 3 . p n g ' ,   N ' r ' ,   N ' P e n d i n g   a t   M a n a g e r ' ,   1 ,   5 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 8 T 0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ C l a i m _ M a s t e r ]   ( [ I d ] ,   [ C l a i m _ T i t l e ] ,   [ C l a i m _ R e a s o n ] ,   [ A m o u n t ] ,   [ C l a i m D t ] ,   [ E v i d e n c e ] ,   [ C l a i m _ D e s c r i p t i o n ] ,   [ C u r r e n t S t a t u s ] ,   [ S t a t u s ] ,   [ U s e r I d ] ,   [ E x p e n s e D t ] )   V A L U E S   ( 4 ,   N ' T r a v e l   a n d   F o o d ' ,   N ' T r a v e l ' ,   C A S T ( 2 3 0 0   A S   D e c i m a l ( 1 8 ,   0 ) ) ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 0 : 0 3 . 8 0 7 '   A S   D a t e T i m e ) ,   N ' E v i d e n c e F i l e s / E v i d e n c e _ e a 1 b d 9 4 1 - 8 9 1 8 - 4 b a 1 - b 9 f d - 8 4 8 5 3 d 8 f 8 b d e . t x t ' ,   N ' n e e d   t o   r e m u b u i r e m e n t t ' ,   N ' C o m p l e t e d ' ,   1 ,   3 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 3 T 0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ C l a i m _ M a s t e r ]   ( [ I d ] ,   [ C l a i m _ T i t l e ] ,   [ C l a i m _ R e a s o n ] ,   [ A m o u n t ] ,   [ C l a i m D t ] ,   [ E v i d e n c e ] ,   [ C l a i m _ D e s c r i p t i o n ] ,   [ C u r r e n t S t a t u s ] ,   [ S t a t u s ] ,   [ U s e r I d ] ,   [ E x p e n s e D t ] )   V A L U E S   ( 5 ,   N ' E d u c a t i o n   a n d   t r a i n i n g ' ,   N ' M o b i l e   R e c h a r g e ' ,   C A S T ( 3 4 0 0   A S   D e c i m a l ( 1 8 ,   0 ) ) ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 1 : 1 8 . 2 6 0 '   A S   D a t e T i m e ) ,   N ' E v i d e n c e F i l e s / E v i d e n c e _ 0 e 8 0 d 4 a b - f b 9 0 - 4 8 6 0 - 8 d 4 0 - a 2 4 a 2 6 2 0 0 9 4 c . t x t ' ,   N ' n e e d   t o   e x p e n s e ' ,   N ' C o m p l e t e d ' ,   1 ,   2 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 2 T 0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ C l a i m _ M a s t e r ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   O N    
  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 1 ,   1 ,   N ' I n i t i a t e d ' ,   2 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 2 T 2 1 : 3 5 : 0 1 . 2 7 3 '   A S   D a t e T i m e ) ,   N ' t e s t ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 2 ,   1 ,   N ' P e n d i n g   a t   H R ' ,   1 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 4 T 2 0 : 0 9 : 5 8 . 9 4 3 '   A S   D a t e T i m e ) ,   N ' o k   f o r   a p p r o v a l ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 3 ,   1 ,   N ' P e n d i n g   a t   A c c o u n t ' ,   4 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 4 T 2 0 : 1 7 : 0 5 . 3 8 3 '   A S   D a t e T i m e ) ,   N ' O k   f o r   p a y m e n t ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 4 ,   1 ,   N U L L ,   5 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 4 T 2 0 : 2 0 : 4 0 . 5 9 3 '   A S   D a t e T i m e ) ,   N ' n o t   o k ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 5 ,   1 ,   N ' C o m p l e t e d ' ,   5 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 4 T 2 0 : 2 5 : 1 2 . 5 5 0 '   A S   D a t e T i m e ) ,   N ' o k   f o r   m o n e y ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 6 ,   1 ,   N ' C o m p l e t e d ' ,   5 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 4 T 2 0 : 2 6 : 1 5 . 2 0 7 '   A S   D a t e T i m e ) ,   N ' o k ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 7 ,   1 ,   N ' C o m p l e t e d ' ,   5 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 4 T 2 0 : 2 7 : 2 6 . 5 4 0 '   A S   D a t e T i m e ) ,   N ' o k k ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 8 ,   1 ,   N ' C o m p l e t e d ' ,   5 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 4 T 2 0 : 2 8 : 2 2 . 9 9 3 '   A S   D a t e T i m e ) ,   N ' o k k k ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 9 ,   2 ,   N ' I n i t i a t e d ' ,   2 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 6 T 2 0 : 4 1 : 4 1 . 7 8 7 '   A S   D a t e T i m e ) ,   N ' r e q u i r e d   r e m u b u r s h i m e n t ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 1 0 ,   2 ,   N ' P e n d i n g   a t   H R ' ,   1 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 6 T 2 0 : 4 2 : 3 0 . 4 8 7 '   A S   D a t e T i m e ) ,   N ' o k   f o r   p a y m e n t ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 1 1 ,   2 ,   N ' P e n d i n g   a t   A c c o u n t ' ,   4 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 6 T 2 1 : 2 1 : 0 7 . 0 8 0 '   A S   D a t e T i m e ) ,   N ' o k   n o w   f o r   p a y m e n t ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 1 2 ,   3 ,   N ' I n i t i a t e d ' ,   5 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 7 T 1 2 : 1 1 : 1 6 . 7 4 0 '   A S   D a t e T i m e ) ,   N ' r ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 1 3 ,   2 ,   N ' C o m p l e t e d ' ,   5 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 8 T 2 2 : 0 2 : 4 7 . 8 8 0 '   A S   D a t e T i m e ) ,   N ' O k   f o r   P a y m e n t . . . . ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 1 4 ,   4 ,   N ' I n i t i a t e d ' ,   3 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 0 : 0 3 . 8 0 7 '   A S   D a t e T i m e ) ,   N ' n e e d   t o   r e m u b u i r e m e n t t ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 1 5 ,   5 ,   N ' I n i t i a t e d ' ,   2 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 1 : 1 8 . 2 6 0 '   A S   D a t e T i m e ) ,   N ' n e e d   t o   e x p e n s e ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 1 6 ,   5 ,   N ' P e n d i n g   a t   H R ' ,   1 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 1 : 5 1 . 4 4 3 '   A S   D a t e T i m e ) ,   N ' o k   f o r   a p p r o v a l ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 1 7 ,   4 ,   N ' P e n d i n g   a t   H R ' ,   1 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 2 : 1 1 . 3 3 0 '   A S   D a t e T i m e ) ,   N ' o k   f o r   a p p r o v a l ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 1 8 ,   5 ,   N ' P e n d i n g   a t   A c c o u n t ' ,   4 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 2 : 5 4 . 9 5 3 '   A S   D a t e T i m e ) ,   N ' A p p r o v e d   f o r     a p p l i e n c e ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 1 9 ,   4 ,   N ' P e n d i n g   a t   A c c o u n t ' ,   4 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 3 : 1 5 . 5 0 3 '   A S   D a t e T i m e ) ,   N ' o k   f o r   p a y ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 2 0 ,   5 ,   N ' C o m p l e t e d ' ,   5 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 3 : 4 9 . 6 4 7 '   A S   D a t e T i m e ) ,   N ' o k   p a y m e n t   d o n e ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   ( [ I d ] ,   [ C l a i m I d ] ,   [ A c t i o n ] ,   [ A c t i o n B y ] ,   [ A c t i o n D t ] ,   [ R e m a r k s ] ,   [ S t a t u s ] )   V A L U E S   ( 2 1 ,   4 ,   N ' C o m p l e t e d ' ,   5 ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 4 : 0 2 . 5 4 0 '   A S   D a t e T i m e ) ,   N ' p a y m e n t   d o n e ' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ A c t i o n ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ]   O N    
  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ]   ( [ I d ] ,   [ C u r r e n t A c t i o n ] ,   [ N e x t A c t i o n ] ,   [ S t a t u s ] )   V A L U E S   ( 1 ,   N ' I n i t i a t e d ' ,   N ' P e n d i n g   a t   M a n a g e r ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ]   ( [ I d ] ,   [ C u r r e n t A c t i o n ] ,   [ N e x t A c t i o n ] ,   [ S t a t u s ] )   V A L U E S   ( 2 ,   N ' P e n d i n g   a t   M a n a g e r ' ,   N ' P e n d i n g   a t   H R ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ]   ( [ I d ] ,   [ C u r r e n t A c t i o n ] ,   [ N e x t A c t i o n ] ,   [ S t a t u s ] )   V A L U E S   ( 3 ,   N ' P e n d i n g   a t   M a n a g e r ' ,   N ' R e j e c t e d   B y   M a n a g e r ' ,   0 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ]   ( [ I d ] ,   [ C u r r e n t A c t i o n ] ,   [ N e x t A c t i o n ] ,   [ S t a t u s ] )   V A L U E S   ( 4 ,   N ' P e n d i n g   a t   H R ' ,   N ' P e n d i n g   a t   A c c o u n t ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ]   ( [ I d ] ,   [ C u r r e n t A c t i o n ] ,   [ N e x t A c t i o n ] ,   [ S t a t u s ] )   V A L U E S   ( 5 ,   N ' P e n d i n g   a t   H R ' ,   N ' R e j e c t e d   B y   H R ' ,   0 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ]   ( [ I d ] ,   [ C u r r e n t A c t i o n ] ,   [ N e x t A c t i o n ] ,   [ S t a t u s ] )   V A L U E S   ( 6 ,   N ' P e n d i n g   a t   A c c o u n t ' ,   N ' C o m p l e t e d ' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ R o l e _ M a s t e r ]   O N    
  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ R o l e _ M a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ A c t i o n ] ,   [ S t a t u s ] )   V A L U E S   ( 1 ,   N ' E m p l o y e e ' ,   N ' I n i t i a t e d ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ R o l e _ M a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ A c t i o n ] ,   [ S t a t u s ] )   V A L U E S   ( 2 ,   N ' M a n a g e r ' ,   N ' P e n d i n g   a t   M a n a g e r ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ R o l e _ M a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ A c t i o n ] ,   [ S t a t u s ] )   V A L U E S   ( 3 ,   N ' H R ' ,   N ' P e n d i n g   a t   H R ' ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ R o l e _ M a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ A c t i o n ] ,   [ S t a t u s ] )   V A L U E S   ( 4 ,   N ' A c c o u n t ' ,   N ' P e n d i n g   a t   A c c o u n t ' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ R o l e _ M a s t e r ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ T r a n s a c t i o n ]   O N    
  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ T r a n s a c t i o n ]   ( [ I d ] ,   [ T r a n s a c t i o n _ N o ] ,   [ E m p l o y e e _ I d ] ,   [ A m o u n t ] ,   [ T r a n s a c t i o n D t ] ,   [ C l a i m I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 ,   N ' 4 5 8 5 ' ,   5 ,   C A S T ( 1 0 0 0   A S   D e c i m a l ( 1 8 ,   0 ) ) ,   C A S T ( N ' 2 0 2 3 - 1 1 - 0 8 T 2 2 : 0 2 : 4 7 . 8 8 0 '   A S   D a t e T i m e ) ,   2 ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ T r a n s a c t i o n ]   ( [ I d ] ,   [ T r a n s a c t i o n _ N o ] ,   [ E m p l o y e e _ I d ] ,   [ A m o u n t ] ,   [ T r a n s a c t i o n D t ] ,   [ C l a i m I d ] ,   [ S t a t u s ] )   V A L U E S   ( 2 ,   N ' 4 5 8 5 ' ,   5 ,   C A S T ( 3 4 0 0   A S   D e c i m a l ( 1 8 ,   0 ) ) ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 3 : 4 9 . 6 4 7 '   A S   D a t e T i m e ) ,   5 ,   1 )  
 I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ T r a n s a c t i o n ]   ( [ I d ] ,   [ T r a n s a c t i o n _ N o ] ,   [ E m p l o y e e _ I d ] ,   [ A m o u n t ] ,   [ T r a n s a c t i o n D t ] ,   [ C l a i m I d ] ,   [ S t a t u s ] )   V A L U E S   ( 3 ,   N ' 4 5 8 5 ' ,   5 ,   C A S T ( 2 3 0 0   A S   D e c i m a l ( 1 8 ,   0 ) ) ,   C A S T ( N ' 2 0 2 3 - 1 1 - 1 4 T 2 0 : 5 4 : 0 2 . 5 4 0 '   A S   D a t e T i m e ) ,   4 ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ E m p l o y e e _ C l a i m _ T r a n s a c t i o n ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ P r o g r a m _ M a s t e r ]   O N    
  
 I N S E R T   [ d b o ] . [ P r o g r a m _ M a s t e r ]   ( [ I d ] ,   [ P _ t i t l e ] ,   [ P a t h ] ,   [ D e s c r ] ,   [ D i s p l a y _ S e q u e n c e ] ,   [ S t a t u s ] )   V A L U E S   ( 1 ,   N ' A d d   C l a i m ' ,   N ' C l a i m / A d d C l a i m ' ,   N ' A d d   n e w   c l a i m ' ,   0 ,   1 )  
 I N S E R T   [ d b o ] . [ P r o g r a m _ M a s t e r ]   ( [ I d ] ,   [ P _ t i t l e ] ,   [ P a t h ] ,   [ D e s c r ] ,   [ D i s p l a y _ S e q u e n c e ] ,   [ S t a t u s ] )   V A L U E S   ( 2 ,   N ' E m p l o y e e   C l a i m s ' ,   N ' C l a i m / S h o w C l a i m ' ,   N ' s h o w   c l a i m   r e q u e s t ' ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ P r o g r a m _ M a s t e r ]   ( [ I d ] ,   [ P _ t i t l e ] ,   [ P a t h ] ,   [ D e s c r ] ,   [ D i s p l a y _ S e q u e n c e ] ,   [ S t a t u s ] )   V A L U E S   ( 3 ,   N ' D a s h b o a r d ' ,   N ' H o m e / D a s h b o a r d ' ,   N ' d a s h b o a r d ' ,   2 ,   1 )  
 I N S E R T   [ d b o ] . [ P r o g r a m _ M a s t e r ]   ( [ I d ] ,   [ P _ t i t l e ] ,   [ P a t h ] ,   [ D e s c r ] ,   [ D i s p l a y _ S e q u e n c e ] ,   [ S t a t u s ] )   V A L U E S   ( 4 ,   N ' S h o w   C l a i m   S t a t u s ' ,   N ' C l a i m / C l a i m S t a t u s ' ,   N ' s h o w   c l a i m ' ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ P r o g r a m _ M a s t e r ]   ( [ I d ] ,   [ P _ t i t l e ] ,   [ P a t h ] ,   [ D e s c r ] ,   [ D i s p l a y _ S e q u e n c e ] ,   [ S t a t u s ] )   V A L U E S   ( 5 ,   N ' S h o w   T r a n s a c t i o n   H i s t o r y ' ,   N ' C l a i m / C l a i m t r a n s a c t i o n ' ,   N ' s h o w   c l a i m ' ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ P r o g r a m _ M a s t e r ]   ( [ I d ] ,   [ P _ t i t l e ] ,   [ P a t h ] ,   [ D e s c r ] ,   [ D i s p l a y _ S e q u e n c e ] ,   [ S t a t u s ] )   V A L U E S   ( 6 ,   N ' M a n a g e   U s e r s ' ,   N ' U s e r / M a n a g e U s e r ' ,   N ' c r e a t e , u p d a t e , d e l e t e   u s e r s ' ,   4 ,   1 )  
 I N S E R T   [ d b o ] . [ P r o g r a m _ M a s t e r ]   ( [ I d ] ,   [ P _ t i t l e ] ,   [ P a t h ] ,   [ D e s c r ] ,   [ D i s p l a y _ S e q u e n c e ] ,   [ S t a t u s ] )   V A L U E S   ( 7 ,   N ' M a n a g e   R o l e s ' ,   N ' R o l e / M a n a g e R o l e ' ,   N ' c r e a t e , u p d a t e , d e l e t e   r o l e ' ,   5 ,   1 )  
 I N S E R T   [ d b o ] . [ P r o g r a m _ M a s t e r ]   ( [ I d ] ,   [ P _ t i t l e ] ,   [ P a t h ] ,   [ D e s c r ] ,   [ D i s p l a y _ S e q u e n c e ] ,   [ S t a t u s ] )   V A L U E S   ( 8 ,   N ' A s s i g n / C h a n g e   R o l e ' ,   N ' R o l e / A s s i g n R o l e ' ,   N ' c r e a t e , u p d a t e , d e l e t e   r o l e ' ,   6 ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ P r o g r a m _ M a s t e r ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ P r o g r a m _ m a s t e r _ t e m p ]   O N    
  
 I N S E R T   [ d b o ] . [ P r o g r a m _ m a s t e r _ t e m p ]   ( [ I d ] ,   [ P _ t i t l e ] ,   [ P a t h ] ,   [ D e s c r ] ,   [ D i s p l a y _ S e q u e n c e ] ,   [ S t a t u s ] )   V A L U E S   ( 4 ,   N ' S h o w   C l a i m   S t a t u s ' ,   N ' C l a i m / C l a i m S t a t u s ' ,   N ' s h o w   c l a i m ' ,   3 ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ P r o g r a m _ m a s t e r _ t e m p ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   O N    
  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 ,   1 ,   2 ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 2 ,   1 ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 3 ,   2 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 4 ,   3 ,   4 ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 5 ,   4 ,   5 ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 6 ,   5 ,   7 ,   0 )  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 7 ,   2 ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 8 ,   7 ,   1 1 ,   0 )  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 9 ,   6 ,   1 1 ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 0 ,   6 ,   7 ,   0 )  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 1 ,   5 ,   7 ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   ( [ I d ] ,   [ R o l e I d ] ,   [ E m p I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 2 ,   6 ,   1 2 ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ R o l e _ E m p l o y e e _ M a p p i n g ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ R o l e _ m a s t e r ]   O N    
  
 I N S E R T   [ d b o ] . [ R o l e _ m a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ S t a t u s ] )   V A L U E S   ( 1 ,   N ' E m p l o y e e ' ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ m a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ S t a t u s ] )   V A L U E S   ( 2 ,   N ' M a n a g e r ' ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ m a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ S t a t u s ] )   V A L U E S   ( 3 ,   N ' H R ' ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ m a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ S t a t u s ] )   V A L U E S   ( 4 ,   N ' A c c o u n t ' ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ m a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ S t a t u s ] )   V A L U E S   ( 5 ,   N ' S y s t e m   A d m i n ' ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ m a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ S t a t u s ] )   V A L U E S   ( 6 ,   N ' S u p e r   A d m i n ' ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ m a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ S t a t u s ] )   V A L U E S   ( 7 ,   N ' S u b - A d m i n ' ,   1 )  
 I N S E R T   [ d b o ] . [ R o l e _ m a s t e r ]   ( [ I d ] ,   [ R o l e ] ,   [ S t a t u s ] )   V A L U E S   ( 1 1 ,   N ' S y s t e m   S u p e r   A d m i n ' ,   0 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ R o l e _ m a s t e r ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   O N    
  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 ,   1 ,   1 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 2 ,   2 ,   1 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 3 ,   3 ,   1 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 4 ,   4 ,   1 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 5 ,   1 ,   2 ,   N U L L ,   0 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 6 ,   4 ,   2 ,   N U L L ,   0 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 7 ,   1 ,   3 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 8 ,   4 ,   3 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 9 ,   1 ,   4 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 0 ,   2 ,   4 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 1 ,   3 ,   4 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 2 ,   4 ,   4 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 3 ,   1 ,   5 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 4 ,   2 ,   5 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 5 ,   3 ,   5 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 6 ,   4 ,   5 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 7 ,   2 ,   3 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 8 ,   3 ,   3 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 9 ,   5 ,   N U L L ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 2 0 ,   6 ,   N U L L ,   5 ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 2 1 ,   7 ,   N U L L ,   5 ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 2 2 ,   8 ,   N U L L ,   5 ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 2 3 ,   5 ,   2 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 2 4 ,   2 ,   2 ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   ( [ I d ] ,   [ P r o g r a m e _ i d ] ,   [ U s e r I d ] ,   [ R o l e I d ] ,   [ S t a t u s ] )   V A L U E S   ( 2 5 ,   7 ,   2 ,   N U L L ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ T b l _ R i g h t s ]   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ U s e r _ M a s t e r ]   O N    
  
 I N S E R T   [ d b o ] . [ U s e r _ M a s t e r ]   ( [ I d ] ,   [ N m ] ,   [ E m a i l ] ,   [ M o b i l e ] ,   [ P a s s w o r d ] ,   [ M a n a g e r _ I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 ,   N ' A k a s h   K u m a r ' ,   N ' a k a s h 1 2 3 @ g m a i l . c o m ' ,   N ' 9 3 4 8 3 9 4 3 ' ,   N ' 5 B D 4 D 4 E 7 A B 3 4 9 5 A 1 2 6 0 3 5 C C 0 F C F 0 8 5 5 7 1 9 2 B 0 B 0 2 7 C C 5 4 F 4 F E D E 0 3 4 4 9 8 3 3 A 1 3 B 8 ' ,   N U L L ,   1 )  
 I N S E R T   [ d b o ] . [ U s e r _ M a s t e r ]   ( [ I d ] ,   [ N m ] ,   [ E m a i l ] ,   [ M o b i l e ] ,   [ P a s s w o r d ] ,   [ M a n a g e r _ I d ] ,   [ S t a t u s ] )   V A L U E S   ( 2 ,   N ' R a h u l   K u m a r   V e r m a ' ,   N ' r a h u l 2 1 3 @ g m a i l . c o m ' ,   N ' 7 3 4 8 3 9 4 3 ' ,   N ' 6 1 1 0 E 8 8 1 C 3 B 1 9 1 2 B 7 C 4 D 0 E 6 3 D 6 4 5 A C 9 5 F 5 2 9 F B E A E 7 B D 8 0 D A 7 D C C 5 6 4 3 8 F 7 5 7 C D 8 ' ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ U s e r _ M a s t e r ]   ( [ I d ] ,   [ N m ] ,   [ E m a i l ] ,   [ M o b i l e ] ,   [ P a s s w o r d ] ,   [ M a n a g e r _ I d ] ,   [ S t a t u s ] )   V A L U E S   ( 3 ,   N ' M a y a n k   K u m a r   5 ' ,   N ' m a y a n k 0 0 2 3 @ g m a i l . c o m ' ,   N ' 8 8 4 8 3 9 4 3 5 5 ' ,   N ' 5 3 5 B 3 3 1 1 3 3 8 E A E 1 3 A E B 2 C B 1 3 2 6 3 F 6 B 5 9 4 8 1 5 8 A 7 D E A 5 5 0 9 0 D 8 3 1 3 A 5 7 5 5 2 D 9 D 4 D 1 ' ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ U s e r _ M a s t e r ]   ( [ I d ] ,   [ N m ] ,   [ E m a i l ] ,   [ M o b i l e ] ,   [ P a s s w o r d ] ,   [ M a n a g e r _ I d ] ,   [ S t a t u s ] )   V A L U E S   ( 4 ,   N ' S u m i t   K u m a r ' ,   N ' s m t 0 3 @ g m a i l . c o m ' ,   N ' 7 8 4 8 3 9 4 3 ' ,   N ' F 0 7 6 9 D 9 3 6 6 1 E 2 8 C D D 2 6 2 5 A 6 A A C 0 7 A F E F 3 7 3 A 8 1 D 2 C D C 5 2 9 2 7 9 4 D 0 5 8 A B 7 1 B A 7 C 2 C ' ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ U s e r _ M a s t e r ]   ( [ I d ] ,   [ N m ] ,   [ E m a i l ] ,   [ M o b i l e ] ,   [ P a s s w o r d ] ,   [ M a n a g e r _ I d ] ,   [ S t a t u s ] )   V A L U E S   ( 5 ,   N ' P a w a n   K u m a r 2 ' ,   N ' p a w a n 1 2 3 @ g m a i l . c o m ' ,   N ' 8 7 4 8 3 9 4 3 ' ,   N ' 4 7 6 D 0 D 4 6 5 F 3 7 0 C B A B 7 C 0 4 A 8 B 0 3 B B F A A B 9 2 D A 7 F 5 D A 2 4 1 3 A D 6 C 0 5 D 4 E 3 3 2 6 8 8 5 3 9 5 ' ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ U s e r _ M a s t e r ]   ( [ I d ] ,   [ N m ] ,   [ E m a i l ] ,   [ M o b i l e ] ,   [ P a s s w o r d ] ,   [ M a n a g e r _ I d ] ,   [ S t a t u s ] )   V A L U E S   ( 7 ,   N ' M o h i t   K u m a r   V e r m a ' ,   N ' m o h i t 2 1 3 @ g m a i l . c o m ' ,   N ' 8 8 4 8 3 9 4 3 ' ,   N ' 8 E 0 3 9 8 C B 2 1 B F 0 4 7 1 0 E 6 7 A 6 0 6 7 B 5 0 E F 4 B 3 1 0 9 5 9 F C B 4 9 E 4 D B A 7 E 4 4 E D B A B A 2 2 5 B 3 1 ' ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ U s e r _ M a s t e r ]   ( [ I d ] ,   [ N m ] ,   [ E m a i l ] ,   [ M o b i l e ] ,   [ P a s s w o r d ] ,   [ M a n a g e r _ I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 0 ,   N ' D e e p e s h   K u m a r ' ,   N ' d e e p e s h 1 2 @ g m a i l . c o m ' ,   N ' 9 8 7 7 6 2 2 3 5 5 ' ,   N ' 5 9 9 4 4 7 1 A B B 0 1 1 1 2 A F C C 1 8 1 5 9 F 6 C C 7 4 B 4 F 5 1 1 B 9 9 8 0 6 D A 5 9 B 3 C A F 5 A 9 C 1 7 3 C A C F C 5 ' ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ U s e r _ M a s t e r ]   ( [ I d ] ,   [ N m ] ,   [ E m a i l ] ,   [ M o b i l e ] ,   [ P a s s w o r d ] ,   [ M a n a g e r _ I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 1 ,   N ' N e e r a j   S r y a s h a n s h ' ,   N ' n e e r a j 2 2 @ g m a i l . c o m ' ,   N ' 9 3 2 8 4 2 3 4 ' ,   N ' 0 3 A C 6 7 4 2 1 6 F 3 E 1 5 C 7 6 1 E E 1 A 5 E 2 5 5 F 0 6 7 9 5 3 6 2 3 C 8 B 3 8 8 B 4 4 5 9 E 1 3 F 9 7 8 D 7 C 8 4 6 F 4 ' ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ U s e r _ M a s t e r ]   ( [ I d ] ,   [ N m ] ,   [ E m a i l ] ,   [ M o b i l e ] ,   [ P a s s w o r d ] ,   [ M a n a g e r _ I d ] ,   [ S t a t u s ] )   V A L U E S   ( 1 2 ,   N ' A r y a n   K u m a r ' ,   N ' a r y a n @ g m a i l . c o m ' ,   N ' 9 3 2 8 4 2 9 3 4 ' ,   N ' 8 6 2 2 F 0 F 6 9 C 9 1 8 1 9 1 1 9 A 8 A C F 6 0 A 2 4 8 D 7 B 3 6 F D B 7 C C F 8 5 7 B A 8 F 8 5 C F 7 F 2 7 6 7 F F 8 2 6 5 ' ,   3 ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ U s e r _ M a s t e r ]   O F F  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ r a i s e _ e r r o r ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   p r o c   [ d b o ] . [ r a i s e _ e r r o r ]  
 a s  
 b e g i n  
  
       D E C L A R E   @ E r r o r M e s s a g e   N V A R C H A R ( 4 0 0 0 ) ;  
         D E C L A R E   @ E r r o r S e v e r i t y   I N T ;  
         D E C L A R E   @ E r r o r S t a t e   I N T ;  
  
         S E L E C T    
                 @ E r r o r M e s s a g e   =   E R R O R _ M E S S A G E ( ) ,  
                 @ E r r o r S e v e r i t y   =   E R R O R _ S E V E R I T Y ( ) ,  
                 @ E r r o r S t a t e   =   E R R O R _ S T A T E ( ) ;  
 	 	  
         R A I S E R R O R   ( @ E r r o r M e s s a g e ,   - -   M e s s a g e   t e x t .  
                               @ E r r o r S e v e r i t y ,   - -   S e v e r i t y .  
                               @ E r r o r S t a t e   - -   S t a t e .  
                               ) ;  
 	 e n d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ u s d _ g e t _ p r o g r a m _ p a t h ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   p r o c   [ d b o ] . [ u s d _ g e t _ p r o g r a m _ p a t h ]  
 @ U s e r I d   I N T  
 a s  
 b e g i n  
 s e l e c t   p . I d ,  
 	 p . P _ t i t l e   t i t l e ,  
     C A S E   W H E N   p . P a t h = ' C l a i m / S h o w C l a i m '   T H E N 	 p . p a t h + ' ? R o l e = ' + ( s e l e c t   R o l e   f r o m   R o l e _ m a s t e r ( n o l o c k )    
 	 	 	 w h e r e   I d = ( s e l e c t   R o l e I d   f r o m   R o l e _ E m p l o y e e _ M a p p i n g ( n o l o c k )   w h e r e   E m p I d = @ U s e r I d ) )    
 	 	 	 E L S E   p . P a t h   E N D  
 	 	 	 p a t h ,  
 	 p . D e s c r  
 	 f r o m   P r o g r a m _ M a s t e r   p    
 	 i n n e r   j o i n   T b l _ R i g h t s   t r   o n   p . I d = t r . P r o g r a m e _ i d    
 	 	 w h e r e   t r . U s e r I d   =   @ U s e r I d    
 	 	 A N D   (   p . S t a t u s   = 1   A N D   t r . S t a t u s   = 1   )  
 	 	 O R  
 	 	 t r . R o l e I d   i n ( S E L E C T   R o l e I d   F R O M   R o l e _ E m p l o y e e _ M a p p i n g ( n o l o c k )   w h e r e   E m p I d = @ U s e r I d   )  
  
 	 	 o r d e r   b y   p . D i s p l a y _ S e q u e n c e  
  
 e n d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ u s p _ a s s i g n _ r o l e ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 c r e a t e   p r o c   [ d b o ] . [ u s p _ a s s i g n _ r o l e ]  
 @ r o l e I d   i n t ,  
 @ U s e r I d   i n t ,  
 @ S t a t u s   i n t  
 a s  
 b e g i n  
  
 i f ( E X I S T S ( S E L E C T   1   F R O M   R o l e _ E m p l o y e e _ M a p p i n g ( N O L O C K )    
 	 w h e r e   E m p I d = @ U s e r I d   A N D   R o l e I d = @ r o l e I d   A N D   S t a t u s   = 1 ) )      
   B E G I N      
   T H R O W   5 0 0 0 0 ,   ' R o l e   A l r e a d y   a s s i g n e d ! ' ,   1      
   r e t u r n      
   E N D      
   b e g i n   t r y      
   b e g i n   t r a n s a c t i o n   t r n _ r o l e      
  
   u p d a t e   R o l e _ E m p l o y e e _ M a p p i n g   s e t   S t a t u s = 0   w h e r e   E m p I d = @ U s e r I d  
  
   i n s e r t   i n t o   R o l e _ E m p l o y e e _ M a p p i n g ( R o l e I d , E m p I d , S t a t u s )   V A L U E S  
   ( @ r o l e I d , @ U s e r I d , @ S t a t u s )  
  
   - - - - - - - - - - i n s e r t   r e c o r d   i n   a c t i o n   t a b l e - - - - - - - - - - - - - - - -      
   C o m m i t   t r a n s a c t i o n   t r n _ r o l e      
   - - - - - - - - - - - - - - - - - - -      
   e n d   t r y      
   b e g i n   c a t c h      
   r o l l b a c k   t r a n s a c t i o n   t r n _ r o l e      
   e x e c   r a i s e _ e r r o r      
   e n d   c a t c h      
  
 e n d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ U S P _ C h e c k _ P r o g r a m _ R i g h t s ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C   [ d b o ] . [ U S P _ C h e c k _ P r o g r a m _ R i g h t s ]  
 @ U s e r I d   I N T ,  
 @ P a t h   V A R C H A R ( 2 0 0 )  
 A S  
 B E G I N  
  
 d e c l a r e   @ p r o g r a m I d   I N T  
 d e c l a r e   @ r o l e I d   I N T  
 s e l e c t   @ p r o g r a m I d = I d   f r o m   P r o g r a m _ M a s t e r   W H E R E   P a t h = @ P a t h   A N D   S t a t u s = 1  
 s e l e c t   @ r o l e I d = R o l e I d   f r o m   R o l e _ E m p l o y e e _ M a p p i n g   W H E R E   E m p I d = @ U s e r I d   A N D   S t a t u s = 1  
  
 i f ( E X I S T S ( S E L E C T   1   F R O M   T b l _ R i g h t s ( n o l o c k )   W H E R E   P r o g r a m e _ i d = @ p r o g r a m I d   A N D   ( U s e r I d = @ U s e r I d   O R   R o l e I d = @ r o l e I d )   A N D   S t a t u s = 1 ) )  
 b e g i n  
 s e l e c t   1   a s   r e s u l t  
 e n d  
 e l s e  
 b e g i n  
 s e l e c t   0   a s   r e s u l t  
 e n d  
 E N D  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ U S P _ C L A I M _ T R A N S A C T I O N ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ U S P _ C L A I M _ T R A N S A C T I O N ]  
 @ e m p I d   I N T ,  
 @ c l a i m I d   I N T  
 A S  
 B E G I N  
 	 B E G I N   T R Y  
 	 	 B E G I N   T R A N   c l a i m _ t r a n  
 	 	 D E C L A R E   @ a m o u n t   D E C I M A L ;  
  
 	 	 S E L E C T   @ a m o u n t   =   A m o u n t   F R O M   C l a i m _ M a s t e r ( N O L O C K )   W H E R E   I d   =   @ c l a i m I d ;  
 	 	 I N S E R T   I N T O   E m p l o y e e _ C l a i m _ T r a n s a c t i o n ( T r a n s a c t i o n _ N o ,   E m p l o y e e _ I d ,   A m o u n t ,   T r a n s a c t i o n D t ,   C l a i m I d ,   S t a t u s )    
 	 	 	 	 V A L U E S (  
 	 	 	 	 	 4 5 8 5 ,  
 	 	 	 	 	 @ e m p I d ,  
 	 	 	 	 	 @ a m o u n t ,  
 	 	 	 	 	 G E T D A T E ( ) ,  
 	 	 	 	 	 @ c l a i m I d ,  
 	 	 	 	 	 1  
 	 	 	 	 	 )  
 	 	 C O M M I T   T R A N   c l a i m _ t r a n  
 	 	 E N D   T R Y  
 	 	 B E G I N   C A T C H  
 	 	 R O L L B A C K   T R A N   c l a i m _ t r a n  
 	 	 E X E C   r a i s e _ e r r o r  
 	 	 E N D   C A T C H  
 E N D  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ u s p _ g e t _ c l a i m _ a c t i o n _ h i s t o r y ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
  
 C R E A T E   p r o c   [ d b o ] . [ u s p _ g e t _ c l a i m _ a c t i o n _ h i s t o r y ]  
 @ c l a i m _ i d   i n t  
 a s  
 b e g i n  
  
 s e l e c t    
 c o n v e r t ( v a r c h a r ( 1 0 0 ) , e c . A c t i o n D t , 1 0 3 )   A c t i o n D t ,  
 u r . N m ,  
 C A S E  
 	 W H E N   e c . A c t i o n = ' I n i t i a t e d '   T H E N   ' C l a i m   R a i s e d   b y   ' + u r . N m  
 	 W H E N   e c . A c t i o n = ' P e n d i n g   a t   H R '   T H E N   ' C l a i m   a p p r o v e d   b y   M a n a g e r   ' + u r . N m  
 	 W H E N   e c . A c t i o n = ' R e j e c t e d   B y   M a n a g e r '   T H E N   ' C l a i m   r e j e c t e d   b y   M a n a g e r ' +   u r . N m  
 	 W H E N   e c . A c t i o n = ' R e j e c t e d   B y   H R '   T H E N   ' C l a i m   r e j e c t e d   b y   H R ' + u r . N m  
 	 W H E N   e c . A c t i o n = ' P e n d i n g   a t   A c c o u n t '   T H E N   ' C l a i m   a p p r o v e d   b y   H R ' + u r . N m  
 	 W H E N   e c . A c t i o n = ' C o m p l e t e d '   T H E N   ' C l a i m   c o m p l e t e d   b y   A c c o u n t   ' + u r . N m   E N D   A c t i o n ,  
  
 e c . R e m a r k s   f r o m   E m p l o y e e _ C l a i m _ A c t i o n ( n o l o c k ) e c  
 J O I N  
 U s e r _ M a s t e r ( n o l o c k ) u r   o n   u r . I d = e c . A c t i o n B y  
 w h e r e   e c . C l a i m I d = @ c l a i m _ i d  
  
 e n d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ U S P _ G E T _ P e n d i n g _ R e q u e s t ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C   [ d b o ] . [ U S P _ G E T _ P e n d i n g _ R e q u e s t ]  
 @ r o l e   v a r c h a r ( 2 0 ) ,  
 @ u s e r i d   i n t  
 a s  
 b e g i n  
  
 	 s e l e c t   c m . I d ,  
 	 	 	 c m . A m o u n t ,  
 	 	 	 c m . C l a i m _ T i t l e ,  
 	 	 	 c m . C l a i m _ R e a s o n ,  
 	 	 	 c m . C l a i m _ D e s c r i p t i o n ,  
 	 	 	 c m . C l a i m D t ,  
 	 	 	 c m . E v i d e n c e ,  
 	 	 	 c m . E x p e n s e D t ,  
 	 	 	 c m . C u r r e n t S t a t u s ,  
 	 	 	 u m . N m  
 	 f r o m   C l a i m _ M a s t e r ( n o l o c k )   c m  
 	 J O I N  
 	 U s e r _ M a s t e r ( n o l o c k ) u m   o n   u m . I d = c m . U s e r I d  
 	 W H E R E   c m . C u r r e n t S t a t u s = (  
 	 s e l e c t   r m . A c t i o n   f r o m    
 	 E m p l o y e e _ C l a i m _ R o l e _ M a s t e r ( n o l o c k ) r m   w h e r e   r m . R o l e = @ r o l e  
 	 )   A N D   (   u m . M a n a g e r _ I d =   C A S E   W H E N   @ r o l e   =   ' M a n a g e r '   T H E N    
 	 	 	 @ u s e r i d   E L S E   u m . M a n a g e r _ I d  
 	 	 	 E N D )  
  
  
 e n d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ u s p _ g e t _ p r o g r a m s _ r i g h t s ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 - - 	 e x e c   u s p _ g e t _ p r o g r a m s _ r i g h t s   7  
 C R E A T E   p r o c   [ d b o ] . [ u s p _ g e t _ p r o g r a m s _ r i g h t s ]  
 @ u s e r I d   i n t  
 a s  
 b e g i n  
  
 	 d e c l a r e   @ r o l e i d   i n t  
 	 s e l e c t   @ r o l e i d = R o l e I d   f r o m   R o l e _ E m p l o y e e _ M a p p i n g ( n o l o c k )    
 	 	 	 w h e r e   E m p I d = @ u s e r I d   a n d   S t a t u s = 1  
  
 	 s e l e c t   i d , P _ t i t l e , D e s c r    
 	 	 i n t o    
 	 	 # p r o g r a m _ t e m p   f r o m   P r o g r a m _ M a s t e r ( n o l o c k )   w h e r e   S t a t u s = 1  
 	  
 	 a l t e r   t a b l e   # p r o g r a m _ t e m p   a d d   i s c h e c k e d   t i n y i n t  
  
 	 u p d a t e   t  
 	 	 s e t   t . i s c h e c k e d = 1  
 	 	 f r o m   # p r o g r a m _ t e m p   t  
 	 	 J O I N  
 	 	 T b l _ R i g h t s ( n o l o c k )   r    
 	 	 	 o n   r . P r o g r a m e _ i d = t . I d   a n d  
 	 	 	 ( r . U s e r I d = @ u s e r I d   O R   r . R o l e I d = @ r o l e i d )   a n d    
 	 	 	 r . S t a t u s = 1  
  
 	 s e l e c t *   f r o m   # p r o g r a m _ t e m p  
 	 d r o p   t a b l e   # p r o g r a m _ t e m p  
 e n d  
  
  
  
  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ U S P _ G E T _ R O L E S ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C   [ d b o ] . [ U S P _ G E T _ R O L E S ]  
 A S  
 B E G I N  
 S E L E C T   I d , R o l e   F R O M   R O L E _ M A S T E R ( N O L O C K )   W H E R E   S t a t u s = 1  
 E N D  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ u s p _ g e t _ t r a n s a c t i o n _ d a t a ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 c r e a t e   p r o c   [ d b o ] . [ u s p _ g e t _ t r a n s a c t i o n _ d a t a ]  
 @ U s e r I d   I N T  
 A S  
 B E G I N  
  
 S E L E C T  
 	 	 t . T r a n s a c t i o n _ N o   ,  
 	 	 c . C l a i m _ T i t l e ,  
 	 	 c . C l a i m _ R e a s o n ,  
 	 	 c . A m o u n t ,  
 	 	 c . C l a i m _ D e s c r i p t i o n ,  
 	 	 c . C l a i m D t ,  
 	 	 t . T r a n s a c t i o n D t ,  
 	 	 u . N m   A p p r o v e d B y  
 	 F R O M   E m p l o y e e _ C l a i m _ T r a n s a c t i o n ( n o l o c k ) t  
 	 	 J O I N   C l a i m _ M a s t e r ( n o l o c k ) c   o n   c . I d = t . C l a i m I d  
 	 	 J O I N   U s e r _ M a s t e r ( n o l o c k )   u   o n   u . I d = t . E m p l o y e e _ I d  
 	 	 W H E R E   c . U s e r I d = @ U s e r I d  
 E N D  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ u s p _ g e t _ u s e r _ b y _ e m a i l ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 c r e a t e   p r o c   [ d b o ] . [ u s p _ g e t _ u s e r _ b y _ e m a i l ]  
 @ e m a i l   v a r c h a r ( 1 0 0 )  
 a s  
 b e g i n  
  
 s e l e c t   I d , N m , E m a i l , M o b i l e , M a n a g e r _ I d    
 	 	 f r o m   U s e r _ M a s t e r ( n o l o c k )    
 	 	 	 	 w h e r e   E m a i l = @ e m a i l  
 e n d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ u s p _ g e t _ u s e r _ b y _ r o l e _ i d ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 c r e a t e   p r o c   [ d b o ] . [ u s p _ g e t _ u s e r _ b y _ r o l e _ i d ]  
 @ r o l e _ i d   i n t  
 a s  
 b e g i n  
  
 s e l e c t   m s t . I d , N m   f r o m   U s e r _ M a s t e r ( n o l o c k   ) m s t  
 	 	 J O I N   R o l e _ E m p l o y e e _ M a p p i n g ( n o l o c k )   r r   o n   r r . E m p I d = m s t . I d  
 	 	 w h e r e   r r . R o l e I d = @ r o l e _ i d  
 	 	  
 e n d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ U S P _ G E T _ U S E R S ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 - - 	 e x e c   U S P _ G E T _ U S E R S  
 C R E A T E   P R O C   [ d b o ] . [ U S P _ G E T _ U S E R S ]      
 A S      
 B E G I N      
 S E L E C T   u . I d , u . N m , i s n u l l ( r m . R o l e , ' R o l e   N o t   A s s i g n e d   Y e t ' )   R o l e   F R O M   U s e r _ M a s t e r ( N O L O C K )   u      
   l e f t   j o i n      
   R o l e _ E m p l o y e e _ M a p p i n g ( n o l o c k )   r   o n   u . I d = r . E m p I d   a n d   r . S t a t u s = 1    
     l e f t   j o i n      
   R o l e _ m a s t e r ( n o l o c k )   r m   o n   r . R o l e I d = r m . I d      
   W H E R E   u . S t a t u s = 1      
 E N D  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ U S P _ L o g i n U s e r ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 c r e a t e   p r o c   [ d b o ] . [ U S P _ L o g i n U s e r ]  
 @ e m a i l   v a r c h a r ( 5 0 ) ,  
 @ p a s s   v a r c h a r ( 1 0 0 )  
 a s  
 b e g i n  
 	 i f ( E X I S T S ( S E L E C T   1   f r o m   U s e r _ M a s t e r ( N O L O C K )   w h e r e   E m a i l = @ e m a i l   a n d   S t a t u s = 1 ) )  
 	 b e g i n  
 	 i f   e x i s t s   ( s e l e c t   1   f r o m   U s e r _ M a s t e r   w h e r e   E m a i l   =   @ e m a i l   A N D   P a s s w o r d   =   d b o . H a s h P a s s w o r d ( @ p a s s ) )  
 	 b e g i n  
 	 	 s e l e c t   1   a s   r e s u l t  
 	 e n d  
 	 e l s e  
 	 b e g i n  
 	 	 s e l e c t   2   a s   r e s u l t  
 	 e n d  
 	 e n d  
 	 e l s e  
 	 b e g i n  
 	 s e l e c t   3   a s   r e s u l t  
 	 e n d  
 e n d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ U S P _ M a n a g e _ U s e r ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
  
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 - - s e l e c t *   f r o m   U s e r _ M a s t e r  
 - -     e x e c   U S P _ M a n a g e _ U s e r   @ A c t i o n = ' g e t a l l ' , @ I d =   7  
  
 C R E A T E   P R O C   [ d b o ] . [ U S P _ M a n a g e _ U s e r ]  
 @ A c t i o n   V a r c h a r ( 2 0 ) ,   - - c r e a t e , u p d a t e , g e t  
 @ I d   I N T = N U L L ,  
 @ N m   V a r c h a r ( 1 0 0 ) = n u l l ,  
 @ E m a i l   V a r c h a r ( 1 0 0 ) = n u l l ,  
 @ M o b i l e   V a r c h a r ( 1 0 0 ) = n u l l ,  
 @ P a s s w o r d   V a r c h a r ( 1 0 0 ) = n u l l ,  
 @ M a n a g e r   I N T = n u l l ,  
 @ S t a t u s   T i n y I N T = n u l l  
 a s  
 b e g i n  
  
 i f ( @ A c t i o n = ' c r e a t e ' )  
 b e g i n  
 	 I N S E R T   I N T O   U s e r _ M a s t e r ( N m ,  
 	 	 	 	 	 	 E m a i l ,  
 	 	 	 	 	 	 M o b i l e ,  
 	 	 	 	 	 	 P a s s w o r d ,  
 	 	 	 	 	 	 M a n a g e r _ I d ,  
 	 	 	 	 	 	 S t a t u s )  
 	 	 	 	 	 	 V A L U E S  
 	 	 	 	 	 	 (  
 	 	 	 	 	 	 @ N m ,  
 	 	 	 	 	 	 @ E m a i l ,  
 	 	 	 	 	 	 @ M o b i l e ,  
 	 	 	 	 	 	 d b o . H a s h P a s s w o r d ( @ P a s s w o r d ) ,  
 	 	 	 	 	 	 @ M a n a g e r ,  
 	 	 	 	 	 	 @ S t a t u s  
 	 	 	 	 	 	 )  
 	 s e l e c t   1   a s   r e s u l t  
 	 e n d  
 	 e l s e   i f ( @ A c t i o n = ' u p d a t e ' )  
 	 	 b e g i n  
 	 	 u p d a t e   U s e r _ M a s t e r   s e t  
 	 	 	 	 	 	 N m = @ N m ,  
 	 	 	 	 	 	 E m a i l = @ E m a i l ,  
 	 	 	 	 	 	 M o b i l e = @ M o b i l e ,  
 	 	 	 	 	 	 M a n a g e r _ I d = @ M a n a g e r ,  
 	 	 	 	 	 	 S t a t u s = @ S t a t u s  
 	 	 	 	 w h e r e   I d = @ I d  
 	 s e l e c t   1   a s   r e s u l t  
 	 	 e n d  
 	 e l s e   i f ( @ A c t i o n = ' g e t ' )  
 	 b e g i n  
 	 s e l e c t 	   i d , 	 n m ,  
 	 	 	 	 E m a i l ,  
 	 	 	 	 M o b i l e ,  
 	 	 	 	 M a n a g e r _ I d ,  
 	 	 	 	 S t a t u s  
 	 	 f r o m   U s e r _ M a s t e r   w h e r e   I d = I S N U L L ( @ I d , I d )  
 	 e n d  
 	 e l s e   i f ( @ A c t i o n = ' g e t a l l ' )  
 	 b e g i n  
 	 s e l e c t 	 u . i d , 	 u . n m ,  
 	 	 	 	 u . E m a i l ,  
 	 	 	 	 u . M o b i l e ,  
 	 	 	 	 u 1 . N m   M a n a g e r ,  
 	 	 	 	 C A S E   W H E N   u . S t a t u s = 1   T H E N   ' A c t i v e '  
 	 	 	 	 	 E L S E   ' I n A c t i v e '   E N D   S t a t u s  
 	 	 f r o m   U s e r _ M a s t e r   u  
 	 	 	 l e f t   J O I N  
 	 	 	 U s e r _ M a s t e r   u 1   O N   u . M a n a g e r _ I d = u 1 . I d  
 	 	 	 w h e r e   u . I d < > @ I d  
 	 	  
 	 e n d  
 e n d  
  
  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ U S P _ R a i s e _ C l a i m _ R e q u e s t ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 - - e x e c   U S P _ R a i s e _ C l a i m _ R e q u e s t   ' R e f u n d   p e r t r o l   c h a r g e s ' , ' t r a v e l ' , 2 0 0 0 , ' 2 0 2 3 - 1 0 - 0 2 ' , ' f a k e . j p g ' , ' t e s t ' , 2  
  
 - - s e l e c t *   f r o m   C l a i m _ M a s t e r  
  
  
 - - t r u n c a t e   t a b l e   E m p l o y e e _ C l a i m _ A c t i o n  
  
  
 C R E A T E   p r o c   [ d b o ] . [ U S P _ R a i s e _ C l a i m _ R e q u e s t ]  
 @ C l a i m _ T i t l e   v a r c h a r ( 1 0 0 ) ,  
 @ C l a i m _ R e a s o n   v a r c h a r ( 5 0 ) ,  
 @ A m o u n t   D E C I M A L ,  
 @ E x p e n s e D t   v a r c h a r ( 1 0 0 ) ,  
 @ E v i d e n c e   v a r c h a r ( 5 0 0 ) = n u l l ,  
 @ C l a i m _ D e s c r i p t i o n   v a r c h a r ( 5 0 0 ) ,  
 @ U s e r I d   i n t  
 a s    
 b e g i n  
  
 	 D e c l a r e   @ c u r r e n t _ s t a t u s   v a r c h a r ( 1 0 0 )  
 	 D e c l a r e   @ C l a i m I D   I N T  
 	 s e l e c t   @ c u r r e n t _ s t a t u s = N e x t A c t i o n    
 	 	 	 f r o m   E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ( n o l o c k )    
 	 	 	 	 w h e r e   C u r r e n t A c t i o n = ' I n i t i a t e d '  
 	  
 	  
 	 i f ( E X I S T S ( S E L E C T   1   F R O M   C l a i m _ M a s t e r ( N O L O C K )   w h e r e   U s e r I d = @ U s e r I d   A N D   C u r r e n t S t a t u s   L I K E   ' % P e n d i n g % ' ) )  
 	 B E G I N  
 	 T H R O W   5 0 0 0 0 ,   ' C l a i m   a l r e a d y   i n   p e n d i n g ' ,   1  
 	 - - r a i s e r r o r ( ' C l a i m   a l r e a d y   i n   p e n d i n g ' , 1 , 1 6 )  
 	 r e t u r n  
 	 E N D  
 	 b e g i n   t r y  
 	 b e g i n   t r a n s a c t i o n   t r n _ c l a i m  
 	 i n s e r t   i n t o   C l a i m _ M a s t e r    
 	 	 	 	 ( C l a i m _ T i t l e ,  
 	 	 	 	 C l a i m _ R e a s o n ,  
 	 	 	 	 A m o u n t ,  
 	 	 	 	 C l a i m D t ,  
 	 	 	 	 E v i d e n c e ,  
 	 	 	 	 C l a i m _ D e s c r i p t i o n ,  
 	 	 	 	 C u r r e n t S t a t u s ,  
 	 	 	 	 S t a t u s ,  
 	 	 	 	 U s e r I d ,  
 	 	 	 	 E x p e n s e D t )  
 	 	 	 V A L U E S  
 	 	 	 	 (  
 	 	 	 	 @ C l a i m _ T i t l e ,  
 	 	 	 	 @ C l a i m _ R e a s o n ,  
 	 	 	 	 @ A m o u n t ,  
 	 	 	 	 G E T D A T E ( ) ,  
 	 	 	 	 @ E v i d e n c e ,  
 	 	 	 	 @ C l a i m _ D e s c r i p t i o n ,  
 	 	 	 	 @ c u r r e n t _ s t a t u s ,  
 	 	 	 	 1 ,  
 	 	 	 	 @ U s e r I d ,  
 	 	 	 	 @ E x p e n s e D t 	 	  
 	 	 	 	 )  
 	 S E T   @ C l a i m I D = S C O P E _ I D E N T I T Y ( ) ;  
 	  
 	 - - - - - - - - - - i n s e r t   r e c o r d   i n   a c t i o n   t a b l e - - - - - - - - - - - - - - - -  
 	 i n s e r t   i n t o   E m p l o y e e _ C l a i m _ A c t i o n (  
 	 	 	 	 	 C l a i m I d ,  
 	 	 	 	 	 A c t i o n ,  
 	 	 	 	 	 A c t i o n B y ,  
 	 	 	 	 	 A c t i o n D t ,  
 	 	 	 	 	 R e m a r k s ,  
 	 	 	 	 	 S t a t u s  
 	 	 	 	 	 )  
 	 	 	 	 	 V A L U E S  
 	 	 	 	 	 (  
 	 	 	 	 	 @ C l a i m I D ,  
 	 	 	 	 	 ' I n i t i a t e d ' ,  
 	 	 	 	 	 @ U s e r I d ,  
 	 	 	 	 	 G E T D A T E ( ) ,  
 	 	 	 	 	 @ C l a i m _ D e s c r i p t i o n ,  
 	 	 	 	 	 1  
 	 	 	 	 	 )  
 	 C o m m i t   t r a n s a c t i o n   t r n _ c l a i m  
 	 - - - - - - - - - - - - - - - - - - -  
 	 e n d   t r y  
 	 b e g i n   c a t c h  
 	 r o l l b a c k   t r a n s a c t i o n   t r n _ c l a i m  
 	 e x e c   r a i s e _ e r r o r  
 	 e n d   c a t c h  
 	 e n d  
  
  
  
  
  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ u s p _ r o l e _ m a s t e r ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
  
 C R E A T E   p r o c   [ d b o ] . [ u s p _ r o l e _ m a s t e r ]  
 @ A c t i o n   v a r c h a r ( 5 0 ) ,  
 @ i d   i n t = 0 ,  
 @ R o l e N a m e   v a r c h a r ( 5 0 ) = n u l l ,  
 @ S t a t u s   t i n y i n t = n u l l  
  
 A S  
 b e g i n  
 	  
 	 b e g i n   t r y  
 	 b e g i n   t r a n s a c t i o n   t r n _ r o l e  
 	 i f ( @ A c t i o n = ' c r e a t e ' )  
 	 	 b e g i n  
 	 	 i f ( E X I S T S ( S E L E C T   1   F R O M   R o l e _ m a s t e r ( N O L O C K )   w h e r e   R o l e   = @ R o l e N a m e ) )  
 	 	 B E G I N  
 	 	 - - r o l l b a c k   t r a n   t r n _ r o l e  
 	 	 T H R O W   5 0 0 0 0 ,   ' R o l e   a l r e a d y   e x i s t ' ,   1  
 	 	 r e t u r n  
 	 	 e n d  
 	 	 i n s e r t   i n t o   R o l e _ m a s t e r   ( R o l e , S t a t u s )   V A L U E S ( @ R o l e N a m e , @ S t a t u s )  
 	 	 s e l e c t   1   a s   r e s u l t  
 	 E N D  
 	 e l s e   i f ( @ A c t i o n = ' u p d a t e ' )  
 	 	 b e g i n  
 	 	 u p d a t e   R o l e _ m a s t e r   s e t   R o l e = @ R o l e N a m e , S t a t u s = @ S t a t u s   w h e r e   i d = @ i d  
 	 	 s e l e c t   1   a s   r e s u l t  
 	 	 e n d  
 	 e l s e   i f ( @ A c t i o n = ' g e t a l l ' )  
 	 	 b e g i n  
 	 	 s e l e c t   i d , r o l e , s t a t u s   f r o m   R o l e _ m a s t e r ( n o l o c k )  
 	 	 e n d  
 	 e l s e   i f ( @ A c t i o n = ' g e t ' )  
 	 	 b e g i n  
 	 	 s e l e c t   i d , r o l e , s t a t u s   f r o m   R o l e _ m a s t e r ( n o l o c k )   w h e r e   I d = @ i d  
 	 e n d  
  
 	 c o m m i t   t r a n   t r n _ r o l e  
  
 	 e n d   t r y  
 	 b e g i n   c a t c h  
 	 r o l l b a c k   t r a n   t r n _ r o l e  
 	 e x e c   r a i s e _ e r r o r  
 	 e n d   c a t c h  
 e n d  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ U S P _ S A V E _ U S E R _ I N D I V I D U A L _ R I G H T S ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
  
  
 C R E A T E   P R O C   [ d b o ] . [ U S P _ S A V E _ U S E R _ I N D I V I D U A L _ R I G H T S ]  
 @ U s e r I d   I N T ,  
 @ R i g h t s   X M L    
 A S  
 B E G I N  
  
 S E L E C T    
 	 n . v a l u e ( ' i d [ 1 ] ' ,   ' V A R C H A R ( 1 0 ) ' )   A S   P r o g r a m _ I D ,  
 	 n . v a l u e ( ' i s c h e c k e d [ 1 ] ' ,   ' V A R C H A R ( 1 0 ) ' )   A S   I s C h e c k e d  
 	 I N T O   # R I G H T S  
 	 F R O M   @ R i g h t s . n o d e s ( ' / A r r a y O f P r o g r a m s R i g h t s / P r o g r a m s R i g h t s ' )   A S   p ( n )  
  
 	 - - - - - - D E L E T E   A L L   N O - A C T I O N A L B L E   P R O G R A M S - - - - - - - - - - - - - - - - -  
 	 d e l e t e   f r o m   # R I G H T S    
 	 	 w h e r e   P r o g r a m _ I D    
 	 	 	 	 n o t   i n ( s e l e c t   P r o g r a m e _ i d   f r o m   T b l _ R i g h t s   w h e r e   U s e r I d = @ U s e r I d )   a n d   I s C h e c k e d = 0  
 	  
 	 U P D A T E   T  
 	 	 S E T   T . S t a t u s = r . I s C h e c k e d  
 	 	 F R O M   T b l _ R i g h t s   T  
 	 	 J O I N  
 	 	 # R I G H T S   r   O N   r . P r o g r a m _ I D = t . P r o g r a m e _ i d   W H E R E   t . U s e r I d = @ U s e r I d  
  
  
 	 i n s e r t   i n t o   T b l _ R i g h t s  
 	 	 	 ( P r o g r a m e _ i d ,  
 	 	 	 U s e r I d ,  
 	 	 	 S t a t u s )  
 	 	 S E L E C T  
 	 	 	 P r o g r a m _ I D ,  
 	 	 	 @ U s e r I d ,  
 	 	 	 I s C h e c k e d  
 	 	 	 F R O M   # R I G H T S  
 	 	 	 	 W H E R E   P r o g r a m _ I D   n o t   i n ( s e l e c t   P r o g r a m e _ i d   f r o m   T b l _ R i g h t s   w h e r e   U s e r I d = @ U s e r I d )  
  
 	 - - s e l e c t *   f r o m   # R I G H T S  
 	 d r o p   t a b l e   # R I G H T S  
  
  
 E N D  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ u s p _ u p d a t e _ c l a i m ]         S c r i p t   D a t e :   1 2 / 4 / 2 0 2 3   1 0 : 1 0 : 2 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
  
 C R E A T E   p r o c   [ d b o ] . [ u s p _ u p d a t e _ c l a i m ]  
 @ r o l e   v a r c h a r ( 2 0 ) ,  
 @ a c t i o n   t i n y i n t ,   - - a c t i o n   w i l l   1 - a p p r o v e   0 - r e j e c t  
 @ r e m a r k   v a r c h a r ( 2 0 0 ) ,  
 @ c l a i m i d   i n t ,  
 @ u s e r i d   i n t  
 a s  
 b e g i n  
  
 d e c l a r e   @ c u r r e n t _ s t a t u s   v a r c h a r ( 1 0 0 )  
 d e c l a r e   @ n e x t _ a c t i o n   v a r c h a r ( 1 0 0 )  
  
 s e l e c t   @ c u r r e n t _ s t a t u s = C u r r e n t S t a t u s    
 	 	 f r o m   C l a i m _ M a s t e r ( n o l o c k ) c m   w h e r e   c m . I d = @ c l a i m i d  
  
 s e l e c t   @ n e x t _ a c t i o n = N e x t A c t i o n    
 	 	 f r o m   E m p l o y e e _ C l a i m _ M a s t e r _ M a p p i n g ( n o l o c k ) m p  
 	 	 	 w h e r e   m p . C u r r e n t A c t i o n = @ c u r r e n t _ s t a t u s   a n d   m p . S t a t u s = @ a c t i o n  
  
 b e g i n   t r a n   t r n _ u p d a t e _ c l a i m  
 	 b e g i n   t r y  
 	 u p d a t e   C l a i m _ M a s t e r   s e t   C u r r e n t S t a t u s = @ n e x t _ a c t i o n   w h e r e   I d = @ c l a i m i d  
  
 	 i n s e r t   i n t o   E m p l o y e e _ C l a i m _ A c t i o n (  
 	 	 	 	 	 	 C l a i m I d ,  
 	 	 	 	 	 	 A c t i o n ,  
 	 	 	 	 	 	 A c t i o n B y ,  
 	 	 	 	 	 	 A c t i o n D t ,  
 	 	 	 	 	 	 R e m a r k s ,  
 	 	 	 	 	 	 S t a t u s  
 	 	 	 	 	 	 )  
 	 	 	 	 v a l u e s  
 	 	 	 	 	 	 ( @ c l a i m i d ,  
 	 	 	 	 	 	 @ n e x t _ a c t i o n ,  
 	 	 	 	 	 	 @ u s e r i d ,  
 	 	 	 	 	 	 g e t d a t e ( ) ,  
 	 	 	 	 	 	 @ r e m a r k ,  
 	 	 	 	 	 	 1    
 	 	 	 	 	 	 )  
 	 I F   @ r o l e   =   ' A c c o u n t '  
 	 	 B E G I N  
 	 	 	 E X E C   U S P _ C L A I M _ T R A N S A C T I O N   @ u s e r i d ,   @ c l a i m i d ;  
 	 	 E N D  
  
 	 c o m m i t   t r a n   t r n _ u p d a t e _ c l a i m  
 	 e n d   t r y  
 	 b e g i n   c a t c h  
 	 r o l l b a c k   t r a n   t r n _ u p d a t e _ c l a i m  
 	 e n d   c a t c h  
  
  
  
 e n d  
 G O  
 