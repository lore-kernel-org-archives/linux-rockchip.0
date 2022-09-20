Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85E48C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNaih0MGByYycwGCFivA8lnZadxX85Wvlu3j/gr+WpQ=; b=fF2JoMEVw8ISQA
	pV0p3KBqpX98Rfnl9oXllB00UsSTxxsjPDeK93Xv9eJ2dYeCxGKiCrLMVAocouqraMHm+NZmSpXO8
	GxAKYu49ibkW2wzz0FK9rqJot/6egPtJI1jyJQrgiitmehj5m+en7yaXlX1kFPpTbWuH2tjJP52PM
	QXrL+ZnfurUK9scwp8atq4Cu1YljxK93/RNfas7SIW/nx3bFSemmhOsU9XtnIYM5bOSEBFF/PSJsI
	IT2aqxdf698Ap3QPy0X04T1WBEA1WhpKORKizPlMVtCWlwzJXnNaoB9n5Q3qxE33Nu0PJeJ4cav8M
	b9wE41VX9PF4pa3CBAHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabVg-003Lua-69; Tue, 20 Sep 2022 11:33:52 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQi-003IS5-06; Tue, 20 Sep 2022 11:28:45 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28KBODCg025060;
	Tue, 20 Sep 2022 07:28:30 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jpn468r3q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:28:29 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 28KBSSsP062579
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:28:28 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 20 Sep
 2022 07:28:27 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:28:27 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UW021723;
	Tue, 20 Sep 2022 07:28:20 -0400
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
Subject: [PATCH 10/15] iio: adc: vf610_adc: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:16 +0200
Message-ID: <20220920112821.975359-11-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: 4plsZpI7JSChqQG81txWSWwhaZ8wyvbt
X-Proofpoint-GUID: 4plsZpI7JSChqQG81txWSWwhaZ8wyvbt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 phishscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 mlxlogscore=847 adultscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042844_097226_B5A94197 
X-CRM114-Status: GOOD (  20.00  )
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
byBndWFyYW50ZWUgMikuCgpTaWduZWQtb2ZmLWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cu
Y29tPgotLS0KIGRyaXZlcnMvaWlvL2FkYy92ZjYxMF9hZGMuYyB8IDMwICsrKysrKysrKysrKysr
KysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDExIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy92ZjYxMF9hZGMuYyBiL2Ry
aXZlcnMvaWlvL2FkYy92ZjYxMF9hZGMuYwppbmRleCBjNmIxNmNmNmUzNjcuLmI5YWRkZDMxM2Vm
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9paW8vYWRjL3ZmNjEwX2FkYy5jCisrKyBiL2RyaXZlcnMv
aWlvL2FkYy92ZjYxMF9hZGMuYwpAQCAtNyw2ICs3LDcgQEAKIAogI2luY2x1ZGUgPGxpbnV4L21v
ZF9kZXZpY2V0YWJsZS5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgorI2luY2x1ZGUgPGxp
bnV4L211dGV4Lmg+CiAjaW5jbHVkZSA8bGludXgvcHJvcGVydHkuaD4KICNpbmNsdWRlIDxsaW51
eC9wbGF0Zm9ybV9kZXZpY2UuaD4KICNpbmNsdWRlIDxsaW51eC9pbnRlcnJ1cHQuaD4KQEAgLTE1
Niw2ICsxNTcsOSBAQCBzdHJ1Y3QgdmY2MTBfYWRjIHsKIAl2b2lkIF9faW9tZW0gKnJlZ3M7CiAJ
c3RydWN0IGNsayAqY2xrOwogCisJLyogbG9jayB0byBwcm90ZWN0IGFnYWluc3QgbXVsdGlwbGUg
YWNjZXNzIHRvIHRoZSBkZXZpY2UgKi8KKwlzdHJ1Y3QgbXV0ZXggbG9jazsKKwogCXUzMiB2cmVm
X3V2OwogCXUzMiB2YWx1ZTsKIAlzdHJ1Y3QgcmVndWxhdG9yICp2cmVmOwpAQCAtNDY3LDExICs0
NzEsMTEgQEAgc3RhdGljIGludCB2ZjYxMF9zZXRfY29udmVyc2lvbl9tb2RlKHN0cnVjdCBpaW9f
ZGV2ICppbmRpb19kZXYsCiB7CiAJc3RydWN0IHZmNjEwX2FkYyAqaW5mbyA9IGlpb19wcml2KGlu
ZGlvX2Rldik7CiAKLQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwltdXRleF9sb2Nr
KCZpbmZvLT5sb2NrKTsKIAlpbmZvLT5hZGNfZmVhdHVyZS5jb252X21vZGUgPSBtb2RlOwogCXZm
NjEwX2FkY19jYWxjdWxhdGVfcmF0ZXMoaW5mbyk7CiAJdmY2MTBfYWRjX2h3X2luaXQoaW5mbyk7
Ci0JbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwltdXRleF91bmxvY2soJmluZm8t
PmxvY2spOwogCiAJcmV0dXJuIDA7CiB9CkBAIC02MzUsMTIgKzYzOSwxMSBAQCBzdGF0aWMgaW50
IHZmNjEwX3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAJc3dpdGNoIChtYXNr
KSB7CiAJY2FzZSBJSU9fQ0hBTl9JTkZPX1JBVzoKIAljYXNlIElJT19DSEFOX0lORk9fUFJPQ0VT
U0VEOgotCQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKLQkJaWYgKGlpb19idWZmZXJf
ZW5hYmxlZChpbmRpb19kZXYpKSB7Ci0JCQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2sp
OwotCQkJcmV0dXJuIC1FQlVTWTsKLQkJfQorCQlyZXQgPSBpaW9fZGV2aWNlX2NsYWltX2RpcmVj
dF9tb2RlKGluZGlvX2Rldik7CisJCWlmIChyZXQpCisJCQlyZXR1cm4gcmV0OwogCisJCW11dGV4
X2xvY2soJmluZm8tPmxvY2spOwogCQlyZWluaXRfY29tcGxldGlvbigmaW5mby0+Y29tcGxldGlv
bik7CiAJCWhjX2NmZyA9IFZGNjEwX0FEQ19BRENIQyhjaGFuLT5jaGFubmVsKTsKIAkJaGNfY2Zn
IHw9IFZGNjEwX0FEQ19BSUVOOwpAQCAtNjQ4LDExICs2NTEsMTMgQEAgc3RhdGljIGludCB2ZjYx
MF9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCQlyZXQgPSB3YWl0X2Zvcl9j
b21wbGV0aW9uX2ludGVycnVwdGlibGVfdGltZW91dAogCQkJCSgmaW5mby0+Y29tcGxldGlvbiwg
VkY2MTBfQURDX1RJTUVPVVQpOwogCQlpZiAocmV0ID09IDApIHsKLQkJCW11dGV4X3VubG9jaygm
aW5kaW9fZGV2LT5tbG9jayk7CisJCQltdXRleF91bmxvY2soJmluZm8tPmxvY2spOworCQkJaWlv
X2RldmljZV9yZWxlYXNlX2RpcmVjdF9tb2RlKGluZGlvX2Rldik7CiAJCQlyZXR1cm4gLUVUSU1F
RE9VVDsKIAkJfQogCQlpZiAocmV0IDwgMCkgewotCQkJbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYt
Pm1sb2NrKTsKKwkJCW11dGV4X3VubG9jaygmaW5mby0+bG9jayk7CisJCQlpaW9fZGV2aWNlX3Jl
bGVhc2VfZGlyZWN0X21vZGUoaW5kaW9fZGV2KTsKIAkJCXJldHVybiByZXQ7CiAJCX0KIApAQCAt
NjcxLDExICs2NzYsMTMgQEAgc3RhdGljIGludCB2ZjYxMF9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2Rl
diAqaW5kaW9fZGV2LAogCiAJCQlicmVhazsKIAkJZGVmYXVsdDoKLQkJCW11dGV4X3VubG9jaygm
aW5kaW9fZGV2LT5tbG9jayk7CisJCQltdXRleF91bmxvY2soJmluZm8tPmxvY2spOworCQkJaWlv
X2RldmljZV9yZWxlYXNlX2RpcmVjdF9tb2RlKGluZGlvX2Rldik7CiAJCQlyZXR1cm4gLUVJTlZB
TDsKIAkJfQogCi0JCW11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisJCW11dGV4X3Vu
bG9jaygmaW5mby0+bG9jayk7CisJCWlpb19kZXZpY2VfcmVsZWFzZV9kaXJlY3RfbW9kZShpbmRp
b19kZXYpOwogCQlyZXR1cm4gSUlPX1ZBTF9JTlQ7CiAKIAljYXNlIElJT19DSEFOX0lORk9fU0NB
TEU6CkBAIC04MTIsNiArODE5LDcgQEAgc3RhdGljIGludCB2ZjYxMF9hZGNfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAogCWluZm8gPSBpaW9fcHJpdihpbmRpb19kZXYpOwog
CWluZm8tPmRldiA9ICZwZGV2LT5kZXY7CisJbXV0ZXhfaW5pdCgmaW5mby0+bG9jayk7CiAKIAlp
bmZvLT5yZWdzID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwogCWlm
IChJU19FUlIoaW5mby0+cmVncykpCi0tIAoyLjM3LjMKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
