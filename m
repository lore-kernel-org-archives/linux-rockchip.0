Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B21FECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNKmI39il+vQATfLubi8YLJRR4C/WW4pnFBmNJwEEzU=; b=M0TV0DLCvVWLiP
	6iQXxL3kdMeLvs56c9Nday3TYyhFs98BOEssOsW9FI05ONkN6miiSgVBrUrj7X1ZH+eBaJnyRcK16
	A/h1LgtpS73/2fUv2IYTz99dLJ8J5fucEutwgMWHxUKpFCcK84ml8KKIpzENOcAOtG6SOIE8mZwep
	oaSj6aRA3WYYrRq1OHYxTgfhXjbgRR2zqOzMFc9KF4wgzLwjeQbIh/E/cqQONf442jMtYotsZbSGR
	Q279rK2PkctWhSbDW0qMtmc9mSCpUOc6UIllfzY09AHG3XV48bnjwOaO3P8v+wuUKf7IqywS0Wn2G
	6+dZMcj5dz3zXEvw0pEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabY5-003NVy-9f; Tue, 20 Sep 2022 11:36:21 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQx-003If4-NY; Tue, 20 Sep 2022 11:29:01 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K89N8X006313;
	Tue, 20 Sep 2022 07:28:45 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jn835muv6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:28:45 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 28KBSi85062651
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:28:44 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:28:43 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:28:42 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:28:42 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UZ021723;
	Tue, 20 Sep 2022 07:28:33 -0400
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
Subject: [PATCH 13/15] iio: health: max30100: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:19 +0200
Message-ID: <20220920112821.975359-14-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: bI2aLY9E-BSswkh0PqL80oN4pEXUQtzZ
X-Proofpoint-GUID: bI2aLY9E-BSswkh0PqL80oN4pEXUQtzZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_03,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 bulkscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042859_852537_B1E0173B 
X-CRM114-Status: GOOD (  18.32  )
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

VGhlIHBhdHRlcm4gdXNlZCBpbiB0aGlzIGRldmljZSBkb2VzIG5vdCBxdWl0ZSBmaXQgaW4gdGhl
Cmlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUoKSB0eXBpY2FsIHVzYWdlLiBJbiB0aGlzIGNh
c2UsCmlpb19idWZmZXJfZW5hYmxlZCgpIHdhcyBiZWluZyB1c2VkIG5vdCB0byBwcmV2ZW50IHRo
ZSByYXcgYWNjZXNzIGJ1dCB0bwphbGxvdyBpdC4gSGVuY2UgdG8gZ2V0IHJpZCBvZiB0aGUgJ21s
b2NrJyB3ZSBuZWVkIHRvOgoKMS4gVXNlIGlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUoKSB0
byBjaGVjayBpZiBkaXJlY3QgbW9kZSBjYW4gYmUKY2xhaW1lZCBhbmQgaWYgd2UgY2FuIHJldHVy
biAtRUlOVkFMIChhcyB0aGUgb3JpZ2luYWwgY29kZSk7CjIuIE1ha2Ugc3VyZSB0aGF0IGJ1ZmZl
cmluZyBpcyBub3QgZGlzYWJsZWQgd2hpbGUgZG9pbmcgYSByYXcgcmVhZC4gRm9yCnRoYXQsIHdl
IGNhbiBtYWtlIHVzZSBvZiB0aGUgbG9jYWwgbG9jayB0aGF0IGFscmVhZHkgZXhpc3RzLgoKV2hp
bGUgYXQgaXQsIGZpeGVkIGEgbWlub3IgY29kaW5nIHN0eWxlIGNvbXBsYWluLi4uCgpTaWduZWQt
b2ZmLWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgotLS0KIGRyaXZlcnMvaWlvL2hl
YWx0aC9tYXgzMDEwMC5jIHwgMjQgKysrKysrKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAuYyBiL2RyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMC5j
CmluZGV4IGFkNTcxNzk2NTIyMy4uYWE0OTRjYWQ1ZGYwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lp
by9oZWFsdGgvbWF4MzAxMDAuYworKysgYi9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAuYwpA
QCAtMTg1LDggKzE4NSwxOSBAQCBzdGF0aWMgaW50IG1heDMwMTAwX2J1ZmZlcl9wb3N0ZW5hYmxl
KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCiBzdGF0aWMgaW50IG1heDMwMTAwX2J1ZmZlcl9w
cmVkaXNhYmxlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCiB7CiAJc3RydWN0IG1heDMwMTAw
X2RhdGEgKmRhdGEgPSBpaW9fcHJpdihpbmRpb19kZXYpOworCWludCByZXQ7CisKKwkvKgorCSAq
IEFzIHN0YXRlZCBpbiB0aGUgY29tbWVudCBpbiB0aGUgcmVhZF9yYXcoKSBmdW5jdGlvbiwgdGVt
cGVyYXR1cmUKKwkgKiBjYW4gb25seSBiZSBhY3F1aXJlZCBpZiB0aGUgZW5naW5lIGlzIHJ1bm5p
bmcuIEFzIHN1Y2ggdGhlIG11dGV4CisJICogaXMgdXNlZCB0byBtYWtlIHN1cmUgd2UgZG8gbm90
IHBvd2VyIGRvd24gd2hpbGUgZG9pbmcgYSB0ZW1wZXJhdHVyZQorCSAqIHJlYWRpbmcuCisJICov
CisJbXV0ZXhfbG9jaygmZGF0YS0+bG9jayk7CisJcmV0ID0gbWF4MzAxMDBfc2V0X3Bvd2VybW9k
ZShkYXRhLCBmYWxzZSk7CisJbXV0ZXhfdW5sb2NrKCZkYXRhLT5sb2NrKTsKIAotCXJldHVybiBt
YXgzMDEwMF9zZXRfcG93ZXJtb2RlKGRhdGEsIGZhbHNlKTsKKwlyZXR1cm4gcmV0OwogfQogCiBz
dGF0aWMgY29uc3Qgc3RydWN0IGlpb19idWZmZXJfc2V0dXBfb3BzIG1heDMwMTAwX2J1ZmZlcl9z
ZXR1cF9vcHMgPSB7CkBAIC0zODcsMTggKzM5OCwxNyBAQCBzdGF0aWMgaW50IG1heDMwMTAwX3Jl
YWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAJCSAqIFRlbXBlcmF0dXJlIHJlYWRp
bmcgY2FuIG9ubHkgYmUgYWNxdWlyZWQgd2hpbGUgZW5naW5lCiAJCSAqIGlzIHJ1bm5pbmcKIAkJ
ICovCi0JCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwotCi0JCWlmICghaWlvX2J1ZmZl
cl9lbmFibGVkKGluZGlvX2RldikpCisJCWlmICghaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9k
ZShpbmRpb19kZXYpKSB7CiAJCQlyZXQgPSAtRUFHQUlOOwotCQllbHNlIHsKKwkJCWlpb19kZXZp
Y2VfcmVsZWFzZV9kaXJlY3RfbW9kZShpbmRpb19kZXYpOworCQl9IGVsc2UgeworCQkJbXV0ZXhf
bG9jaygmZGF0YS0+bG9jayk7CiAJCQlyZXQgPSBtYXgzMDEwMF9nZXRfdGVtcChkYXRhLCB2YWwp
OwogCQkJaWYgKCFyZXQpCiAJCQkJcmV0ID0gSUlPX1ZBTF9JTlQ7Ci0KKwkJCW11dGV4X3VubG9j
aygmZGF0YS0+bG9jayk7CiAJCX0KIAotCQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2sp
OwogCQlicmVhazsKIAljYXNlIElJT19DSEFOX0lORk9fU0NBTEU6CiAJCSp2YWwgPSAxOyAgLyog
MC4wNjI1ICovCi0tIAoyLjM3LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
