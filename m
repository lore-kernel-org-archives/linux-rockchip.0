Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88613C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPnVNxCkcNvkRtk1OzkWQXa5A4jr789Qe2LDpDY7lZQ=; b=HqO6InGSXXzJKp
	/2puWFVpWhQqBhB6WWWqQQWC/EwmwMrj4jy3G1kHgSazrod8zRuO4E2rQnNqUT/44ddRxmd9KroBI
	DUnUZZSg1XteclvN0KzUnKjfsy+sPIwn2yKI73TXLDgvg89MpsRPtSahXnjYKidqjlJ0h9IJbmWyz
	QZtiCgggjrv6ABLTMmlt46Z0Y2BCEu9Lbh6Xr8a4ASWWzCx9j2ZgGI6QKcxQIwMDE2vIV/xvLCOYT
	0E1dWfSLgsi2hTp8PHHdW9EZt+Y9fts1fouoZ99xozkd7Q3nqMO3tbj6bmIGRbOsQC0EKfFee3iz5
	ZJJDiJSeKlsIVTAbI70g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiJr-009mmW-Rb; Tue, 04 Oct 2022 13:50:47 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIL-009lje-CD; Tue, 04 Oct 2022 13:49:14 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294DTNna005748;
	Tue, 4 Oct 2022 09:48:59 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxfd73njf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:48:59 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 294DmvAR004093
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:48:57 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:48:57 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:48:56 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:48:56 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVe032663;
	Tue, 4 Oct 2022 09:48:47 -0400
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
Subject: [PATCH v2 07/16] iio: adc: rockchip_saradc: do not use internal iio_dev lock
Date: Tue, 4 Oct 2022 15:49:00 +0200
Message-ID: <20221004134909.1692021-8-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: tyr_4_M7UR5PKXT-d-8qPxrzcwYsR7zf
X-Proofpoint-ORIG-GUID: tyr_4_M7UR5PKXT-d-8qPxrzcwYsR7zf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 mlxlogscore=999 clxscore=1015 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064913_451649_7746FE7C 
X-CRM114-Status: GOOD (  15.13  )
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
b2cuY29tPgotLS0KIGRyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYyB8IDE1ICsrKysr
KysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jIGIvZHJp
dmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jCmluZGV4IGI4N2VhNzE0OGI1OC4uNzk0NDhj
NWZmYzJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9hZGMvcm9ja2NoaXBfc2FyYWRjLmMKKysr
IGIvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jCkBAIC01LDYgKzUsNyBAQAogICov
CiAKICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgog
I2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgogI2luY2x1ZGUgPGxpbnV4L2ludGVy
cnVwdC5oPgogI2luY2x1ZGUgPGxpbnV4L2lvLmg+CkBAIC00OSw2ICs1MCw4IEBAIHN0cnVjdCBy
b2NrY2hpcF9zYXJhZGMgewogCXN0cnVjdCBjbGsJCSpjbGs7CiAJc3RydWN0IGNvbXBsZXRpb24J
Y29tcGxldGlvbjsKIAlzdHJ1Y3QgcmVndWxhdG9yCSp2cmVmOworCS8qIGxvY2sgdG8gcHJvdGVj
dCBhZ2FpbnN0IG11bHRpcGxlIGFjY2VzcyB0byB0aGUgZGV2aWNlICovCisJc3RydWN0IG11dGV4
CQlsb2NrOwogCWludAkJCXV2X3ZyZWY7CiAJc3RydWN0IHJlc2V0X2NvbnRyb2wJKnJlc2V0Owog
CWNvbnN0IHN0cnVjdCByb2NrY2hpcF9zYXJhZGNfZGF0YSAqZGF0YTsKQEAgLTk0LDE3ICs5Nywx
NyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3NhcmFkY19yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAq
aW5kaW9fZGV2LAogCiAJc3dpdGNoIChtYXNrKSB7CiAJY2FzZSBJSU9fQ0hBTl9JTkZPX1JBVzoK
LQkJbXV0ZXhfbG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisJCW11dGV4X2xvY2soJmluZm8tPmxv
Y2spOwogCiAJCXJldCA9IHJvY2tjaGlwX3NhcmFkY19jb252ZXJzaW9uKGluZm8sIGNoYW4pOwog
CQlpZiAocmV0KSB7CiAJCQlyb2NrY2hpcF9zYXJhZGNfcG93ZXJfZG93bihpbmZvKTsKLQkJCW11
dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisJCQltdXRleF91bmxvY2soJmluZm8tPmxv
Y2spOwogCQkJcmV0dXJuIHJldDsKIAkJfQogCiAJCSp2YWwgPSBpbmZvLT5sYXN0X3ZhbDsKLQkJ
bXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwkJbXV0ZXhfdW5sb2NrKCZpbmZvLT5s
b2NrKTsKIAkJcmV0dXJuIElJT19WQUxfSU5UOwogCWNhc2UgSUlPX0NIQU5fSU5GT19TQ0FMRToK
IAkJKnZhbCA9IGluZm8tPnV2X3ZyZWYgLyAxMDAwOwpAQCAtMjcwLDcgKzI3Myw3IEBAIHN0YXRp
YyBpcnFyZXR1cm5fdCByb2NrY2hpcF9zYXJhZGNfdHJpZ2dlcl9oYW5kbGVyKGludCBpcnEsIHZv
aWQgKnApCiAJaW50IHJldDsKIAlpbnQgaSwgaiA9IDA7CiAKLQltdXRleF9sb2NrKCZpX2Rldi0+
bWxvY2spOworCW11dGV4X2xvY2soJmluZm8tPmxvY2spOwogCiAJZm9yX2VhY2hfc2V0X2JpdChp
LCBpX2Rldi0+YWN0aXZlX3NjYW5fbWFzaywgaV9kZXYtPm1hc2tsZW5ndGgpIHsKIAkJY29uc3Qg
c3RydWN0IGlpb19jaGFuX3NwZWMgKmNoYW4gPSAmaV9kZXYtPmNoYW5uZWxzW2ldOwpAQCAtMjg3
LDcgKzI5MCw3IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCByb2NrY2hpcF9zYXJhZGNfdHJpZ2dlcl9o
YW5kbGVyKGludCBpcnEsIHZvaWQgKnApCiAKIAlpaW9fcHVzaF90b19idWZmZXJzX3dpdGhfdGlt
ZXN0YW1wKGlfZGV2LCAmZGF0YSwgaWlvX2dldF90aW1lX25zKGlfZGV2KSk7CiBvdXQ6Ci0JbXV0
ZXhfdW5sb2NrKCZpX2Rldi0+bWxvY2spOworCW11dGV4X3VubG9jaygmaW5mby0+bG9jayk7CiAK
IAlpaW9fdHJpZ2dlcl9ub3RpZnlfZG9uZShpX2Rldi0+dHJpZyk7CiAKQEAgLTQ3OCw2ICs0ODEs
OCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3NhcmFkY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKKwltdXRleF9pbml0KCZpbmZv
LT5sb2NrKTsKKwogCXJldHVybiBkZXZtX2lpb19kZXZpY2VfcmVnaXN0ZXIoJnBkZXYtPmRldiwg
aW5kaW9fZGV2KTsKIH0KIAotLSAKMi4zNy4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
