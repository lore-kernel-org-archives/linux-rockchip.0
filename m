Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4463C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgrmgW1TwL7E8yldC2jsfyN8/hkmyuTFKB+Jh3xEP6g=; b=NQwy5DtKow06bv
	cgyl+6FXVSYwuokcQYjtfkk5Y2v2fEwzEUnRENLIC2SP7f1xVeoomypC9qdCzfllShSWoBFlzS8x7
	TP0+xB9wltqh7CBvXN4CeBpBahX+uP4RLS0b4NbC+xTR2bTFyPP2rfPx5d9Rd/YcRV8NM+3ODxzND
	8jTiO2dCbzUkXW6dhBIhaM5VUTFSbyMrwlAvRKDGBLwRpheBstWccftoW2k/KKXlyMJmHzK6Dmk4Q
	7lyXO9daLqg/0d1J6beGB4K+u+82VzUhpz6FnW2oSxSAjIfZqhTJ6ey8LmVOjMlFt0YrP39j8urI1
	BAclG0FYsqOPRu1QWhoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiL9-009ndt-PO; Tue, 04 Oct 2022 13:52:07 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIb-009lvE-8q; Tue, 04 Oct 2022 13:49:31 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294BXpkh024570;
	Tue, 4 Oct 2022 09:49:15 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxjf733pu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:49:14 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 294DnCre004117
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:49:12 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:49:12 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:49:11 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:49:11 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVh032663;
	Tue, 4 Oct 2022 09:49:04 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-amlogic@lists.infradead.org>, <linux-imx@nxp.com>,
        <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>
CC: Heiko Stuebner <heiko@sntech.de>,
        Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>,
        Neil Armstrong
	<narmstrong@baylibre.com>,
        Shawn Guo <shawnguo@kernel.org>,
        "Lars-Peter
 Clausen" <lars@metafoo.de>,
        Jyoti Bhayana <jbhayana@google.com>,
        Hans de
 Goede <hdegoede@redhat.com>,
        Andriy Tryshnivskyy
	<andriy.tryshnivskyy@opensynergy.com>,
        Pengutronix Kernel Team
	<kernel@pengutronix.de>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Cixi Geng
	<cixi.geng1@unisoc.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        "Ciprian Regus" <ciprian.regus@analog.com>,
        Fabio Estevam
	<festevam@gmail.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
        Sascha
 Hauer <s.hauer@pengutronix.de>,
        Alexandru Ardelean <aardelean@deviqon.com>,
        "Florian Boor" <florian.boor@kernelconcepts.de>,
        Michael Hennerich
	<Michael.Hennerich@analog.com>,
        Orson Zhai <orsonzhai@gmail.com>, "Chen-Yu
 Tsai" <wens@csie.org>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        "Vladimir
 Zapolskiy" <vz@mleia.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        "Jerome Brunet" <jbrunet@baylibre.com>,
        Haibo Chen <haibo.chen@nxp.com>, Kevin Hilman <khilman@baylibre.com>,
        Jonathan Cameron <jic23@kernel.org>
Subject: [PATCH v2 10/16] iio: adc: vf610_adc: vf610_adc: do not use internal iio_dev lock
Date: Tue, 4 Oct 2022 15:49:03 +0200
Message-ID: <20221004134909.1692021-11-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: k3wrSbYPLdlik_JMrtGFyhbH8mmV20dI
X-Proofpoint-ORIG-GUID: k3wrSbYPLdlik_JMrtGFyhbH8mmV20dI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 spamscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 mlxlogscore=684 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064929_340340_09BC75F6 
X-CRM114-Status: GOOD (  18.60  )
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

