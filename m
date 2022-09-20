Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FC9BECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmkB+CaByXlMeftyaNvTmg8JZLyAZjIOvh2dD05ahrM=; b=4SutiG75yFQdFw
	+JvEFziAxN2q3hmOaF3URXRGCK8X4Jqnmqg8UGHGQoh619tIKnwL0Euu1Ulhn+v2qrWddxjj5oO9j
	z5CQmLC6m71ObLNRmzSK57aAPkyWvm+LdT96PghKPhaS+8SqSX47ObI6U7lLi1rYEF/nGFitSPJqB
	PaoHZ+5+lIpVTlHSharPHMZbLdc3SsST4RPKkiFMCMrOebLX6xUyiOp3qdoc1P03byQxeDelD9HuU
	aNPwyMqHJfeZ2jSvxvbElTyTIKeqHuV9ZAG3JSoL6IsMch5rOVnZ1+GEVgnqFbVWYYi5Ks1sY6nAo
	RzkpYJEsTgTRzt1pMTUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabWL-003MLZ-0n; Tue, 20 Sep 2022 11:34:33 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQn-003IWr-Uv; Tue, 20 Sep 2022 11:28:51 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28KBODCj025060;
	Tue, 20 Sep 2022 07:28:35 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jpn468r46-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:28:35 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 28KBSYLA060714
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:28:34 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:28:33 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:28:32 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:28:32 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UX021723;
	Tue, 20 Sep 2022 07:28:24 -0400
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
        "Fabio
 Estevam" <festevam@gmail.com>,
        Andriy Tryshnivskyy
	<andriy.tryshnivskyy@opensynergy.com>,
        Haibo Chen <haibo.chen@nxp.com>, "Shawn Guo" <shawnguo@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Jerome Brunet
	<jbrunet@baylibre.com>,
        "Heiko Stuebner" <heiko@sntech.de>,
        Florian Boor
	<florian.boor@kernelconcepts.de>,
        Ciprian Regus <ciprian.regus@analog.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Andy Shevchenko
	<andy.shevchenko@gmail.com>,
        "Jonathan Cameron" <jic23@kernel.org>,
        Neil
 Armstrong <narmstrong@baylibre.com>,
        "Baolin Wang"
	<baolin.wang@linux.alibaba.com>,
        Jyoti Bhayana <jbhayana@google.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
        Chen-Yu Tsai
	<wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
