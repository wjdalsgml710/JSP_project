/* ȸ�� */
DROP TABLE MEMBER 
	CASCADE CONSTRAINTS;

/* �̷¼� */
DROP TABLE RESUME 
	CASCADE CONSTRAINTS;

/* �ڱ�Ұ��� */
DROP TABLE SELF_INTRO 
	CASCADE CONSTRAINTS;

/* �ڰ��� */
DROP TABLE LICENCE 
	CASCADE CONSTRAINTS;

/* �����з� */
DROP TABLE MY_EDU 
	CASCADE CONSTRAINTS;

/* ��»��� */
DROP TABLE CAREER 
	CASCADE CONSTRAINTS;

/* �����ڰ��� */
DROP TABLE MY_LICENCE 
	CASCADE CONSTRAINTS;

/* �з� */
DROP TABLE EDU 
	CASCADE CONSTRAINTS;

/* �̷¼�_�ڱ�Ұ��� */
DROP TABLE RE_SELF_REL 
	CASCADE CONSTRAINTS;

/* �з� */
DROP TABLE CLASSIFY 
	CASCADE CONSTRAINTS;

/* ä����� */
DROP TABLE RECRUIT 
	CASCADE CONSTRAINTS;

/* �����ڵ�  */
DROP TABLE COMMONCODE 
	CASCADE CONSTRAINTS;

/* Ŀ�´�Ƽ */
DROP TABLE BOARD 
	CASCADE CONSTRAINTS;

/* ��� */
DROP TABLE COMMENTS 
	CASCADE CONSTRAINTS;

/* ���ɰ��� */
DROP TABLE LIKE_COMPANY 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE APPLY 
	CASCADE CONSTRAINTS;

/* ȸ�� */
CREATE TABLE MEMBER (
	m_id VARCHAR2(30) NOT NULL, /* ȸ�����̵� */
	m_pass VARCHAR2(30), /* ��й�ȣ */
	m_birth VARCHAR2(30), /* ������� */
	m_name VARCHAR2(50), /* �̸� */
	m_addr VARCHAR2(200), /* �ּ� */
	m_gender VARCHAR2(50), /* ���� */
	m_email VARCHAR2(30), /* �̸��� */
	m_phone VARCHAR2(50), /* ��ȭ��ȣ */
	m_tf VARCHAR2(2) /* Ż�𿩺� */
);

CREATE UNIQUE INDEX PK_MEMBER
	ON MEMBER (
		m_id ASC
	);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT PK_MEMBER
		PRIMARY KEY (
			m_id
		);

COMMENT ON TABLE MEMBER IS 'ȸ��';

COMMENT ON COLUMN MEMBER.m_id IS 'ȸ�����̵�';

COMMENT ON COLUMN MEMBER.m_pass IS '��й�ȣ';

COMMENT ON COLUMN MEMBER.m_birth IS '�������';

COMMENT ON COLUMN MEMBER.m_name IS '�̸�';

COMMENT ON COLUMN MEMBER.m_addr IS '�ּ�';

COMMENT ON COLUMN MEMBER.m_gender IS '����';

COMMENT ON COLUMN MEMBER.m_email IS '�̸���';

COMMENT ON COLUMN MEMBER.m_phone IS '��ȭ��ȣ';

COMMENT ON COLUMN MEMBER.m_tf IS 'Ż�𿩺�';

/* �̷¼� */
CREATE TABLE RESUME (
	r_num NUMBER(9) NOT NULL, /* �̷¼���ȣ */
	m_id VARCHAR2(30), /* ȸ�����̵� */
	r_title VARCHAR2(300), /* �̷¼� ���� */
	r_pic VARCHAR2(4000), /* ���� */
	r_file VARCHAR2(4000), /* ÷������ */
	r_date DATE /* �̷¼��ۼ��Ͻ� */
);

CREATE UNIQUE INDEX PK_RESUME
	ON RESUME (
		r_num ASC
	);

ALTER TABLE RESUME
	ADD
		CONSTRAINT PK_RESUME
		PRIMARY KEY (
			r_num
		);

COMMENT ON TABLE RESUME IS '�̷¼�';

COMMENT ON COLUMN RESUME.r_num IS '�̷¼���ȣ';

COMMENT ON COLUMN RESUME.m_id IS 'ȸ�����̵�';

COMMENT ON COLUMN RESUME.r_title IS '�̷¼� ����';

COMMENT ON COLUMN RESUME.r_pic IS '����';

