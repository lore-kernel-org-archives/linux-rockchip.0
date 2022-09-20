Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF5F5C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RXv3rFvHKKnmlBorrG9r0LbEHiPXAjUGO5IV/Oi224I=; b=FdxVev2n8IyEjl
	x4iB2AHRz214NQx950gYQsh3coLF484dwgvZYYNR13MAK9pBHlWEtL6+JvNco+chrL1Q9wwXUmqE0
	uPt34D+s7m7BiN5rz8QQIFrXppadP1mslQ18OLHE7yq5r+BMlYy8rBinfSRrR/X6myZKpC57Kx454
	NY8HPyrXIdkGvkpuuYlgSXHiqYsY94yL6ANp5INGnWhzxT2yMqnta7Vvt0hjjzkURH4dH5Xy9aYRQ
	FrygCdHILTkcZtFlCdEHNKWeDydR04l+bI8W5Oodf053ltGV72gajVO9F4Rhnl3g9El/s7hES6dON
	a2vBFSXwHkFlBGpNFjXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQE-003I7W-28; Tue, 20 Sep 2022 11:28:14 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQ7-003I2e-1x; Tue, 20 Sep 2022 11:28:09 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K81m58025096;
	Tue, 20 Sep 2022 07:27:47 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jpn468r05-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:27:46 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 28KBRjx6060583
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:27:45 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:27:44 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:27:44 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:27:44 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UM021723;
	Tue, 20 Sep 2022 07:27:06 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-amlogic@lists.infradead.org>, <linux-imx@nxp.com>,
        <linux-iio@vger.kernel.org>
CC: Chunyan Zhang <zhang.lyra@gmail.com>,
        Michael Hennerich
	<Michael.Hennerich@analog.com>,
        Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman <khilman@baylibre.com>,
        Vladimir Zapolskiy <vz@mleia.com>,
        Pengutronix Kernel Team
	<kernel@pengutronix.de>,
        Alexandru Ardelean <aardelean@deviqon.com>,
        "Fabio
 Estevam" <festevam@gmail.com>,
        Andriy Tryshnivskyy
	<andriy.tryshnivskyy@opensynergy.com>,
        Haibo Chen <haibo.chen@nxp.com>, "Shawn Guo" <shawnguo@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Jerome Brunet
	<jbrunet@baylibre.com>,
        "Heiko Stuebner" <heiko@sntech.de>,
        Florian Boor
	<florian.boor@kernelconcepts.de>,
        Ciprian Regus <ciprian.regus@analog.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Andy Shevchenko
	<andy.shevchenko@gmail.com>,
        "Jonathan Cameron" <jic23@kernel.org>,
        Neil
 Armstrong <narmstrong@baylibre.com>,
        "Baolin Wang"
	<baolin.wang@linux.alibaba.com>,
        Jyoti Bhayana <jbhayana@google.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
        Chen-Yu Tsai
	<wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