Subject: [PATCH 11/15] iio: common: scmi_iio: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:17 +0200
Message-ID: <20220920112821.975359-12-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: HmrXKVsIWAEpiBsJg8pWI2lromm0rUBm
X-Proofpoint-GUID: HmrXKVsIWAEpiBsJg8pWI2lromm0rUBm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 phishscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042850_063610_0AB32087 
X-CRM114-Status: GOOD (  15.40  )
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
IGFjY2Vzc2VzLgoKU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4K
LS0tCiBkcml2ZXJzL2lpby9jb21tb24vc2NtaV9zZW5zb3JzL3NjbWlfaWlvLmMgfCA5ICsrKysr
KystLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2lpby9jb21tb24vc2NtaV9zZW5zb3JzL3NjbWlfaWlvLmMgYi9k
cml2ZXJzL2lpby9jb21tb24vc2NtaV9zZW5zb3JzL3NjbWlfaWlvLmMKaW5kZXggNTRjY2YxOWFi
MmJiLi5kOTJmN2Y2NTFmN2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaWlvL2NvbW1vbi9zY21pX3Nl
bnNvcnMvc2NtaV9paW8uYworKysgYi9kcml2ZXJzL2lpby9jb21tb24vc2NtaV9zZW5zb3JzL3Nj
bWlfaWlvLmMKQEAgLTE1LDYgKzE1LDcgQEAKICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KICNp
bmNsdWRlIDxsaW51eC9rdGhyZWFkLmg+CiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+CisjaW5j
bHVkZSA8bGludXgvbXV0ZXguaD4KICNpbmNsdWRlIDxsaW51eC9zY21pX3Byb3RvY29sLmg+CiAj
aW5jbHVkZSA8bGludXgvdGltZS5oPgogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CkBAIC0yNyw2
ICsyOCw4IEBAIHN0cnVjdCBzY21pX2lpb19wcml2IHsKIAlzdHJ1Y3Qgc2NtaV9wcm90b2NvbF9o
YW5kbGUgKnBoOwogCWNvbnN0IHN0cnVjdCBzY21pX3NlbnNvcl9pbmZvICpzZW5zb3JfaW5mbzsK
IAlzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2OworCS8qIGxvY2sgdG8gcHJvdGVjdCBhZ2FpbnN0
IG11bHRpcGxlIGFjY2VzcyB0byB0aGUgZGV2aWNlICovCisJc3RydWN0IG11dGV4IGxvY2s7CiAJ
LyogYWRkaW5nIG9uZSBhZGRpdGlvbmFsIGNoYW5uZWwgZm9yIHRpbWVzdGFtcCAqLwogCXM2NCBp
aW9fYnVmW1NDTUlfSUlPX05VTV9PRl9BWElTICsgMV07CiAJc3RydWN0IG5vdGlmaWVyX2Jsb2Nr
IHNlbnNvcl91cGRhdGVfbmI7CkBAIC0xOTgsMTMgKzIwMSwxNCBAQCBzdGF0aWMgaW50IHNjbWlf
aWlvX3dyaXRlX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaWlvX2RldiwKIAkJCSAgICAgIHN0cnVjdCBp
aW9fY2hhbl9zcGVjIGNvbnN0ICpjaGFuLCBpbnQgdmFsLAogCQkJICAgICAgaW50IHZhbDIsIGxv
bmcgbWFzaykKIHsKKwlzdHJ1Y3Qgc2NtaV9paW9fcHJpdiAqc2Vuc29yID0gaWlvX3ByaXYoaWlv
X2Rldik7CiAJaW50IGVycjsKIAogCXN3aXRjaCAobWFzaykgewogCWNhc2UgSUlPX0NIQU5fSU5G
T19TQU1QX0ZSRVE6Ci0JCW11dGV4X2xvY2soJmlpb19kZXYtPm1sb2NrKTsKKwkJbXV0ZXhfbG9j
aygmc2Vuc29yLT5sb2NrKTsKIAkJZXJyID0gc2NtaV9paW9fc2V0X29kcl92YWwoaWlvX2Rldiwg
dmFsLCB2YWwyKTsKLQkJbXV0ZXhfdW5sb2NrKCZpaW9fZGV2LT5tbG9jayk7CisJCW11dGV4X3Vu
bG9jaygmc2Vuc29yLT5sb2NrKTsKIAkJcmV0dXJuIGVycjsKIAlkZWZhdWx0OgogCQlyZXR1cm4g
LUVJTlZBTDsKQEAgLTU4Niw2ICs1OTAsNyBAQCBzY21pX2FsbG9jX2lpb2RldihzdHJ1Y3Qgc2Nt
aV9kZXZpY2UgKnNkZXYsCiAJc2Vuc29yLT5zZW5zb3JfaW5mbyA9IHNlbnNvcl9pbmZvOwogCXNl
bnNvci0+c2Vuc29yX3VwZGF0ZV9uYi5ub3RpZmllcl9jYWxsID0gc2NtaV9paW9fc2Vuc29yX3Vw
ZGF0ZV9jYjsKIAlzZW5zb3ItPmluZGlvX2RldiA9IGlpb2RldjsKKwltdXRleF9pbml0KCZzZW5z
b3ItPmxvY2spOwogCiAJLyogYWRkaW5nIG9uZSBhZGRpdGlvbmFsIGNoYW5uZWwgZm9yIHRpbWVz
dGFtcCAqLwogCWlpb2Rldi0+bnVtX2NoYW5uZWxzID0gc2Vuc29yX2luZm8tPm51bV9heGlzICsg
MTsKLS0gCjIuMzcuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
