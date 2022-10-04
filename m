Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ED00C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfAoGNEA2n0FArrouXgnmWIGGpaWBzn54bIMsl31mds=; b=v182hCMLz1XbSL
	1tw9KCzUO+1XwSi3gyFkbF6TFHnMwCV2Q7QKIWAhkwdCQ37XpaJr7rIlzTcqROq4z/R+gaqoOXaKf
	NjInkrkPcgwuM1+p7GCDFcyCD13TC32naaiTisnu6yRgp0I57g/NUmtfC4TcN5f38iQOy6SiPmEBR
	7lT60ty398VOhMXaiQJfTgTF5iGDOqpyqU7yxTF0KjebqcJ70S0GGs4x3MdcHndeNwsNjzUNCA24c
	zMLV5tWUbFzyPY+HlCMS09WvRHnDzG1AN24ol7GQFnk90gqnyQV/f8gmpORIu1aGRo9qdLCWBDX3+
	hBaV238vkcQ7RH6BUlNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiKY-009nFN-Ih; Tue, 04 Oct 2022 13:51:30 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIR-009lmz-Rp; Tue, 04 Oct 2022 13:49:21 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294ArJjB025134;
	Tue, 4 Oct 2022 09:49:05 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxjf733ns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:49:05 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 294Dn3oS004101
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:49:04 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 4 Oct 2022
 09:49:03 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:49:03 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVf032663;
	Tue, 4 Oct 2022 09:48:53 -0400
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
Subject: [PATCH v2 08/16] iio: adc: sc27xx_adc: do not use internal iio_dev lock
Date: Tue, 4 Oct 2022 15:49:01 +0200
Message-ID: <20221004134909.1692021-9-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: SAd2Bi5D4MuxXE8Wi1jCvWipC5E_NhAR
X-Proofpoint-ORIG-GUID: SAd2Bi5D4MuxXE8Wi1jCvWipC5E_NhAR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 spamscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 mlxlogscore=736 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064919_943376_76975DB2 
X-CRM114-Status: GOOD (  14.68  )
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
b2cuY29tPgotLS0KIGRyaXZlcnMvaWlvL2FkYy9zYzI3eHhfYWRjLmMgfCAxNCArKysrKysrKysr
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL3NjMjd4eF9hZGMuYyBiL2RyaXZlcnMvaWlvL2Fk
Yy9zYzI3eHhfYWRjLmMKaW5kZXggZjg0MjFjYmJhOGZhLi5mZjFmYzMyOWJiOWIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvaWlvL2FkYy9zYzI3eHhfYWRjLmMKKysrIGIvZHJpdmVycy9paW8vYWRjL3Nj
Mjd4eF9hZGMuYwpAQCAtNCw2ICs0LDcgQEAKICNpbmNsdWRlIDxsaW51eC9od3NwaW5sb2NrLmg+
CiAjaW5jbHVkZSA8bGludXgvaWlvL2lpby5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgor
I2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+CiAjaW5jbHVkZSA8bGludXgvbnZtZW0tY29uc3VtZXIu
aD4KICNpbmNsdWRlIDxsaW51eC9vZi5oPgogI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5oPgpA
QCAtODMsNiArODQsOCBAQCBzdHJ1Y3Qgc2MyN3h4X2FkY19kYXRhIHsKIAlzdHJ1Y3QgZGV2aWNl
ICpkZXY7CiAJc3RydWN0IHJlZ3VsYXRvciAqdm9scmVmOwogCXN0cnVjdCByZWdtYXAgKnJlZ21h
cDsKKwkvKiBsb2NrIHRvIHByb3RlY3QgYWdhaW5zdCBtdWx0aXBsZSBhY2Nlc3MgdG8gdGhlIGRl
dmljZSAqLworCXN0cnVjdCBtdXRleCBsb2NrOwogCS8qCiAJICogT25lIGhhcmR3YXJlIHNwaW5s
b2NrIHRvIHN5bmNocm9uaXplIGJldHdlZW4gdGhlIG11bHRpcGxlCiAJICogc3Vic3lzdGVtcyB3
aGljaCB3aWxsIGFjY2VzcyB0aGUgdW5pcXVlIEFEQyBjb250cm9sbGVyLgpAQCAtNjY0LDkgKzY2
Nyw5IEBAIHN0YXRpYyBpbnQgc2MyN3h4X2FkY19yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5k
aW9fZGV2LAogCiAJc3dpdGNoIChtYXNrKSB7CiAJY2FzZSBJSU9fQ0hBTl9JTkZPX1JBVzoKLQkJ
bXV0ZXhfbG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisJCW11dGV4X2xvY2soJmRhdGEtPmxvY2sp
OwogCQlyZXQgPSBzYzI3eHhfYWRjX3JlYWQoZGF0YSwgY2hhbi0+Y2hhbm5lbCwgc2NhbGUsICZ0
bXApOwotCQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOworCQltdXRleF91bmxvY2so
JmRhdGEtPmxvY2spOwogCiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwpAQCAtNjc1LDEwICs2
NzgsMTAgQEAgc3RhdGljIGludCBzYzI3eHhfYWRjX3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICpp
bmRpb19kZXYsCiAJCXJldHVybiBJSU9fVkFMX0lOVDsKIAogCWNhc2UgSUlPX0NIQU5fSU5GT19Q
Uk9DRVNTRUQ6Ci0JCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOworCQltdXRleF9sb2Nr
KCZkYXRhLT5sb2NrKTsKIAkJcmV0ID0gc2MyN3h4X2FkY19yZWFkX3Byb2Nlc3NlZChkYXRhLCBj
aGFuLT5jaGFubmVsLCBzY2FsZSwKIAkJCQkJCSZ0bXApOwotCQltdXRleF91bmxvY2soJmluZGlv
X2Rldi0+bWxvY2spOworCQltdXRleF91bmxvY2soJmRhdGEtPmxvY2spOwogCiAJCWlmIChyZXQp
CiAJCQlyZXR1cm4gcmV0OwpAQCAtOTM0LDYgKzkzNyw5IEBAIHN0YXRpYyBpbnQgc2MyN3h4X2Fk
Y19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWluZGlvX2Rldi0+aW5mbyA9
ICZzYzI3eHhfaW5mbzsKIAlpbmRpb19kZXYtPmNoYW5uZWxzID0gc2MyN3h4X2NoYW5uZWxzOwog
CWluZGlvX2Rldi0+bnVtX2NoYW5uZWxzID0gQVJSQVlfU0laRShzYzI3eHhfY2hhbm5lbHMpOwor
CisJbXV0ZXhfaW5pdCgmc2MyN3h4X2RhdGEtPmxvY2spOworCiAJcmV0ID0gZGV2bV9paW9fZGV2
aWNlX3JlZ2lzdGVyKGRldiwgaW5kaW9fZGV2KTsKIAlpZiAocmV0KQogCQlkZXZfZXJyKGRldiwg
ImNvdWxkIG5vdCByZWdpc3RlciBpaW8gKEFEQykiKTsKLS0gCjIuMzcuMwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
