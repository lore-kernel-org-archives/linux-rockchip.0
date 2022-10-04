Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F16F6C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nfokhf0VZ5b1pQaGhyj1iyKejvvck3oX8AtGFIuo5Vs=; b=1VZmvQ2IFIPhfx
	htBRub8UkNtYu3zWWdrw5XqeSmWM4MHKdNCL3/NAaNApkcPcpQXT8b6b7MnlOii/N/4o8saXQxAiA
	yzbXtQQCyryFkIp1H2SBQl7yltG8jMFSWgXB1Whu/js9Y80npm3ulwSY62TtCVKaUX9sBPcf+iMeD
	2zFRMURqEztUQHxL39f4Nbu0BHrQPReG7ITQGrqQjq6lsqpbhZOtyiuzUGP+T/7oUFPTZusIb5Ihn
	8r80JRE8vsfY9pw8Z5tXRMuCrcAf+U5Eae/dg1Ten2vgNzXSDTj57FN+7/Y2+aNQhvrBz5hO1fkeT
	e7yRkfkHUo+2d0sU2oxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIU-009lox-14; Tue, 04 Oct 2022 13:49:22 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiI1-009lbZ-HY; Tue, 04 Oct 2022 13:48:55 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294Dbamp005506;
	Tue, 4 Oct 2022 09:48:29 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxfd73nf6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:48:28 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 294DmRSc001528
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:48:27 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 4 Oct 2022
 09:48:26 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:48:26 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVX032663;
	Tue, 4 Oct 2022 09:47:49 -0400
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
Subject: [PATCH v2 00/16] Make 'mlock' really private
Date: Tue, 4 Oct 2022 15:48:53 +0200
Message-ID: <20221004134909.1692021-1-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: PTY91YZxN3rY6kTbfI0Li0-AOheAoNfO
X-Proofpoint-ORIG-GUID: PTY91YZxN3rY6kTbfI0Li0-AOheAoNfO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 mlxlogscore=495 clxscore=1011 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064853_608910_5E403DB5 
X-CRM114-Status: GOOD (  17.81  )
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
aGUgZmlyc3Qgc2VyaWVzKS4NCg0KTnVubyBTw6EgKDE2KToNCiAgaWlvOiBhZGM6IGFkNzk5eDog
ZG8gbm90IHVzZSBpbnRlcm5hbCBpaW9fZGV2IGxvY2sNCiAgaWlvOiBhZGM6IGF4cDI4OF9hZGM6
IGRvIG5vdCB1c2UgaW50ZXJuYWwgaWlvX2RldiBsb2NrDQogIGlpbzogYWRjOiBpbXg3ZF9hZGM6
IGRvIG5vdCB1c2UgaW50ZXJuYWwgaWlvX2RldiBsb2NrDQogIGlpbzogYWRjOiBscGMzMnh4X2Fk
YzogZG8gbm90IHVzZSBpbnRlcm5hbCBpaW9fZGV2IGxvY2sNCiAgaWlvOiBhZGM6IGx0YzI5NDct
Y29yZTogZG8gbm90IHVzZSBpbnRlcm5hbCBpaW9fZGV2IGxvY2sNCiAgaWlvOiBhZGM6IG1lc29u
X3NhcmFkYzogZG8gbm90IHVzZSBpbnRlcm5hbCBpaW9fZGV2IGxvY2sNCiAgaWlvOiBhZGM6IHJv
Y2tjaGlwX3NhcmFkYzogZG8gbm90IHVzZSBpbnRlcm5hbCBpaW9fZGV2IGxvY2sNCiAgaWlvOiBh
ZGM6IHNjMjd4eF9hZGM6IGRvIG5vdCB1c2UgaW50ZXJuYWwgaWlvX2RldiBsb2NrDQogIGlpbzog
YWRjOiB2ZjYxMF9hZGM6IGFkZCBoZWxwZXIgZnVuY3Rpb24gdG8gcmVhZCBzYW1wbGVzDQogIGlp
bzogYWRjOiB2ZjYxMF9hZGM6IHZmNjEwX2FkYzogZG8gbm90IHVzZSBpbnRlcm5hbCBpaW9fZGV2
IGxvY2sNCiAgaWlvOiBjb21tb246IHNjbWlfaWlvOiBkbyBub3QgdXNlIGludGVybmFsIGlpb19k
ZXYgbG9jaw0KICBpaW86IGd5cm86IGl0ZzMyMDBfY29yZTogZG8gbm90IHVzZSBpbnRlcm5hbCBp
aW9fZGV2IGxvY2sNCiAgaWlvOiBjb3JlOiBpbnRyb2R1Y2UgaWlvX2RldmljZV97Y2xhaW18cmVs
ZWFzZX1fYnVmZmVyX21vZGUoKSBBUElzDQogIGlpbzogaGVhbHRoOiBtYXgzMDEwMDogZG8gbm90
IHVzZSBpbnRlcm5hbCBpaW9fZGV2IGxvY2sNCiAgaWlvOiBoZWFsdGg6IG1heDMwMTAyOiBkbyBu
b3QgdXNlIGludGVybmFsIGlpb19kZXYgbG9jaw0KICBpaW86IGNvcmU6IG1vdmUgJ21sb2NrJyB0
byAnc3RydWN0IGlpb19kZXZfb3BhcXVlJw0KDQogZHJpdmVycy9paW8vVE9ETyAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAzIC0NCiBkcml2ZXJzL2lpby9hZGMvYWQ3OTl4LmMgICAgICAg
ICAgICAgICAgICAgfCAgMjAgKystLQ0KIGRyaXZlcnMvaWlvL2FkYy9heHAyODhfYWRjLmMgICAg
ICAgICAgICAgICB8ICAxMCArLQ0KIGRyaXZlcnMvaWlvL2FkYy9pbXg3ZF9hZGMuYyAgICAgICAg
ICAgICAgICB8ICAxNCArKy0NCiBkcml2ZXJzL2lpby9hZGMvbHBjMzJ4eF9hZGMuYyAgICAgICAg
ICAgICAgfCAgMTEgKystDQogZHJpdmVycy9paW8vYWRjL2x0YzI0OTctY29yZS5jICAgICAgICAg
ICAgIHwgICA3ICstDQogZHJpdmVycy9paW8vYWRjL2x0YzI0OTcuaCAgICAgICAgICAgICAgICAg
IHwgICAyICsNCiBkcml2ZXJzL2lpby9hZGMvbWVzb25fc2FyYWRjLmMgICAgICAgICAgICAgfCAg
MTEgKystDQogZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jICAgICAgICAgIHwgIDE1
ICsrLQ0KIGRyaXZlcnMvaWlvL2FkYy9zYzI3eHhfYWRjLmMgICAgICAgICAgICAgICB8ICAxNCAr
Ky0NCiBkcml2ZXJzL2lpby9hZGMvdmY2MTBfYWRjLmMgICAgICAgICAgICAgICAgfCAxMDQgKysr
KysrKysrKysrLS0tLS0tLS0tDQogZHJpdmVycy9paW8vY29tbW9uL3NjbWlfc2Vuc29ycy9zY21p
X2lpby5jIHwgICA5ICstDQogZHJpdmVycy9paW8vZ3lyby9pdGczMjAwX2NvcmUuYyAgICAgICAg
ICAgIHwgIDEwICstDQogZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAwLmMgICAgICAgICAgICAg
IHwgICA5ICstDQogZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAyLmMgICAgICAgICAgICAgIHwg
IDE5ICsrKy0NCiBkcml2ZXJzL2lpby9pbmR1c3RyaWFsaW8tYnVmZmVyLmMgICAgICAgICAgfCAg
MjkgKysrLS0tDQogZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLWNvcmUuYyAgICAgICAgICAgIHwg
IDU4ICsrKysrKysrKystLQ0KIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1ldmVudC5jICAgICAg
ICAgICB8ICAgNCArLQ0KIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby10cmlnZ2VyLmMgICAgICAg
ICB8ICAxMiArLS0NCiBpbmNsdWRlL2xpbnV4L2lpby9neXJvL2l0ZzMyMDAuaCAgICAgICAgICAg
fCAgIDIgKw0KIGluY2x1ZGUvbGludXgvaWlvL2lpby1vcGFxdWUuaCAgICAgICAgICAgICB8ICAg
MiArDQogaW5jbHVkZS9saW51eC9paW8vaWlvLmggICAgICAgICAgICAgICAgICAgIHwgICA1ICst
DQogMjIgZmlsZXMgY2hhbmdlZCwgMjQ5IGluc2VydGlvbnMoKyksIDEyMSBkZWxldGlvbnMoLSkN
Cg0KLS0gDQoyLjM3LjMNCg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
