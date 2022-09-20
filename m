Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A993DECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2ixKlSJwM4UMGaB34ibOzuHshmZ/vzNsgP+gr+vSnw=; b=jakiG3kIGu9a8M
	JNwYaqzqXERq4AIgnmCsPkmGIIFZNIcfSCxv8um7AVqrprbpAekRwr++archDVoSYEe/XZDKr2J40
	VIJV0l/ybcih5SPfkkXE5PmjILxZCvztfx6NkET3ouEXwBIZyGWuOqGKTi7PzgePdnBWsqRtT5aDL
	zmbLaxus/0xcCvv0dZti4+9yxByyPMfuEHLGjWU7BfrkSJd/UzS1bHqcfmWhoTBvfxZxQAADLpSyv
	hObKaMEmPMOc91DAo6fhp/Gz510nNkTNDJOq+0iAcYs612Le/8LJqcCkXhJh2U0NOdcr/SM+TQafu
	JmSux2pBSgdmVbSKeoIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabXF-003Mzx-R0; Tue, 20 Sep 2022 11:35:29 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQr-003IZl-Ft; Tue, 20 Sep 2022 11:28:54 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K81m5G025096;
	Tue, 20 Sep 2022 07:28:39 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jpn468r4h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:28:39 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 28KBScUJ062625
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:28:38 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:28:37 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:28:36 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:28:36 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UY021723;
	Tue, 20 Sep 2022 07:28:29 -0400
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
Subject: [PATCH 12/15] iio: fyro: itg3200_core: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:18 +0200
Message-ID: <20220920112821.975359-13-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: bP0zvKO0a6s5ksKS6arYuRpCcExLgKHA
X-Proofpoint-GUID: bP0zvKO0a6s5ksKS6arYuRpCcExLgKHA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 phishscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042853_572997_DF607817 
X-CRM114-Status: GOOD (  15.71  )
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
LS0tCiBkcml2ZXJzL2lpby9neXJvL2l0ZzMyMDBfY29yZS5jICB8IDkgKysrKysrLS0tCiBpbmNs
dWRlL2xpbnV4L2lpby9neXJvL2l0ZzMyMDAuaCB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2d5
cm8vaXRnMzIwMF9jb3JlLmMgYi9kcml2ZXJzL2lpby9neXJvL2l0ZzMyMDBfY29yZS5jCmluZGV4
IDA0OTFjNjRlMWIzMi4uMzU4YWE4YWMwYzZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9neXJv
L2l0ZzMyMDBfY29yZS5jCisrKyBiL2RyaXZlcnMvaWlvL2d5cm8vaXRnMzIwMF9jb3JlLmMKQEAg
LTE4LDYgKzE4LDcgQEAKICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CiAjaW5jbHVkZSA8bGludXgv
c3RhdC5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgorI2luY2x1ZGUgPGxpbnV4L211dGV4
Lmg+CiAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KIAogI2luY2x1ZGUgPGxpbnV4L2lpby9paW8u
aD4KQEAgLTEzMSw2ICsxMzIsNyBAQCBzdGF0aWMgaW50IGl0ZzMyMDBfd3JpdGVfcmF3KHN0cnVj
dCBpaW9fZGV2ICppbmRpb19kZXYsCiAJCQkgICAgIGludCB2YWwyLAogCQkJICAgICBsb25nIG1h
c2spCiB7CisJc3RydWN0IGl0ZzMyMDAgKnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKIAlpbnQg
cmV0OwogCXU4IHQ7CiAKQEAgLTEzOSwxMSArMTQxLDExIEBAIHN0YXRpYyBpbnQgaXRnMzIwMF93
cml0ZV9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKIAkJaWYgKHZhbCA9PSAwIHx8IHZh
bDIgIT0gMCkKIAkJCXJldHVybiAtRUlOVkFMOwogCi0JCW11dGV4X2xvY2soJmluZGlvX2Rldi0+
bWxvY2spOworCQltdXRleF9sb2NrKCZzdC0+bG9jayk7CiAKIAkJcmV0ID0gaXRnMzIwMF9yZWFk
X3JlZ184KGluZGlvX2RldiwgSVRHMzIwMF9SRUdfRExQRiwgJnQpOwogCQlpZiAocmV0KSB7Ci0J
CQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOworCQkJbXV0ZXhfdW5sb2NrKCZzdC0+
bG9jayk7CiAJCQlyZXR1cm4gcmV0OwogCQl9CiAJCXQgPSAoKHQgJiBJVEczMjAwX0RMUEZfQ0ZH
X01BU0spID8gMTAwMHUgOiA4MDAwdSkgLyB2YWwgLSAxOwpAQCAtMTUyLDcgKzE1NCw3IEBAIHN0
YXRpYyBpbnQgaXRnMzIwMF93cml0ZV9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKIAkJ
CQkJICBJVEczMjAwX1JFR19TQU1QTEVfUkFURV9ESVYsCiAJCQkJCSAgdCk7CiAKLQkJbXV0ZXhf
dW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwkJbXV0ZXhfdW5sb2NrKCZzdC0+bG9jayk7CiAJ
CXJldHVybiByZXQ7CiAKIAlkZWZhdWx0OgpAQCAtMzA3LDYgKzMwOSw3IEBAIHN0YXRpYyBpbnQg
aXRnMzIwMF9wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAogCQlyZXR1cm4gLUVOT01F
TTsKIAogCXN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKKwltdXRleF9pbml0KCZzdC0+bG9jayk7
CiAKIAlyZXQgPSBpaW9fcmVhZF9tb3VudF9tYXRyaXgoJmNsaWVudC0+ZGV2LCAmc3QtPm9yaWVu
dGF0aW9uKTsKIAlpZiAocmV0KQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9paW8vZ3lyby9p
dGczMjAwLmggYi9pbmNsdWRlL2xpbnV4L2lpby9neXJvL2l0ZzMyMDAuaAppbmRleCBhNjAyZmU3
Yjg0ZmEuLjc0YjZkMWNhZGM4NiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9paW8vZ3lyby9p
dGczMjAwLmgKKysrIGIvaW5jbHVkZS9saW51eC9paW8vZ3lyby9pdGczMjAwLmgKQEAgLTEwMiw2
ICsxMDIsOCBAQCBzdHJ1Y3QgaXRnMzIwMCB7CiAJc3RydWN0IGkyY19jbGllbnQJKmkyYzsKIAlz
dHJ1Y3QgaWlvX3RyaWdnZXIJKnRyaWc7CiAJc3RydWN0IGlpb19tb3VudF9tYXRyaXggb3JpZW50
YXRpb247CisJLyogbG9jayB0byBwcm90ZWN0IGFnYWluc3QgbXVsdGlwbGUgYWNjZXNzIHRvIHRo
ZSBkZXZpY2UgKi8KKwlzdHJ1Y3QgbXV0ZXgJCWxvY2s7CiB9OwogCiBlbnVtIElURzMyMDBfU0NB
Tl9JTkRFWCB7Ci0tIAoyLjM3LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
