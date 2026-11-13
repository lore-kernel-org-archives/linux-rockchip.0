Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F30860776E4
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 17:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gIvSpwJI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=pZQAGIDG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=JvQc/vtn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mynzlQoPR3E9F875dVfjo9sz15GDoJOS3ToPtKtgI/w=; b=gIvSpwJIZVuV5Ywr6BqkX5lIYI
	mrJeRIMEEBTNZL6vv3NUcsz6LIHji3riJ4UD/PZuT7bYxsn1y3eQhcq1+45VyWT69syHLKA5SgykF
	LVfUMOJGoAcGoPdiowi//uGpviafDlhCmy/d1fZK6LMVfk1FGFecoU68noeHM1wTfvhgcUL0Ycnhd
	P6dUwgCIsdSquXJfze9WBw1fhZ1klCIs2O8O3q+Fvj9x1ryxyfBr4Hi+Zdi2duTOz8OO8vmNCryCH
	GQtvuEKtu0G3Guwace8Nts1n2RvzkrQF9x/0HuhuxvquTSQP2o2UAUFZ4IgKo1ZLGtMmm3pqU8WLz
	W8QaEwxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRvNq-0000000Dmtf-3hjx;
	Fri, 13 Nov 2026 17:48:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRvNl-0000000DmrQ-2rrz
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 17:48:17 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ADFR3no2022977
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 17:48:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tYWjPq7IqlSKgbNTpcHLqc47/rglK9xx20CYVlKikS8=; b=pZQAGIDGVwHJfm1U
	MPRN2QTFFZq/UoCWG9MIk42a8lV72+KURht33BDF/LLzZ8RbDEeCnHpX4mImRXw5
	7hiSMXWxX/ZkPLBH8jsisruy99Ohe8KaSz2EPlMvq0kS/clp0za10LhijLWRMbT7
	m2c+utU3ETt3e9v1otJKOBd5k+4PugjibRXwOW6HHHGBx+QszUay/gdkK7FukSgl
	anZLrFIlWejdBF3A3LG1wuoJVOR+8eGwYnumX69NNWASjv48oUqBX7HQnQohgniu
	hR2Eo1AVbhxYPLaK3x2vb7gRxffvUsNn7KdszpR+hlyzoOrN4zzeISkrhOhrD6E5
	z/FtkA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hx0g21msh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 17:48:13 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cdd9fa2a558so1402156a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 09:48:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794592092; cv=none;
        d=google.com; s=arc-20260327;
        b=q+oSOTM7Wtlk1/BTYKv0vhjFhHITlGwGxSGe89rHPWdxL+NDwf9nY8a/jtvIaAf7Md
         IwCAI5h8TvqMGhW7GmsN0msHTyeoGTQsgp3ezsCGqIBxTU3U4jpBVrOeIcNtsjU4rbqP
         d6Fr6L27ebfqw4JXYjom5SFjR1jxbr3Vl/saTJjr4nZJ5CNqiDnarUt60gRdhALMFpT8
         qmw8+Ju/aDkg50potnGVli1+MYigruKpt7NtXLaEdGfTrmtRT7SK7c3nNw1GM15M8coR
         CFXLDU2kqqezGVsBokOKyuFwaIJIMbSW8vZlVMyoW14JifLKFAQlgyLZ7j/gA/kMZde1
         aiOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tYWjPq7IqlSKgbNTpcHLqc47/rglK9xx20CYVlKikS8=;
        fh=82SX0VGfnJn3Pt2Ch7LEhIagczLjrSbv0n/HgShiQHE=;
        b=HQyOS43Wmk4HErTmHztihKAfRxDdKUlWIUzHFbcUTDjDapyLNEQQEWwb7/xfF6NfHR
         z8Rs6INQVb6ypHVAYr2HPr4mTK+SWu70umf0GnfgeZy1p8Ed8xbjql8YP9oy6r6mq9nL
         qlebkHBThuwBjr4dIAZ1ycKOCYY2WlJAILoSgH2biGTBFCQ9MMbE0NC10kwUCglXjVQC
         bEh/pnLssTlWRdzkcUpwwAZXBMuAa+QI/X1ZeHBimwjhD2hrO+x+DtCkfQnb8wAWgkSX
         kYH3SnL+Ud3APWwyO+FObTvXcSFX/Rof9aHBnT8Gi7dlnPNsnJFX934iLKo+tolF0PwP
         2ZTw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794592092; x=1795196892; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=tYWjPq7IqlSKgbNTpcHLqc47/rglK9xx20CYVlKikS8=;
        b=JvQc/vtnezEIlGt8t8weKAvhsq/f86iE7dP3DATNLBbkH+WdlY7fLKA/m3JJCnOIUZ
         JBL8awU5obv8wBDuhpZVPdOxonS49ZPr8rXzEZyXL78UoENqa7jcmjLi4R0ILVxeKcM0
         MoKzrljgcHly5IGsBiPixYy5IqLDHrrSACSK504zfXXMTydaBkPBz+9KKt7RlRjVIITY
         3jckO9phzERxz0XPV3/24u/1qWge4bIeamsDjKXQkv5zkIO935+/bwNxwPndKhpyZvhi
         ZhNq38yGZ5N1vceTbwCk0rdrFv5uwX4lU0/Qm6u2ET7k4rAYZmB+IVKnxUzYnsyu8r0+
         fNNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794592092; x=1795196892;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tYWjPq7IqlSKgbNTpcHLqc47/rglK9xx20CYVlKikS8=;
        b=hTl4WII1/e8zPYeMgINa0bejL8h0BhXriBR+hn/x5z8hhh5yhd8nROuTnoFuInCqHy
         TZOzF3+7s4ZUggIEBDEN17d4+DBzJOfZk6zXzfGu+Vf/n2kXIOZhGfUQ7XeNtzZ/yESK
         Kvd99RAjWwI5beNw2WVEyZt3QYUm+JyhLJRyRXgWEj53a6yQZEJ6iWGF3tUyeCuHQFGe
         8WAwE4s/nLFJ2+21/HAmniOTdIev6QWiIH9qSLXcBRi2WePeVu+a7xnCQFBmRceOC4oS
         GYUrv9vaipQRNcCWKn6GJlpqzOXUKrkuFrC8FRS9cx4IQoWroWKVMNl00mQW30yqvo5U
         qnAg==
