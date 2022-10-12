Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8D5BC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Oct 2022 15:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oj5uBSmCqSArxZZPbEtIUOWi09iWW07vL/Oo9yq2VHk=; b=DRBFjtTrkri0Y5
	RGqJBcrtU6Gjq8IiGjCu65wRl3IKucqOrKjoQzJsCk5EuFV7Kh+PSF4WQFRxji6cy0NaBbdHaXqtS
	cNVwvJwwBa0UEl4s7yPq9p9ZR5osUcLdz4U/xOGPRIgbp6uiuSUkSzJUU4PUfHw4pRpf9VhwER09X
	w0CIrMKULyH0yMwhxIrISh6btGT4lMJxCdKffsTH5mxbqVDNyk63+RMt/UoPiEEsZQMxehHDp/L3L
	/NJ5x2Vf3z7UpGSwB73JjD2NHP2fhuLe6YJHhZPa7AZPXb1liGmARYGqpHy+vBnqfWVJqcIM8MTby
	k0n69jwL0xZiymAp5+Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oidTP-008Utf-6k; Wed, 12 Oct 2022 15:16:43 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oidSo-008Uas-QG; Wed, 12 Oct 2022 15:16:10 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 29CEGmL2000662;
	Wed, 12 Oct 2022 11:15:38 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3k3645e13d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Oct 2022 11:15:38 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 29CFFbEs045454
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 12 Oct 2022 11:15:37 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Wed, 12 Oct 2022 11:15:36 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Wed, 12 Oct 2022 11:15:36 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Wed, 12 Oct 2022 11:15:36 -0400
Received: from nsa.ad.analog.com ([10.44.3.62])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 29CFEunb022095;
	Wed, 12 Oct 2022 11:14:59 -0400
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
Subject: [PATCH v3 0/4] Make 'mlock' really private
Date: Wed, 12 Oct 2022 17:16:16 +0200
Message-ID: <20221012151620.1725215-1-nuno.sa@analog.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: r_C5qfRQbavOxvOQkH8WZcF4BbERRqlw
X-Proofpoint-ORIG-GUID: r_C5qfRQbavOxvOQkH8WZcF4BbERRqlw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-12_07,2022-10-12_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 mlxlogscore=796 priorityscore=1501
 spamscore=0 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210120100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_081606_910273_46364923 
X-CRM114-Status: GOOD (  18.86  )
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

