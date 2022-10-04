Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55C2DC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZSy+R8wEtiVyiznUTdU7cBXS2eR3l3wkAPFhxpNM8A=; b=QVDJxDtkIdFX2a
	t7amctiu1IgWqrwp8T2B2d/LbvWSMnWfFO/3m5KrAlkkO+Pv3ZVORU+ReqGoewjnrd/6nBs4KgUl9
	+Y6TJqYOvwuwIc/v0NEXZAFT5IiEZsTgCpGc3jdA/NtZRaUnAZJ5iRAetdLSB0sZgEhBs/vc1aTjT
	FX/mdnzS/mPOwwCuNeqYbBNO9EJ4Cg6Ab4xhgUSxQG8qvLCR1T15Gy5/aic0j+JjPRPaIVHGkFclX
	Ls7XFRclmRFpKjyoIoIUbv7Bvl3Y7WMNRSpVbkF/HjBCpbrkoK0QDtbNFkzwVwImzMMByYyrxZ6aa
	43pgp12aYzDlseUGpmMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiJp-009mkb-4B; Tue, 04 Oct 2022 13:50:45 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiII-009liZ-Gj; Tue, 04 Oct 2022 13:49:13 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294BXpkU024570;
	Tue, 4 Oct 2022 09:48:56 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxjf733kd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:48:56 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 294DmtCJ004085
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:48:55 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 4 Oct 2022
 09:48:54 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:48:54 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVd032663;
	Tue, 4 Oct 2022 09:48:42 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-amlogic@lists.infradead.org>, <linux-imx@nxp.com>,
        <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>
CC: Heiko Stuebner <heiko@sntech.de>,
        Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>,
        Neil Armstrong
	<narmstrong@baylibre.com>,
        Shawn Guo <shawnguo@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>,
        Jyoti Bhayana <jbhayana@google.com>,
        Hans de Goede
	<hdegoede@redhat.com>,
        Andriy Tryshnivskyy
	<andriy.tryshnivskyy@opensynergy.com>,
        Pengutronix Kernel Team
	<kernel@pengutronix.de>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Cixi Geng
	<cixi.geng1@unisoc.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Ciprian
 Regus <ciprian.regus@analog.com>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
        Sascha Hauer
	<s.hauer@pengutronix.de>,
        Alexandru Ardelean <aardelean@deviqon.com>,
        Florian
 Boor <florian.boor@kernelconcepts.de>,
        Michael Hennerich
	<Michael.Hennerich@analog.com>,
        Orson Zhai <orsonzhai@gmail.com>, Chen-Yu
 Tsai <wens@csie.org>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Vladimir
 Zapolskiy <vz@mleia.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jerome
 Brunet <jbrunet@baylibre.com>, Haibo Chen <haibo.chen@nxp.com>,
        Kevin Hilman
	<khilman@baylibre.com>,
        Jonathan Cameron <jic23@kernel.org>