X-Forwarded-Encrypted: i=1; AL+hErFlAQuo23r0CzYoN4VGmDBznIRMuA7qcIDWfqCgDx5wosHCDb+SEX/xiuldC5lcxI/UKFWtEWhj6+457V5rvQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+CcJZ7JAo6eJpao+3p6Mut40qwrFMZTFGtUs7MGyM6Pmr2qY/s
	KJLkIym3DEZQOYfD8xsqI3jJxrto+YsMSH6mcXVyq7au2NEk50yHlRvIK3TtYLIBCekfhdOT9ji
	N5PFYUFW2+JSyl600VfQf8juZGoHoOPRdUi70evcRQnmYFH6Ddy2wSNIXKd6r+5Zz6Exg8EonOe
	wjvZu4NzOezzFdrzqFKYTReNjoaPwa1z2b0efl0ncwO3wYiwRfYA==
X-Gm-Gg: AYBFou2M51T5XcJEgHar2TtjY4XR3cN4cgoEqvZwypgTV06+KK9W577qz6h/hP+XaDw
	ddohqFQKEp0cw65dhGrXssFaTsxFssaIfb5iwespZfl2NsAmDZ6zvrPcyYLKk82I69VWezFelmt
	uShPe3sxKzaLw1Qc3j43YOr+uDTDed0zC194TYIwREhxeMNcpzVVS9Lf5QLQ==
X-Received: by 2002:a17:90b:48ce:b0:3ab:188b:c5b1 with SMTP id 98e67ed59e1d1-3b1b0a4e7f7mr3137269a91.56.1794592092370;
        Fri, 13 Nov 2026 09:48:12 -0800 (PST)
X-Received: by 2002:a17:90b:48ce:b0:3ab:188b:c5b1 with SMTP id
 98e67ed59e1d1-3b1b0a4e7f7mr3137245a91.56.1794592091922; Fri, 13 Nov 2026
 09:48:11 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20260925041751.495818-1-coiaprant@gmail.com> <382B43FA-B225-41C5-80B6-944D9D2802CF@gmail.com>
 <CALj3r0jMLFbz+oa_z6kySDg-3aLaFWtFoKv9VB_qHhQZDpemfw@mail.gmail.com>
