PGDMP  
                
    {         	   bookstore     16.0 (Ubuntu 16.0-1.pgdg22.04+1)     16.0 (Ubuntu 16.0-1.pgdg22.04+1) .    ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `           1262    16720 	   bookstore    DATABASE     u   CREATE DATABASE bookstore WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE bookstore;
                avocad00    false            �            1259    16721    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    avocad00    false            �            1259    16741    book    TABLE     r   CREATE TABLE public.book (
    id integer NOT NULL,
    title text NOT NULL,
    id_publisher integer NOT NULL
);
    DROP TABLE public.book;
       public         heap    avocad00    false            �            1259    16740    book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.book_id_seq;
       public          avocad00    false    221            a           0    0    book_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.book_id_seq OWNED BY public.book.id;
          public          avocad00    false    220            �            1259    16727 	   publisher    TABLE     e   CREATE TABLE public.publisher (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.publisher;
       public         heap    avocad00    false            �            1259    16726    publisher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.publisher_id_seq;
       public          avocad00    false    217            b           0    0    publisher_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.publisher_id_seq OWNED BY public.publisher.id;
          public          avocad00    false    216            �            1259    16772    sale    TABLE     �   CREATE TABLE public.sale (
    id integer NOT NULL,
    price double precision NOT NULL,
    date_sale timestamp without time zone NOT NULL,
    id_stock integer NOT NULL
);
    DROP TABLE public.sale;
       public         heap    avocad00    false            �            1259    16771    sale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.sale_id_seq;
       public          avocad00    false    225            c           0    0    sale_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.sale_id_seq OWNED BY public.sale.id;
          public          avocad00    false    224            �            1259    16734    shop    TABLE     `   CREATE TABLE public.shop (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.shop;
       public         heap    avocad00    false            �            1259    16733    shop_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.shop_id_seq;
       public          avocad00    false    219            d           0    0    shop_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.shop_id_seq OWNED BY public.shop.id;
          public          avocad00    false    218            �            1259    16755    stock    TABLE     �   CREATE TABLE public.stock (
    id integer NOT NULL,
    count integer NOT NULL,
    id_book integer NOT NULL,
    id_shop integer NOT NULL
);
    DROP TABLE public.stock;
       public         heap    avocad00    false            �            1259    16754    stock_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stock_id_seq;
       public          avocad00    false    223            e           0    0    stock_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.stock_id_seq OWNED BY public.stock.id;
          public          avocad00    false    222            �           2604    16744    book id    DEFAULT     b   ALTER TABLE ONLY public.book ALTER COLUMN id SET DEFAULT nextval('public.book_id_seq'::regclass);
 6   ALTER TABLE public.book ALTER COLUMN id DROP DEFAULT;
       public          avocad00    false    221    220    221            �           2604    16730    publisher id    DEFAULT     l   ALTER TABLE ONLY public.publisher ALTER COLUMN id SET DEFAULT nextval('public.publisher_id_seq'::regclass);
 ;   ALTER TABLE public.publisher ALTER COLUMN id DROP DEFAULT;
       public          avocad00    false    217    216    217            �           2604    16775    sale id    DEFAULT     b   ALTER TABLE ONLY public.sale ALTER COLUMN id SET DEFAULT nextval('public.sale_id_seq'::regclass);
 6   ALTER TABLE public.sale ALTER COLUMN id DROP DEFAULT;
       public          avocad00    false    224    225    225            �           2604    16737    shop id    DEFAULT     b   ALTER TABLE ONLY public.shop ALTER COLUMN id SET DEFAULT nextval('public.shop_id_seq'::regclass);
 6   ALTER TABLE public.shop ALTER COLUMN id DROP DEFAULT;
       public          avocad00    false    218    219    219            �           2604    16758    stock id    DEFAULT     d   ALTER TABLE ONLY public.stock ALTER COLUMN id SET DEFAULT nextval('public.stock_id_seq'::regclass);
 7   ALTER TABLE public.stock ALTER COLUMN id DROP DEFAULT;
       public          avocad00    false    222    223    223            P          0    16721    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          avocad00    false    215   k/       V          0    16741    book 
   TABLE DATA           7   COPY public.book (id, title, id_publisher) FROM stdin;
    public          avocad00    false    221   �/       R          0    16727 	   publisher 
   TABLE DATA           -   COPY public.publisher (id, name) FROM stdin;
    public          avocad00    false    217   �/       Z          0    16772    sale 
   TABLE DATA           >   COPY public.sale (id, price, date_sale, id_stock) FROM stdin;
    public          avocad00    false    225   �/       T          0    16734    shop 
   TABLE DATA           (   COPY public.shop (id, name) FROM stdin;
    public          avocad00    false    219   �/       X          0    16755    stock 
   TABLE DATA           <   COPY public.stock (id, count, id_book, id_shop) FROM stdin;
    public          avocad00    false    223   	0       f           0    0    book_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.book_id_seq', 1, false);
          public          avocad00    false    220            g           0    0    publisher_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.publisher_id_seq', 1, false);
          public          avocad00    false    216            h           0    0    sale_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.sale_id_seq', 1, false);
          public          avocad00    false    224            i           0    0    shop_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.shop_id_seq', 1, false);
          public          avocad00    false    218            j           0    0    stock_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.stock_id_seq', 1, false);
          public          avocad00    false    222            �           2606    16725 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            avocad00    false    215            �           2606    16748    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            avocad00    false    221            �           2606    16732    publisher publisher_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.publisher DROP CONSTRAINT publisher_pkey;
       public            avocad00    false    217            �           2606    16777    sale sale_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.sale
    ADD CONSTRAINT sale_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.sale DROP CONSTRAINT sale_pkey;
       public            avocad00    false    225            �           2606    16739    shop shop_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.shop
    ADD CONSTRAINT shop_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.shop DROP CONSTRAINT shop_pkey;
       public            avocad00    false    219            �           2606    16760    stock stock_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public            avocad00    false    223            �           2606    16749    book book_id_publisher_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_id_publisher_fkey FOREIGN KEY (id_publisher) REFERENCES public.publisher(id);
 E   ALTER TABLE ONLY public.book DROP CONSTRAINT book_id_publisher_fkey;
       public          avocad00    false    3252    217    221            �           2606    16778    sale sale_id_stock_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.sale
    ADD CONSTRAINT sale_id_stock_fkey FOREIGN KEY (id_stock) REFERENCES public.stock(id);
 A   ALTER TABLE ONLY public.sale DROP CONSTRAINT sale_id_stock_fkey;
       public          avocad00    false    225    223    3258            �           2606    16761    stock stock_id_book_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_id_book_fkey FOREIGN KEY (id_book) REFERENCES public.book(id);
 B   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_id_book_fkey;
       public          avocad00    false    221    3256    223            �           2606    16766    stock stock_id_shop_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_id_shop_fkey FOREIGN KEY (id_shop) REFERENCES public.shop(id);
 B   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_id_shop_fkey;
       public          avocad00    false    3254    223    219            P      x�35J��LLK�4K6������ -.      V      x������ � �      R      x������ � �      Z      x������ � �      T      x������ � �      X      x������ � �     