COMMENT ON COLUMN RESUME.r_file IS '÷������';

COMMENT ON COLUMN RESUME.r_date IS '�̷¼��ۼ��Ͻ�';

/* �ڱ�Ұ��� */
CREATE TABLE SELF_INTRO (
	si_num NUMBER(9) NOT NULL, /* �ڱ�Ұ�����ȣ */
	m_id VARCHAR2(30) NOT NULL, /* ȸ�����̵� */
	si_ques VARCHAR2(1000), /* �ڼҼ����� */
	si_content VARCHAR2(3000) /* �ڼҼ����� */
);

CREATE UNIQUE INDEX PK_SELF_INTRO
	ON SELF_INTRO (
		si_num ASC
	);

ALTER TABLE SELF_INTRO
	ADD
		CONSTRAINT PK_SELF_INTRO
		PRIMARY KEY (
			si_num
		);

COMMENT ON TABLE SELF_INTRO IS '�ڱ�Ұ���';

COMMENT ON COLUMN SELF_INTRO.si_num IS '�ڱ�Ұ�����ȣ';

COMMENT ON COLUMN SELF_INTRO.m_id IS 'ȸ�����̵�';

COMMENT ON COLUMN SELF_INTRO.si_ques IS '�ڼҼ�����';

COMMENT ON COLUMN SELF_INTRO.si_content IS '�ڼҼ�����';

/* �ڰ��� */
CREATE TABLE LICENCE (
	lc_num NUMBER(3) NOT NULL, /* �ڰ��� ��ȣ */
	lc_name VARCHAR2(30), /* �ڰ��� �̸� */
	lc_organ VARCHAR2(30) /* ���� ��� */
);

CREATE UNIQUE INDEX PK_LICENCE
	ON LICENCE (
		lc_num ASC
	);

ALTER TABLE LICENCE
	ADD
		CONSTRAINT PK_LICENCE
		PRIMARY KEY (
			lc_num
		);

COMMENT ON TABLE LICENCE IS '�ڰ���';

COMMENT ON COLUMN LICENCE.lc_num IS '�ڰ��� ��ȣ';

COMMENT ON COLUMN LICENCE.lc_name IS '�ڰ��� �̸�';

COMMENT ON COLUMN LICENCE.lc_organ IS '���� ���';

/* �����з� */
CREATE TABLE MY_EDU (
	r_num NUMBER(9) NOT NULL, /* �̷¼���ȣ */
	edu_num NUMBER(3) NOT NULL, /* �з� ��ȣ */
	myedu_sdate VARCHAR2(20), /* ���н����� */
	myedu_edate VARCHAR2(20), /* ���������� */
	edu_type VARCHAR2(1) /* �������� */
);

CREATE UNIQUE INDEX PK_MY_EDU
	ON MY_EDU (
		r_num ASC,
		edu_num ASC
	);

ALTER TABLE MY_EDU
	ADD
		CONSTRAINT PK_MY_EDU
		PRIMARY KEY (
			r_num,
			edu_num
		);

COMMENT ON TABLE MY_EDU IS '�����з�';

COMMENT ON COLUMN MY_EDU.r_num IS '�̷¼���ȣ';

COMMENT ON COLUMN MY_EDU.edu_num IS '�з� ��ȣ';

COMMENT ON COLUMN MY_EDU.myedu_sdate IS '���н�����';

COMMENT ON COLUMN MY_EDU.myedu_edate IS '����������';

COMMENT ON COLUMN MY_EDU.edu_type IS '��������';

/* ��»��� */
CREATE TABLE CAREER (
	r_num NUMBER(9) NOT NULL, /* �̷¼���ȣ */
	cr_name VARCHAR2(30) NOT NULL, /* ȸ��� */
	cr_grade VARCHAR2(20), /* ���� */
	cr_salary NUMBER, /* ���� */
	cr_job VARCHAR2(20), /* ������ */
	cr_sdate VARCHAR2(20), /* ���������� */
	cr_edate VARCHAR2(20) /* ���������� */
);

CREATE UNIQUE INDEX PK_CAREER
	ON CAREER (
		r_num ASC,
		cr_name ASC
	);

ALTER TABLE CAREER
	ADD
		CONSTRAINT PK_CAREER
		PRIMARY KEY (
			r_num,
			cr_name
		);

COMMENT ON TABLE CAREER IS '��»���';

COMMENT ON COLUMN CAREER.r_num IS '�̷¼���ȣ';

