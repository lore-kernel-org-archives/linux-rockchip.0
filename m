Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87835C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PnKY4rffX393ATbB9fav7IGqC9h1yP0rFQCkOM4V2us=; b=tN2lTaXNQlCZyw
	OQvkJYE2xflQyKSMWV/SERq7W0Hjnk2eeHz8l1KlG2+TLwPWo7N8SQ3TfWeOfx/Sh4sw0V9t9mfNK
	0/CxMeUi10LcpHY4hRhN9AGaVsH1MKx/uUOmwZYWa48CYjXWb16s/MCdyy5tp97Fvk44rLNKG/WNP
	gyNoc8qPTi0k7h16DL9LisO42xirfLm7uJK8UwkrMaPKX9MgzyPSzkAi9O2zu5gRui9pLfBGPeN8y
	7GRWAwge2wk8yHEkkymYclcwifn6JDeMinuaNFLMZaIzG2arSfGbIJIBgrlYWU+Gk7IsWtU3rk5Vj
	31KQW8sa99+H8Q+JSKPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIB-009lgt-Hs; Tue, 04 Oct 2022 13:49:03 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiI0-009lbj-TV; Tue, 04 Oct 2022 13:48:54 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294C9Ox8025012;
	Tue, 4 Oct 2022 09:48:33 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxjf733g6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:48:33 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 294DmWpP001531
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:48:32 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 4 Oct 2022
 09:48:31 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:48:31 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVY032663;
	Tue, 4 Oct 2022 09:48:19 -0400
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
Subject: [PATCH v2 01/16] iio: adc: ad799x: do not use internal iio_dev lock
Date: Tue, 4 Oct 2022 15:48:54 +0200
Message-ID: <20221004134909.1692021-2-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: SS5WqGEP61nJ1tXif6qOZQ3eX25vwLYQ
X-Proofpoint-ORIG-GUID: SS5WqGEP61nJ1tXif6qOZQ3eX25vwLYQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 spamscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064852_973858_14C4340D 
X-CRM114-Status: GOOD (  17.98  )
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