In-Reply-To: <CALj3r0jMLFbz+oa_z6kySDg-3aLaFWtFoKv9VB_qHhQZDpemfw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Fri, 13 Nov 2026 18:48:00 +0100
X-Gm-Features: AclHuK8g7tQW9S4ZM83ovlzdx6LVKg4onvs4sx_JqFXCpOEKhsosFCl6JEvlGa4
Message-ID: <CAPx+jO-+uwxMN3-LZn4nH4HSXu6GCnvdrUb9ff79W5EeCU4SZA@mail.gmail.com>
Subject: Re: [PATCH] pmdomain: rockchip: mark PD_PIPE as active wakeup on RK3568
To: Coia Prant <coiaprant@gmail.com>
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDA3MCBTYWx0ZWRfX1/jT3ONHyyv1
 jibmnsKPp+tuyk7ef1rVP8oB96u/7GbwivEvm0zrN+2RUp3DqEm55F2jmJqxf119rGsbHPnolYR
 TwwTs6He6WI9S6DqqtwGlsL2pT0UqgMBldY6NsJlIHYf1D099ov0f9wJeGry9UQLr53pzxcV3Sp
 Jq5QIa9gPY6k3jWAsoHKP4S/VKxeGN6GsHOqkYkKERcaWr82VLPLh7o6HRJ2xSmiAr2tACBrOOJ
 3PNx5V5aPh1ax7gFpSRJ9rtOXErfz9iLKqsr4R5yd9SSHHzxFdoKKYDW1VwERHKJwd7g6q9uNyH
 q7XGc1qfiLTeNUVDbty4IQbCFXBEKHJw8Ei0ubuuo7MNDihDsWJBVZqHOPoYoZ4pGcG2YZpGWA3
 eI0dBFsFEUC3fu4phPdLJbTZp1NQk46Zi/h4Ic3nCnQtlVzMBbYw9XAAeKWLhesmxl26DusK4la
 GDm2DFPBJozHn/bIoQQ==
X-Proofpoint-ORIG-GUID: xiTXE4dvwE54NGx8pgMCsVKO1SxtX7wn
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDA3MCBTYWx0ZWRfX6N1XqUlK7stQ
 Bs0tdy9TbLvEcXXGTwP/CyJqANmGYvZqykapXjSHdAospXrC0ns3RJsXM+J3CURUyVHy66qug+D
 w252wd1YN69LrzVeCJglw1i60MN57ts=