SW4gb3JkZXIgdG8gZHJvcCB0aGUgaW50ZXJuYWwgbG9jayB1c2FnZSB3ZSBuZWVkZWQgdHdvIGRp
ZmZlcmVudCB0aGluZ3M6CgoxKSBUaGUgZmlyc3QgcGxhY2Ugd2hlcmUgJ21sb2NrJyB3YXMgYmVp
bmcgdXNlZCB3YXMgYSB0eXBpY2FsIGNhc2Ugd2hlcmUKaWlvX2RldmljZV9jbGFpbV9kaXJlY3Rf
bW9kZSgpIGZpdHMgcGVyZmVjdGx5LgoyKSBJbiB0aGUgc2Vjb25kIGNhc2UsIGl0IHdhcyBiZWlu
ZyB1c2VkIHRvIHByZXZlbnQgY29uY3VycmVudCBhY2Nlc3Nlcwp0byB0aGUgZGV2aWNlIGFuZCBz
aGFyZWQgZGF0YSBidXQgbm90aGluZyB3YXMgYmVpbmcgZW5mb3JjZWQgd2l0aApyZWdhcmRzIHRv
IGJ1ZmZlcmluZyAoaS5lLCB0aGVyZSB3YXMgbm90aGluZyBwcmV2ZW50aW5nIGZyb20gY2hhbmdp
bmcKdGhlIGNvbnZlcnNpb24gbW9kZSB3aGlsZSBidWZmZXJpbmcpLiBIZW5jZSwgaW4gdGhpcyBj
YXNlLCBhIG5ldyBsb2NrCndhcyBpbnRyb2R1Y2VkIGluIHRoZSBzdGF0ZSBzdHJ1Y3R1cmUuCgpO
b3RlIHRoYXQgdGhlIGdvYWwgaXMgbm90IHRvIGludHJvZHVjZSBhbnkgZnVuY3Rpb25hbCBjaGFu
Z2UgYW5kIHRoYXQgaXMKdGhlIHJlYXNvbiB3aHkgYSBuZXcgbG9jayB3YXMgaW50cm9kdWNlZCB0
byBndWFyYW50ZWUgMikuCgpXaGlsZSBhdCBpdCwgcHJvcGVybHkgaW5jbHVkZSAibXV0ZXguaCIg
Zm9yIG11dGV4IHJlbGF0ZWQgQVBJcy4KClNpZ25lZC1vZmYtYnk6IE51bm8gU8OhIDxudW5vLnNh
QGFuYWxvZy5jb20+Ci0tLQogZHJpdmVycy9paW8vYWRjL3ZmNjEwX2FkYy5jIHwgMjIgKysrKysr
KysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDggZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL3ZmNjEwX2FkYy5jIGIvZHJp
dmVycy9paW8vYWRjL3ZmNjEwX2FkYy5jCmluZGV4IGE2ZjkxODJkNzc2Ni4uYWUzMWFhZmQyNjUz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9hZGMvdmY2MTBfYWRjLmMKKysrIGIvZHJpdmVycy9p
aW8vYWRjL3ZmNjEwX2FkYy5jCkBAIC03LDYgKzcsNyBAQAogCiAjaW5jbHVkZSA8bGludXgvbW9k
X2RldmljZXRhYmxlLmg+CiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+CisjaW5jbHVkZSA8bGlu
dXgvbXV0ZXguaD4KICNpbmNsdWRlIDxsaW51eC9wcm9wZXJ0eS5oPgogI2luY2x1ZGUgPGxpbnV4
L3BsYXRmb3JtX2RldmljZS5oPgogI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgpAQCAtMTU2
LDYgKzE1Nyw5IEBAIHN0cnVjdCB2ZjYxMF9hZGMgewogCXZvaWQgX19pb21lbSAqcmVnczsKIAlz
dHJ1Y3QgY2xrICpjbGs7CiAKKwkvKiBsb2NrIHRvIHByb3RlY3QgYWdhaW5zdCBtdWx0aXBsZSBh
Y2Nlc3MgdG8gdGhlIGRldmljZSAqLworCXN0cnVjdCBtdXRleCBsb2NrOworCiAJdTMyIHZyZWZf
dXY7CiAJdTMyIHZhbHVlOwogCXN0cnVjdCByZWd1bGF0b3IgKnZyZWY7CkBAIC00NjcsMTEgKzQ3
MSwxMSBAQCBzdGF0aWMgaW50IHZmNjEwX3NldF9jb252ZXJzaW9uX21vZGUoc3RydWN0IGlpb19k
ZXYgKmluZGlvX2RldiwKIHsKIAlzdHJ1Y3QgdmY2MTBfYWRjICppbmZvID0gaWlvX3ByaXYoaW5k
aW9fZGV2KTsKIAotCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOworCW11dGV4X2xvY2so
JmluZm8tPmxvY2spOwogCWluZm8tPmFkY19mZWF0dXJlLmNvbnZfbW9kZSA9IG1vZGU7CiAJdmY2
MTBfYWRjX2NhbGN1bGF0ZV9yYXRlcyhpbmZvKTsKIAl2ZjYxMF9hZGNfaHdfaW5pdChpbmZvKTsK
LQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOworCW11dGV4X3VubG9jaygmaW5mby0+
bG9jayk7CiAKIAlyZXR1cm4gMDsKIH0KQEAgLTYyOSwxMiArNjMzLDExIEBAIHN0YXRpYyBpbnQg
dmY2MTBfcmVhZF9zYW1wbGUoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKIAl1bnNpZ25lZCBp
bnQgaGNfY2ZnOwogCWludCByZXQ7CiAKLQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsK
LQlpZiAoaWlvX2J1ZmZlcl9lbmFibGVkKGluZGlvX2RldikpIHsKLQkJcmV0ID0gLUVCVVNZOwot
CQlnb3RvIG91dF91bmxvY2s7Ci0JfQorCXJldCA9IGlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21v
ZGUoaW5kaW9fZGV2KTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OwogCisJbXV0ZXhfbG9jaygm
aW5mby0+bG9jayk7CiAJcmVpbml0X2NvbXBsZXRpb24oJmluZm8tPmNvbXBsZXRpb24pOwogCWhj
X2NmZyA9IFZGNjEwX0FEQ19BRENIQyhjaGFuLT5jaGFubmVsKTsKIAloY19jZmcgfD0gVkY2MTBf
QURDX0FJRU47CkBAIC02NjksNyArNjcyLDggQEAgc3RhdGljIGludCB2ZjYxMF9yZWFkX3NhbXBs
ZShzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCX0KIAogb3V0X3VubG9jazoKLQltdXRleF91
bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOworCW11dGV4X3VubG9jaygmaW5mby0+bG9jayk7CisJ
aWlvX2RldmljZV9yZWxlYXNlX2RpcmVjdF9tb2RlKGluZGlvX2Rldik7CiAKIAlyZXR1cm4gcmV0
OwogfQpAQCAtODkyLDYgKzg5Niw4IEBAIHN0YXRpYyBpbnQgdmY2MTBfYWRjX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCWdvdG8gZXJyb3JfaWlvX2RldmljZV9yZWdpc3Rl
cjsKIAl9CiAKKwltdXRleF9pbml0KCZpbmZvLT5sb2NrKTsKKwogCXJldCA9IGlpb19kZXZpY2Vf
cmVnaXN0ZXIoaW5kaW9fZGV2KTsKIAlpZiAocmV0KSB7CiAJCWRldl9lcnIoJnBkZXYtPmRldiwg
IkNvdWxkbid0IHJlZ2lzdGVyIHRoZSBkZXZpY2UuXG4iKTsKLS0gCjIuMzcuMwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
