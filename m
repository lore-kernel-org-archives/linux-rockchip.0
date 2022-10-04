Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94288C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TTYm4U7nUAXjqrykoYe46DqHcR6DT8QpgEs6XmLbLM=; b=WSUMa9U9zkMbJ8
	nrL714WGngLa923LHQuqo7ivHP2AF2Adhy2Q2VhnfgXQUxbbIAQ8nJ0qWAW4sG8uYDyoUjSELyZiO
	gGuNmaS2Xgv5C9dXABO5qhciSTzk6iJqD84Ca/LX2t9BbTDz2MLCChZutrb4vV5EFAcTbAFt6xJV7
	YhrkULsPBPBj0RzSCWVfMksfC/ixFdFlySfsW3ePW65RuCh4G7c+1MGTKHNm4XY/9EmyxbS9mjgvM
	FV6YjKc+I8itk3YvgrGjRwA20RuXaZ0XJQieb4ciGk23X5zx4zYOPBHF09yD71KUZn5G581Fhj3Rp
	vDaV7DXYl6eOOomCeJIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiMl-009oY3-1l; Tue, 04 Oct 2022 13:53:47 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIj-009m1s-IQ; Tue, 04 Oct 2022 13:49:38 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294DTNno005748;
	Tue, 4 Oct 2022 09:49:23 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxfd73nn5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:49:23 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 294DnMDv004131
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:49:22 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 4 Oct 2022
 09:49:21 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:49:21 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVj032663;
	Tue, 4 Oct 2022 09:49:13 -0400
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
Subject: [PATCH v2 12/16] iio: gyro: itg3200_core: do not use internal iio_dev lock
Date: Tue, 4 Oct 2022 15:49:05 +0200
Message-ID: <20221004134909.1692021-13-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: wvNkj8GEvDuevEHfGbPigWbl65h0qnTU
X-Proofpoint-ORIG-GUID: wvNkj8GEvDuevEHfGbPigWbl65h0qnTU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 mlxlogscore=999 clxscore=1015 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064937_661979_A3407B25 
X-CRM114-Status: GOOD (  14.79  )
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
b2cuY29tPgotLS0KIGRyaXZlcnMvaWlvL2d5cm8vaXRnMzIwMF9jb3JlLmMgIHwgMTAgKysrKysr
Ky0tLQogaW5jbHVkZS9saW51eC9paW8vZ3lyby9pdGczMjAwLmggfCAgMiArKwogMiBmaWxlcyBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9paW8vZ3lyby9pdGczMjAwX2NvcmUuYyBiL2RyaXZlcnMvaWlvL2d5cm8vaXRnMzIwMF9j
b3JlLmMKaW5kZXggMDQ5MWM2NGUxYjMyLi45MTU5ODVmYmFlZDAgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvaWlvL2d5cm8vaXRnMzIwMF9jb3JlLmMKKysrIGIvZHJpdmVycy9paW8vZ3lyby9pdGczMjAw
X2NvcmUuYwpAQCAtMTgsNiArMTgsNyBAQAogI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KICNpbmNs
dWRlIDxsaW51eC9zdGF0Lmg+CiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+CisjaW5jbHVkZSA8
bGludXgvbXV0ZXguaD4KICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgogCiAjaW5jbHVkZSA8bGlu
dXgvaWlvL2lpby5oPgpAQCAtMTMxLDYgKzEzMiw3IEBAIHN0YXRpYyBpbnQgaXRnMzIwMF93cml0
ZV9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKIAkJCSAgICAgaW50IHZhbDIsCiAJCQkg
ICAgIGxvbmcgbWFzaykKIHsKKwlzdHJ1Y3QgaXRnMzIwMCAqc3QgPSBpaW9fcHJpdihpbmRpb19k
ZXYpOwogCWludCByZXQ7CiAJdTggdDsKIApAQCAtMTM5LDExICsxNDEsMTEgQEAgc3RhdGljIGlu
dCBpdGczMjAwX3dyaXRlX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCQlpZiAodmFs
ID09IDAgfHwgdmFsMiAhPSAwKQogCQkJcmV0dXJuIC1FSU5WQUw7CiAKLQkJbXV0ZXhfbG9jaygm
aW5kaW9fZGV2LT5tbG9jayk7CisJCW11dGV4X2xvY2soJnN0LT5sb2NrKTsKIAogCQlyZXQgPSBp
dGczMjAwX3JlYWRfcmVnXzgoaW5kaW9fZGV2LCBJVEczMjAwX1JFR19ETFBGLCAmdCk7CiAJCWlm
IChyZXQpIHsKLQkJCW11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisJCQltdXRleF91
bmxvY2soJnN0LT5sb2NrKTsKIAkJCXJldHVybiByZXQ7CiAJCX0KIAkJdCA9ICgodCAmIElURzMy
MDBfRExQRl9DRkdfTUFTSykgPyAxMDAwdSA6IDgwMDB1KSAvIHZhbCAtIDE7CkBAIC0xNTIsNyAr
MTU0LDcgQEAgc3RhdGljIGludCBpdGczMjAwX3dyaXRlX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5k
aW9fZGV2LAogCQkJCQkgIElURzMyMDBfUkVHX1NBTVBMRV9SQVRFX0RJViwKIAkJCQkJICB0KTsK
IAotCQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOworCQltdXRleF91bmxvY2soJnN0
LT5sb2NrKTsKIAkJcmV0dXJuIHJldDsKIAogCWRlZmF1bHQ6CkBAIC0zMzYsNiArMzM4LDggQEAg
c3RhdGljIGludCBpdGczMjAwX3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsCiAJaWYg
KHJldCkKIAkJZ290byBlcnJvcl9yZW1vdmVfdHJpZ2dlcjsKIAorCW11dGV4X2luaXQoJnN0LT5s
b2NrKTsKKwogCXJldCA9IGlpb19kZXZpY2VfcmVnaXN0ZXIoaW5kaW9fZGV2KTsKIAlpZiAocmV0
KQogCQlnb3RvIGVycm9yX3JlbW92ZV90cmlnZ2VyOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9paW8vZ3lyby9pdGczMjAwLmggYi9pbmNsdWRlL2xpbnV4L2lpby9neXJvL2l0ZzMyMDAuaApp
bmRleCBhNjAyZmU3Yjg0ZmEuLjc0YjZkMWNhZGM4NiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51
eC9paW8vZ3lyby9pdGczMjAwLmgKKysrIGIvaW5jbHVkZS9saW51eC9paW8vZ3lyby9pdGczMjAw
LmgKQEAgLTEwMiw2ICsxMDIsOCBAQCBzdHJ1Y3QgaXRnMzIwMCB7CiAJc3RydWN0IGkyY19jbGll
bnQJKmkyYzsKIAlzdHJ1Y3QgaWlvX3RyaWdnZXIJKnRyaWc7CiAJc3RydWN0IGlpb19tb3VudF9t
YXRyaXggb3JpZW50YXRpb247CisJLyogbG9jayB0byBwcm90ZWN0IGFnYWluc3QgbXVsdGlwbGUg
YWNjZXNzIHRvIHRoZSBkZXZpY2UgKi8KKwlzdHJ1Y3QgbXV0ZXgJCWxvY2s7CiB9OwogCiBlbnVt
IElURzMyMDBfU0NBTl9JTkRFWCB7Ci0tIAoyLjM3LjMKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
