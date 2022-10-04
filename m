Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3745CC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gw+Us/g1Cd5aMR11Mv64peeNDD1COByz25c1INBcU0s=; b=0bz3JOne3WQT/M
	EfcGhnnXsL4sXofg+nrT5ipz0spbFLtFtFepe9KyucumJcFFKkddj9yxUVfb7fgJeJPR/SYalFRyo
	xE+TLrJ/zwyB2rL6me/j/nROQUOKlmfJHfg1kNCxysUtczzkTO9m++ezwRrm9gjOspmjQ65zVmBH4
	dlMe8A0YVuETjfDAHAVAWulk6BHKLPZ1vWS0DfO3lahEO4/RhYj0T972W1FhyuxhJGHdNWRHAdVFe
	QmKI0XiUSOOXY7kXjMCUd3ZZ5BuLLG+P7QGKwSguQpRXlFLg7KPTFb2harAFljN/qkIBmriFzyINv
	xwrrkeVvJI1Rkrdk5NEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIV-009lpk-14; Tue, 04 Oct 2022 13:49:23 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiI4-009lfI-WD; Tue, 04 Oct 2022 13:48:58 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294Dbamw005506;
	Tue, 4 Oct 2022 09:48:42 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxfd73nh1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:48:42 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 294Dmf8H004060
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:48:41 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:48:40 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:48:40 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:48:40 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVa032663;
	Tue, 4 Oct 2022 09:48:28 -0400
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
Subject: [PATCH v2 03/16] iio: adc: imx7d_adc: do not use internal iio_dev lock
Date: Tue, 4 Oct 2022 15:48:56 +0200
Message-ID: <20221004134909.1692021-4-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: I3W30H8Nj_VFj3l0sl_Ma-QloVJA25OG
X-Proofpoint-ORIG-GUID: I3W30H8Nj_VFj3l0sl_Ma-QloVJA25OG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 mlxlogscore=999 clxscore=1015 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064857_060962_5A1EB7B6 
X-CRM114-Status: GOOD (  14.98  )
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
b2cuY29tPgotLS0KIGRyaXZlcnMvaWlvL2FkYy9pbXg3ZF9hZGMuYyB8IDE0ICsrKysrKysrKy0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9pbXg3ZF9hZGMuYyBiL2RyaXZlcnMvaWlvL2FkYy9p
bXg3ZF9hZGMuYwppbmRleCA4NmNhZmYxZDAwNmIuLjIyZGE4MWJhYzk3ZiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9paW8vYWRjL2lteDdkX2FkYy5jCisrKyBiL2RyaXZlcnMvaWlvL2FkYy9pbXg3ZF9h
ZGMuYwpAQCAtMTMsNiArMTMsNyBAQAogI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgogI2luY2x1
ZGUgPGxpbnV4L21vZF9kZXZpY2V0YWJsZS5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgor
I2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNl
Lmg+CiAjaW5jbHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+CiAKQEAgLTEwOCw3ICsx
MDksOCBAQCBzdHJ1Y3QgaW14N2RfYWRjIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXY7CiAJdm9pZCBf
X2lvbWVtICpyZWdzOwogCXN0cnVjdCBjbGsgKmNsazsKLQorCS8qIGxvY2sgdG8gcHJvdGVjdCBh
Z2FpbnN0IG11bHRpcGxlIGFjY2VzcyB0byB0aGUgZGV2aWNlICovCisJc3RydWN0IG11dGV4IGxv
Y2s7CiAJdTMyIHZyZWZfdXY7CiAJdTMyIHZhbHVlOwogCXUzMiBjaGFubmVsOwpAQCAtMjkzLDcg
KzI5NSw3IEBAIHN0YXRpYyBpbnQgaW14N2RfYWRjX3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICpp
bmRpb19kZXYsCiAKIAlzd2l0Y2ggKG1hc2spIHsKIAljYXNlIElJT19DSEFOX0lORk9fUkFXOgot
CQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwkJbXV0ZXhfbG9jaygmaW5mby0+bG9j
ayk7CiAJCXJlaW5pdF9jb21wbGV0aW9uKCZpbmZvLT5jb21wbGV0aW9uKTsKIAogCQljaGFubmVs
ID0gY2hhbi0+Y2hhbm5lbCAmIDB4MDM7CkBAIC0zMDMsMTYgKzMwNSwxNiBAQCBzdGF0aWMgaW50
IGlteDdkX2FkY19yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCQlyZXQgPSB3
YWl0X2Zvcl9jb21wbGV0aW9uX2ludGVycnVwdGlibGVfdGltZW91dAogCQkJCSgmaW5mby0+Y29t
cGxldGlvbiwgSU1YN0RfQURDX1RJTUVPVVQpOwogCQlpZiAocmV0ID09IDApIHsKLQkJCW11dGV4
X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisJCQltdXRleF91bmxvY2soJmluZm8tPmxvY2sp
OwogCQkJcmV0dXJuIC1FVElNRURPVVQ7CiAJCX0KIAkJaWYgKHJldCA8IDApIHsKLQkJCW11dGV4
X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisJCQltdXRleF91bmxvY2soJmluZm8tPmxvY2sp
OwogCQkJcmV0dXJuIHJldDsKIAkJfQogCiAJCSp2YWwgPSBpbmZvLT52YWx1ZTsKLQkJbXV0ZXhf
dW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwkJbXV0ZXhfdW5sb2NrKCZpbmZvLT5sb2NrKTsK
IAkJcmV0dXJuIElJT19WQUxfSU5UOwogCiAJY2FzZSBJSU9fQ0hBTl9JTkZPX1NDQUxFOgpAQCAt
NTMxLDYgKzUzMyw4IEBAIHN0YXRpYyBpbnQgaW14N2RfYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAorCW11dGV4X2luaXQo
JmluZm8tPmxvY2spOworCiAJcmV0ID0gZGV2bV9paW9fZGV2aWNlX3JlZ2lzdGVyKGRldiwgaW5k
aW9fZGV2KTsKIAlpZiAocmV0KSB7CiAJCWRldl9lcnIoJnBkZXYtPmRldiwgIkNvdWxkbid0IHJl
Z2lzdGVyIHRoZSBkZXZpY2UuXG4iKTsKLS0gCjIuMzcuMwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
