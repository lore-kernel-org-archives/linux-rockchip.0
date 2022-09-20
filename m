Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 245D0C6FA8B
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6Y2WkcAddV0S5fuMqMIOQu4oNBTtJBUA26Dd0qXzAA=; b=0YUtbDt0HKQZog
	GsuQrvFRSb29QTM3mWZZjqxYqy1b6F9NsfdM0EZ+YtLQmb82XEEAQ34UDTysuV2J5Xt526+6TlRSu
	ARRIundENf57gaCFne3yNCBqzlwuO8LBVtDb2xzhB6NJAD7/l9R+a59P7IgrcQ8nQAGimWNQy2pWp
	mTUW19fk6WQyjKZ8ApkKjG/jAkcMqXK1222QrAJSaEOcV3ZSMae6g5ncgWXOaEVT5D1O6/uS4P94f
	mcMhaL6TtySeoSBE7jRyvsEQarvk/JFDF6Yv1/Nve4UEJ7MAbWT+oMpSa+xsuOKot7cxE/NVDAjWY
	ApePr9v8NiZPuKjvLA6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQe-003IPR-Uj; Tue, 20 Sep 2022 11:28:40 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQ7-003I3p-R2; Tue, 20 Sep 2022 11:28:11 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K8CFSp006276;
	Tue, 20 Sep 2022 07:27:53 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jn835murh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:27:53 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 28KBRpQO060606
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:27:51 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 20 Sep
 2022 07:27:50 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:27:50 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UO021723;
	Tue, 20 Sep 2022 07:27:41 -0400
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
Subject: [PATCH 02/15] iio: adc: ad799x: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:08 +0200
Message-ID: <20220920112821.975359-3-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: hJCkUkms2Kofut7eTZiTrqI_koL0phqg
X-Proofpoint-GUID: hJCkUkms2Kofut7eTZiTrqI_koL0phqg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_03,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 bulkscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042807_956138_2F89AD6F 
X-CRM114-Status: GOOD (  17.17  )
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
IGJlIGdyYWJiZWQgaW4gdGhlIHBsYWNlcyB3aGVyZSAnbWxvY2snIGlzLgoKT24gdGhlIG90aGVy
IHBsYWNlcyB0aGUgbG9jayB3YXMgYmVpbmcgdXNlZCwgd2UgY2FuIGp1c3QgZHJvcAppdCBzaW5j
ZSB3ZSBhcmUgb25seSBkb2luZyBvbmUgaTJjIGJ1cyByZWFkL3dyaXRlIHdoaWNoIGlzIGFscmVh
ZHkKc2FmZS4KClNpZ25lZC1vZmYtYnk6IE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+Ci0t
LQogZHJpdmVycy9paW8vYWRjL2FkNzk5eC5jIHwgMTggKysrKysrKysrKysrLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2lpby9hZGMvYWQ3OTl4LmMgYi9kcml2ZXJzL2lpby9hZGMvYWQ3OTl4LmMKaW5k
ZXggMjYyYmQ3NjY1YjMzLi44MzhiYThlNzdkZTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaWlvL2Fk
Yy9hZDc5OXguYworKysgYi9kcml2ZXJzL2lpby9hZGMvYWQ3OTl4LmMKQEAgLTI4LDYgKzI4LDcg
QEAKICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgogI2luY2x1ZGUgPGxpbnV4L2Vyci5oPgogI2lu
Y2x1ZGUgPGxpbnV4L21vZHVsZS5oPgorI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+CiAjaW5jbHVk
ZSA8bGludXgvYml0b3BzLmg+CiAKICNpbmNsdWRlIDxsaW51eC9paW8vaWlvLmg+CkBAIC0xMjUs
NiArMTI2LDggQEAgc3RydWN0IGFkNzk5eF9zdGF0ZSB7CiAJY29uc3Qgc3RydWN0IGFkNzk5eF9j
aGlwX2NvbmZpZwkqY2hpcF9jb25maWc7CiAJc3RydWN0IHJlZ3VsYXRvcgkJKnJlZzsKIAlzdHJ1
Y3QgcmVndWxhdG9yCQkqdnJlZjsKKwkvKiBsb2NrIHRvIHByb3RlY3QgYWdhaW5zdCBtdWx0aXBs
ZSBhY2Nlc3MgdG8gdGhlIGRldmljZSAqLworCXN0cnVjdCBtdXRleAkJCWxvY2s7CiAJdW5zaWdu
ZWQJCQlpZDsKIAl1MTYJCQkJY29uZmlnOwogCkBAIC0yOTAsNyArMjkzLDkgQEAgc3RhdGljIGlu
dCBhZDc5OXhfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKIAkJcmV0ID0gaWlv
X2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZShpbmRpb19kZXYpOwogCQlpZiAocmV0KQogCQkJcmV0
dXJuIHJldDsKKwkJbXV0ZXhfbG9jaygmc3QtPmxvY2spOwogCQlyZXQgPSBhZDc5OXhfc2Nhbl9k
aXJlY3Qoc3QsIGNoYW4tPnNjYW5faW5kZXgpOworCQltdXRleF91bmxvY2soJnN0LT5sb2NrKTsK
IAkJaWlvX2RldmljZV9yZWxlYXNlX2RpcmVjdF9tb2RlKGluZGlvX2Rldik7CiAKIAkJaWYgKHJl
dCA8IDApCkBAIC0zNTEsNyArMzU2LDggQEAgc3RhdGljIHNzaXplX3QgYWQ3OTl4X3dyaXRlX2Zy
ZXF1ZW5jeShzdHJ1Y3QgZGV2aWNlICpkZXYsCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAot
CW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOworCW11dGV4X2xvY2soJnN0LT5sb2NrKTsK
KwogCXJldCA9IGkyY19zbWJ1c19yZWFkX2J5dGVfZGF0YShzdC0+Y2xpZW50LCBBRDc5OThfQ1lD
TEVfVE1SX1JFRyk7CiAJaWYgKHJldCA8IDApCiAJCWdvdG8gZXJyb3JfcmV0X211dGV4OwpAQCAt
MzczLDcgKzM3OSw3IEBAIHN0YXRpYyBzc2l6ZV90IGFkNzk5eF93cml0ZV9mcmVxdWVuY3koc3Ry
dWN0IGRldmljZSAqZGV2LAogCXJldCA9IGxlbjsKIAogZXJyb3JfcmV0X211dGV4OgotCW11dGV4
X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisJbXV0ZXhfdW5sb2NrKCZzdC0+bG9jayk7CiAK
IAlyZXR1cm4gcmV0OwogfQpAQCAtNDA3LDYgKzQxMyw4IEBAIHN0YXRpYyBpbnQgYWQ3OTl4X3dy
aXRlX2V2ZW50X2NvbmZpZyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCWlmIChyZXQpCiAJ
CXJldHVybiByZXQ7CiAKKwltdXRleF9sb2NrKCZzdC0+bG9jayk7CisKIAlpZiAoc3RhdGUpCiAJ
CXN0LT5jb25maWcgfD0gQklUKGNoYW4tPnNjYW5faW5kZXgpIDw8IEFENzk5WF9DSEFOTkVMX1NI
SUZUOwogCWVsc2UKQEAgLTQxOCw2ICs0MjYsNyBAQCBzdGF0aWMgaW50IGFkNzk5eF93cml0ZV9l
dmVudF9jb25maWcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKIAkJc3QtPmNvbmZpZyAmPSB+
QUQ3OTk4X0FMRVJUX0VOOwogCiAJcmV0ID0gYWQ3OTl4X3dyaXRlX2NvbmZpZyhzdCwgc3QtPmNv
bmZpZyk7CisJbXV0ZXhfdW5sb2NrKCZzdC0+bG9jayk7CiAJaWlvX2RldmljZV9yZWxlYXNlX2Rp
cmVjdF9tb2RlKGluZGlvX2Rldik7CiAJcmV0dXJuIHJldDsKIH0KQEAgLTQ1NCwxMSArNDYzLDkg
QEAgc3RhdGljIGludCBhZDc5OXhfd3JpdGVfZXZlbnRfdmFsdWUoc3RydWN0IGlpb19kZXYgKmlu
ZGlvX2RldiwKIAlpZiAodmFsIDwgMCB8fCB2YWwgPiBHRU5NQVNLKGNoYW4tPnNjYW5fdHlwZS5y
ZWFsYml0cyAtIDEsIDApKQogCQlyZXR1cm4gLUVJTlZBTDsKIAotCW11dGV4X2xvY2soJmluZGlv
X2Rldi0+bWxvY2spOwogCXJldCA9IGkyY19zbWJ1c193cml0ZV93b3JkX3N3YXBwZWQoc3QtPmNs
aWVudCwKIAkJYWQ3OTl4X3RocmVzaG9sZF9yZWcoY2hhbiwgZGlyLCBpbmZvKSwKIAkJdmFsIDw8
IGNoYW4tPnNjYW5fdHlwZS5zaGlmdCk7Ci0JbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2Nr
KTsKIAogCXJldHVybiByZXQ7CiB9CkBAIC00NzMsMTAgKzQ4MCw4IEBAIHN0YXRpYyBpbnQgYWQ3
OTl4X3JlYWRfZXZlbnRfdmFsdWUoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKIAlpbnQgcmV0
OwogCXN0cnVjdCBhZDc5OXhfc3RhdGUgKnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKIAotCW11
dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwogCXJldCA9IGkyY19zbWJ1c19yZWFkX3dvcmRf
c3dhcHBlZChzdC0+Y2xpZW50LAogCQlhZDc5OXhfdGhyZXNob2xkX3JlZyhjaGFuLCBkaXIsIGlu
Zm8pKTsKLQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOwogCWlmIChyZXQgPCAwKQog
CQlyZXR1cm4gcmV0OwogCSp2YWwgPSAocmV0ID4+IGNoYW4tPnNjYW5fdHlwZS5zaGlmdCkgJgpA
QCAtNzg1LDYgKzc5MCw3IEBAIHN0YXRpYyBpbnQgYWQ3OTl4X3Byb2JlKHN0cnVjdCBpMmNfY2xp
ZW50ICpjbGllbnQsCiAJCXJldHVybiAtRU5PTUVNOwogCiAJc3QgPSBpaW9fcHJpdihpbmRpb19k
ZXYpOworCW11dGV4X2luaXQoJnN0LT5sb2NrKTsKIAkvKiB0aGlzIGlzIG9ubHkgdXNlZCBmb3Ig
ZGV2aWNlIHJlbW92YWwgcHVycG9zZXMgKi8KIAlpMmNfc2V0X2NsaWVudGRhdGEoY2xpZW50LCBp
bmRpb19kZXYpOwogCi0tIAoyLjM3LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
