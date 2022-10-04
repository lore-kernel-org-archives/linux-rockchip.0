Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D85C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wo+WeHqVpdshk0SPKX4CsbMtr524e7ztbs46UD6vTGM=; b=AlHX8LyO14NLk6
	Nuuc1LBApNidX7AL4R62jp0ehUPEL4arwjcjwNhNY/n33P5J84On7abYtptAIw/Qw5z8h9WFQ0rNO
	lLYNKbl54iKB4+9J0ucMpLNXflC28waWGdhJWG/NgOtHGvkQWTLwurriM6Er8xDeA/CXcO+pG/BdB
	zCqlkU+fZXLoqILCsDfAs5UOPIi5nj9rw+naDc2R1KyV9K28EUyz0oT85UoopxXsiWbLmMFOkrD8B
	YMTi8WZGdjvUCjE33p9Jq/TyW6yLLu7bNIWbfL64GO3H/jyrGu54SsH5JjQ2qlEN+qlNic9JSQG28
	UDz+N17knoi2IBhd7kzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiJB-009mLQ-Ma; Tue, 04 Oct 2022 13:50:05 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIF-009lhe-C1; Tue, 04 Oct 2022 13:49:09 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294C9OxI025012;
	Tue, 4 Oct 2022 09:48:53 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxjf733jq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:48:52 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 294Dmo4m001556
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:48:51 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:48:50 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:48:49 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:48:49 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVc032663;
	Tue, 4 Oct 2022 09:48:38 -0400
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
Subject: [PATCH v2 05/16] iio: adc: ltc2947-core: do not use internal iio_dev lock
Date: Tue, 4 Oct 2022 15:48:58 +0200
Message-ID: <20221004134909.1692021-6-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: h1i7uS13TU4xze-n0huACFZmMzuzQrnl
X-Proofpoint-ORIG-GUID: h1i7uS13TU4xze-n0huACFZmMzuzQrnl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 spamscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 mlxlogscore=996 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064907_432843_DC6027D6 
X-CRM114-Status: GOOD (  13.91  )
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
b2cuY29tPgotLS0KIGRyaXZlcnMvaWlvL2FkYy9sdGMyNDk3LWNvcmUuYyB8IDcgKysrKystLQog
ZHJpdmVycy9paW8vYWRjL2x0YzI0OTcuaCAgICAgIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8v
YWRjL2x0YzI0OTctY29yZS5jIGIvZHJpdmVycy9paW8vYWRjL2x0YzI0OTctY29yZS5jCmluZGV4
IGY1MmQzN2FmNGQxZi4uOTk2ZjZjYmJlZDNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9hZGMv
bHRjMjQ5Ny1jb3JlLmMKKysrIGIvZHJpdmVycy9paW8vYWRjL2x0YzI0OTctY29yZS5jCkBAIC0x
MCw2ICsxMCw3IEBACiAjaW5jbHVkZSA8bGludXgvaWlvL2lpby5oPgogI2luY2x1ZGUgPGxpbnV4
L2lpby9kcml2ZXIuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KKyNpbmNsdWRlIDxsaW51
eC9tdXRleC5oPgogI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgogCiAjaW5j
bHVkZSAibHRjMjQ5Ny5oIgpAQCAtODEsOSArODIsOSBAQCBzdGF0aWMgaW50IGx0YzI0OTdjb3Jl
X3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAKIAlzd2l0Y2ggKG1hc2spIHsK
IAljYXNlIElJT19DSEFOX0lORk9fUkFXOgotCQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2Nr
KTsKKwkJbXV0ZXhfbG9jaygmZGRhdGEtPmxvY2spOwogCQlyZXQgPSBsdGMyNDk3Y29yZV9yZWFk
KGRkYXRhLCBjaGFuLT5hZGRyZXNzLCB2YWwpOwotCQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+
bWxvY2spOworCQltdXRleF91bmxvY2soJmRkYXRhLT5sb2NrKTsKIAkJaWYgKHJldCA8IDApCiAJ
CQlyZXR1cm4gcmV0OwogCkBAIC0yMTQsNiArMjE1LDggQEAgaW50IGx0YzI0OTdjb3JlX3Byb2Jl
KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKIAlkZGF0YS0+
YWRkcl9wcmV2ID0gTFRDMjQ5N19DT05GSUdfREVGQVVMVDsKIAlkZGF0YS0+dGltZV9wcmV2ID0g
a3RpbWVfZ2V0KCk7CiAKKwltdXRleF9pbml0KCZkZGF0YS0+bG9jayk7CisKIAlyZXQgPSBpaW9f
ZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rldik7CiAJaWYgKHJldCA8IDApCiAJCWdvdG8gZXJyX2Fy
cmF5X3VucmVnaXN0ZXI7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvbHRjMjQ5Ny5oIGIv
ZHJpdmVycy9paW8vYWRjL2x0YzI0OTcuaAppbmRleCBlMDIzZGUwZDg4YzQuLjc4MTUxOWI1MjQ3
NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9paW8vYWRjL2x0YzI0OTcuaAorKysgYi9kcml2ZXJzL2lp
by9hZGMvbHRjMjQ5Ny5oCkBAIC0xMiw2ICsxMiw4IEBAIHN0cnVjdCBsdGMyNDk3X2NoaXBfaW5m
byB7CiBzdHJ1Y3QgbHRjMjQ5N2NvcmVfZHJpdmVyZGF0YSB7CiAJc3RydWN0IHJlZ3VsYXRvciAq
cmVmOwogCWt0aW1lX3QJdGltZV9wcmV2OworCS8qIGxvY2sgdG8gcHJvdGVjdCBhZ2FpbnN0IG11
bHRpcGxlIGFjY2VzcyB0byB0aGUgZGV2aWNlICovCisJc3RydWN0IG11dGV4IGxvY2s7CiAJY29u
c3Qgc3RydWN0IGx0YzI0OTdfY2hpcF9pbmZvCSpjaGlwX2luZm87CiAJdTggYWRkcl9wcmV2Owog
CWludCAoKnJlc3VsdF9hbmRfbWVhc3VyZSkoc3RydWN0IGx0YzI0OTdjb3JlX2RyaXZlcmRhdGEg
KmRkYXRhLAotLSAKMi4zNy4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
