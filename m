Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A86AC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26N1ZhRz+v0QJalGFqDRc97ym+Tc4wYENY1aBEKIzaM=; b=WzSfzE+EkTJe/+
	kyYr64gj0kJuBA19ZIjzFHPs3Elxoy1bV4dXuqyyftIXVKbP08spdDCYPNhSuu3NPLppcJSIyf6ar
	TgHTjei0kUPeWWyeNYZ1lxsfLOmI15Lg34RSRvbNY3VmnsiUrWTHwLYwChI7TwnKe+ggS+A4mgBTl
	EfRQxVnGHhqXYq4Zyc4lCv6UScWqcvf4nDH73AS59i/EYGg5c/6V3u6yOafRjX9x5zD02Gn8CEj55
	dMVrtqUX/uWH1d8fK918VxSv52eP81SJpNv7s6Vtjmz69hsAraX16Ic+W7Smr4MCubKxmRNvWEsGJ
	Qk8/BfxHuQNxJTqE2z9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiLj-009nyS-Ii; Tue, 04 Oct 2022 13:52:43 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIg-009lzY-R8; Tue, 04 Oct 2022 13:49:36 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294CKP68005495;
	Tue, 4 Oct 2022 09:49:21 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxfd73nmx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:49:20 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 294DnJgY001565
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:49:19 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:49:18 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:49:18 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:49:18 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVi032663;
	Tue, 4 Oct 2022 09:49:08 -0400
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
Subject: [PATCH v2 11/16] iio: common: scmi_iio: do not use internal iio_dev lock
Date: Tue, 4 Oct 2022 15:49:04 +0200
Message-ID: <20221004134909.1692021-12-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: a49mkOQin8uc_i2QeJ4xH2VSOj9ojrmz
X-Proofpoint-ORIG-GUID: a49mkOQin8uc_i2QeJ4xH2VSOj9ojrmz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 mlxlogscore=991 clxscore=1015 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064934_916956_31C26C16 
X-CRM114-Status: GOOD (  14.31  )
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
b2cuY29tPgotLS0KIGRyaXZlcnMvaWlvL2NvbW1vbi9zY21pX3NlbnNvcnMvc2NtaV9paW8uYyB8
IDkgKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2NvbW1vbi9zY21pX3NlbnNvcnMvc2NtaV9p
aW8uYyBiL2RyaXZlcnMvaWlvL2NvbW1vbi9zY21pX3NlbnNvcnMvc2NtaV9paW8uYwppbmRleCA1
NGNjZjE5YWIyYmIuLmQ5MmY3ZjY1MWY3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9paW8vY29tbW9u
L3NjbWlfc2Vuc29ycy9zY21pX2lpby5jCisrKyBiL2RyaXZlcnMvaWlvL2NvbW1vbi9zY21pX3Nl
bnNvcnMvc2NtaV9paW8uYwpAQCAtMTUsNiArMTUsNyBAQAogI2luY2x1ZGUgPGxpbnV4L2tlcm5l
bC5oPgogI2luY2x1ZGUgPGxpbnV4L2t0aHJlYWQuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGUu
aD4KKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgogI2luY2x1ZGUgPGxpbnV4L3NjbWlfcHJvdG9j
b2wuaD4KICNpbmNsdWRlIDxsaW51eC90aW1lLmg+CiAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4K
QEAgLTI3LDYgKzI4LDggQEAgc3RydWN0IHNjbWlfaWlvX3ByaXYgewogCXN0cnVjdCBzY21pX3By
b3RvY29sX2hhbmRsZSAqcGg7CiAJY29uc3Qgc3RydWN0IHNjbWlfc2Vuc29yX2luZm8gKnNlbnNv
cl9pbmZvOwogCXN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXY7CisJLyogbG9jayB0byBwcm90ZWN0
IGFnYWluc3QgbXVsdGlwbGUgYWNjZXNzIHRvIHRoZSBkZXZpY2UgKi8KKwlzdHJ1Y3QgbXV0ZXgg
bG9jazsKIAkvKiBhZGRpbmcgb25lIGFkZGl0aW9uYWwgY2hhbm5lbCBmb3IgdGltZXN0YW1wICov
CiAJczY0IGlpb19idWZbU0NNSV9JSU9fTlVNX09GX0FYSVMgKyAxXTsKIAlzdHJ1Y3Qgbm90aWZp
ZXJfYmxvY2sgc2Vuc29yX3VwZGF0ZV9uYjsKQEAgLTE5OCwxMyArMjAxLDE0IEBAIHN0YXRpYyBp
bnQgc2NtaV9paW9fd3JpdGVfcmF3KHN0cnVjdCBpaW9fZGV2ICppaW9fZGV2LAogCQkJICAgICAg
c3RydWN0IGlpb19jaGFuX3NwZWMgY29uc3QgKmNoYW4sIGludCB2YWwsCiAJCQkgICAgICBpbnQg
dmFsMiwgbG9uZyBtYXNrKQogeworCXN0cnVjdCBzY21pX2lpb19wcml2ICpzZW5zb3IgPSBpaW9f
cHJpdihpaW9fZGV2KTsKIAlpbnQgZXJyOwogCiAJc3dpdGNoIChtYXNrKSB7CiAJY2FzZSBJSU9f
Q0hBTl9JTkZPX1NBTVBfRlJFUToKLQkJbXV0ZXhfbG9jaygmaWlvX2Rldi0+bWxvY2spOworCQlt
dXRleF9sb2NrKCZzZW5zb3ItPmxvY2spOwogCQllcnIgPSBzY21pX2lpb19zZXRfb2RyX3ZhbChp
aW9fZGV2LCB2YWwsIHZhbDIpOwotCQltdXRleF91bmxvY2soJmlpb19kZXYtPm1sb2NrKTsKKwkJ
bXV0ZXhfdW5sb2NrKCZzZW5zb3ItPmxvY2spOwogCQlyZXR1cm4gZXJyOwogCWRlZmF1bHQ6CiAJ
CXJldHVybiAtRUlOVkFMOwpAQCAtNTg2LDYgKzU5MCw3IEBAIHNjbWlfYWxsb2NfaWlvZGV2KHN0
cnVjdCBzY21pX2RldmljZSAqc2RldiwKIAlzZW5zb3ItPnNlbnNvcl9pbmZvID0gc2Vuc29yX2lu
Zm87CiAJc2Vuc29yLT5zZW5zb3JfdXBkYXRlX25iLm5vdGlmaWVyX2NhbGwgPSBzY21pX2lpb19z
ZW5zb3JfdXBkYXRlX2NiOwogCXNlbnNvci0+aW5kaW9fZGV2ID0gaWlvZGV2OworCW11dGV4X2lu
aXQoJnNlbnNvci0+bG9jayk7CiAKIAkvKiBhZGRpbmcgb25lIGFkZGl0aW9uYWwgY2hhbm5lbCBm
b3IgdGltZXN0YW1wICovCiAJaWlvZGV2LT5udW1fY2hhbm5lbHMgPSBzZW5zb3JfaW5mby0+bnVt
X2F4aXMgKyAxOwotLSAKMi4zNy4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