COMMENT ON COLUMN CAREER.cr_name IS 'ȸ���';

COMMENT ON COLUMN CAREER.cr_grade IS '����';

COMMENT ON COLUMN CAREER.cr_salary IS '����';

COMMENT ON COLUMN CAREER.cr_job IS '������';

COMMENT ON COLUMN CAREER.cr_sdate IS '����������';

COMMENT ON COLUMN CAREER.cr_edate IS '����������';

/* �����ڰ��� */
CREATE TABLE MY_LICENCE (
	r_num NUMBER(9) NOT NULL, /* �̷¼���ȣ */
	lc_num NUMBER(3) NOT NULL, /* �ڰ��� ��ȣ */
	mylc_date VARCHAR2(20) /* ��泯¥ */
);

CREATE UNIQUE INDEX PK_MY_LICENCE
	ON MY_LICENCE (
		r_num ASC,
		lc_num ASC
	);

ALTER TABLE MY_LICENCE
	ADD
		CONSTRAINT PK_MY_LICENCE
		PRIMARY KEY (
			r_num,
			lc_num
		);

COMMENT ON TABLE MY_LICENCE IS '�����ڰ���';

COMMENT ON COLUMN MY_LICENCE.r_num IS '�̷¼���ȣ';

COMMENT ON COLUMN MY_LICENCE.lc_num IS '�ڰ��� ��ȣ';

COMMENT ON COLUMN MY_LICENCE.mylc_date IS '��泯¥';

/* �з� */
CREATE TABLE EDU (
	edu_num NUMBER(3) NOT NULL, /* �з� ��ȣ */
	edu_school VARCHAR2(40), /* �б��� */
	edu_job VARCHAR2(40) /* ���� */
);

CREATE UNIQUE INDEX PK_EDU
	ON EDU (
		edu_num ASC
	);

ALTER TABLE EDU
	ADD
		CONSTRAINT PK_EDU
		PRIMARY KEY (
			edu_num
		);

COMMENT ON TABLE EDU IS '�з�';

COMMENT ON COLUMN EDU.edu_num IS '�з� ��ȣ';

COMMENT ON COLUMN EDU.edu_school IS '�б���';

COMMENT ON COLUMN EDU.edu_job IS '����';

/* �̷¼�_�ڱ�Ұ��� */
CREATE TABLE RE_SELF_REL (
	r_num NUMBER(9) NOT NULL, /* �̷¼���ȣ */
	si_num NUMBER(9) NOT NULL, /* �ڱ�Ұ�����ȣ */
	si_order NUMBER /* �迭���� */
);

CREATE UNIQUE INDEX PK_RE_SELF_REL
	ON RE_SELF_REL (
		r_num ASC,
		si_num ASC
	);

ALTER TABLE RE_SELF_REL
	ADD
		CONSTRAINT PK_RE_SELF_REL
		PRIMARY KEY (
			r_num,
			si_num
		);

COMMENT ON TABLE RE_SELF_REL IS '�̷¼�_�ڱ�Ұ���';

COMMENT ON COLUMN RE_SELF_REL.r_num IS '�̷¼���ȣ';

COMMENT ON COLUMN RE_SELF_REL.si_num IS '�ڱ�Ұ�����ȣ';

COMMENT ON COLUMN RE_SELF_REL.si_order IS '�迭����';

/* �з� */
CREATE TABLE CLASSIFY (
	rc_num NUMBER(30) NOT NULL, /* ä������ȣ */
	bclass NUMBER(10) NOT NULL, /* ��з� */
	mclass NUMBER(10) NOT NULL /* �ߺз� */
);

CREATE UNIQUE INDEX PK_CLASSIFY
	ON CLASSIFY (
		rc_num ASC,
		bclass ASC,
		mclass ASC
	);

ALTER TABLE CLASSIFY
	ADD
		CONSTRAINT PK_CLASSIFY
		PRIMARY KEY (
			rc_num,
			bclass,
			mclass
		);

COMMENT ON TABLE CLASSIFY IS '�з�';

COMMENT ON COLUMN CLASSIFY.rc_num IS 'ä������ȣ';

COMMENT ON COLUMN CLASSIFY.bclass IS '��з�';

COMMENT ON COLUMN CLASSIFY.mclass IS '�ߺз�';