VGhpcyBwYXRjaHNldCBjbGVhbnMgYWxsIHRoZSBkcml2ZXJzIGRpcmVjdGx5IHVzaW5nIHRoZSBp
aW9fZGV2aWNlICdtbG9jaycuDQpUaGlzIGxvY2sgaXMgcHJpdmF0ZSBhbmQgc2hvdWxkIG5vdCBi
ZSB1c2VkIG91dHNpZGUgdGhlIGNvcmUgKG9yIGJ5IHVzaW5nDQpwcm9wZXIgaGVscGVycykuDQoN
Ck1vc3Qgb2YgdGhlIGNvbnZlcnNpb25zIHdoZXJlIHN0cmFpZ2h0LCBidXQgdGhlcmUgYXJlIHNv
bWUgdGhhdCByZWFsbHkgbmVlZA0KZXh0cmEgbG9va2luZy4gTWFpbmx5IHBhdGNoZXMgWzEzLzE1
XSBhbmQgWzE0LzE1XSB3ZXJlIGEgYml0IGhhY2t5IHNpbmNlDQppaW9fZGV2aWNlX2NsYWltX2Rp
cmVjdF9tb2RlKCkgZG9lcyBub3QgZml0IDEwMCUuIFRoZSByZWFzb24gaXMgdGhhdCB3ZQ0Kd2Fu
dCB0byBjaGVjayBpZiB0aGUgZGV2aWNlIGlzIGJ1ZmZlcmluZyBhbmQgZG8gc29tZXRoaW5nIGlm
IGl0IGlzIChpbg0Kd2hpY2ggY2FzZSB0aGUgQVBJIHJldHVybiAtRUJVU1kgYW5kIHJlbGVhc2Vk
IHRoZSBsb2NrLiBJIGp1c3QgdXNlZCBhDQpjb21iaW5hdGlvbnMgb2YgbG9ja3MgdG8gZ2V0IGFy
b3VuZCB0aGlzIChob3BlZnVsbHkgSSBkaWQgbm90IG1lc3NlZCB1cCkuDQoNCk5vdGUgdGhhdCB0
aGlzIHNlcmllcyB3YXMgb25seSBjb21waWxlZCB0ZXN0ZWQgdXNpbmcgYWxseWVzY29uZmlnIGZv
cg0KQVJNLiBJIHJhbiAnZ2l0IGdyZXAnIHRvIG1ha2Ugc3VyZSB0aGVyZSB3ZXJlIG5vIG1vcmUg
dXNlcnMgb2YgJ21sb2NrJy4NCkhvcGVmdWxseSBJIGNvdmVyZWQgdGhlbSBhbGwuLi4NCg0KdjI6
DQoNCltQQVRDSCAxLTgsIDEwLTEyLzE2XQ0KICogTWVudGlvbiB0aGUgaW5jbHVzaW9uIG9mIG11
dGV4LmggaW4gdGhlIGNvbW1pdCBtZXNzYWdlLg0KDQpbUEFUQ0ggMS04LCAxMCwgMTIvMTZdDQog
KiBJbml0aWFsaXplIG11dGV4IGFzIGxhdGUgYXMgcG9zc2libGUuDQpOb3RlIHRoYXQgW1BBVENI
IDExLzE2XSB3YXMgbm90IGluY2x1ZGVkIHNpbmNlIHRoZSBjb2RlIHRvIGRvIHNvIHdhcyBub3QN
CmRpcmVjdCBlbm91Z2guIFdvdWxkIG5lZWQgdG8gZ2V0IGEgcG9pbnRlciB0byB0aGUgcHJpdmF0
ZSBzdHJ1dHVyZQ0Kb3V0c2lkZSBvZiBzY21pX2FsbG9jX2lpb2RldigpIHRvIGRvIGl0LiBXaGls
ZSBub3QgaGFyZCwgdGhlIGFkZGVkIGNoYW5nZXMNCmluIHRoZSBjb2RlIGlzIG5vdCByZWFsbHkg
d29ydGggaXQgKElNTyBvZiBjb3Vyc2UpLg0KDQpbUEFUQ0ggMS8xNl0NCiAqIFJlZmFjdG9yZWQg
dGhlIGNvbW1pdCBtZXNzYWdlIGEgYml0LiBJIGd1ZXNzIHRoaXMgb25lIHdpbGwgc3RpbGwgbmVl
ZHMNCm1vcmUgZGlzY3Vzc2lvbi4uLg0KDQpbUEFUQ0ggOS8xNl0NCiAqIE5ldyBwYXRjaCB0byBh
ZGQgYW4gaGVscGVyIGZ1bmN0aW9uIHRvIHJlYWQgdGhlIHNhbXBsZXMuDQoNCltQQVRDSCAxMy8x
Nl0NCiAqIE5ldyBwYXRjaCB0byBpbnRyb2R1Y2UgaWlvX2RldmljZV97Y2xhaW18cmVsZWFzZX1f
YnVmZmVyX21vZGUoKSBBUElzLg0KDQpbUEFUQ0ggMTQvMTZdDQogKiBNYWtlIHVzZSBvZiB0aGUg
bmV3IGlpb19kZXZpY2Vfe2NsYWltfHJlbGVhc2V9X2J1ZmZlcl9tb2RlKCkgaGVscGVycw0KDQpb
UEFUQ0ggMTUvMTZdDQogKiBNYWtlIHVzZSBvZiB0aGUgbmV3IGlpb19kZXZpY2Vfe2NsYWltfHJl
bGVhc2V9X2J1ZmZlcl9tb2RlKCkgaGVscGVycw0KaW4gY29tYmluYXRpb24gd2l0aCBjbGFpbV9k
aXJlY3RfbW9kZSgpLiBUaGlzIGlzIG5lZWRlZCBzbyB0aGF0IHdlIG1ha2Ugc3VyZQ0Kd2UgYWx3
YXlzIGdldCBvbmUgb2YgdGhlIG1vZGVzIChhbmQgaGVuY2UgdGhlIGlpb19kZXYgbG9jaykgdG8g
c2FmZWx5IGNhbGwNCm1heDMwMTAyX2dldF90ZW1wKCkuIE5vdGUgdGhhdCBJJ20gbm90IHBhcnRp
Y3VsYXIgImhhcHB5IiB3aXRoIHRoZSBjb2RlIGJ1dA0KT1RPSCwgaXQgZG9lcyBub3QgbG9vayBh
cyBiYWQgYXMgSSB0aG91Z2h0IDopLiBBbnl3YXlzLCBpZiB0aGVyZSBhcmUgbm8NCmNvbXBsYWlu
cyB3aXRoIGl0LCBJJ20gb2sgdG8gbGVhdmUgaXQgYXMtaXMuIE90aGVyd2lzZSwgSSB0aGluayB3
ZSBjYW4gdGhpbmsNCm9uIHRoZSBmbGFnIGFwcHJvYWNoIChicmllZmx5IGRpc2N1c3NlZCBpbiB0
aGUgZmlyc3Qgc2VyaWVzKS4NCg0KdjM6DQoNCltQQVRDSCAxLzRdDQogKiBmaXggJ21ha2UgVz0x
JyB3YXJuaW5nIGFib3V0IHByb3RvdHlwZXMgbWlzbWF0Y2guDQoNCltQQVRDSCAyLzRdDQogKiBp
bXByb3ZlZCBjb21taXQgbWVzc2FnZSB0byBleHBsYWluIHdoeSB3ZSBhcmUgc2hhZG93aW5nIGVy
cm9yIGNvZGVzLg0KDQpbUEFUQ0ggNC80XQ0KICogbWlub3IgRW5nbGlzaCBmaXggb24gdGhlIGNv
bW1pdCBtZXNzYWdlIChhcyBzdWdnZXN0ZWQgYnkgQW5keSkuDQoNCk51bm8gU8OhICg0KToNCiAg
aWlvOiBjb3JlOiBpbnRyb2R1Y2UgaWlvX2RldmljZV97Y2xhaW18cmVsZWFzZX1fYnVmZmVyX21v
ZGUoKSBBUElzDQogIGlpbzogaGVhbHRoOiBtYXgzMDEwMDogZG8gbm90IHVzZSBpbnRlcm5hbCBp
aW9fZGV2IGxvY2sNCiAgaWlvOiBoZWFsdGg6IG1heDMwMTAyOiBkbyBub3QgdXNlIGludGVybmFs
IGlpb19kZXYgbG9jaw0KICBpaW86IGNvcmU6IG1vdmUgJ21sb2NrJyB0byAnc3RydWN0IGlpb19k
ZXZfb3BhcXVlJw0KDQogZHJpdmVycy9paW8vVE9ETyAgICAgICAgICAgICAgICAgICB8ICAzIC0t
DQogZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAwLmMgICAgICB8ICA5ICsrLS0tDQogZHJpdmVy
cy9paW8vaGVhbHRoL21heDMwMTAyLmMgICAgICB8IDE5ICsrKysrKystLS0NCiBkcml2ZXJzL2lp
by9pbmR1c3RyaWFsaW8tYnVmZmVyLmMgIHwgMjkgKysrKysrKystLS0tLS0tDQogZHJpdmVycy9p
aW8vaW5kdXN0cmlhbGlvLWNvcmUuYyAgICB8IDU4ICsrKysrKysrKysrKysrKysrKysrKysrKyst
LS0tLQ0KIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1ldmVudC5jICAgfCAgNCArLS0NCiBkcml2
ZXJzL2lpby9pbmR1c3RyaWFsaW8tdHJpZ2dlci5jIHwgMTIgKysrLS0tLQ0KIGluY2x1ZGUvbGlu
dXgvaWlvL2lpby1vcGFxdWUuaCAgICAgfCAgMiArKw0KIGluY2x1ZGUvbGludXgvaWlvL2lpby5o
ICAgICAgICAgICAgfCAgNSArKy0NCiA5IGZpbGVzIGNoYW5nZWQsIDk3IGluc2VydGlvbnMoKyks
IDQ0IGRlbGV0aW9ucygtKQ0KDQotLSANCjIuMzguMA0KDQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
