Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AFC1C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+RAVgcRtuVBdDc7/ri6hxp7M0i3wb0x57VbDeKVZkg=; b=p/rSg7OFZJpAuX
	qDzmzRm6rmEhoytr7gpPRYL20rHe6+pHuEv3wrW2caDbD9MDMwM9654ZgvSNUkpSt+4+a+as4posT
	8qMHBiO2jgCRSiQQBEEVmWuB+T/fOqi/DGyLj3kUtB+MzdO8uIBzRymfHOi4khytXB/bsbWpAnAAO
	Aij4twy9R6lfMpaB7DyM75YO2Pcyh2EsdYX5SrftU29//bqaSYrS8txj6+IVgmhAMxooi2CdU3P0h
	NuVOjWP39UIxu7BZITM3D3nQJ9CTip12XyllZ9CAnqAwRMQSsYSNPIt0M1q8xht65cvlpIpokFTSJ
	rqt++jQ9NVgxWdw2iyUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIp-009m6H-0T; Tue, 04 Oct 2022 13:49:43 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiI7-009lfl-Tp; Tue, 04 Oct 2022 13:49:01 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294BAQJn026746;
	Tue, 4 Oct 2022 09:48:45 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxjf733ja-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:48:45 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 294Dmi1E001547
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:48:44 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:48:43 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:48:43 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:48:43 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVb032663;
	Tue, 4 Oct 2022 09:48:33 -0400
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
Subject: [PATCH v2 04/16] iio: adc: lpc32xx_adc: do not use internal iio_dev lock
Date: Tue, 4 Oct 2022 15:48:57 +0200
Message-ID: <20221004134909.1692021-5-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: 2G51YxgPxhcjB1DZvD9_EBtc1KqEh7bL
X-Proofpoint-ORIG-GUID: 2G51YxgPxhcjB1DZvD9_EBtc1KqEh7bL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 spamscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 mlxlogscore=698 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064859_988606_F940FFAA 
X-CRM114-Status: GOOD (  14.45  )
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
b2cuY29tPgotLS0KIGRyaXZlcnMvaWlvL2FkYy9scGMzMnh4X2FkYy5jIHwgMTEgKysrKysrKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL2xwYzMyeHhfYWRjLmMgYi9kcml2ZXJzL2lpby9hZGMv
bHBjMzJ4eF9hZGMuYwppbmRleCBiNTZjZTE1MjU1Y2YuLjczMmM5MjRhOTc2ZCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9paW8vYWRjL2xwYzMyeHhfYWRjLmMKKysrIGIvZHJpdmVycy9paW8vYWRjL2xw
YzMyeHhfYWRjLmMKQEAgLTE1LDYgKzE1LDcgQEAKICNpbmNsdWRlIDxsaW51eC9pby5oPgogI2lu
Y2x1ZGUgPGxpbnV4L21vZHVsZS5oPgogI2luY2x1ZGUgPGxpbnV4L21vZF9kZXZpY2V0YWJsZS5o
PgorI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2
aWNlLmg+CiAjaW5jbHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+CiAKQEAgLTQ5LDYg
KzUwLDggQEAgc3RydWN0IGxwYzMyeHhfYWRjX3N0YXRlIHsKIAlzdHJ1Y3QgY2xrICpjbGs7CiAJ
c3RydWN0IGNvbXBsZXRpb24gY29tcGxldGlvbjsKIAlzdHJ1Y3QgcmVndWxhdG9yICp2cmVmOwor
CS8qIGxvY2sgdG8gcHJvdGVjdCBhZ2FpbnN0IG11bHRpcGxlIGFjY2VzcyB0byB0aGUgZGV2aWNl
ICovCisJc3RydWN0IG11dGV4IGxvY2s7CiAKIAl1MzIgdmFsdWU7CiB9OwpAQCAtNjQsMTAgKzY3
LDEwIEBAIHN0YXRpYyBpbnQgbHBjMzJ4eF9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9f
ZGV2LAogCiAJc3dpdGNoIChtYXNrKSB7CiAJY2FzZSBJSU9fQ0hBTl9JTkZPX1JBVzoKLQkJbXV0
ZXhfbG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisJCW11dGV4X2xvY2soJnN0LT5sb2NrKTsKIAkJ
cmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHN0LT5jbGspOwogCQlpZiAocmV0KSB7Ci0JCQltdXRl
eF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOworCQkJbXV0ZXhfdW5sb2NrKCZzdC0+bG9jayk7
CiAJCQlyZXR1cm4gcmV0OwogCQl9CiAJCS8qIE1lYXN1cmVtZW50IHNldHVwICovCkBAIC04MCw3
ICs4Myw3IEBAIHN0YXRpYyBpbnQgbHBjMzJ4eF9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5k
aW9fZGV2LAogCQl3YWl0X2Zvcl9jb21wbGV0aW9uKCZzdC0+Y29tcGxldGlvbik7IC8qIHNldCBi
eSBJU1IgKi8KIAkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHN0LT5jbGspOwogCQkqdmFsID0gc3Qt
PnZhbHVlOwotCQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOworCQltdXRleF91bmxv
Y2soJnN0LT5sb2NrKTsKIAogCQlyZXR1cm4gSUlPX1ZBTF9JTlQ7CiAKQEAgLTIwMSw2ICsyMDQs
OCBAQCBzdGF0aWMgaW50IGxwYzMyeHhfYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiAJaW9kZXYtPm1vZGVzID0gSU5ESU9fRElSRUNUX01PREU7CiAJaW9kZXYtPm51bV9j
aGFubmVscyA9IEFSUkFZX1NJWkUobHBjMzJ4eF9hZGNfaWlvX2NoYW5uZWxzKTsKIAorCW11dGV4
X2luaXQoJnN0LT5sb2NrKTsKKwogCXJldHZhbCA9IGRldm1faWlvX2RldmljZV9yZWdpc3Rlcigm
cGRldi0+ZGV2LCBpb2Rldik7CiAJaWYgKHJldHZhbCkKIAkJcmV0dXJuIHJldHZhbDsKLS0gCjIu
MzcuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
