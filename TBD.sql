PGDMP                      |            BDD    16.2    16.2 ,    !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    16398    BDD    DATABASE     x   CREATE DATABASE "BDD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE "BDD";
                postgres    false            �            1259    16406    actor    TABLE     �   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    16405    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    16499    actor_participa_en_pelicula    TABLE     u   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer NOT NULL,
    id_pelicula integer NOT NULL
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false            �            1259    16400    director    TABLE     �   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.director;
       public         heap    postgres    false            �            1259    16399    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16487    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    genero character varying(45) NOT NULL,
    duracion integer NOT NULL,
    fecha_publicacion date NOT NULL
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    16486    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    16537    premio_mejor_actor    TABLE     |   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer,
    anio integer NOT NULL
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false            �            1259    16536     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    16515    premio_mejor_director    TABLE     �   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false            �            1259    16514 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    16548    premio_mejor_pelicula    TABLE     �   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false            �            1259    16547 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227                      0    16406    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    218   &7                 0    16499    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    221   �>                 0    16400    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    216   E                 0    16487    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    220   �L                 0    16537    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    225   ,c                 0    16515    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    223   �c                 0    16548    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    227   �d       %           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    217            &           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    215            '           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    219            (           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 30, true);
          public          postgres    false    224            )           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 31, true);
          public          postgres    false    222            *           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 28, true);
          public          postgres    false    226            v           2606    16503 <   actor_participa_en_pelicula actor_participa_en_pelicula_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_pkey PRIMARY KEY (id_actor, id_pelicula);
 f   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_pkey;
       public            postgres    false    221    221            p           2606    16410    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    218            n           2606    16404    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    216            r           2606    16493 !   pelicula pelicula_id_pelicula_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_pelicula_key UNIQUE (id_pelicula);
 K   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_pelicula_key;
       public            postgres    false    220            t           2606    16491    pelicula pelicula_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula, id_director);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    220    220            z           2606    16541 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    225            x           2606    16519 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    223            |           2606    16552 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    227            ~           2606    16504 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    4720    218    221                       2606    16509 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    4722    220    221            }           2606    16494 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    220    216    4718            �           2606    16542 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    225    4720    218            �           2606    16520 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    4718    223    216            �           2606    16553 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    4722    220    227               t  x�]WKv�8\��	�H$��O�,K�,��fU�U�n~4m�f�2�H 	�{�&2##3�J�ڱ�lvi�ij{Q�2�����6{ߎ��w�P�,���=�׻�+��w�g_���}W⻹��C�yX&+��F܌�g_����������}����e{p�4�g���kq�0�lħ��gD���C�D��j#��h�����>�x��J����6��K�FKy�\�/�l��������V�T��a�A?9�B�T:�w7�F� />f)��ӂ�ci
gF���߈�^ׅT�x�?����o�Ns�S����ӷ�}���yQ�F|�~��72߈On�.]��x�2W��	�d�{m?n95��Q�x/��y!Ύ�4�C#�u�:��}&�y).C�{�wTR#s�p�ݳC�yŧ�v 0�Z|tO���3�y��y#�_6�r��e�����P��Z�sY�|�iSʢ�(���n�8:tq#�W�v���2Q�]��$�2ٯ.p _W�_�c�)j���y�,��>-@��;v�E�\�x}p;��f�Q6R+q3m)��V�p>�v��n��������:r����A�Ko��BU%���U��*�Ǝ�65<�u<��݀ԑf�9�h#ˍ��YE��8U>�ّb�P=e.>���W`M��dY��N�@Ǟ���2�z驝�x#�Ŀ�/��;��e�FJ�ub���'_ȲId����l|�h��{��4J�����6irqq?0���t'�(1LF�y���)�z�9��[)$��T�W�J j���ۣ�ɜ�L#~,S�sk��`BP���*���n9��d��U	�n?TP�Uk�ѽ�+Yiqf���K��p�j�1���ʠS~Y�!�3�"1nU-�aod�_��n (��ٰ�J֛0O�o��U� ���ȑDUl�w�wԟ�����_�L'S�n�X��c;�p����.Z޾H��U����k��W����O�f��x���_HD�`�����M�<Kl'��f�l��F��tqT��6+��1ﳍ�D�$�����u�
��-X7���B�Ԕ��1оMbIX�fH�F%↡4t��)�S=���q�58ѡ�A��jSz8ypH7&"Z�I��0�\�?�S��b/�M�����ߟA��@b�o�9��TA�/Ou�=Ƅ�E�pqu@�}�@��#�ː�4�)J�\�����Ƣ3H�2:_�7:

~e��C��
EA�I�G���R��'�Y�D<���h��֯ ��		��㳝]�L ����G�OCL	�S�p��q	&�y�$&w�ۙ�T�5E�"��$Q_o
�����jJ�@�I:��%I9����((�U;�v��k*�x<M�������� �%E��C3�݄�3H�%�r~��n�؇�Y�X랡A�4��qOC�i/.�H*^�>�� ��I��zaC�uH>��������i$���m��ؔ{�I�[�zF/$T�&��9ZAv�[�z
:�$PA��t��{6jW���|�K��Ӈ� �L���j�<Ki"!�aϝ���r�e|t}������b[�79��p��������]:�yx�)!�>��X.e�s%�Q�� |���!xl�p������U��ceO�
GH��[��S8LL�)����	�ni�S��m?���(PuU\�'hS�a��	�P�+Cc�%=�'p�: [�.�SQ���w�Ӡ�c���u����%BG�7��֏�L��1H�j�����:�5�$�4 K�	�3�.�\?�;7�¡^ͽ�G�\5WM=�����u��Y-�ǡ�!w�q�դA�:��	wpM���Lt��`䁦5g�!o�y���,�ߚ��98o���M��=;��&j�9�@��$��D;�?~���_o-������F�5         T  x�E�I��8��a:8w���љ�{a+�Gb�
�������|�����5ʭ_�����^�o���7�Q��ߛepq�����,�N^�Wk��iq�����N��v�_~��a���o��N8\ۯ��+LrNO׃}��;�[�58ʙC��ǳc��y���^#��El�7<?��;�� ��oa�8�Z?s������-��<0����q����*��s"Y̟����x08A�����Y��H��E�|p��8�7��äA�8�m/C��;|�A�h_�p�m����}/Am@�E���U�����s'��l"��,b跌|���"���E�z����N��r�[�:G��w�� 6o�E��-�������N�7Xi�M�J��מu@>��QV�8qg�2�g}���־m�(9D�x
T)xG�:iA2W8��I�'_�*�-~��7Ri�b�����6�2 ����E�ޗ[	�����)�V��e/�4�!���g�#�g�bq��̃���<��A�/���ʽ���E���՚�p��Ͳ�z�;��N��~I�Y�A�DN�^n�Ýf���ػެ���.@4�k�.�%m��gwv���/
�&Ep��f�;��a�a�t�"�)UVW
\�����]o�}�F~%�F�u�z�ք<� [��A9���2,���z*IQ��j��-E�sCa6r{C�h*�,tc�"�F(@�5�B��\�OS\Fͦ���������m�q�&�i�G]����:��-�Ap%�/k�t���ԈN�d�ò�G���y+Y�N�]��5��7�11P�-Q#�u�%�`e�#rS�:��k�,�(NG^��Ha��a[�b�f) ���#�D��1&�b��g(Fψ�e-ހ�ЬXJ��C�N�(��rDf1���[w� ����߀��k�M�!�e��*yA�#����=��gi;�g̣`�F39!n���� 	"Q�<�S1�T^�%�1�W��s9�=��ϸ��n�_UT/*��c�����1yT���J�Qp
�{Nl{�^��L)��^����5���@D��n���
P@Cx�F�����"��1�la3Fz���wǒ�吡	T�Q�I��Q�� �3' ��s{��P��R�J%a� ��q
0�H�X�TM�-*Q,�+�Y��ek�������.������pes�ȔE���r���X �]3��+S�6��V>b�K��7,FS�7�^��h������7UΕC�TL:��R�w�Z��:qS���#?�3-�.2ky��b��Q8)�M�c�O�8��\7�9pb��ܡ�13j�.:R��t�:$����	�����(	:T�vy��p��������l� J]c^�9z��Ҋ��83o��q��L	�I�=�l�z��ثOv��9��O0'��X�3�R�u2�PҐ��3p�A��a�RH�FEr�xY�/�y&77��>S�ẅ ٞ$D����=/˟a �Δ[��ݣV�|r��>l8��C,��m&�v�.�0W�}�A������u�1z�X4���Ή�����s����\]�k�	:�v������X�!�@�{���VKgĆ�=�T��������)�         �  x�mWIv�6\��	���R�l�eK�d�/H75ɄC��mr�\,�1�������UE��u�o͔�,��X��W�h��J^���ͨw�3.ٻN�ɝꆉ��ٙ���͂eV��`[=�I%���&�%{P=���7,ɔW�v��lz�T����'�+V��a�ծ5�|�e+
.R��n)�.�SSkvɫ��~R#^be�E�N[�}x��C��N���B��e��qH�5Κ傋�^z3�T���`?k�����Y�wJ�e@��
MT�yi�9$��8�c�f���B�Q;$~�ƣ:�+Q����r�����Ģ`�fI�L�{ԣ�y���?�~7ɭA��dW�h�z%x��s�/�0��
�Fu
�{;�3V��@e%j�#��H���2�Y�ޣ�c�j���VX��}���yX�,j�5�D��{�r���?��n����Y��t\�O��S�+XYq)��s�q2gh-�v�_�k����Y�NC�ą(�l�ݏ��������u/%�C�lj�e���8�W��R�^h%�"x���`��^��%�E8w7<����3�E}E�bK+,�^7#���ש�ðL8,y��@�
�fI����!$_T�4*z��G���QG8���b�~��M3Y`DF�M�5�`��b +�8]]�G!C�\��aiSd�Xxd�;��i6S^��M�Q�%�>���.���;ᣨ���n9T����� ��銗���a7���JF��@�,>�n�qX��e�_�3x�̑���C PWYl'�J��D������~P�* ?@u)kvn���{�|P.]�|� { U�J��q�+�^�����,����C��ְ[��U"Q �U���؝�n�M�K�0�=�C|�T�/���Z9����v��7o�?���j�.�E'O� �Nc���I-�T���8Y��:cW�=46�y-��a�K9�k�:�٩�U�1=�%�	��-��u����{Ȩ�=1~6su����lR;x��������C�Mz�̘�<�{�ɂ7�N*��#�3r�c�Wd�'��S� P����
fm�܃����� )�D���̚fӔ��К4��4�T8�re�I>3�q�P���-Y�AON�5E,�����:e�J�e��O�p����n��V/SۙXЂ�k�����ec�Pݴ	e���V���N�IȅGD�.
��q��H$���(�`��N��BD1�X[@�ߍ$�k�Py����w0��,����F.Q�W��L�啧$���W�j��[������°��%�����7ʨ���$YLȉ�5 j�0����&�+�轅�E�>���9���"mmAQZ���Y������fh,�g��7�jz�����@�L���#H@�7D�DP~?|.�
�C���N?j�o���u����GX0�/Qb� .��K�
 ta�k�#p�g��D�;�@������j�D�ӓԶYw��@�% N�斢����,9�#��:G�p���N�	؂0�U����=#tI�j�5�\��������jxM���OG�c��#�莀3X��^k��p&|�Kjr���h��mp�m��#�Ƿh`�\��TGX�k=�jܭ=�V������PJ��'��&��g�%�*���(8����U�n@σ.!.����,IU+I��e&`N[�o��p��M�e�4��G�R�R��}ƙ����|��gQ���96�$\�������d|�L�s�������FQm��~Q����,�`	�YZ
^�+@��muh�w,�ZX��%\��Z߬)}v���A�ńkx7=����q��������FM��}1���O��Zl~(�>"�`a	#�vR㇂��qR�w*|���g�W������o޳��            x��\����q��_q`�PU0o���t$Eȑ�����Fwc���!�߬I����1���z�1wC�.5�U��<y�d֚�t��i�����_����e�2^����:W_�����2T}_�����<{�U�j_��y���M�]�����:��#�غ���OƟZ�d���,�\�|�}N�L�o���O֟ڪo��<�.×�e�y<�}����O��R��І�<մ4����?]�o��e��Ϻp��/�����ï���t����a���Ou{r�gˌw��AC�.�_���P��p{�ؿ�t[2M�U���x�������w���|�f�����*�>u����p�u����*�z�ӄ'S�D}յ�n���1���Y�t�۰�D����9��2��|)��u�P�K�%��\�q>?�����M�{�|`�C������~��_����L���ݓa�^G���ez��z�;�ܭ�����?5��4��Ї�/���ו䥯l�����}j{2mj�w~���F7z�����X���%/o�L͓�}������p[����q�O�΀ռT���$y����5.˼�{�m�03t˼�2�f�]_�ϼ�na^^Uw'C�>��c��_���N�x5�-��%}�1A���Ɔ��0��u|����|�����&<�]����Ԧ9ٚ��0\^�2���ۜ�m�H}CYw�� �Ga�x������>T���}0�I��ⴊ��k��O7���y�Ő{�O~�/E�4���É�9Yr+��\��f����N�d�0��v'�������O�6/ӯ��}���3��+�V��_��k�@��a�����o�iD��v�_�o4`Lqk=}r�.�H�D~��åL�ȳ���r�Q�B�4-���<_��7�|8Nt7z?+d�^Xĺg��@&�KS��}�߯����	h�(6�}<�$���t��@��hꠞ�q�"#�q��/ȅ+h+N����P�`Td���>�3{F6�9)��<�\.q��H1c�>���OEV>�K\x
S#aJJ��qHSp�y���cy�ɒ��¼=�"]j㫎]獲6��[t��0�3��RfC�oOH�-�'��:*�����M��{p�9�' D
Ɨ5h���4+��K��h9�5���.��rU�M2�/���oCJp���p��[b-�-1�-!!�
�}a���io0ՠL�K��B�E���H�Ch5�1$8�%-�o�>s�e��`���#�����$�l"s���9����n�u Z��oĴ�k�&7�y���|}^�~�8�A�Y�m�3�%w���yu����pϠoٶtA�&�>B�߇h]�ٍ��w���1q��(��Z�,T�C�}:Sy�s�F5���s^!����C��v�c�Y�c��Q\�z���e�e�Id^�zԝ:�����f-d���#ó� 5]��"{�_�N�s���_�u�c:Ț;��\AH!P���MGX��<���̎�QM�uk�\�ש�����&t�}����_@��(�~a���j����������N��VM��ýX%V�U��S��L�l��;7��%�}SL$�� �g�Mղ�/�}V�J��+,|ّ���Gu�"#��Ax� ��\�|#;S.��>q
�Xd�@��� 0���eb`R/��J��΃��p���7��oQ+P|珪���F=ML<}�q�U����ˈ5�JJR�p�Ȗm�Y�D�!�*4b�l�Ğ��/#��g*��9�c�����D4�d�o俯Kv���۰�'���Mc�X���5�5�njP% U-�{OP�	M
Z�t����x�o�}x��v�c���v���n>羖4���`%Yqc.Q��q��BBg�����96�S}���#k���>-o�@f�������+��5d]���eJ �<SE������`"d�a�o\��͈�iw'�"���p*�ޥ,孖��@wuRp��.�ֵ���AB�m����/�K���+'�׺�H��v�48<��S��0�z�!�}�?G��k_�L�	�DQ��ZR��9UIU��I�I5L��`~T���??�הc������ဖ�?n��۴ڔq���\�P�N��Eվ"ͩ{��J�
X�:�3��.�7�0a�����`ш|�v��k`��e���\��M�ag}a����3LF�0g�Z����X.����aM)�U��]L�Lk�9;�������Yd3BY���ϕHtA&��@)\|p[�Җ�Ö�Hl�2{����9�K�x�4��A֟�҈\�*�/�;'�E�l���1w�4V������fg7��j�!�/:�t/ �0SDv�5�n*q��``��P�Ց�YN*�-�N�i�����1'����䀌7+9 5UW�o0�{��C��w��n����.d��^	��ʁc�Ik�S��'�vNq,uB��5R7~N���ٹ��-ڟ���`.�R�|vf��W �"�BI&V����Fn�m�@So�3�Y�,���>��o뤕��`O���7�/Dq��(K�Œ���®��P�^W��+��������<"t�R�
'����e.�'
��i�C������%�� ��G8�eJ�rr�+cހl㺼��.�����>5g`(*^U���qu)���`�.Q�2"6�f���mN	@��wԒIC��ʸ
¾�����D�X�eD��U8pq�CV/�)>�k�%pW�Xkߗ�.J3�ٗ�$��V,��˰�Ϊ�H�h������K�;,����b�7�Ӓ��o�y�dj�.�ip���94͊�%E�jC�q(����D٬(]bg�̹���_G� �(!��f�G]��9Z��"�8�R|�S��� yz�*p;�I�A�u?�[�\�	��K�b�tg��*�/�B �d��K�G�@5�t5J�=O�_�uj��,��x���]�7�R
1�V��r���;�Ye�ZtQB����P_ظ,��F�	�hӮ�'�̨��VN����BlE2]u��>�����Sa��y����z��Vp�%�h��Kq̕ٵ�����[)�Q[��Y��@��#y&�e���Jnfp�&��:�3�l}T�K`\�"�u�F�W����U#�	�54�����S��WM����8=� zI�R���g��BzDE��wz��bW�䐢Qzj�/�9ش�I�TÚ�ߩL ��S��F�њ�����ʕ��"�nf�᳊�H���t�!`�\�m�������l��xǝ�?}68@�y�SQתt[HkH���?m
��1����\��E�v)X��ȡ8��|���1���d����� ��+����c��������6G<ڬ��t(����hw�K�ɑ�AoW��P��Hm�T �^��(rZF��W���E�h-�=�eX���rZ�h◔����H3���ɞ�xl�S����{!�D�f��t�+�m�����3�� ����J
��4{l��:m*lF��u}%��a�[�ԑ�~�;�9m~GY�nH��1ޠ�p \��3��s)X���5C�`�5u��>�t;���^�8��Ľ����}w��xKꟗȀ�ci䧂M�y��N��<��8�?��)S'�`����2Ƃp6ݮ3��w"�f�f���(�ie�����4p#�iW�{�ɫf���[��a^V~�t�_�s�If
F���K�3���a=|&p�sR ���WH�-�+F� �5n��Ъ龚+
zF�%fhu�!S�7�a��7�Gu��uwb��Y�J���f۽�~V�̱��Z{P}_��U�7�>�.Z��o�JbM���r�T ����+�-��9� D�(�#}R�x���?P��T�>�p'�q�[5���/�R3 �:���b)�֩z�+ ;�;�}9V��%����(o�f���[�i�F�~�R
tj���˹|y��[�h�hB�6���-5[�y�zD��yB�n�yq�yn�V�Ũ}%��-���}��D�G�1'�v��7�6�Xۊ�(G�a�b�Ol/o[���(YhҮ������r��Y\�xl����ya����BClv&[Q e  �\9z�%�.hm�-�L/�Nd�7���Y���Γ/;��|�Q-��:�g�HW�{V�z��Pӄк����d�g���N�[��nJr�P�sn}�?-2�{j=#ϻIԊ�x�z?������~(�uZOZ�����x�'ٴÝ�&���K��X~vɜM�N�.�, ��AG>�([i��o)�X��4q@?yB߈v�OwQ[�����~Ke�E���G�|��Qِ�,b�o縎�T����4u���"nQfr5p#�7�^�dE)3�z�Og�W,�g~�/g4	U��u���3e��+�G����r�����굮�Ȕ��q�E������p-��>���%%�Y��^��@����V#k\y�lla#W�9������&�{ܧn�=yԛ�h^[�=	z��9�]	.��cp�^K�5����QG㾖��iw8�_(�e1i��p�d1�!-��ڗ%K5qyD����)|�,D��E��Gfm� S�ouD8ڧ��?�,D����m|�`�$�{U�T,E�-&|�Y)q�4QD�G6��f�G/����%e��$�io��c��Z!�9�E5��O�2e�!	�,�4����R�l��Q'>�}Fun�Z��]`^��޶�$�yŖ&�r�J�9H�� B����,H�fA����=�m��ȶ�-�}N\�:ayd:l�ٌ�E���ٳc~�cI�rE�g;!͌��]��:j��f��M��_�^s�	�b�G�8$	$$f�uW.zlQ����.ϵ`u_5EN\�3��4V��`����vuTH3JG���n��7ۙ8��J����bA-T�7	G����4WN�E�P#_���iF8�t�pI�����(���11Rݻt����q��`ug���3҄n�*O�X(֡�aۥ��%M�8=-%S�z�`�~��#l'v�IrC�bFFN���2�A���r��4U��s$�X��>����q2d)�������\\�BW�|A��v�VuT����UaTZg>	F,�j�Q�E�t܇�X[
�܊}P���m!��ցC]������d0*����Ӵ2|����fQ6�O�u2XFJ-��훾�<��1dhf�C�?y@F��M���&2��	���'������\z��H��}�z�'��o����UA�n7���D�&64��k�篲�.O�U|�� U��p[�n�C[�`�rk~����̨Ѝ;���I����vX��FG�sx�<�1�R^�==ь�r�"^���K����N��=l����A�l?{H<���EIen�Zg)>7�u~��1�i=�d6�~I)F��,}��vQ:��˻3\��������
������N������xM(Fx:j������K�Q�tqniK�R��󽽂:��[�=��kT��O��ԇ)ю#c�n�j���uX=����u,����;I��*�oj�<ڷ�B��gSP�a侎<(�%�_Yp�K�^��]����T�<�]�K��F��&���*�:Y���B�z^J��%#>4�V����Ǘ�<�/L�Y��;�	�MAN�pC̤��OR�)�x]����ı�+�{�?����lS�2�Y8Ӹ�Ӕ�G�B��?;�j��*�������y�����YG���kt~���t:�6T�g         �   x�%���E!Cפ�9���|+9@n�4�4��p�q��BX-U����ׅ�JU�24v��3�6v�&q��%�,z���8U���;�E_>��jڧ���n��Sm�Kq�n���~��P�xW����t��.G�_T�}���zZ��	R��RR�������=l����}��>����5n         �   x�-O�D1��a.�W��r��q�{I�R��4�]�O	�C���)l�����Z�1�7�kߡ��8���r�lpI�g쀼��	�_�?�����-�X;6�S�TbLL-�,�|ʣm�7\�>�3�RV�d�����3�w��s�_R%|�K�i�z�V�⿟�pN<�]�i'1�� �xq7�         �   x�-���0ߨ�0�\�u�H/Z��}�}/�<��Elc���1��bs���\J,�U�1!��9�h�gg��T�� �Z�ڠD{�����\��M0�LK;(���}���q���C�U�5����l6��pI�z|���<���g���5�oiU�p5�<���P�3     