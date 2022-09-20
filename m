Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0C80C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DH4UyQvA46/4LAuuu29Z5h8OFQDmPR2lfNs3nnp7KPo=; b=PbCxEu0u/DOmY1
	5qGvX/Pgf52mf/z5Hoi1H32Tnk1xNjjEFQ9lDPkyrpXiK0OL4an8PttliK1ZWC9mGetfOTfV/zyc/
	N6ZJjHth+78OMq/W0EpIUdwCnn8QRTtDYjK1DGlv8Knu2W7tudMKyelLL7PPX4RClM6ZrtUKYm7o5
	iSCW0PHF8i9gUq3TnXN7QOXIdehjqbmgJXPezcby2AIOseemyW+ivUOelWAs6qRhvsvw7YnmjU+HW
	h2wshZOmI7HlIjR+cJj0nd4fRCBRanL3Ekj/hVMTGO8rEWDKnR4KMnUWvpnfz/iBjJKo/iw5Izfjy
	GX57sZ/h7YbZbPazjF/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabSU-003JgE-2m; Tue, 20 Sep 2022 11:30:34 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQK-003ICx-8j; Tue, 20 Sep 2022 11:28:21 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28KBIc46025053;
	Tue, 20 Sep 2022 07:28:06 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jpn468r1y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:28:06 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 28KBS55f062496
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:28:05 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 20 Sep
 2022 07:28:04 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:28:04 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UR021723;
	Tue, 20 Sep 2022 07:27:54 -0400
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
        Fabio
 Estevam <festevam@gmail.com>,
        Andriy Tryshnivskyy
	<andriy.tryshnivskyy@opensynergy.com>,
        Haibo Chen <haibo.chen@nxp.com>, Shawn
 Guo <shawnguo@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Miquel Raynal
	<miquel.raynal@bootlin.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Heiko
 Stuebner <heiko@sntech.de>,
        Florian Boor <florian.boor@kernelconcepts.de>,
        Ciprian Regus <ciprian.regus@analog.com>,
        Lars-Peter Clausen
	<lars@metafoo.de>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jonathan
 Cameron <jic23@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Baolin
 Wang <baolin.wang@linux.alibaba.com>,
        Jyoti Bhayana <jbhayana@google.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
        Chen-Yu Tsai
	<wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
Subject: [PATCH 05/15] iio: adc: lpc32xx_adc: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:11 +0200
Message-ID: <20220920112821.975359-6-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: olOHKiyWuUWn6WgLbVn_AAgTMO5HnwCL
X-Proofpoint-GUID: olOHKiyWuUWn6WgLbVn_AAgTMO5HnwCL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 phishscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 mlxlogscore=947 adultscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042820_360980_06AF5312 
X-CRM114-Status: GOOD (  15.20  )
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
LS0tCiBkcml2ZXJzL2lpby9hZGMvbHBjMzJ4eF9hZGMuYyB8IDEwICsrKysrKystLS0KIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9paW8vYWRjL2xwYzMyeHhfYWRjLmMgYi9kcml2ZXJzL2lpby9hZGMvbHBjMzJ4eF9h
ZGMuYwppbmRleCBiNTZjZTE1MjU1Y2YuLjQxMzZjZjUzNmQ1OCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9paW8vYWRjL2xwYzMyeHhfYWRjLmMKKysrIGIvZHJpdmVycy9paW8vYWRjL2xwYzMyeHhfYWRj
LmMKQEAgLTE1LDYgKzE1LDcgQEAKICNpbmNsdWRlIDxsaW51eC9pby5oPgogI2luY2x1ZGUgPGxp
bnV4L21vZHVsZS5oPgogI2luY2x1ZGUgPGxpbnV4L21vZF9kZXZpY2V0YWJsZS5oPgorI2luY2x1
ZGUgPGxpbnV4L211dGV4Lmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiAj
aW5jbHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+CiAKQEAgLTQ5LDYgKzUwLDggQEAg
c3RydWN0IGxwYzMyeHhfYWRjX3N0YXRlIHsKIAlzdHJ1Y3QgY2xrICpjbGs7CiAJc3RydWN0IGNv
bXBsZXRpb24gY29tcGxldGlvbjsKIAlzdHJ1Y3QgcmVndWxhdG9yICp2cmVmOworCS8qIGxvY2sg
dG8gcHJvdGVjdCBhZ2FpbnN0IG11bHRpcGxlIGFjY2VzcyB0byB0aGUgZGV2aWNlICovCisJc3Ry
dWN0IG11dGV4IGxvY2s7CiAKIAl1MzIgdmFsdWU7CiB9OwpAQCAtNjQsMTAgKzY3LDEwIEBAIHN0
YXRpYyBpbnQgbHBjMzJ4eF9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCiAJ
c3dpdGNoIChtYXNrKSB7CiAJY2FzZSBJSU9fQ0hBTl9JTkZPX1JBVzoKLQkJbXV0ZXhfbG9jaygm
aW5kaW9fZGV2LT5tbG9jayk7CisJCW11dGV4X2xvY2soJnN0LT5sb2NrKTsKIAkJcmV0ID0gY2xr
X3ByZXBhcmVfZW5hYmxlKHN0LT5jbGspOwogCQlpZiAocmV0KSB7Ci0JCQltdXRleF91bmxvY2so
JmluZGlvX2Rldi0+bWxvY2spOworCQkJbXV0ZXhfdW5sb2NrKCZzdC0+bG9jayk7CiAJCQlyZXR1
cm4gcmV0OwogCQl9CiAJCS8qIE1lYXN1cmVtZW50IHNldHVwICovCkBAIC04MCw3ICs4Myw3IEBA
IHN0YXRpYyBpbnQgbHBjMzJ4eF9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAog
CQl3YWl0X2Zvcl9jb21wbGV0aW9uKCZzdC0+Y29tcGxldGlvbik7IC8qIHNldCBieSBJU1IgKi8K
IAkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHN0LT5jbGspOwogCQkqdmFsID0gc3QtPnZhbHVlOwot
CQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOworCQltdXRleF91bmxvY2soJnN0LT5s
b2NrKTsKIAogCQlyZXR1cm4gSUlPX1ZBTF9JTlQ7CiAKQEAgLTE1OCw2ICsxNjEsNyBAQCBzdGF0
aWMgaW50IGxwYzMyeHhfYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
CXJldHVybiAtRU5PTUVNOwogCiAJc3QgPSBpaW9fcHJpdihpb2Rldik7CisJbXV0ZXhfaW5pdCgm
c3QtPmxvY2spOwogCiAJc3QtPmFkY19iYXNlID0gZGV2bV9pb3JlbWFwKCZwZGV2LT5kZXYsIHJl
cy0+c3RhcnQsCiAJCQkJICAgIHJlc291cmNlX3NpemUocmVzKSk7Ci0tIAoyLjM3LjMKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