Subject: [PATCH v2 06/16] iio: adc: meson_saradc: do not use internal iio_dev lock
Date: Tue, 4 Oct 2022 15:48:59 +0200
Message-ID: <20221004134909.1692021-7-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: GaJ6VpT1tcaKnKevbPGSuP3O4FxMnsKi
X-Proofpoint-ORIG-GUID: GaJ6VpT1tcaKnKevbPGSuP3O4FxMnsKi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 spamscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 mlxlogscore=836 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064910_581725_3B667C38 
X-CRM114-Status: GOOD (  15.76  )
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
IGFjY2Vzc2VzLgoKV2hpbGUgYXQgaXQsIHByb3Blcmx5IGluY2x1ZGUgIm11dGV4LmgiIGZvciBt
dXRleCByZWxhdGVkIEFQSXMuCgpTaWduZWQtb2ZmLWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFs
b2cuY29tPgpSZXZpZXdlZC1ieTogTWFydGluIEJsdW1lbnN0aW5nbCA8bWFydGluLmJsdW1lbnN0
aW5nbEBnb29nbGVtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL2lpby9hZGMvbWVzb25fc2FyYWRjLmMg
fCAxMSArKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvbWVzb25fc2FyYWRjLmMgYi9k
cml2ZXJzL2lpby9hZGMvbWVzb25fc2FyYWRjLmMKaW5kZXggMWE2OGIwOTlkMzIzLi44NWI2ODI2
Y2MxMGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaWlvL2FkYy9tZXNvbl9zYXJhZGMuYworKysgYi9k
cml2ZXJzL2lpby9hZGMvbWVzb25fc2FyYWRjLmMKQEAgLTEyLDYgKzEyLDcgQEAKICNpbmNsdWRl
IDxsaW51eC9pby5oPgogI2luY2x1ZGUgPGxpbnV4L2lpby9paW8uaD4KICNpbmNsdWRlIDxsaW51
eC9tb2R1bGUuaD4KKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgogI2luY2x1ZGUgPGxpbnV4L252
bWVtLWNvbnN1bWVyLmg+CiAjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+CiAjaW5jbHVkZSA8
bGludXgvb2YuaD4KQEAgLTI3Niw2ICsyNzcsOCBAQCBzdHJ1Y3QgbWVzb25fc2FyX2FkY19wcml2
IHsKIAlzdHJ1Y3QgY2xrCQkJCSphZGNfZGl2X2NsazsKIAlzdHJ1Y3QgY2xrX2RpdmlkZXIJCQlj
bGtfZGl2OwogCXN0cnVjdCBjb21wbGV0aW9uCQkJZG9uZTsKKwkvKiBsb2NrIHRvIHByb3RlY3Qg
YWdhaW5zdCBtdWx0aXBsZSBhY2Nlc3MgdG8gdGhlIGRldmljZSAqLworCXN0cnVjdCBtdXRleAkJ
CQlsb2NrOwogCWludAkJCQkJY2FsaWJiaWFzOwogCWludAkJCQkJY2FsaWJzY2FsZTsKIAlzdHJ1
Y3QgcmVnbWFwCQkJCSp0c2NfcmVnbWFwOwpAQCAtNDg2LDcgKzQ4OSw3IEBAIHN0YXRpYyBpbnQg
bWVzb25fc2FyX2FkY19sb2NrKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCiAJc3RydWN0IG1l
c29uX3Nhcl9hZGNfcHJpdiAqcHJpdiA9IGlpb19wcml2KGluZGlvX2Rldik7CiAJaW50IHZhbCwg
cmV0OwogCi0JbXV0ZXhfbG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisJbXV0ZXhfbG9jaygmcHJp
di0+bG9jayk7CiAKIAlpZiAocHJpdi0+cGFyYW0tPmhhc19ibDMwX2ludGVncmF0aW9uKSB7CiAJ
CS8qIHByZXZlbnQgQkwzMCBmcm9tIHVzaW5nIHRoZSBTQVIgQURDIHdoaWxlIHdlIGFyZSB1c2lu
ZyBpdCAqLwpAQCAtNTA0LDcgKzUwNyw3IEBAIHN0YXRpYyBpbnQgbWVzb25fc2FyX2FkY19sb2Nr
KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCiAJCQkJCQkgICAgICAhKHZhbCAmIE1FU09OX1NB
Ul9BRENfREVMQVlfQkwzMF9CVVNZKSwKIAkJCQkJCSAgICAgIDEsIDEwMDAwKTsKIAkJaWYgKHJl
dCkgewotCQkJbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwkJCW11dGV4X3VubG9j
aygmcHJpdi0+bG9jayk7CiAJCQlyZXR1cm4gcmV0OwogCQl9CiAJfQpAQCAtNTIxLDcgKzUyNCw3
IEBAIHN0YXRpYyB2b2lkIG1lc29uX3Nhcl9hZGNfdW5sb2NrKHN0cnVjdCBpaW9fZGV2ICppbmRp
b19kZXYpCiAJCXJlZ21hcF91cGRhdGVfYml0cyhwcml2LT5yZWdtYXAsIE1FU09OX1NBUl9BRENf
REVMQVksCiAJCQkJICAgTUVTT05fU0FSX0FEQ19ERUxBWV9LRVJORUxfQlVTWSwgMCk7CiAKLQlt
dXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOworCW11dGV4X3VubG9jaygmcHJpdi0+bG9j
ayk7CiB9CiAKIHN0YXRpYyB2b2lkIG1lc29uX3Nhcl9hZGNfY2xlYXJfZmlmbyhzdHJ1Y3QgaWlv
X2RldiAqaW5kaW9fZGV2KQpAQCAtMTI1MCw2ICsxMjUzLDggQEAgc3RhdGljIGludCBtZXNvbl9z
YXJfYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKHJldCkKIAkJ
Z290byBlcnI7CiAKKwltdXRleF9pbml0KCZwcml2LT5sb2NrKTsKKwogCXJldCA9IG1lc29uX3Nh
cl9hZGNfaHdfZW5hYmxlKGluZGlvX2Rldik7CiAJaWYgKHJldCkKIAkJZ290byBlcnI7Ci0tIAoy
LjM3LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