/* ä����� */
CREATE TABLE RECRUIT (
	rc_num NUMBER(30) NOT NULL, /* ä������ȣ */
	rc_name VARCHAR2(20), /* ����̸� */
	rc_title VARCHAR2(100), /* �������� */
	rc_content VARCHAR2(300), /* ������ */
	rc_scrap VARCHAR2(4000), /* ����ũ�� */
	rc_salary NUMBER(30), /* ä�뿬�� */
	rc_link VARCHAR2(200), /* Ȩ�������ּ� */
	rc_date DATE, /* ������ */
	rc_view NUMBER /* ������ǥ */
);

CREATE UNIQUE INDEX PK_RECRUIT2
	ON RECRUIT (
		rc_num ASC
	);

ALTER TABLE RECRUIT
	ADD
		CONSTRAINT PK_RECRUIT2
		PRIMARY KEY (
			rc_num
		);

COMMENT ON TABLE RECRUIT IS 'ä�����';

COMMENT ON COLUMN RECRUIT.rc_num IS 'ä������ȣ';

COMMENT ON COLUMN RECRUIT.rc_name IS '����̸�';

COMMENT ON COLUMN RECRUIT.rc_title IS '��������';

COMMENT ON COLUMN RECRUIT.rc_content IS '������';

COMMENT ON COLUMN RECRUIT.rc_scrap IS '����ũ��';

COMMENT ON COLUMN RECRUIT.rc_salary IS 'ä�뿬��';

COMMENT ON COLUMN RECRUIT.rc_link IS 'Ȩ�������ּ�';

COMMENT ON COLUMN RECRUIT.rc_date IS '������';

COMMENT ON COLUMN RECRUIT.rc_view IS '������ǥ';

/* �����ڵ�  */
CREATE TABLE COMMONCODE (
	bclass NUMBER(10) NOT NULL, /* ��з� */
	mclass NUMBER(10) NOT NULL, /* �ߺз� */
	clvalue VARCHAR2(20) /* ���� */
);

CREATE UNIQUE INDEX PK_COMMONCODE
	ON COMMONCODE (
		bclass ASC,
		mclass ASC
	);

ALTER TABLE COMMONCODE
	ADD
		CONSTRAINT PK_COMMONCODE
		PRIMARY KEY (
			bclass,
			mclass
		);

COMMENT ON TABLE COMMONCODE IS '�����ڵ� ';

COMMENT ON COLUMN COMMONCODE.bclass IS '��з�';

COMMENT ON COLUMN COMMONCODE.mclass IS '�ߺз�';

COMMENT ON COLUMN COMMONCODE.clvalue IS '����';

/* Ŀ�´�Ƽ */
CREATE TABLE BOARD (
	bd_code NUMBER(3) NOT NULL, /* �Խñ��ڵ� */
	bd_num NUMBER NOT NULL, /* �Խñ۹�ȣ */
	m_id VARCHAR2(30), /* ȸ�����̵� */
	subject VARCHAR2(100), /* ���� */
	content VARCHAR2(4000), /* ���� */
	category NUMBER(3), /* ī�װ� */
	read_count NUMBER, /* ��ȸ�� */
	reg_date DATE, /* ����� */
	tags VARCHAR2(300), /* �±� */
	is_adopted NUMBER(1), /* ä�ÿ��� */
	file_name VARCHAR2(255), /* ÷�����ϸ� */
	ref NUMBER, /* �亯���׷� */
	re_step NUMBER, /* �׷쳻���� */
	re_level NUMBER /* �׷쳻���� */
);

CREATE UNIQUE INDEX PK_BOARD3
	ON BOARD (
		bd_code ASC,
		bd_num ASC
	);

ALTER TABLE BOARD
	ADD
		CONSTRAINT PK_BOARD3
		PRIMARY KEY (
			bd_code,
			bd_num
		);

COMMENT ON TABLE BOARD IS 'Ŀ�´�Ƽ';

COMMENT ON COLUMN BOARD.bd_code IS '�Խñ��ڵ�';

COMMENT ON COLUMN BOARD.bd_num IS '�Խñ۹�ȣ';

COMMENT ON COLUMN BOARD.m_id IS 'ȸ�����̵�';

COMMENT ON COLUMN BOARD.subject IS '����';

COMMENT ON COLUMN BOARD.content IS '����';

COMMENT ON COLUMN BOARD.category IS 'ī�װ�';

COMMENT ON COLUMN BOARD.read_count IS '��ȸ��';

COMMENT ON COLUMN BOARD.reg_date IS '�����';

COMMENT ON COLUMN BOARD.tags IS '�±�';

