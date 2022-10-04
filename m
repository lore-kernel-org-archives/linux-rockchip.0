Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAA73C43217
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTlU3K7AjDpVWgehAvF2DjiWvxDA44O6duhWsVm1imA=; b=xbryHqZmik7Hi2
	N0QI0YsbXcEftKSYvKFJntgw9B8ihjMotC1G0hUTsucPLuw9s83Qf3m9wTOhv6Ash6FxQEfXXgdGX
	P2XmD2yAoqBw7HK29VFGWmIoo/BCFomtzylYTpKS8XR+6/xxVO8lD588zghtT2a7cgzl2HS8PzVmB
	gRqzanpe2Bc37RTidbU1x7WnapcnpGeyKXBFsAXfWQzop+jLtb64CtDGJRcIMafr3XW+3HF/yIJk4
	kjKDz9lA+tu39gocXo4b5ghzhgjq1SkLV/bXneSUpILyiuXSEV2abJ/UfKaWOujSWSOM9tQlkd7Wd
	iBEFie4vUt5fOfLv+8ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiKa-009nGX-33; Tue, 04 Oct 2022 13:51:32 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIX-009lsK-VE; Tue, 04 Oct 2022 13:49:27 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294ArJjF025134;
	Tue, 4 Oct 2022 09:49:11 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxjf733pm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:49:11 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 294DnApA004109
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:49:10 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:49:09 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:49:09 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:49:09 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVg032663;
	Tue, 4 Oct 2022 09:48:57 -0400
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
Subject: [PATCH v2 09/16] iio: adc: vf610_adc: add helper function to read samples
Date: Tue, 4 Oct 2022 15:49:02 +0200
Message-ID: <20221004134909.1692021-10-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: M6u34JCCV2Zyx26pPgyAcgbJHH3Ax16t
X-Proofpoint-ORIG-GUID: M6u34JCCV2Zyx26pPgyAcgbJHH3Ax16t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 spamscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064926_040666_1AA8B937 
X-CRM114-Status: GOOD (  17.39  )
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

