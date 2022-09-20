Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5E9FC6FA8B
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nX8028jxWjbge3E9V/gZKHKZ8J9mnkD3VOhVemMkoc=; b=Gba6DoUsgi3VAj
	Z3f2dv0+FQ9XwG9cyFSMCQYeJ50W/8hcrm5+c3oNXmXtdBWOuxW3Ar80BBvg5xvvwpUYtSU/SPutQ
	BEMBoyLNK5R9Uyky+007V/AqmLPclNqm+S/cfDa3ZFaiJKqsZ1ZEZI2Dls5wDfxBNa2d9ODGlVpfn
	CZ9D/uCr1FjTP3EpZorSil11z5KPQwq98LodtsHuB6w0Fue3L4A+07lkCAN79Z+IiARsK3bvRNJAU
	6FHYQYhbV53vP3Nrfye9cfBlL4Qts6x3nMm9+TTJsuUtSJbrAEamGt2150dGE/oTVeioybs8lIHjd
	UorJvWzSDj7Hk3ujw6Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabRz-003JIe-1N; Tue, 20 Sep 2022 11:30:03 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQH-003IAE-HX; Tue, 20 Sep 2022 11:28:19 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K7wQkT025088;
	Tue, 20 Sep 2022 07:28:03 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jpn468r1r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:28:03 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 28KBS2ZE062485
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:28:02 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 20 Sep
 2022 07:28:01 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:28:01 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UQ021723;
	Tue, 20 Sep 2022 07:27:49 -0400
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
        Fabio
 Estevam <festevam@gmail.com>,
        Andriy Tryshnivskyy
	<andriy.tryshnivskyy@opensynergy.com>,
        Haibo Chen <haibo.chen@nxp.com>, Shawn
 Guo <shawnguo@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Miquel Raynal
	<miquel.raynal@bootlin.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Heiko
 Stuebner <heiko@sntech.de>,
        Florian Boor <florian.boor@kernelconcepts.de>,
        Ciprian Regus <ciprian.regus@analog.com>,
        Lars-Peter Clausen
	<lars@metafoo.de>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jonathan
 Cameron <jic23@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Baolin
 Wang <baolin.wang@linux.alibaba.com>,
        Jyoti Bhayana <jbhayana@google.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
        Chen-Yu Tsai
	<wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
Subject: [PATCH 04/15] iio: adc: imx7d_adc: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:10 +0200
Message-ID: <20220920112821.975359-5-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: fbqpoql29bL1qKSeJ7spjl_urrZS0t3H
X-Proofpoint-GUID: fbqpoql29bL1qKSeJ7spjl_urrZS0t3H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 phishscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042817_648973_77A53256 
X-CRM114-Status: GOOD (  16.58  )
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

VGhlIGlpb19kZXZpY2UgbG9jayBpcyBvbmx5IG1lYW50IGZvciBpbnRlcm5hbCB1c2UuIEhlbmNl
IGRlZmluZSBhCmRldmljZSBsb2NhbCBsb2NrIHRvIHByb3RlY3QgYWdhaW5zdCBjb25jdXJyZW50
IGFjY2Vzc2VzLgoKU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4K
LS0tCiBkcml2ZXJzL2lpby9hZGMvaW14N2RfYWRjLmMgfCAxMyArKysrKysrKy0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvaWlvL2FkYy9pbXg3ZF9hZGMuYyBiL2RyaXZlcnMvaWlvL2FkYy9pbXg3ZF9hZGMu
YwppbmRleCA4NmNhZmYxZDAwNmIuLmZhMTlmNWUwOTA3OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9p
aW8vYWRjL2lteDdkX2FkYy5jCisrKyBiL2RyaXZlcnMvaWlvL2FkYy9pbXg3ZF9hZGMuYwpAQCAt
MTMsNiArMTMsNyBAQAogI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgogI2luY2x1ZGUgPGxpbnV4
L21vZF9kZXZpY2V0YWJsZS5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgorI2luY2x1ZGUg
PGxpbnV4L211dGV4Lmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiAjaW5j
bHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+CiAKQEAgLTEwOCw3ICsxMDksOCBAQCBz
dHJ1Y3QgaW14N2RfYWRjIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXY7CiAJdm9pZCBfX2lvbWVtICpy
ZWdzOwogCXN0cnVjdCBjbGsgKmNsazsKLQorCS8qIGxvY2sgdG8gcHJvdGVjdCBhZ2FpbnN0IG11
bHRpcGxlIGFjY2VzcyB0byB0aGUgZGV2aWNlICovCisJc3RydWN0IG11dGV4IGxvY2s7CiAJdTMy
IHZyZWZfdXY7CiAJdTMyIHZhbHVlOwogCXUzMiBjaGFubmVsOwpAQCAtMjkzLDcgKzI5NSw3IEBA
IHN0YXRpYyBpbnQgaW14N2RfYWRjX3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYs
CiAKIAlzd2l0Y2ggKG1hc2spIHsKIAljYXNlIElJT19DSEFOX0lORk9fUkFXOgotCQltdXRleF9s
b2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwkJbXV0ZXhfbG9jaygmaW5mby0+bG9jayk7CiAJCXJl
aW5pdF9jb21wbGV0aW9uKCZpbmZvLT5jb21wbGV0aW9uKTsKIAogCQljaGFubmVsID0gY2hhbi0+
Y2hhbm5lbCAmIDB4MDM7CkBAIC0zMDMsMTYgKzMwNSwxNiBAQCBzdGF0aWMgaW50IGlteDdkX2Fk
Y19yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCQlyZXQgPSB3YWl0X2Zvcl9j
b21wbGV0aW9uX2ludGVycnVwdGlibGVfdGltZW91dAogCQkJCSgmaW5mby0+Y29tcGxldGlvbiwg
SU1YN0RfQURDX1RJTUVPVVQpOwogCQlpZiAocmV0ID09IDApIHsKLQkJCW11dGV4X3VubG9jaygm
aW5kaW9fZGV2LT5tbG9jayk7CisJCQltdXRleF91bmxvY2soJmluZm8tPmxvY2spOwogCQkJcmV0
dXJuIC1FVElNRURPVVQ7CiAJCX0KIAkJaWYgKHJldCA8IDApIHsKLQkJCW11dGV4X3VubG9jaygm
aW5kaW9fZGV2LT5tbG9jayk7CisJCQltdXRleF91bmxvY2soJmluZm8tPmxvY2spOwogCQkJcmV0
dXJuIHJldDsKIAkJfQogCiAJCSp2YWwgPSBpbmZvLT52YWx1ZTsKLQkJbXV0ZXhfdW5sb2NrKCZp
bmRpb19kZXYtPm1sb2NrKTsKKwkJbXV0ZXhfdW5sb2NrKCZpbmZvLT5sb2NrKTsKIAkJcmV0dXJu
IElJT19WQUxfSU5UOwogCiAJY2FzZSBJSU9fQ0hBTl9JTkZPX1NDQUxFOgpAQCAtNDg3LDYgKzQ4
OSw3IEBAIHN0YXRpYyBpbnQgaW14N2RfYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiAKIAlpbmZvID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKIAlpbmZvLT5kZXYgPSBkZXY7
CisJbXV0ZXhfaW5pdCgmaW5mby0+bG9jayk7CiAKIAlpbmZvLT5yZWdzID0gZGV2bV9wbGF0Zm9y
bV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwogCWlmIChJU19FUlIoaW5mby0+cmVncykpCi0t
IAoyLjM3LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