COMMENT ON COLUMN BOARD.is_adopted IS 'ä�ÿ���';

COMMENT ON COLUMN BOARD.file_name IS '÷�����ϸ�';

COMMENT ON COLUMN BOARD.ref IS '�亯���׷�';

COMMENT ON COLUMN BOARD.re_step IS '�׷쳻����';

COMMENT ON COLUMN BOARD.re_level IS '�׷쳻����';

/* ��� */
CREATE TABLE COMMENTS (
	bd_code NUMBER(3) NOT NULL, /* �Խñ��ڵ� */
	bd_num NUMBER NOT NULL, /* �Խñ۹�ȣ */
	bd_cm_num NUMBER NOT NULL, /* ��۹�ȣ */
	m_id VARCHAR2(30), /* ȸ�����̵� */
	content VARCHAR2(4000), /* ���� */
	reg_date DATE, /* ����� */
	ref NUMBER, /* �亯���׷� */
	re_step NUMBER, /* �׷쳻���� */
	re_level NUMBER /* �׷쳻���� */
);

CREATE UNIQUE INDEX PK_COMMENTS2
	ON COMMENTS (
		bd_code ASC,
		bd_num ASC,
		bd_cm_num ASC
	);

ALTER TABLE COMMENTS
	ADD
		CONSTRAINT PK_COMMENTS2
		PRIMARY KEY (
			bd_code,
			bd_num,
			bd_cm_num
		);

COMMENT ON TABLE COMMENTS IS '���';

COMMENT ON COLUMN COMMENTS.bd_code IS '�Խñ��ڵ�';

COMMENT ON COLUMN COMMENTS.bd_num IS '�Խñ۹�ȣ';

COMMENT ON COLUMN COMMENTS.bd_cm_num IS '��۹�ȣ';

COMMENT ON COLUMN COMMENTS.m_id IS 'ȸ�����̵�';

COMMENT ON COLUMN COMMENTS.content IS '����';

COMMENT ON COLUMN COMMENTS.reg_date IS '�����';

COMMENT ON COLUMN COMMENTS.ref IS '�亯���׷�';

COMMENT ON COLUMN COMMENTS.re_step IS '�׷쳻����';

COMMENT ON COLUMN COMMENTS.re_level IS '�׷쳻����';

/* ���ɰ��� */
CREATE TABLE LIKE_COMPANY (
	m_id VARCHAR2(30) NOT NULL, /* ȸ�����̵� */
	rc_num NUMBER(30) NOT NULL, /* ä������ȣ */
	rc_cnt NUMBER(2) /* ������Ȳ */
);

CREATE UNIQUE INDEX PK_LIKE_COMPANY
	ON LIKE_COMPANY (
		m_id ASC,
		rc_num ASC
	);

ALTER TABLE LIKE_COMPANY
	ADD
		CONSTRAINT PK_LIKE_COMPANY
		PRIMARY KEY (
			m_id,
			rc_num
		);

COMMENT ON TABLE LIKE_COMPANY IS '���ɰ���';

COMMENT ON COLUMN LIKE_COMPANY.m_id IS 'ȸ�����̵�';

COMMENT ON COLUMN LIKE_COMPANY.rc_num IS 'ä������ȣ';

COMMENT ON COLUMN LIKE_COMPANY.rc_cnt IS '������Ȳ';

/* ���� */
CREATE TABLE APPLY (
	m_id VARCHAR2(30) NOT NULL, /* ȸ�����̵� */
	rc_num NUMBER(30) NOT NULL, /* ä������ȣ */
	r_num NUMBER(9), /* �̷¼���ȣ */
	a_date DATE, /* ������¥ */
	ap_cnt NUMBER(2) /* ������Ȳ */
);

CREATE UNIQUE INDEX PK_APPLY
	ON APPLY (
		m_id ASC,
		rc_num ASC
	);

ALTER TABLE APPLY
	ADD
		CONSTRAINT PK_APPLY
		PRIMARY KEY (
			m_id,
			rc_num
		);

COMMENT ON TABLE APPLY IS '����';

COMMENT ON COLUMN APPLY.m_id IS 'ȸ�����̵�';

COMMENT ON COLUMN APPLY.rc_num IS 'ä������ȣ';

COMMENT ON COLUMN APPLY.r_num IS '�̷¼���ȣ';

COMMENT ON COLUMN APPLY.a_date IS '������¥';

COMMENT ON COLUMN APPLY.ap_cnt IS '������Ȳ';