Subject: [PATCH 00/15] Make 'mlock' really private
Date: Tue, 20 Sep 2022 13:28:06 +0200
Message-ID: <20220920112821.975359-1-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: ctBCY4ybaJjBC-Xu6-vuJs0JpagJPQLg
X-Proofpoint-GUID: ctBCY4ybaJjBC-Xu6-vuJs0JpagJPQLg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 phishscore=0 clxscore=1011 spamscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 mlxlogscore=524 adultscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042807_180135_BC488A4D 
X-CRM114-Status: GOOD (  14.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhpcyBwYXRjaHNldCBjbGVhbnMgYWxsIHRoZSBkcml2ZXJzIGRpcmVjdGx5IHVzaW5nIHRoZSBp
aW9fZGV2aWNlICdtbG9jaycuDQpUaGlzIGxvY2sgaXMgcHJpdmF0ZSBhbmQgc2hvdWxkIG5vdCBi
ZSB1c2VkIG91dHNpZGUgdGhlIGNvcmUgKG9yIGJ5IHVzaW5nDQpwcm9wZXIgaGVscGVycykuDQoN
Ck1vc3Qgb2YgdGhlIGNvbnZlcnNpb25zIHdoZXJlIHN0cmFpZ2h0LCBidXQgdGhlcmUgYXJlIHNv
bWUgdGhhdCByZWFsbHkgbmVlZA0KZXh0cmEgbG9va2luZy4gTWFpbmx5IHBhdGNoZXMgWzEzLzE1
XSBhbmQgWzE0LzE1XSB3ZXJlIGEgYml0IGhhY2t5IHNpbmNlDQppaW9fZGV2aWNlX2NsYWltX2Rp
cmVjdF9tb2RlKCkgZG9lcyBub3QgZml0IDEwMCUuIFRoZSByZWFzb24gaXMgdGhhdCB3ZQ0Kd2Fu
dCB0byBjaGVjayBpZiB0aGUgZGV2aWNlIGlzIGJ1ZmZlcmluZyBhbmQgZG8gc29tZXRoaW5nIGlm
IGl0IGlzIChpbg0Kd2hpY2ggY2FzZSB0aGUgQVBJIHJldHVybiAtRUJVU1kgYW5kIHJlbGVhc2Vk
IHRoZSBsb2NrLiBJIGp1c3QgdXNlZCBhDQpjb21iaW5hdGlvbnMgb2YgbG9ja3MgdG8gZ2V0IGFy
b3VuZCB0aGlzIChob3BlZnVsbHkgSSBkaWQgbm90IG1lc3NlZCB1cCkuDQoNCkkgd2FzIGFsc28g
bm90IHN1cmUgaWYgcGF0Y2ggWzEvMTVdIGRlc2VydmVzIGEgRml4ZXM6IHRhZyBidXQsIHRvIG1l
LCBpdA0KaXMgcmVhbGx5IGZpeGluZyBhIHBvdGVudGlhbCByYWNlIHNvIEkgYWRkZWQgaXQuDQoN
Ck5vdGUgdGhhdCB0aGlzIHNlcmllcyB3YXMgb25seSBjb21waWxlZCB0ZXN0ZWQgdXNpbmcgYWxs
eWVzY29uZmlnIGZvcg0KQVJNLiBJIHJhbiAnZ2l0IGdyZXAnIHRvIG1ha2Ugc3VyZSB0aGVyZSB3
ZXJlIG5vIG1vcmUgdXNlcnMgb2YgJ21sb2NrJy4NCkhvcGVmdWxseSBJIGNvdmVyZWQgdGhlbSBh
bGwuLi4NCg0KTnVubyBTw6EgKDE1KToNCiAgaWlvOiBhZGM6IGFkX3NpZ21hX2RlbHRhOiBkbyBu
b3QgdXNlIGludGVybmFsIGlpb19kZXYgbG9jaw0KICBpaW86IGFkYzogYWQ3OTl4OiBkbyBub3Qg
dXNlIGludGVybmFsIGlpb19kZXYgbG9jaw0KICBpaW86IGFkYzogYXhwMjg4X2FkYzogZG8gbm90
IHVzZSBpbnRlcm5hbCBpaW9fZGV2IGxvY2sNCiAgaWlvOiBhZGM6IGlteDdkX2FkYzogZG8gbm90
IHVzZSBpbnRlcm5hbCBpaW9fZGV2IGxvY2sNCiAgaWlvOiBhZGM6IGxwYzMyeHhfYWRjOiBkbyBu
b3QgdXNlIGludGVybmFsIGlpb19kZXYgbG9jaw0KICBpaW86IGFkYzogbHRjMjk0Ny1jb3JlOiBk
byBub3QgdXNlIGludGVybmFsIGlpb19kZXYgbG9jaw0KICBpaW86IGFkYzogbWVzb25fc2FyYWRj
OiBkbyBub3QgdXNlIGludGVybmFsIGlpb19kZXYgbG9jaw0KICBpaW86IGFkYzogcm9ja2NoaXBf
c2FyYWRjOiBkbyBub3QgdXNlIGludGVybmFsIGlpb19kZXYgbG9jaw0KICBpaW86IGFkYzogc2My
N3h4X2FkYzogZG8gbm90IHVzZSBpbnRlcm5hbCBpaW9fZGV2IGxvY2sNCiAgaWlvOiBhZGM6IHZm
NjEwX2FkYzogZG8gbm90IHVzZSBpbnRlcm5hbCBpaW9fZGV2IGxvY2sNCiAgaWlvOiBjb21tb246
IHNjbWlfaWlvOiBkbyBub3QgdXNlIGludGVybmFsIGlpb19kZXYgbG9jaw0KICBpaW86IGZ5cm86
IGl0ZzMyMDBfY29yZTogZG8gbm90IHVzZSBpbnRlcm5hbCBpaW9fZGV2IGxvY2sNCiAgaWlvOiBo
ZWFsdGg6IG1heDMwMTAwOiBkbyBub3QgdXNlIGludGVybmFsIGlpb19kZXYgbG9jaw0KICBpaW86
IGhlYWx0aDogbWF4MzAxMDI6IGRvIG5vdCB1c2UgaW50ZXJuYWwgaWlvX2RldiBsb2NrDQogIGlp
bzogY29yZTogbW92ZSAnbWxvY2snIHRvICdzdHJ1Y3QgaWlvX2Rldl9vcGFxdWUnDQoNCiBkcml2
ZXJzL2lpby9UT0RPICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMyAtLS0NCiBkcml2ZXJz
L2lpby9hZGMvYWQ3OTl4LmMgICAgICAgICAgICAgICAgICAgfCAxOCArKysrKysrKy0tLS0tDQog
ZHJpdmVycy9paW8vYWRjL2FkX3NpZ21hX2RlbHRhLmMgICAgICAgICAgIHwgIDggKysrLS0tDQog
ZHJpdmVycy9paW8vYWRjL2F4cDI4OF9hZGMuYyAgICAgICAgICAgICAgIHwgIDggKysrKy0tDQog
ZHJpdmVycy9paW8vYWRjL2lteDdkX2FkYy5jICAgICAgICAgICAgICAgIHwgMTMgKysrKysrLS0t
LQ0KIGRyaXZlcnMvaWlvL2FkYy9scGMzMnh4X2FkYy5jICAgICAgICAgICAgICB8IDEwICsrKysr
LS0tDQogZHJpdmVycy9paW8vYWRjL2x0YzI0OTctY29yZS5jICAgICAgICAgICAgIHwgIDcgKysr
LS0NCiBkcml2ZXJzL2lpby9hZGMvbHRjMjQ5Ny5oICAgICAgICAgICAgICAgICAgfCAgMiArKw0K
IGRyaXZlcnMvaWlvL2FkYy9tZXNvbl9zYXJhZGMuYyAgICAgICAgICAgICB8IDEwICsrKysrLS0t
DQogZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jICAgICAgICAgIHwgMTQgKysrKysr
LS0tLQ0KIGRyaXZlcnMvaWlvL2FkYy9zYzI3eHhfYWRjLmMgICAgICAgICAgICAgICB8IDEyICsr
KysrKy0tLQ0KIGRyaXZlcnMvaWlvL2FkYy92ZjYxMF9hZGMuYyAgICAgICAgICAgICAgICB8IDMw
ICsrKysrKysrKysrKysrLS0tLS0tLS0NCiBkcml2ZXJzL2lpby9jb21tb24vc2NtaV9zZW5zb3Jz
L3NjbWlfaWlvLmMgfCAgOSArKysrKy0tDQogZHJpdmVycy9paW8vZ3lyby9pdGczMjAwX2NvcmUu
YyAgICAgICAgICAgIHwgIDkgKysrKy0tLQ0KIGRyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMC5j
ICAgICAgICAgICAgICB8IDI0ICsrKysrKysrKysrKy0tLS0tDQogZHJpdmVycy9paW8vaGVhbHRo
L21heDMwMTAyLmMgICAgICAgICAgICAgIHwgMjUgKysrKysrKysrKysrKy0tLS0tDQogZHJpdmVy
cy9paW8vaW5kdXN0cmlhbGlvLWJ1ZmZlci5jICAgICAgICAgIHwgMjkgKysrKysrKysrKysrLS0t
LS0tLS0tDQogZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLWNvcmUuYyAgICAgICAgICAgIHwgMTgg
KysrKysrKy0tLS0tLQ0KIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1ldmVudC5jICAgICAgICAg
ICB8ICA0ICstLQ0KIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby10cmlnZ2VyLmMgICAgICAgICB8
IDEyICsrKystLS0tLQ0KIGluY2x1ZGUvbGludXgvaWlvL2d5cm8vaXRnMzIwMC5oICAgICAgICAg
ICB8ICAyICsrDQogaW5jbHVkZS9saW51eC9paW8vaWlvLW9wYXF1ZS5oICAgICAgICAgICAgIHwg
IDIgKysNCiBpbmNsdWRlL2xpbnV4L2lpby9paW8uaCAgICAgICAgICAgICAgICAgICAgfCAgMyAt
LS0NCiAyMyBmaWxlcyBjaGFuZ2VkLCAxNzUgaW5zZXJ0aW9ucygrKSwgOTcgZGVsZXRpb25zKC0p
DQoNCi0tIA0KMi4zNy4zDQoNCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
