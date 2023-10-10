#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo DRIWW PROJECT $0; exit 1
fi; exit $res
BZh91AY&SY=�C� ������������������PF@�   @ `1>����!^o}Lݳ[���;'w��_t��O�M�u�Q齕@���}�wsv��sf��\�q��۱�5��,Q�]����v�j'�z���ݫ��V�v�[]���]������c]p�M����\t���[rgg�%��a2	�S2#&T�Q�Q���OFI���=M��xP�4hѠ�44��<���=  i�3H��   4�� 	���Sz�����F���44ɡ�4@    &�S#DИ&������#$x���=F�4i� �   "IA�2�S��f�Bzj���liM=�6&I�z�S@   A"A � &�0A2�����h��)�@4��h@h���9�U	"��]-4
!�s��
13�����{`z��y�~��}?O"�����K�r�QZ~ֲ,k'Q1m8 ����S��+�Z�-kOr˾��f�&6L��f~����pbr0 bd�b���Rb�(��s,�w������-��ṑ�~gdm
��/b���g�@Ѻ��PZ�hJ�MD2:?�4�TU��"{P�;�l����lV����1Y����r!l��3�ap��>B0��óS�=W���q�S����כmpr8�a���Pf�1�˞�c�����]�f,4(Q������eF!�L��&��[��]��e3��^��f��Lr�g�5wnX0˽����Y�]J��T��a,͝؃�@��M$c�"C���VAG B�xe]l��(р�7%m�����oH��Z��2z���DW�P1
���	ct1�31��w݂�%�y�h~�f}�Fg���TZ�r�*V[�שN�Ǯ��'D�=I&�� W��!#����=��	�S}J ��F4Cƶ31�"���څoJ�շ-�3́��d����4����J,�x�>�U;���e��K�:����dM�8�n�w\/��y�)����&�������n�����[�L�2��W?��|0�i؃G��cŊ��N�Y�T�_1Ll;�dF�ۨ��(;R��$�2��'����E^�;>	q.�����s���e(�f=�׼�=;�[wx��ҢR��Օ��qP��SE:��Y:����h�����/���J�5q�7�O���h������鸑�A���$�ϲ3̅��y4zBA�8�r7&Ov��f�_�n�{�u.��c+��Ë޵[�UܵU��(8�S0u��G�Ou��d 2�I�-b�B���=6��[�'!˷21KK��X�ʪ�P����'�|>v\�#�'Q����>�6�cHJ���AO���u�@���_؋����$fW9�+xx�;4l�!�����?���`�� M��#ܽ,��M�W��o���}�@�g�kvu���a(�����ۭ $3�D�%��zܛύ ���z0Mq�[/H�<q�T�M��`�ّYС��Gq�V�!_�RW�������[���/hd��qI��@	~��pmA���n���C���JZ�x6�53M��?kn�7JW	���]-F龐"'�� �����`A�r����Ć��h�1��<xDGk�cR�/1���؝�x��*�eеC���F�A:B���RE�)�ŋ+:1hD�U_��\a#�i�W�a�it�.mU=M�R�|����sz�������$�B�$)��,M�[���c��*��H� p΁/ê�*�6��q���!X\{�%��գH�JH�Ͷ��U.��ˍ�o^.-f�����	�,[U��u�x~Lk�@�n���3���H̙QXw��ɥ�1�F�~���3H)�{��H���H�̓' �&�m�z��U
~K�0�6�v�"tD(+�QY�	���'Y$�v�1,���""�{t���^�Y6g��nJa�qP��Ch���ݓ�4�Ӯb0=X��kn�p�<��^o�稿}��-��8�4Qp��``��S�1�qI".d'��Zc�
�C,�h��l�4����v�њ1>0�Y�d@�Rκ{�'���ӿ�h��L(ŲZ�d���� �^�8�h��M���l����t��3��#�{�1��B� �+h��T�(�I�6��(�A�;�h�a,n)��m��
���]���K�%n �F=�i��9�G�֍̑u�U����7���vwO�
^|����/�eNt���`#Y,?����lث��<�xm�Qag�q���*y4����U��I���چ8�]~k�J���-��W�l1�R��Dj�[W]NM�������x� �1��=�J:�f�7U^Z���n��̳i7�J�LWF _����h������I��R &6�M+�R~GWZ"NuF�N�+~B��$;7�+�};߳�P�v�L��r��p7.�Y�*���&�C1��
��>|2C�ֵ��va�{mk��,���oM�X웴uP��G6���<�xV��.'i��M�/V! �m�f�����u����7��t�ǆ-�&��;���ށ�8�����؍V���T@,��1�3�����,
���7&�I�j�NW&�	<&����z,2W�_e�CK_��Um@��f|�"���kQTGE���*���i�A,|,h��龖�b9����uy;�2�㝺4���7��׵N�������uOBss�����nݗ\=_�}�i�����Eb>�iL���V<��n9�� �C�m����r��%2Jcb�v��fJF?P��@�_�(�C⤤)� Ԩ]���!e"Z}�u�[���N��h�6eT��!{�x���E"��U�cU�#�<�U-�ڬ���E���[o�ئ��}�R��s�]�E���b�1��ʹ������S����+�ܵJP?V���
C�#6�C�TmZ�sqN��ôZV�=L����Gt(a���D�� K�Ig����.���>�9� 4L�)t*���\`H�Y%u�;1����=�>�W��^���#��ooSU�t��6�M_L����n��B$�.0��\�ιǹ=�{(t��8u�K�;�Z|�ō�m�kI}pV�<ғ4�sD�s��(�,�B��c�p@y��,�}G)Fg��N���D���~h�:>�~ ��5���t�:s�rur��m&sK�O,>4����*�_�&���_�CU�.y�o���l���=S�d	7��y/�[�KL��93����m���Ȯ��J�� g$��I�V�la�U��Z �բ�	^#2�61Z��Sx���u��q��qSV�Z�$xO�$y�15�V/}�O��$Bh�9ذs��]+�KbaYl諝%�S��T�-�I�C�aF�b��)(�QC��'j+>.�ŷ���Tn'�I���['��f	
��"h}�>�}ӣ��F�L]�]u��93ނ@�̧��=��Y�@����V�~����XY(bT�}�FC�2�3�FBS��hv��^��{�s�i#`apN�j tk�hx־D�C�������n?!��~!#�N,����D��6q/�3]�fz�� <ƭǁUm5�u������4"!��wj �E�X-y�e�`�z�\X��)�UH�QDDb"�)`Z�ɚ}�@����ckp�Q�΍��:��=t�Eڢ��V�S�Jl�o
m.&t�B'Xm�ۘ
4���0���$ZLذW���Uf�%���Si`�{�kF��V�G9���z-�;J� ^/ęɡhh�Ѡ�T}��2>=!�P:��jjq���>vm�K�B�9\2�옛�`J@��0$vh�V�bY[���qӀ�O�s��1��1):`� ΂2�ݬ����z�ġ�NOE��qc�ӡ���&������l��+8���u�����{@�!�{w���u�%���m�_j�yKj;�k�_'Çh���W�F�2pr3��ʞ�J�
:cw���=���R��z�Y��Lb�Z�;�����|C$qZ���ݶ��%�������կny��Ԉ!��]��*T�͉��C�ۮR�=9�[�c�i,�j���MӢ�ۥ^�H��4u�cn�Q-[{_^l�{(E#*$��m�C�[���"��M\�:_@C�P�v��&"n*Ԉ\�R�8v��컪z���mg�׸�[~_c���07�A)5,�T"��R �Ga��U����7����|�*:t����*���sG��/������?���K@B��.���
=
zW�ۧ��7�&�OS���vx�������v�cr���XB��J��Ր����>lY��;�I� 4S����Rp ���w|o�٧�G�j��`�5�*^�1��sAg)���J$lA�[Y&Tx��cca!BR<gH��=0�I	 ���C��!��܃K������=1A$b!���u�P9�	�:��PaA��z5"}���1�p���mbhܝ�I�ay���>���#H穈��61��P�D:�@P ��S�������Ŧ����.������7|p&US��%*��K��d��m&W3�&��҃�u��i�O�QP0Hk?�^y��zZ+�H��?OYsM��J3S��xkv������{At/��2�ε_XX(��}����H�|�<C�H4!��"JL���e*!�5�m�C�ܼ"	�=-ުJD^�k�q=}v�r<O�F�D�,��1V��>������t[���>6�E�3��N�[����y��"����h����#�ϑ��7�H�Ir:�Gr�bէ�\�[]�������3�E�Wx��ȡ�=]&W\�GA��M���W$j��^��8i5)�,g�����x��K�_h%q֤�t� 8C���BH �م]��!������6y�[����$�v�B�%}�ߞ�*�4.#]���j�7L
����u�+�A�ؽ-��A�v����d�U#��d5����V�8��Ȣ��&�<�u�98��g�&�(��紝��˦?�l��Iz�Ċڿ�8�ZF�]hGS�9���g}�O��J����UnnVk[Q1c耫�آ�Gؠ0^`kUHw�$$�g��B���*%�V\a-�ҰY��kV��P�~A8܅E������|JH���&csi��:;5�����;%I�ǐ��M&M�����pdYr�'��<��pMk?�)q�j8�CR���}O��_H7lI��Ѹ٠4q�#�����b�O��nu!��������.P�K.��P|������e�(x���w �X���Jț�b?�Y� @�I~��rC�s/g�������D7���Z~?����	��R�_'�sn�4�*�*(�"~���Ҝ�'l��pqH{���-�O#�!y��)��`�1ѝ���Z��;�[�
;� w/�bf�=��G����R��5V�!ѕ�2dg�yg�4S
kq� ���&ʣ�Ҵ�J�(L�%!�tRI M��Z��Ǵ7U���X�9�&g� �}NeH�Ǫ���@q&bu�$�[����e���q���1�ZaT!�QBZ��nI��3ga'��Cv1g������\��Y�"�^�6�l��,J�"JurU�)!�};��u��/{�y�t-1�v����w��g4��,=,���a'Q쳨U�v"�C�tsHu�t���k>5h��֙2y!0�.Y��<��qG����H�����	]h1�Sh�L��PSUE�K�Ql�;�B�XM�(h�%���}{�b& �a�%�ϟ=��6��HX��&&Є� 6LҾ�`�n8[���h�g�>]�/��_t��L�8S	���OZ9�N�gm�q@��fbD`�B(" ��-�b#r��E
2�j!C{W�tXФ��p��K��e����s��bh�x4�1�
ͷU��
�S}�16qdK2�Klv�i�y�̠�La!x��C6�ݝu"*�Xɶ��#UBŻX;4�ur\�wO��1��
R��"����m�Q"B��VrۛM�I�'�X��o,���@e�Vˍml��In�w�����eԘ]�jf�a�a�3�˲ Ҭ�c�U��d�����	C((�m�w&�{�q�2l\#�ʎ�HH&A#>�a�D�m�;W3����� oC�h��]��A@DB[�;H��nf�BD@f rx\#z��5`}8��i��-R���8+�ZM���c;d�<� ���WcG`�& ��^%���+}縄�� .?�>��a�3W�
+oa//���\O�R�A�[j�
��T*"G�BV��<��8��NӔ��!�e%b�Ie5t���[í���ZC� �*쮛n�%�q���;.���_S���AL��������|Ս��1��c9V��﬜6�p�-����&��	f/(}`�m�mtoZk�g�[Ng�,�T�`�t�E�\�r��2�L����g���H�Y�����3�Aj*���""�&�l_�p������za�����!�"�`O��`�����Q�Җ.Zw�22�WIk�GQ������#Ƒ�)�U�F�m �&�1���y�n䤲�56��JIh$�8+H��T[�̊}I���G��	~�*�z�ᑣff�	��
R�o��^�G�� �K'���CGՠ\hd�w��u���-�fA��G$��	-�D�����
�c��9Ra�Q�tl�g\D�Œ9!�5	ʤ�vH���^x9�.}9����}:��*�LpG�&�dE��2"E�Tb�AY���-�F/�>�ܘ-b�V�)V;�wR;��lyne�Z�*�h*T[��sQ����,Uh���*熽�����/��6�,#���P�N���S,�,�AV+g�{���)>ώ�"�o� \�"��@�r���l+�"�����@2����g%V�oɞ�o;���7�
�LN����]0M�;�i�zH���xR'�<W�H��>¥��-��l�s	�
NP�\�6	��W�{�TA����#��W�*E�D8b0#�@.6O`�G%B$��?�@F�.U��Q�ՙ���A�\,�|<5�K$�ؑ���w�;��`��o��<�yq�,M�`��"	�� x"�EĪ��i$��D);H���b�0�����4��w�D�!�0/n�s��2=&�TZ^h�,�6���9"�n��]�d�i؅���6�cM�ڑLQ���"iOK��+K�U��xF9��EXd{�ЭI�'$K�kv@�#K��*;�t!zY���#"+��z�x�V]B�}���>�(C){����ԕc�.��T9	$X�VA ���á|}^����)c-��f�k/s ��c	���	!ڀu��{������k��F"D�=����1.+J��CD��蓜�"�*(H(# ) 7��x�L��ڪ����Fλ�a��m��K<�ĕ�P�B$���(��� �K�	�Α�:�A�y��&U�P��0���I^�`�1�ĄzU����(�L��|� �6j�5!A�I~x�'��VwҘ ��"�:\ܻ�l��c9�����E�`3{ ��:Ɇ���l� i���md�Ee�H���2|�_E�H]
�e�df	�"�Z��H�U&"ћ�Be˛2F�����jS�<�H�c?�c<�[���#�A���$��H�a)kz�fHu'��ŢBe�̮j��V�Gs�b��si3�6���{/織9֌_�b#Xe���Z�����7�{lBhX�'薥m�ȁQs5�Jx����Zb�`)9�%$+c��-���z6���"`�	���!�	��&@fZ�΁<����00�<!��T~O�����#A酔�LhN8�S��9�JW�Ǳh0��F��`�#�^y�Uv�Ң�
1]��d�-�@.�#d.�������<���mW�F!O�M)�'�����c`pL�6�	��;?[�sq�4�ÐJ�^�v�LeN�OJ�z�Hf��qx`&��*��НUCRTA4ER�7�����z����;"a-c�5Mfʩm34��
�"i�M��D vV]���D732�*d��T��	�R�5)��#
���J
��ΐPG*��h�
A~R(o���� ��5]mYR�P���RC7��.Éۚ�7R��%/|�(ePwdH��"),]�$�I�4gI��w����Mw^��k�B�u���h4����U	24@�@�,��g�d�z2 �!$����f�-T=�,�I
T�"`�Bw'B\M��H�$�{w�(�1iJP�{0�q�k�%@�D�GA+�йt�I��`��TZ+%t��+�/kbAz�� �B1O����L�j+�|E� �D��
��Ս�	�ޢ��aMDb�F0CU�R)��	�F��j���8A[�6"�σ � �Ik����O��(��!2�Z�"�ˉ�F��YN��N�6��cT
 - @7��+�r�i����	���Ĺgl<�# ���@a�T���q�h ������`u����tmD!;ͩ�枑>����w�r��m;ϼI�=�8�2&���	�9��^X�F�@{��AE���	�b�,-i�\�Aq����fsY��4J2HM��� ��G��Ď! q�G�g㮞���u�{�涐V����ºӲ����*�P�y����K��+ �s�h�+"�֧��W�L�F|X�iv��������!���E�`�kZ>Q���[v��:(K�"����UCx�cD�$ad�Ex�w�'6�y\F4h1��S��f6�EY�Mhj�E�ɤEV@eҘީ�SF]�)�N��2�J"8��J�æ,ƪP��U��?D���d� 1H��w�ˢ��&bƯʨb<��� B@��P��Ǥ��C+�6,�P�X@DB�1Ÿ$c����JR7��$|���6!����/F0!��Q����A�ޒ��~�E�;�#�ډk���|s/�7�y����3�g��*��$���4@p�:
���;�%�h Ww\�o.Bo������Vܡ���!��13^^�{����!	s�p�ٰ��"�Z*AhB�*���{b� ]�P02̰��o�������I�w�����R���.PvN�����Փ�B����H��E��\jwF�%�ؘ�V�=Z@���l�22�I�Zv?�i�e�a��$
 3Ec:���bb$�R�B@a���%�Q��\;����g�]�S�7#a�8:�l����IJS��PjXT�W�,�M��"6�d�<F�bk�C�h��cp��4��M��=���&�Lc3�|F�e'��jb��sЍ��Ć�j/�^Hc��"	.$D��1*1*�H�,wX߅z��9m�"0R��=ލ�_�k�8�n�$�p�a��#�r.:���@�oi�0 bW��,���s�b��\<iTꊡdV�;��hֻ�:q�C�y��##H��JCёR���Qq@�J\7����*Eq,b�g`�Ր��~�����saW�wP&Cc���	i��;��׬E�V`��Yf Ug��-%U��;�+bŧ��r���J�ؓ�#*@�2�:�3k�ģXe�V�,i��pW���YeDdy��0]_C��1�`l&A淪M��(rYFu�ǻ����=�t��pS�$բ�=E�5k�
�)$��ћ�LF���5� d-	d�<�["3,	&�V�$�]�ۯ�A����9,�B
6� �,T ���iR�!%IsϦBc�_I# R���� o�*E"���)��T57k��\%:��ɑJ�|�Q�6B�e,��b�dY���){��.Ӗ�+�He�d��K�f:+����³�K�(B5�$P�IqaK11�~�:zrkuWQ9y��p��K�h�C��z�fg�`T4���6�P��p�g�#%w㘌��5�:q	�ބ`\�b���ph�;��4�dV����}el3�� �N-&}ȗ���������K�4�fGm��1Y�a8)Фv���V��6��f~��ܡ�m�8m�;���:���c�T�^)��S�$��-�C�$�z�(j;���JG��2��P�Ƙ.�L�1�����F�)���]� �-���HٟY;
$����l�KK>m���������]��*��B���@TcR�����ł�Jy©��T�إ���Y$x��7����C<�A��q+5i�ڛhl�bm�(��H��M׃�
�����ܐ�C���/���
l ���\s��U��4�G���˾d�"A���U
���lXUZC� B,�n���xoʹ�k�Qi��$&"Ч��jT\��P�u�^���x����b
���6w�*���f+k`�/Υhl�&QC�*�>'G)���[�]��Jt:���-��PzE����C�HU$��k�Bt�H{Fϛ����m��W���(t"Y��bG������C�gv�O�ܷXB���ۨb��Z�T���_�~+ymo|L|!��?���`+��*�Z�V~r��?� �=� �����?ø�_������}�����J���e�}� �w_�.�p� {ć