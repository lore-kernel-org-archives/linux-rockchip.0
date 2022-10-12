Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35124C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Oct 2022 15:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhV3Idu4UDbmeASWbphMAuyWhaEhzGolWBO8xO+43KQ=; b=o/7CELdgZFOxQI
	SvW55txkS/D+mvMqvaDzqMjuNqMG+lev/25/wUi8anEiJ+fFmmXkwZ6ObECdbf7nffNL6wre5DuZM
	F0xCr8na6sx/A3qbgJFDR0HH0JdUbYJgobKlUztalTWeRmJPvJaLDsYBlqfsBTIm+EuPLyrjSQD9D
	GzPiOE7FQ5rTGzmk8Kx0I8DI9v77Wk3LUKj4K3EAbvIZJ/+5BhyLJKQGejZ7Rfod61kPiSzxR70cP
	utT+ifLpr78LEaqYDE+EvuWCL9sgBYNVRYoTBS4PSWtTDVvp2V9nYHI8nionYpXj99f55Q3QatPlR
	EcdVZa1ktv9X3uN7oTkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oidSs-008Udc-Ad; Wed, 12 Oct 2022 15:16:10 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oidSo-008Uar-FL; Wed, 12 Oct 2022 15:16:08 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 29CDvmWG010798;
	Wed, 12 Oct 2022 11:15:48 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3k3325xu46-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Oct 2022 11:15:47 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 29CFFkrJ049233
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 12 Oct 2022 11:15:46 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Wed, 12 Oct 2022 11:15:45 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Wed, 12 Oct 2022 11:15:45 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Wed, 12 Oct 2022 11:15:45 -0400
Received: from nsa.ad.analog.com ([10.44.3.62])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 29CFEund022095;
	Wed, 12 Oct 2022 11:15:35 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-iio@vger.kernel.org>,
        <linux-amlogic@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-imx@nxp.com>
CC: Chen-Yu Tsai <wens@csie.org>,
        Andriy Tryshnivskyy
	<andriy.tryshnivskyy@opensynergy.com>,
        Ciprian Regus
	<ciprian.regus@analog.com>,
        Vladimir Zapolskiy <vz@mleia.com>, Cixi Geng
	<cixi.geng1@unisoc.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        "Miquel
 Raynal" <miquel.raynal@bootlin.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Heiko Stuebner <heiko@sntech.de>,
        =?UTF-8?q?Nuno=20S=C3=A1?=
	<nuno.sa@analog.com>,
        Fabio Estevam <festevam@gmail.com>,
        Jerome Brunet
	<jbrunet@baylibre.com>,
        Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>,
        Pengutronix Kernel Team
	<kernel@pengutronix.de>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        "Hans
 de Goede" <hdegoede@redhat.com>,
        Alexandru Ardelean <aardelean@deviqon.com>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        Haibo Chen
	<haibo.chen@nxp.com>, Lars-Peter Clausen <lars@metafoo.de>,
        Jyoti Bhayana
	<jbhayana@google.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Andy Shevchenko
	<andy.shevchenko@gmail.com>,
        Florian Boor <florian.boor@kernelconcepts.de>,
        Chunyan Zhang <zhang.lyra@gmail.com>, Orson Zhai <orsonzhai@gmail.com>,
        "Shawn Guo" <shawnguo@kernel.org>, Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH v3 2/4] iio: health: max30100: do not use internal iio_dev lock
Date: Wed, 12 Oct 2022 17:16:18 +0200
Message-ID: <20221012151620.1725215-3-nuno.sa@analog.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221012151620.1725215-1-nuno.sa@analog.com>
References: <20221012151620.1725215-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: nM1f-X8TjScKJQm23JxZD5qneviuxiXN
X-Proofpoint-ORIG-GUID: nM1f-X8TjScKJQm23JxZD5qneviuxiXN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-12_07,2022-10-12_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 spamscore=0
 suspectscore=0 mlxscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 phishscore=0 mlxlogscore=940 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210120100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_081606_601577_9E49A471 
X-CRM114-Status: GOOD (  15.86  )
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
ZSByYXcgYWNjZXNzIGJ1dCB0bwphbGxvdyBpdC4gSGVuY2UsIGxldCdzIG1ha2UgdXNlIG9mIHRo
ZSBuZXcKaWlvX2RldmljZV9jbGFpbV9idWZmZXJfbW9kZSgpIEFQSSB0byBtYWtlIHN1cmUgd2Ug
c3RheSBpbiBidWZmZXJlZCBtb2RlCmR1cmluZyB0aGUgY29tcGxldGUgcmVhZC4KCk5vdGUgdGhh
dCB3ZSBhcmUgc2hhZG93aW5nIHRoZSBlcnJvciBjb2RlIHJldHVybmVkIGJ5Cmlpb19kZXZpY2Vf
Y2xhaW1fYnVmZmVyX21vZGUoKSBzbyB0aGF0IHdlIGtlZXAgdGhlIG9yaWdpbmFsIG9uZQooLUVB
R0FJTikuIFRoZSByZWFzb24gaXMgdGhhdCBzb21lIHVzZXJzcGFjZSBzdGFjayBtaWdodCBhbHJl
YWR5IGJlCnJlbHlpbmcgb24gdGhpcyBwYXJ0aWN1bGFyIGNvZGUgc28gdGhhdCB3ZSBhcmUgbm90
IHRha2luZyBjaGFuY2VzIGFuZApsZWF2ZSBpdCBhbG9uZS4KClNpZ25lZC1vZmYtYnk6IE51bm8g
U8OhIDxudW5vLnNhQGFuYWxvZy5jb20+Ci0tLQogZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAw
LmMgfCA5ICsrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAuYyBiL2Ry
aXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMC5jCmluZGV4IDJjY2E1ZTA1MTlmOC4uNmFjNDk5MDFj
OWRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAuYworKysgYi9kcml2
ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAuYwpAQCAtMzg3LDE4ICszODcsMTUgQEAgc3RhdGljIGlu
dCBtYXgzMDEwMF9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCQkgKiBUZW1w
ZXJhdHVyZSByZWFkaW5nIGNhbiBvbmx5IGJlIGFjcXVpcmVkIHdoaWxlIGVuZ2luZQogCQkgKiBp
cyBydW5uaW5nCiAJCSAqLwotCQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKLQotCQlp
ZiAoIWlpb19idWZmZXJfZW5hYmxlZChpbmRpb19kZXYpKQorCQlpZiAoaWlvX2RldmljZV9jbGFp
bV9idWZmZXJfbW9kZShpbmRpb19kZXYpKSB7CiAJCQlyZXQgPSAtRUFHQUlOOwotCQllbHNlIHsK
KwkJfSBlbHNlIHsKIAkJCXJldCA9IG1heDMwMTAwX2dldF90ZW1wKGRhdGEsIHZhbCk7CiAJCQlp
ZiAoIXJldCkKIAkJCQlyZXQgPSBJSU9fVkFMX0lOVDsKIAorCQkJaWlvX2RldmljZV9yZWxlYXNl
X2J1ZmZlcl9tb2RlKGluZGlvX2Rldik7CiAJCX0KLQotCQltdXRleF91bmxvY2soJmluZGlvX2Rl
di0+bWxvY2spOwogCQlicmVhazsKIAljYXNlIElJT19DSEFOX0lORk9fU0NBTEU6CiAJCSp2YWwg
PSAxOyAgLyogMC4wNjI1ICovCi0tIAoyLjM4LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