X-Proofpoint-GUID: xiTXE4dvwE54NGx8pgMCsVKO1SxtX7wn
X-Authority-Analysis: v=2.4 cv=SpIFe/O0 c=1 sm=1 tr=0 ts=6af74d5d cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=qR-pa9LE6TqeafLzNesA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_05,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 malwarescore=0 impostorscore=0 bulkscore=0 phishscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611130070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_094813_747177_1CB4408E 
X-CRM114-Status: GOOD (  24.33  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1LCBPY3QgMjIsIDIwMjYgYXQgNTowNOKAr0FNIENvaWEgUHJhbnQgPGNvaWFwcmFudEBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4g5LqO
MjAyNuW5tDEw5pyINuaXpeWRqOS6jCAwNzoyN+WGmemBk++8mgo+ID4KPiA+IE9uIFNlcHRlbWJl
ciAyNSwgMjAyNiAxMjoxNzo1MSBQTSBHTVQrMDg6MDAsIENvaWEgUHJhbnQgPGNvaWFwcmFudEBn
bWFpbC5jb20+IHdyb3RlOgo+ID4gPlRoZSBQRF9QSVBFIHBvd2VyIGRvbWFpbiBvbiBSSzM1Njgg
aG9zdHMgdGhlIFhQQ1MsIHRoZSBQQ0llCj4gPiA+Y29udHJvbGxlcnMgYW5kIHRoZSBTQVRBIGNv
bnRyb2xsZXJzLiAgQWxsIG9mIHRoZW0gY2FuIGFjdCBhcwo+ID4gPndha2V1cCBzb3VyY2VzIGZv
ciB0aGUgc3lzdGVtOgo+ID4gPgo+ID4gPiAgLSB0aGUgWFBDUyBmb3IgTUFDIFdvTCwgdGhyb3Vn
aCB0aGUgU0dNSUkgbGluawo+ID4gPiAgLSB0aGUgUENJZSBjb250cm9sbGVycyBmb3IgUE1FIwo+
ID4gPiAgLSB0aGUgU0FUQSBjb250cm9sbGVycyBmb3IgaG90cGx1ZyB3YWtlCj4gPiA+Cj4gPiA+
VGhlIGRvbWFpbiBpcyByZWdpc3RlcmVkIHdpdGggYWN0aXZlX3dha2V1cCA9IGZhbHNlLCBzbyBn
ZW5wZCBwb3dlcnMKPiA+ID5pdCBkb3duIGR1cmluZyBzeXN0ZW0gc3VzcGVuZCBldmVuIHdoZW4g
YSBjb25zdW1lciBpcyBvbiB0aGUgd2FrZXVwCj4gPiA+cGF0aC4gIFRoYXQga2lsbHMgdGhlIFhQ
Q1MgYW5kIHRoZSBTZXJEZXMsIHdoaWNoIGJyZWFrcyBNQUMgV29MIG9uCj4gPiA+UkszNTY4IFNH
TUlJIGJvYXJkcywgYW5kIGl0IGFsc28gcG93ZXJzIGRvd24gdGhlIFBDSWUgYW5kIFNBVEEKPiA+
ID5jb250cm9sbGVycyB3aGlsZSB0aGVpciBkcml2ZXJzIHN0aWxsIGV4cGVjdCB0aGUgbGluayB0
byBiZSBhbGl2ZS4KPiA+ID4KPiA+ID5NYXJrIFBEX1BJUEUgYXMgYWN0aXZlX3dha2V1cCBzbyB0
aGF0IGdlbnBkIGhvbm91cnMgdGhlIHdha2V1cCBwYXRoCj4gPiA+b2YgaXRzIGNvbnN1bWVycy4g
IENvbnN1bWVycyB0aGF0IGNhbGwgZGV2aWNlX3NldF93YWtldXBfcGF0aCgpIGtlZXAKPiA+ID50
aGUgZG9tYWluIHBvd2VyZWQ7IGNvbnN1bWVycyB0aGF0IGRvIG5vdCBtYXJrIHRoZW1zZWx2ZXMg
YXMgd2FrZXVwCj4gPiA+c291cmNlcyBhcmUgdW5hZmZlY3RlZCBhbmQgdGhlIGRvbWFpbiBpcyBz
dGlsbCBwb3dlcmVkIGRvd24gd2hlbgo+ID4gPm5vdGhpbmcgbmVlZHMgaXQuCj4gPiA+Cj4gPiA+
U2V2ZXJhbCBvdGhlciBSb2NrY2hpcCBTb0NzIGFscmVhZHkgbWFyayB0aGVpciBQQ0llIGFuZCBV
U0IgcG93ZXIKPiA+ID5kb21haW5zIGFzIGFjdGl2ZSB3YWtldXAsIGZvciBleGFtcGxlIFJLMzU4
OCdzIHBjaWUgYW5kIHVzYiBkb21haW5zCj4gPiA+YW5kIFJLMzU3NidzIHVzYiBkb21haW4uICBQ
RF9QSVBFIGhvc3RzIHRoZSBzYW1lIGtpbmQgb2YKPiA+ID53YWtldXAtY2FwYWJsZSBjb250cm9s
bGVycyBvbiBSSzM1NjgsIHNvIHRoaXMgZm9sbG93cyB0aGUgc2FtZQo+ID4gPnBhdHRlcm4uCj4g
PiA+Cj4gPiA+U2lnbmVkLW9mZi1ieTogQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4K
Pgo+IEhpIFVsZiwKPgo+IEdlbnRsZSBwaW5nIG9uIHRoaXMgcGF0Y2guIEl0IHdhcyBzZW50IG9u
IFNlcCAyNSBhbmQgUGF0Y2h3b3JrIHNob3dzIGl0Cj4gYXMgIkhhbmRsZWQgRWxzZXdoZXJlIiwg
YnV0IEkgY2FuJ3QgZmluZCBpdCBtZXJnZWQgaW4gbGludXgtcG0sCj4gbGludXgtcm9ja2NoaXAs
IGxpbnV4LW5leHQgb3IgbWFpbmxpbmUsIGFuZCBJIGhhdmVuJ3QgcmVjZWl2ZWQgYW55Cj4gcmV2
aWV3IGZlZWRiYWNrLgo+Cj4gU2luY2UgdGhlbiwgdGhlIFhQQ1MgZHJpdmVyIGFuZCBEVFMgdGhh
dCBkZXBlbmQgb24gUERfUElQRSBzdGF5aW5nCj4gcG93ZXJlZCBhY3Jvc3Mgc3VzcGVuZCBoYXZl
IGJlZW4gbWVyZ2VkIGFuZCBzZW50IHVwc3RyZWFtOgo+Cj4gLSBYUENTIGRyaXZlciBpbiBuZXQt
bmV4dDogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9uZXRkZXYvbmV0LW5leHQvYy81ZTkxZWRmYjBl
NDUKPgo+IENvdWxkIHlvdSBsZXQgbWUga25vdyB3aGljaCB0cmVlIHRoaXMgc2hvdWxkIGdvIHRo
cm91Z2gsIG9yIHdoZXRoZXIgaXQKPiB3YXMgYWxyZWFkeSBwaWNrZWQgc29tZXdoZXJlPyBJZiBp
dCBuZWVkcyB0byBiZSByb3V0ZWQgZGlmZmVyZW50bHksIEknbQo+IGhhcHB5IHRvIHJlc2VuZCBp
dC4KPgo+IFRoYW5rcywKPiBDb2lhCgpBcG9sb2dpemUgZm9yIHRoZSBodWdlIGRlbGF5LiBJIHdh
cyB3YWl0aW5nIGZvciBhbiBhY2sgZnJvbSBzb21lIG9mCnRoZSByb2NrY2hpcCBtYWludGFpbmVy
cy4KCkFueXdheSwgdGhpcyBsb29rcyBmaW5lIHRvIG1lIHNvLCBhcHBsaWVkIGZvciBuZXh0LCB0
aGFua3MhCgpLaW5kIHJlZ2FyZHMKVWZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