VGhpcyBpcyBhIHByZWN1cnNvciBjaGFuZ2UgdG8gbWFrZSBpdCBzaW1wbGVyIHRvIHJlbW92ZSB0
aGUgJ21sb2NrJwp1c2FnZS4gSGF2aW5nIHRoZSBjb2RlIGluIGl0J3Mgb3duIGhlbHBlciBmdW5j
dGlvbiwgYWxzbyBtYWtlcyBpdCBlYXNpZXIKdG8gcmVhZCB0aGUgZXJyb3IgcGF0aHMuCgpTaWdu
ZWQtb2ZmLWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgotLS0KIGRyaXZlcnMvaWlv
L2FkYy92ZjYxMF9hZGMuYyB8IDk0ICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspLCA0MCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvdmY2MTBfYWRjLmMgYi9kcml2ZXJzL2lpby9hZGMv
dmY2MTBfYWRjLmMKaW5kZXggYzZiMTZjZjZlMzY3Li5hNmY5MTgyZDc3NjYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvaWlvL2FkYy92ZjYxMF9hZGMuYworKysgYi9kcml2ZXJzL2lpby9hZGMvdmY2MTBf
YWRjLmMKQEAgLTYyMiw2ICs2MjIsNTggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhdHRyaWJ1dGVf
Z3JvdXAgdmY2MTBfYXR0cmlidXRlX2dyb3VwID0gewogCS5hdHRycyA9IHZmNjEwX2F0dHJpYnV0
ZXMsCiB9OwogCitzdGF0aWMgaW50IHZmNjEwX3JlYWRfc2FtcGxlKHN0cnVjdCBpaW9fZGV2ICpp
bmRpb19kZXYsCisJCQkgICAgIHN0cnVjdCBpaW9fY2hhbl9zcGVjIGNvbnN0ICpjaGFuLCBpbnQg
KnZhbCkKK3sKKwlzdHJ1Y3QgdmY2MTBfYWRjICppbmZvID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsK
Kwl1bnNpZ25lZCBpbnQgaGNfY2ZnOworCWludCByZXQ7CisKKwltdXRleF9sb2NrKCZpbmRpb19k
ZXYtPm1sb2NrKTsKKwlpZiAoaWlvX2J1ZmZlcl9lbmFibGVkKGluZGlvX2RldikpIHsKKwkJcmV0
ID0gLUVCVVNZOworCQlnb3RvIG91dF91bmxvY2s7CisJfQorCisJcmVpbml0X2NvbXBsZXRpb24o
JmluZm8tPmNvbXBsZXRpb24pOworCWhjX2NmZyA9IFZGNjEwX0FEQ19BRENIQyhjaGFuLT5jaGFu
bmVsKTsKKwloY19jZmcgfD0gVkY2MTBfQURDX0FJRU47CisJd3JpdGVsKGhjX2NmZywgaW5mby0+
cmVncyArIFZGNjEwX1JFR19BRENfSEMwKTsKKwlyZXQgPSB3YWl0X2Zvcl9jb21wbGV0aW9uX2lu
dGVycnVwdGlibGVfdGltZW91dCgmaW5mby0+Y29tcGxldGlvbiwKKwkJCQkJCQlWRjYxMF9BRENf
VElNRU9VVCk7CisJaWYgKHJldCA9PSAwKSB7CisJCXJldCA9IC1FVElNRURPVVQ7CisJCWdvdG8g
b3V0X3VubG9jazsKKwl9CisKKwlpZiAocmV0IDwgMCkKKwkJZ290byBvdXRfdW5sb2NrOworCisJ
c3dpdGNoIChjaGFuLT50eXBlKSB7CisJY2FzZSBJSU9fVk9MVEFHRToKKwkJKnZhbCA9IGluZm8t
PnZhbHVlOworCQlicmVhazsKKwljYXNlIElJT19URU1QOgorCQkvKgorCQkgKiBDYWxjdWxhdGUg
aW4gZGVncmVlIENlbHNpdXMgdGltZXMgMTAwMAorCQkgKiBVc2luZyB0aGUgdHlwaWNhbCBzZW5z
b3Igc2xvcGUgb2YgMS44NCBtVi/CsEMKKwkJICogYW5kIFZSRUZIX0FEQyBhdCAzLjNWLCBWIGF0
IDI1wrBDIG9mIDY5OSBtVgorCQkgKi8KKwkJKnZhbCA9IDI1MDAwIC0gKChpbnQpaW5mby0+dmFs
dWUgLSBWRjYxMF9WVEVNUDI1XzNWMykgKgorCQkJCTEwMDAwMDAgLyBWRjYxMF9URU1QX1NMT1BF
X0NPRUZGOworCisJCWJyZWFrOworCWRlZmF1bHQ6CisJCXJldCA9IC1FSU5WQUw7CisJCWJyZWFr
OworCX0KKworb3V0X3VubG9jazoKKwltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOwor
CisJcmV0dXJuIHJldDsKK30KKwogc3RhdGljIGludCB2ZjYxMF9yZWFkX3JhdyhzdHJ1Y3QgaWlv
X2RldiAqaW5kaW9fZGV2LAogCQkJc3RydWN0IGlpb19jaGFuX3NwZWMgY29uc3QgKmNoYW4sCiAJ
CQlpbnQgKnZhbCwKQEAgLTYyOSw1MyArNjgxLDE1IEBAIHN0YXRpYyBpbnQgdmY2MTBfcmVhZF9y
YXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKIAkJCWxvbmcgbWFzaykKIHsKIAlzdHJ1Y3Qg
dmY2MTBfYWRjICppbmZvID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKLQl1bnNpZ25lZCBpbnQgaGNf
Y2ZnOwogCWxvbmcgcmV0OwogCiAJc3dpdGNoIChtYXNrKSB7CiAJY2FzZSBJSU9fQ0hBTl9JTkZP
X1JBVzoKIAljYXNlIElJT19DSEFOX0lORk9fUFJPQ0VTU0VEOgotCQltdXRleF9sb2NrKCZpbmRp
b19kZXYtPm1sb2NrKTsKLQkJaWYgKGlpb19idWZmZXJfZW5hYmxlZChpbmRpb19kZXYpKSB7Ci0J
CQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOwotCQkJcmV0dXJuIC1FQlVTWTsKLQkJ
fQotCi0JCXJlaW5pdF9jb21wbGV0aW9uKCZpbmZvLT5jb21wbGV0aW9uKTsKLQkJaGNfY2ZnID0g
VkY2MTBfQURDX0FEQ0hDKGNoYW4tPmNoYW5uZWwpOwotCQloY19jZmcgfD0gVkY2MTBfQURDX0FJ
RU47Ci0JCXdyaXRlbChoY19jZmcsIGluZm8tPnJlZ3MgKyBWRjYxMF9SRUdfQURDX0hDMCk7Ci0J
CXJldCA9IHdhaXRfZm9yX2NvbXBsZXRpb25faW50ZXJydXB0aWJsZV90aW1lb3V0Ci0JCQkJKCZp
bmZvLT5jb21wbGV0aW9uLCBWRjYxMF9BRENfVElNRU9VVCk7Ci0JCWlmIChyZXQgPT0gMCkgewot
CQkJbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKLQkJCXJldHVybiAtRVRJTUVET1VU
OwotCQl9Ci0JCWlmIChyZXQgPCAwKSB7Ci0JCQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxv
Y2spOworCQlyZXQgPSB2ZjYxMF9yZWFkX3NhbXBsZShpbmRpb19kZXYsIGNoYW4sIHZhbCk7CisJ
CWlmIChyZXQgPCAwKQogCQkJcmV0dXJuIHJldDsKLQkJfQotCi0JCXN3aXRjaCAoY2hhbi0+dHlw
ZSkgewotCQljYXNlIElJT19WT0xUQUdFOgotCQkJKnZhbCA9IGluZm8tPnZhbHVlOwotCQkJYnJl
YWs7Ci0JCWNhc2UgSUlPX1RFTVA6Ci0JCQkvKgotCQkJICogQ2FsY3VsYXRlIGluIGRlZ3JlZSBD
ZWxzaXVzIHRpbWVzIDEwMDAKLQkJCSAqIFVzaW5nIHRoZSB0eXBpY2FsIHNlbnNvciBzbG9wZSBv
ZiAxLjg0IG1WL8KwQwotCQkJICogYW5kIFZSRUZIX0FEQyBhdCAzLjNWLCBWIGF0IDI1wrBDIG9m
IDY5OSBtVgotCQkJICovCi0JCQkqdmFsID0gMjUwMDAgLSAoKGludClpbmZvLT52YWx1ZSAtIFZG
NjEwX1ZURU1QMjVfM1YzKSAqCi0JCQkJCTEwMDAwMDAgLyBWRjYxMF9URU1QX1NMT1BFX0NPRUZG
OwotCi0JCQlicmVhazsKLQkJZGVmYXVsdDoKLQkJCW11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5t
bG9jayk7Ci0JCQlyZXR1cm4gLUVJTlZBTDsKLQkJfQogCi0JCW11dGV4X3VubG9jaygmaW5kaW9f
ZGV2LT5tbG9jayk7CiAJCXJldHVybiBJSU9fVkFMX0lOVDsKIAogCWNhc2UgSUlPX0NIQU5fSU5G
T19TQ0FMRToKLS0gCjIuMzcuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