ALTER TABLE RESUME
	ADD
		CONSTRAINT FK_MEMBER_TO_RESUME
		FOREIGN KEY (
			m_id
		)
		REFERENCES MEMBER (
			m_id
		);

ALTER TABLE SELF_INTRO
	ADD
		CONSTRAINT FK_MEMBER_TO_SELF_INTRO
		FOREIGN KEY (
			m_id
		)
		REFERENCES MEMBER (
			m_id
		);

ALTER TABLE MY_EDU
	ADD
		CONSTRAINT FK_RESUME_TO_MY_EDU
		FOREIGN KEY (
			r_num
		)
		REFERENCES RESUME (
			r_num
		);

ALTER TABLE MY_EDU
	ADD
		CONSTRAINT FK_EDU_TO_MY_EDU
		FOREIGN KEY (
			edu_num
		)
		REFERENCES EDU (
			edu_num
		);

ALTER TABLE CAREER
	ADD
		CONSTRAINT FK_RESUME_TO_CAREER
		FOREIGN KEY (
			r_num
		)
		REFERENCES RESUME (
			r_num
		);

ALTER TABLE MY_LICENCE
	ADD
		CONSTRAINT FK_LICENCE_TO_MY_LICENCE
		FOREIGN KEY (
			lc_num
		)
		REFERENCES LICENCE (
			lc_num
		);

ALTER TABLE MY_LICENCE
	ADD
		CONSTRAINT FK_RESUME_TO_MY_LICENCE
		FOREIGN KEY (
			r_num
		)
		REFERENCES RESUME (
			r_num
		);

ALTER TABLE RE_SELF_REL
	ADD
		CONSTRAINT FK_RESUME_TO_RE_SELF_REL
		FOREIGN KEY (
			r_num
		)
		REFERENCES RESUME (
			r_num
		);

ALTER TABLE RE_SELF_REL
	ADD
		CONSTRAINT FK_SELF_INTRO_TO_RE_SELF_REL
		FOREIGN KEY (
			si_num
		)
		REFERENCES SELF_INTRO (
			si_num
		);

ALTER TABLE CLASSIFY
	ADD
		CONSTRAINT FK_COMMONCODE_TO_CLASSIFY
		FOREIGN KEY (
			bclass,
			mclass
		)
		REFERENCES COMMONCODE (
			bclass,
			mclass
		);

ALTER TABLE CLASSIFY
	ADD
		CONSTRAINT FK_RECRUIT_TO_CLASSIFY
		FOREIGN KEY (
			rc_num
		)
		REFERENCES RECRUIT (
			rc_num
		);

ALTER TABLE BOARD
	ADD
		CONSTRAINT FK_MEMBER_TO_BOARD2
		FOREIGN KEY (
			m_id
		)
		REFERENCES MEMBER (
			m_id
		);

ALTER TABLE COMMENTS
	ADD
		CONSTRAINT FK_BOARD_TO_COMMENTS2
		FOREIGN KEY (
			bd_code,
			bd_num
		)
		REFERENCES BOARD (
			bd_code,
			bd_num
		);

ALTER TABLE COMMENTS
	ADD
		CONSTRAINT FK_MEMBER_TO_COMMENTS
		FOREIGN KEY (
			m_id
		)
		REFERENCES MEMBER (
			m_id
		);

ALTER TABLE LIKE_COMPANY
	ADD
		CONSTRAINT FK_MEMBER_TO_LIKE_COMPANY
		FOREIGN KEY (
			m_id
		)
		REFERENCES MEMBER (
			m_id
		);

ALTER TABLE LIKE_COMPANY
	ADD
		CONSTRAINT FK_RECRUIT_TO_LIKE_COMPANY
		FOREIGN KEY (
			rc_num
		)
		REFERENCES RECRUIT (
			rc_num
		);

ALTER TABLE APPLY
	ADD
		CONSTRAINT FK_RESUME_TO_APPLY
		FOREIGN KEY (
			r_num
		)
		REFERENCES RESUME (
			r_num
		);

ALTER TABLE APPLY
	ADD
		CONSTRAINT FK_MEMBER_TO_APPLY
		FOREIGN KEY (
			m_id
		)
		REFERENCES MEMBER (
			m_id
		);

ALTER TABLE APPLY
	ADD
		CONSTRAINT FK_RECRUIT_TO_APPLY
		FOREIGN KEY (
			rc_num
		)
		REFERENCES RECRUIT (
			rc_num
		);

