Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D109ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XGpTFhGyzjJ+AQGX2p77h0wYiG56+LZZrHmN/4I5pc=; b=3jMx55nQpTUkcf
	3TzJGEpnygoZSgktwSTGCI/TJEGYtmLTGLysywMwPS0h8xz6JotPMQ5qmh/NhaEB7KpvHsftFCfvR
	qucc9RNCWu42ZlS5fXS1FP+rhfnHm80WCsu0XOmS7HpdQQOnLOzMFXtZ8HItSauzkcLaMt7ZJyCRD
	o8VBETx+jnyTGl6vXEtfGk1VFSS7Iu6wNEHz4UFo3yH/SS5hHvFJ1FQXwj5y8bbzBgodrnVTrzQDk
	L7X4wZGkdTipd1s5bGBllyNT2cLNBJm1JjO4YPuRW2EWRA6UXbU7OTaPQKnbdgq7y//ADH3pw7hzl
	qGpc2JsJ12mXYrk6EqUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabTQ-003KOJ-Hj; Tue, 20 Sep 2022 11:31:32 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQV-003IJU-Je; Tue, 20 Sep 2022 11:28:33 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K8GY0r006272;
	Tue, 20 Sep 2022 07:28:17 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jn835muta-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:28:16 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 28KBSFCJ060651
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:28:15 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:28:14 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:28:14 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:28:14 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UT021723;
	Tue, 20 Sep 2022 07:28:03 -0400
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
Subject: [PATCH 07/15] iio: adc: meson_saradc: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:13 +0200
Message-ID: <20220920112821.975359-8-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: 1KEUsqc0yXe0v9wtREJFIk9of_aToCYV
X-Proofpoint-GUID: 1KEUsqc0yXe0v9wtREJFIk9of_aToCYV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_03,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=926 bulkscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042831_792991_5D9F6AEB 
X-CRM114-Status: GOOD (  15.22  )
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
LS0tCiBkcml2ZXJzL2lpby9hZGMvbWVzb25fc2FyYWRjLmMgfCAxMCArKysrKysrLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvaWlvL2FkYy9tZXNvbl9zYXJhZGMuYyBiL2RyaXZlcnMvaWlvL2FkYy9tZXNvbl9z
YXJhZGMuYwppbmRleCAxYTY4YjA5OWQzMjMuLjQ1ZDZlM2Q0YjBjZSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9paW8vYWRjL21lc29uX3NhcmFkYy5jCisrKyBiL2RyaXZlcnMvaWlvL2FkYy9tZXNvbl9z
YXJhZGMuYwpAQCAtMTIsNiArMTIsNyBAQAogI2luY2x1ZGUgPGxpbnV4L2lvLmg+CiAjaW5jbHVk
ZSA8bGludXgvaWlvL2lpby5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgorI2luY2x1ZGUg
PGxpbnV4L211dGV4Lmg+CiAjaW5jbHVkZSA8bGludXgvbnZtZW0tY29uc3VtZXIuaD4KICNpbmNs
dWRlIDxsaW51eC9pbnRlcnJ1cHQuaD4KICNpbmNsdWRlIDxsaW51eC9vZi5oPgpAQCAtMjc2LDYg
KzI3Nyw4IEBAIHN0cnVjdCBtZXNvbl9zYXJfYWRjX3ByaXYgewogCXN0cnVjdCBjbGsJCQkJKmFk
Y19kaXZfY2xrOwogCXN0cnVjdCBjbGtfZGl2aWRlcgkJCWNsa19kaXY7CiAJc3RydWN0IGNvbXBs
ZXRpb24JCQlkb25lOworCS8qIGxvY2sgdG8gcHJvdGVjdCBhZ2FpbnN0IG11bHRpcGxlIGFjY2Vz
cyB0byB0aGUgZGV2aWNlICovCisJc3RydWN0IG11dGV4CQkJCWxvY2s7CiAJaW50CQkJCQljYWxp
YmJpYXM7CiAJaW50CQkJCQljYWxpYnNjYWxlOwogCXN0cnVjdCByZWdtYXAJCQkJKnRzY19yZWdt
YXA7CkBAIC00ODYsNyArNDg5LDcgQEAgc3RhdGljIGludCBtZXNvbl9zYXJfYWRjX2xvY2soc3Ry
dWN0IGlpb19kZXYgKmluZGlvX2RldikKIAlzdHJ1Y3QgbWVzb25fc2FyX2FkY19wcml2ICpwcml2
ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKIAlpbnQgdmFsLCByZXQ7CiAKLQltdXRleF9sb2NrKCZp
bmRpb19kZXYtPm1sb2NrKTsKKwltdXRleF9sb2NrKCZwcml2LT5sb2NrKTsKIAogCWlmIChwcml2
LT5wYXJhbS0+aGFzX2JsMzBfaW50ZWdyYXRpb24pIHsKIAkJLyogcHJldmVudCBCTDMwIGZyb20g
dXNpbmcgdGhlIFNBUiBBREMgd2hpbGUgd2UgYXJlIHVzaW5nIGl0ICovCkBAIC01MDQsNyArNTA3
LDcgQEAgc3RhdGljIGludCBtZXNvbl9zYXJfYWRjX2xvY2soc3RydWN0IGlpb19kZXYgKmluZGlv
X2RldikKIAkJCQkJCSAgICAgICEodmFsICYgTUVTT05fU0FSX0FEQ19ERUxBWV9CTDMwX0JVU1kp
LAogCQkJCQkJICAgICAgMSwgMTAwMDApOwogCQlpZiAocmV0KSB7Ci0JCQltdXRleF91bmxvY2so
JmluZGlvX2Rldi0+bWxvY2spOworCQkJbXV0ZXhfdW5sb2NrKCZwcml2LT5sb2NrKTsKIAkJCXJl
dHVybiByZXQ7CiAJCX0KIAl9CkBAIC01MjEsNyArNTI0LDcgQEAgc3RhdGljIHZvaWQgbWVzb25f
c2FyX2FkY191bmxvY2soc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKIAkJcmVnbWFwX3VwZGF0
ZV9iaXRzKHByaXYtPnJlZ21hcCwgTUVTT05fU0FSX0FEQ19ERUxBWSwKIAkJCQkgICBNRVNPTl9T
QVJfQURDX0RFTEFZX0tFUk5FTF9CVVNZLCAwKTsKIAotCW11dGV4X3VubG9jaygmaW5kaW9fZGV2
LT5tbG9jayk7CisJbXV0ZXhfdW5sb2NrKCZwcml2LT5sb2NrKTsKIH0KIAogc3RhdGljIHZvaWQg
bWVzb25fc2FyX2FkY19jbGVhcl9maWZvKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCkBAIC0x
MTc0LDYgKzExNzcsNyBAQCBzdGF0aWMgaW50IG1lc29uX3Nhcl9hZGNfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIAogCXByaXYgPSBpaW9fcHJpdihpbmRpb19kZXYpOwogCWlu
aXRfY29tcGxldGlvbigmcHJpdi0+ZG9uZSk7CisJbXV0ZXhfaW5pdCgmcHJpdi0+bG9jayk7CiAK
IAltYXRjaF9kYXRhID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRldik7CiAJaWYgKCFtYXRj
aF9kYXRhKQotLSAKMi4zNy4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