J21sb2NrJyB3YXMgYmVpbmcgZ3JhYmJlZCB3aGVuIHNldHRpbmcgdGhlIGRldmljZSBmcmVxdWVu
Y3kuIEluIG9yZGVyIHRvCm5vdCBpbnRyb2R1Y2UgYW55IGZ1bmN0aW9uYWwgY2hhbmdlIGEgbmV3
IGxvY2sgaXMgYWRkZWQuIFdpdGggdGhhdCBpbgptaW5kLCB0aGUgbG9jayBhbHNvIG5lZWRzIHRv
IGJlIGdyYWJiZWQgaW4gdGhlIHBsYWNlcyB3aGVyZSAnbWxvY2snIGlzCnNpbmNlIGl0IHdhcyBh
bHNvIGJlaW5nIHVzZWQgdG8gcHJvdGVjdCBzdC0+Y29uZmlnIGFnYWluc3QgdGhlIGN1cnJlbnQK
ZGV2aWNlIHN0YXRlLgoKT24gdGhlIG90aGVyIHBsYWNlcyB0aGUgbG9jayB3YXMgYmVpbmcgdXNl
ZCwgd2UgY2FuIGp1c3QgZHJvcAppdCBzaW5jZSB3ZSBhcmUgb25seSBkb2luZyBvbmUgaTJjIGJ1
cyByZWFkL3dyaXRlIHdoaWNoIGlzIGFscmVhZHkKc2FmZS4KCldoaWxlIGF0IGl0LCBwcm9wZXJs
eSBpbmNsdWRlICJtdXRleC5oIiBmb3IgbXV0ZXggcmVsYXRlZCBBUElzLgoKU2lnbmVkLW9mZi1i
eTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL2lpby9hZGMvYWQ3
OTl4LmMgfCAyMCArKysrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2Vy
dGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL2Fk
Nzk5eC5jIGIvZHJpdmVycy9paW8vYWRjL2FkNzk5eC5jCmluZGV4IDI2MmJkNzY2NWIzMy4uNDRm
N2E4MGEwNzQ5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9hZGMvYWQ3OTl4LmMKKysrIGIvZHJp
dmVycy9paW8vYWRjL2FkNzk5eC5jCkBAIC0yOCw2ICsyOCw3IEBACiAjaW5jbHVkZSA8bGludXgv
dHlwZXMuaD4KICNpbmNsdWRlIDxsaW51eC9lcnIuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGUu
aD4KKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgogI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgog
CiAjaW5jbHVkZSA8bGludXgvaWlvL2lpby5oPgpAQCAtMTI1LDYgKzEyNiw4IEBAIHN0cnVjdCBh
ZDc5OXhfc3RhdGUgewogCWNvbnN0IHN0cnVjdCBhZDc5OXhfY2hpcF9jb25maWcJKmNoaXBfY29u
ZmlnOwogCXN0cnVjdCByZWd1bGF0b3IJCSpyZWc7CiAJc3RydWN0IHJlZ3VsYXRvcgkJKnZyZWY7
CisJLyogbG9jayB0byBwcm90ZWN0IGFnYWluc3QgbXVsdGlwbGUgYWNjZXNzIHRvIHRoZSBkZXZp
Y2UgKi8KKwlzdHJ1Y3QgbXV0ZXgJCQlsb2NrOwogCXVuc2lnbmVkCQkJaWQ7CiAJdTE2CQkJCWNv
bmZpZzsKIApAQCAtMjkwLDcgKzI5Myw5IEBAIHN0YXRpYyBpbnQgYWQ3OTl4X3JlYWRfcmF3KHN0
cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAJCXJldCA9IGlpb19kZXZpY2VfY2xhaW1fZGlyZWN0
X21vZGUoaW5kaW9fZGV2KTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7CisJCW11dGV4X2xv
Y2soJnN0LT5sb2NrKTsKIAkJcmV0ID0gYWQ3OTl4X3NjYW5fZGlyZWN0KHN0LCBjaGFuLT5zY2Fu
X2luZGV4KTsKKwkJbXV0ZXhfdW5sb2NrKCZzdC0+bG9jayk7CiAJCWlpb19kZXZpY2VfcmVsZWFz
ZV9kaXJlY3RfbW9kZShpbmRpb19kZXYpOwogCiAJCWlmIChyZXQgPCAwKQpAQCAtMzUxLDcgKzM1
Niw4IEBAIHN0YXRpYyBzc2l6ZV90IGFkNzk5eF93cml0ZV9mcmVxdWVuY3koc3RydWN0IGRldmlj
ZSAqZGV2LAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQltdXRleF9sb2NrKCZpbmRpb19k
ZXYtPm1sb2NrKTsKKwltdXRleF9sb2NrKCZzdC0+bG9jayk7CisKIAlyZXQgPSBpMmNfc21idXNf
cmVhZF9ieXRlX2RhdGEoc3QtPmNsaWVudCwgQUQ3OTk4X0NZQ0xFX1RNUl9SRUcpOwogCWlmIChy
ZXQgPCAwKQogCQlnb3RvIGVycm9yX3JldF9tdXRleDsKQEAgLTM3Myw3ICszNzksNyBAQCBzdGF0
aWMgc3NpemVfdCBhZDc5OXhfd3JpdGVfZnJlcXVlbmN5KHN0cnVjdCBkZXZpY2UgKmRldiwKIAly
ZXQgPSBsZW47CiAKIGVycm9yX3JldF9tdXRleDoKLQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+
bWxvY2spOworCW11dGV4X3VubG9jaygmc3QtPmxvY2spOwogCiAJcmV0dXJuIHJldDsKIH0KQEAg
LTQwNyw2ICs0MTMsOCBAQCBzdGF0aWMgaW50IGFkNzk5eF93cml0ZV9ldmVudF9jb25maWcoc3Ry
dWN0IGlpb19kZXYgKmluZGlvX2RldiwKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJbXV0
ZXhfbG9jaygmc3QtPmxvY2spOworCiAJaWYgKHN0YXRlKQogCQlzdC0+Y29uZmlnIHw9IEJJVChj
aGFuLT5zY2FuX2luZGV4KSA8PCBBRDc5OVhfQ0hBTk5FTF9TSElGVDsKIAllbHNlCkBAIC00MTgs
NiArNDI2LDcgQEAgc3RhdGljIGludCBhZDc5OXhfd3JpdGVfZXZlbnRfY29uZmlnKHN0cnVjdCBp
aW9fZGV2ICppbmRpb19kZXYsCiAJCXN0LT5jb25maWcgJj0gfkFENzk5OF9BTEVSVF9FTjsKIAog
CXJldCA9IGFkNzk5eF93cml0ZV9jb25maWcoc3QsIHN0LT5jb25maWcpOworCW11dGV4X3VubG9j
aygmc3QtPmxvY2spOwogCWlpb19kZXZpY2VfcmVsZWFzZV9kaXJlY3RfbW9kZShpbmRpb19kZXYp
OwogCXJldHVybiByZXQ7CiB9CkBAIC00NTQsMTEgKzQ2Myw5IEBAIHN0YXRpYyBpbnQgYWQ3OTl4
X3dyaXRlX2V2ZW50X3ZhbHVlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAJaWYgKHZhbCA8
IDAgfHwgdmFsID4gR0VOTUFTSyhjaGFuLT5zY2FuX3R5cGUucmVhbGJpdHMgLSAxLCAwKSkKIAkJ
cmV0dXJuIC1FSU5WQUw7CiAKLQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKIAlyZXQg
PSBpMmNfc21idXNfd3JpdGVfd29yZF9zd2FwcGVkKHN0LT5jbGllbnQsCiAJCWFkNzk5eF90aHJl
c2hvbGRfcmVnKGNoYW4sIGRpciwgaW5mbyksCiAJCXZhbCA8PCBjaGFuLT5zY2FuX3R5cGUuc2hp
ZnQpOwotCW11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CiAKIAlyZXR1cm4gcmV0Owog
fQpAQCAtNDczLDEwICs0ODAsOCBAQCBzdGF0aWMgaW50IGFkNzk5eF9yZWFkX2V2ZW50X3ZhbHVl
KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAJaW50IHJldDsKIAlzdHJ1Y3QgYWQ3OTl4X3N0
YXRlICpzdCA9IGlpb19wcml2KGluZGlvX2Rldik7CiAKLQltdXRleF9sb2NrKCZpbmRpb19kZXYt
Pm1sb2NrKTsKIAlyZXQgPSBpMmNfc21idXNfcmVhZF93b3JkX3N3YXBwZWQoc3QtPmNsaWVudCwK
IAkJYWQ3OTl4X3RocmVzaG9sZF9yZWcoY2hhbiwgZGlyLCBpbmZvKSk7Ci0JbXV0ZXhfdW5sb2Nr
KCZpbmRpb19kZXYtPm1sb2NrKTsKIAlpZiAocmV0IDwgMCkKIAkJcmV0dXJuIHJldDsKIAkqdmFs
ID0gKHJldCA+PiBjaGFuLT5zY2FuX3R5cGUuc2hpZnQpICYKQEAgLTg2Myw2ICs4NjgsOSBAQCBz
dGF0aWMgaW50IGFkNzk5eF9wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAogCQlpZiAo
cmV0KQogCQkJZ290byBlcnJvcl9jbGVhbnVwX3Jpbmc7CiAJfQorCisJbXV0ZXhfaW5pdCgmc3Qt
PmxvY2spOworCiAJcmV0ID0gaWlvX2RldmljZV9yZWdpc3RlcihpbmRpb19kZXYpOwogCWlmIChy
ZXQpCiAJCWdvdG8gZXJyb3JfY2xlYW51cF9yaW5nOwotLSAKMi4zNy4zCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
