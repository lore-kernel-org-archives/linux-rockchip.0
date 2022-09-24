Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B11FCC07E9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 14:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ieq2VvIwZxVqE+UOh5gvqC8dbFBAdSz0cBx8IVKHU6w=; b=10LLiP/6vt7nFV
	nlWSox+PsLstpszw9FD1s5EqYzGlrRDspjAmM2DDX58bJHZ8iD0jPheHeG7AEeG+HrkhVncxWaE4W
	ojGW/AbN+r15YCNwrFFtx/KXbFCkfl3Wrd8kdu5UpgAPGZXWszLQpzrlNdSmhsppL8JeZ8C4qjCdG
	JIU2kknfA9LapnmYvp2/2egBj1I3OaNs5B+gfUQaZU9PtMaxMKum/USqW9Yd4JCfmpQRCL30LPkpm
	cz5/ocKrDUlhuNUbrqKF2jon3eG6rahKtGsNydXPN2tTl216u8zaUBO6twEVnSgEjN1uBVRfxKLY5
	YzMZw/xXN04aTduEoXDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc6PT-007SEf-VP; Sat, 24 Sep 2022 14:45:40 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc6P9-007S3u-8G; Sat, 24 Sep 2022 14:45:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B08B2B8100F;
	Sat, 24 Sep 2022 14:45:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 288CFC433D6;
	Sat, 24 Sep 2022 14:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664030715;
	bh=UffGNaz7rGWSvwZEAeWcih42X65ZeRwe+5tP0CQeZtQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=mvLUuOHSDhTf1V1L5QzFkqfO4jSEa8QzLj0/FxGICZ67RfIVvYDI2xj63pk4MHr6J
	 GCurpnbB3+bvf/HFnbO2mzg+gqXWKH6bSTuxokSj5w+wWaQDtgdVHcGIbRb/NswAoT
	 IBRUU/CN8kc6CRzpbyoEqAqxILxcB85Z1uxCg2aXBW9/ws68XOWjU5OsfBluHNJ/fv
	 lOHL4RfWYxVAoE9ORLZ/Vav2JgMagcW9obUy/8TY74cxxrZL7SrkP6eOIFUhF/OCON
	 JrZ++QEejWFNwcN15u0IGQVcIRrkwAGB6+2DmXgTtYk/DSq9bXyo0dYqNnvMS67B0a
	 YSKYmE5MkgQrg==
Date: Sat, 24 Sep 2022 15:45:17 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>
Cc: <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
 <linux-imx@nxp.com>, <linux-iio@vger.kernel.org>, Chunyan Zhang
 <zhang.lyra@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman
 <khilman@baylibre.com>, Vladimir Zapolskiy <vz@mleia.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Alexandru Ardelean
 <aardelean@deviqon.com>, Fabio Estevam <festevam@gmail.com>, Andriy
 Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen
 <haibo.chen@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, Florian
 Boor <florian.boor@kernelconcepts.de>, Ciprian Regus
 <ciprian.regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jyoti Bhayana <jbhayana@google.com>, Chen-Yu Tsai <wens@csie.org>, Orson
 Zhai <orsonzhai@gmail.com>
Subject: Re: [PATCH 02/15] iio: adc: ad799x: do not use internal iio_dev
 lock
Message-ID: <20220924154517.6672e964@jic23-huawei>
In-Reply-To: <20220920112821.975359-3-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-3-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_074519_618119_AF42D639 
X-CRM114-Status: GOOD (  28.63  )
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

T24gVHVlLCAyMCBTZXAgMjAyMiAxMzoyODowOCArMDIwMApOdW5vIFPDoSA8bnVuby5zYUBhbmFs
b2cuY29tPiB3cm90ZToKCj4gJ21sb2NrJyB3YXMgYmVpbmcgZ3JhYmJlZCB3aGVuIHNldHRpbmcg
dGhlIGRldmljZSBmcmVxdWVuY3kuIEluIG9yZGVyIHRvCj4gbm90IGludHJvZHVjZSBhbnkgZnVu
Y3Rpb25hbCBjaGFuZ2UgYSBuZXcgbG9jayBpcyBhZGRlZC4gV2l0aCB0aGF0IGluCj4gbWluZCwg
dGhlIGxvY2sgYWxzbyBuZWVkcyB0byBiZSBncmFiYmVkIGluIHRoZSBwbGFjZXMgd2hlcmUgJ21s
b2NrJyBpcy4KClRoZSB1c2FnZSBpbiBoZXJlIGlzIGFuIGV4YW1wbGUgb2Ygd2h5IHdlIG9yaWdp
bmFsbHkgZGVjaWRlZCB0byB0YWtlIG1sb2NrCnByaXZhdGUuLi4gIEFubm95aW5nIGhhcmQgdG8g
cmVhc29uIGFib3V0LiAgT25lIGtleSB0aGluZyB0aGlzIGRlc2NyaXB0aW9uCmRvZXNuJ3QgbWVu
dGlvbiBpcyBwcm90ZWN0aW9uIG9mIHN0LT5jb25maWcgdnMgZGV2aWNlIHN0YXRlIGFuZCBJIHRo
aW5rCnRoZSBvcmlnaW5hbCB1c2FnZSBvZiBtbG9jayBpcyBwYXJ0bHkgaW50ZW5kZWQgdG8gcHJv
dGVjdCB0aGF0LgoKVXBzaG90IGlzIEknbSBub3QgY29uZmlkZW50IGVub3VnaCBvbiB0aGlzIG9u
ZSB0byBiZSBoYXBweSB0YWtpbmcgaXQgd2l0aG91dAptb3JlIGhlYWQgc2NyYXRjaGluZyBvciBz
b21lIHJldmlldyBmcm9tIG90aGVycyEKCj4gCj4gT24gdGhlIG90aGVyIHBsYWNlcyB0aGUgbG9j
ayB3YXMgYmVpbmcgdXNlZCwgd2UgY2FuIGp1c3QgZHJvcAo+IGl0IHNpbmNlIHdlIGFyZSBvbmx5
IGRvaW5nIG9uZSBpMmMgYnVzIHJlYWQvd3JpdGUgd2hpY2ggaXMgYWxyZWFkeQo+IHNhZmUuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KCj4gLS0tCj4g
IGRyaXZlcnMvaWlvL2FkYy9hZDc5OXguYyB8IDE4ICsrKysrKysrKysrKy0tLS0tLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9paW8vYWRjL2FkNzk5eC5jIGIvZHJpdmVycy9paW8vYWRjL2FkNzk5eC5j
Cj4gaW5kZXggMjYyYmQ3NjY1YjMzLi44MzhiYThlNzdkZTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9paW8vYWRjL2FkNzk5eC5jCj4gKysrIGIvZHJpdmVycy9paW8vYWRjL2FkNzk5eC5jCj4gQEAg
LTI4LDYgKzI4LDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4gICNpbmNsdWRlIDxs
aW51eC9lcnIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvbXV0ZXguaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgo+ICAKPiAgI2luY2x1ZGUg
PGxpbnV4L2lpby9paW8uaD4KPiBAQCAtMTI1LDYgKzEyNiw4IEBAIHN0cnVjdCBhZDc5OXhfc3Rh
dGUgewo+ICAJY29uc3Qgc3RydWN0IGFkNzk5eF9jaGlwX2NvbmZpZwkqY2hpcF9jb25maWc7Cj4g
IAlzdHJ1Y3QgcmVndWxhdG9yCQkqcmVnOwo+ICAJc3RydWN0IHJlZ3VsYXRvcgkJKnZyZWY7Cj4g
KwkvKiBsb2NrIHRvIHByb3RlY3QgYWdhaW5zdCBtdWx0aXBsZSBhY2Nlc3MgdG8gdGhlIGRldmlj
ZSAqLwo+ICsJc3RydWN0IG11dGV4CQkJbG9jazsKPiAgCXVuc2lnbmVkCQkJaWQ7Cj4gIAl1MTYJ
CQkJY29uZmlnOwo+ICAKPiBAQCAtMjkwLDcgKzI5Myw5IEBAIHN0YXRpYyBpbnQgYWQ3OTl4X3Jl
YWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gIAkJcmV0ID0gaWlvX2RldmljZV9j
bGFpbV9kaXJlY3RfbW9kZShpbmRpb19kZXYpOwo+ICAJCWlmIChyZXQpCj4gIAkJCXJldHVybiBy
ZXQ7Cj4gKwkJbXV0ZXhfbG9jaygmc3QtPmxvY2spOwoKSWYgd2UgY2xhaW0gZGlyZWN0IG1vZGUg
Zm9yIHRoZSBmcmVxdWVuY3kgd3JpdGluZyB3ZSdsbCBhdm9pZCByYWNpbmcgd2l0aApidWZmZXJz
IGJlaW5nIGVuYWJsZWQgb3Igb3RoZXIgc3lzZnMgYWNjZXNzZXMgdGhhdCBhcmUgY2xhaW1pbmcg
ZGlyZWN0IG1vZGUuCgpUaGF0IG1hZGUgbWUgdGhpbmsgd2UgY291bGQgZHJvcCB0aGUgbG9jaywg
YnV0IHRoZSBhcmd1bWVudCBnZXRzIHRyaWNrZXIKYXJvdW5kIHN0LT5jb25maWcgd2hpY2ggaXMg
dXNlZCBpbiBhZDc5OXhfc2Nhbl9kaXJlY3QoKSBhbmQgbW9kaWZpZWQKaW4gd3JpdGVfZXZlbnRf
Y29uZmlnKCkgaW4gYSBmYXNoaW9uIHRoYXQgbWVhbnMgaXQgY291bGQgYmUgb3V0IG9mIHN5bmMu
CkknbSBub3Qgc3VyZSB0aGF0IG1hdHRlcnMgYnV0IGl0IGlzIGdldHRpbmcgaGFyZCB0byByZWFz
b24gYWJvdXQuCgoKPiAgCQlyZXQgPSBhZDc5OXhfc2Nhbl9kaXJlY3Qoc3QsIGNoYW4tPnNjYW5f
aW5kZXgpOwo+ICsJCW11dGV4X3VubG9jaygmc3QtPmxvY2spOwo+ICAJCWlpb19kZXZpY2VfcmVs
ZWFzZV9kaXJlY3RfbW9kZShpbmRpb19kZXYpOwo+ICAKPiAgCQlpZiAocmV0IDwgMCkKPiBAQCAt
MzUxLDcgKzM1Niw4IEBAIHN0YXRpYyBzc2l6ZV90IGFkNzk5eF93cml0ZV9mcmVxdWVuY3koc3Ry
dWN0IGRldmljZSAqZGV2LAo+ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0Owo+ICAKPiAtCW11
dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsJbXV0ZXhfbG9jaygmc3QtPmxvY2spOwo+
ICsKPiAgCXJldCA9IGkyY19zbWJ1c19yZWFkX2J5dGVfZGF0YShzdC0+Y2xpZW50LCBBRDc5OThf
Q1lDTEVfVE1SX1JFRyk7Cj4gIAlpZiAocmV0IDwgMCkKPiAgCQlnb3RvIGVycm9yX3JldF9tdXRl
eDsKPiBAQCAtMzczLDcgKzM3OSw3IEBAIHN0YXRpYyBzc2l6ZV90IGFkNzk5eF93cml0ZV9mcmVx
dWVuY3koc3RydWN0IGRldmljZSAqZGV2LAo+ICAJcmV0ID0gbGVuOwo+ICAKPiAgZXJyb3JfcmV0
X211dGV4Ogo+IC0JbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKPiArCW11dGV4X3Vu
bG9jaygmc3QtPmxvY2spOwo+ICAKPiAgCXJldHVybiByZXQ7Cj4gIH0KPiBAQCAtNDA3LDYgKzQx
Myw4IEBAIHN0YXRpYyBpbnQgYWQ3OTl4X3dyaXRlX2V2ZW50X2NvbmZpZyhzdHJ1Y3QgaWlvX2Rl
diAqaW5kaW9fZGV2LAo+ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0Owo+ICAKPiArCW11dGV4
X2xvY2soJnN0LT5sb2NrKTsKPiArCkkgdGhpbmsgeW91IGRvIG5lZWQgdGhlIGxvY2sgaGVyZSBh
bmQgaW4gb3RoZXIgcGxhY2VzIHdoZXJlIHlvdSB3YW50IHRvIGVuc3VyZSB0aGUKc3QtPmNvbmZp
ZyBzdGF0ZSBtYXRjaGVzIHRoYXQgb2YgdGhlIGRldmljZS4KCj4gIAlpZiAoc3RhdGUpCj4gIAkJ
c3QtPmNvbmZpZyB8PSBCSVQoY2hhbi0+c2Nhbl9pbmRleCkgPDwgQUQ3OTlYX0NIQU5ORUxfU0hJ
RlQ7Cj4gIAllbHNlCj4gQEAgLTQxOCw2ICs0MjYsNyBAQCBzdGF0aWMgaW50IGFkNzk5eF93cml0
ZV9ldmVudF9jb25maWcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKPiAgCQlzdC0+Y29uZmln
ICY9IH5BRDc5OThfQUxFUlRfRU47Cj4gIAo+ICAJcmV0ID0gYWQ3OTl4X3dyaXRlX2NvbmZpZyhz
dCwgc3QtPmNvbmZpZyk7Cj4gKwltdXRleF91bmxvY2soJnN0LT5sb2NrKTsKPiAgCWlpb19kZXZp
Y2VfcmVsZWFzZV9kaXJlY3RfbW9kZShpbmRpb19kZXYpOwo+ICAJcmV0dXJuIHJldDsKPiAgfQo+
IEBAIC00NTQsMTEgKzQ2Myw5IEBAIHN0YXRpYyBpbnQgYWQ3OTl4X3dyaXRlX2V2ZW50X3ZhbHVl
KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gIAlpZiAodmFsIDwgMCB8fCB2YWwgPiBHRU5N
QVNLKGNoYW4tPnNjYW5fdHlwZS5yZWFsYml0cyAtIDEsIDApKQo+ICAJCXJldHVybiAtRUlOVkFM
Owo+ICAKPiAtCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICAJcmV0ID0gaTJjX3Nt
YnVzX3dyaXRlX3dvcmRfc3dhcHBlZChzdC0+Y2xpZW50LAo+ICAJCWFkNzk5eF90aHJlc2hvbGRf
cmVnKGNoYW4sIGRpciwgaW5mbyksCj4gIAkJdmFsIDw8IGNoYW4tPnNjYW5fdHlwZS5zaGlmdCk7
Cj4gLQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICAKPiAgCXJldHVybiByZXQ7
Cj4gIH0KPiBAQCAtNDczLDEwICs0ODAsOCBAQCBzdGF0aWMgaW50IGFkNzk5eF9yZWFkX2V2ZW50
X3ZhbHVlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gIAlpbnQgcmV0Owo+ICAJc3RydWN0
IGFkNzk5eF9zdGF0ZSAqc3QgPSBpaW9fcHJpdihpbmRpb19kZXYpOwo+ICAKPiAtCW11dGV4X2xv
Y2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICAJcmV0ID0gaTJjX3NtYnVzX3JlYWRfd29yZF9zd2Fw
cGVkKHN0LT5jbGllbnQsCj4gIAkJYWQ3OTl4X3RocmVzaG9sZF9yZWcoY2hhbiwgZGlyLCBpbmZv
KSk7Cj4gLQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICAJaWYgKHJldCA8IDAp
Cj4gIAkJcmV0dXJuIHJldDsKPiAgCSp2YWwgPSAocmV0ID4+IGNoYW4tPnNjYW5fdHlwZS5zaGlm
dCkgJgo+IEBAIC03ODUsNiArNzkwLDcgQEAgc3RhdGljIGludCBhZDc5OXhfcHJvYmUoc3RydWN0
IGkyY19jbGllbnQgKmNsaWVudCwKPiAgCQlyZXR1cm4gLUVOT01FTTsKPiAgCj4gIAlzdCA9IGlp
b19wcml2KGluZGlvX2Rldik7Cj4gKwltdXRleF9pbml0KCZzdC0+bG9jayk7Cj4gIAkvKiB0aGlz
IGlzIG9ubHkgdXNlZCBmb3IgZGV2aWNlIHJlbW92YWwgcHVycG9zZXMgKi8KPiAgCWkyY19zZXRf
Y2xpZW50ZGF0YShjbGllbnQsIGluZGlvX2Rldik7Cj4gIAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
