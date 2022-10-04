Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 094DCC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4QzDmgaPTTNevVzMP+C87IytCNP+bh4+lbHbuf1Ang=; b=OQqoOUvqLItRcg
	AeTuPTNcG2wgub9/U8SHRoz12c458xVFcNXJqwtTHoPa6vRkV89ujBmH0JTNsz275+QxVTT93iCBr
	aQrRDdvFEthrl8Oz9J7HaXY/N/aPxsC19gwV61J65u2U/seDccqgyIrMZWO3fYItP+YV9IbdamBfm
	Cz4V0Osoadsvfzggfn2sq5uz0FeZJWh+ffoLMIdyW+2WyyEg+mVxxqMEN3IvEoL77fhjKWvsQfVhz
	Bvd9UcdC+WlS8yji/p3KhcaFoLuh0zQAF1MeuTmzYzom73/Z7lG7IkDTWRrdPV2568dtyMJEHsRfS
	1V27Hji6bk3vAPuE+7lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiNU-009oxo-9l; Tue, 04 Oct 2022 13:54:32 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIs-009m9W-W6; Tue, 04 Oct 2022 13:49:49 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294DONW6005461;
	Tue, 4 Oct 2022 09:49:32 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxfd73nnu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:49:32 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 294DnVFJ004146
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:49:31 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:49:30 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:49:30 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:49:30 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVl032663;
	Tue, 4 Oct 2022 09:49:22 -0400
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
Subject: [PATCH v2 14/16] iio: health: max30100: do not use internal iio_dev lock
Date: Tue, 4 Oct 2022 15:49:07 +0200
Message-ID: <20221004134909.1692021-15-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: my4xHqZFKGA4A4TWJjyLyzBXzff2n89S
X-Proofpoint-ORIG-GUID: my4xHqZFKGA4A4TWJjyLyzBXzff2n89S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 mlxlogscore=774 clxscore=1015 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064947_084966_D354CA8C 
X-CRM114-Status: GOOD (  13.17  )
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
c3RheSBpbiBidWZmZXJlZCBtb2RlCmR1cmluZyB0aGUgY29tcGxldGUgcmVhZC4KClNpZ25lZC1v
ZmYtYnk6IE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+Ci0tLQogZHJpdmVycy9paW8vaGVh
bHRoL21heDMwMTAwLmMgfCA5ICsrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9oZWFsdGgvbWF4
MzAxMDAuYyBiL2RyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMC5jCmluZGV4IGFkNTcxNzk2NTIy
My4uNDY1Y2U4OTk2ZDM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAu
YworKysgYi9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAuYwpAQCAtMzg3LDE4ICszODcsMTUg
QEAgc3RhdGljIGludCBtYXgzMDEwMF9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2
LAogCQkgKiBUZW1wZXJhdHVyZSByZWFkaW5nIGNhbiBvbmx5IGJlIGFjcXVpcmVkIHdoaWxlIGVu
Z2luZQogCQkgKiBpcyBydW5uaW5nCiAJCSAqLwotCQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1s
b2NrKTsKLQotCQlpZiAoIWlpb19idWZmZXJfZW5hYmxlZChpbmRpb19kZXYpKQorCQlpZiAoaWlv
X2RldmljZV9jbGFpbV9idWZmZXJfbW9kZShpbmRpb19kZXYpKSB7CiAJCQlyZXQgPSAtRUFHQUlO
OwotCQllbHNlIHsKKwkJfSBlbHNlIHsKIAkJCXJldCA9IG1heDMwMTAwX2dldF90ZW1wKGRhdGEs
IHZhbCk7CiAJCQlpZiAoIXJldCkKIAkJCQlyZXQgPSBJSU9fVkFMX0lOVDsKIAorCQkJaWlvX2Rl
dmljZV9yZWxlYXNlX2J1ZmZlcl9tb2RlKGluZGlvX2Rldik7CiAJCX0KLQotCQltdXRleF91bmxv
Y2soJmluZGlvX2Rldi0+bWxvY2spOwogCQlicmVhazsKIAljYXNlIElJT19DSEFOX0lORk9fU0NB
TEU6CiAJCSp2YWwgPSAxOyAgLyogMC4wNjI1ICovCi0tIAoyLjM3LjMKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
