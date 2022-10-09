Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29CC3C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 12:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHL0+TpJCqKak0+Z7PhULmStLq5iLfcOMfPoABKobKU=; b=FNR9XmNJZHkfrP
	Vdcw8cqE5OGJATQ9w8LaqjTbuOnyUzfl84tJiwRdovYZzDerQg+U0/78OeRZH3R/GBVsEEHH76tje
	2ikRs9HN9HWzGDDS3onp48txOVXxpYZfqvcbwJrjCa6d6vXS8SuqwSA1pucGjX54kFpFiMILlXIaE
	QUC7EGblxbRHiY31Gg1ixD8PykGcLBYj6syjgANwH79YcSNpXAeL5vRaDgBv4yK9V5pD0BaEzsvUd
	G4cGG42urJnUTAPA0Zlbz9hbhZkY2poEmNb+ttMFT8SoEfifoMJRFsJWVO0ATiqmBg2ohZv/guDMt
	sHikCdn+P90p9OcBe2+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohV3V-00FUWx-AF; Sun, 09 Oct 2022 12:05:17 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohV3E-00FURC-OX; Sun, 09 Oct 2022 12:05:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 76ADCB80B98;
	Sun,  9 Oct 2022 12:04:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23204C433D6;
	Sun,  9 Oct 2022 12:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665317098;
	bh=UUCZHXapQyYG+PCcsykDS/jTdAwtKZAWa480AhmIzmU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fTqp+PAqjIuheUuS7P083sCwCi35OJvowvlCPgDV5yKkGn10rR8W/K8Je+IRtEBJy
	 U+KhDCToklH/7+gahUL/UUlKLXXGImVYXoG81w37/M723eZh2V4PIImRHWrjFjrKWC
	 GjbxVxVDkIyhaBZ3u/FpIW14akHYrE/XLam+B8AYojMNxjTEfU/0Gx0uL6p4QdbFcq
	 X8aB04iMXBMQI+Cg9JvaG+UX/KJTRmNnTWZIUBpjmUO0Q46gSCH6utIj8i6bAjRAWz
	 ntxo94afrTemoJB5VUwCS1tA/KnKjWSj+cJ0O5Cd8rmDPtOoOOmLX9291GHS9f9phM
	 fke+gqQU+4/xg==
Date: Sun, 9 Oct 2022 13:05:14 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>
Cc: <linux-amlogic@lists.infradead.org>, <linux-imx@nxp.com>,
 <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, Hans de
 Goede <hdegoede@redhat.com>, Andriy Tryshnivskyy
 <andriy.tryshnivskyy@opensynergy.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Miquel Raynal <miquel.raynal@bootlin.com>, Cixi
 Geng <cixi.geng1@unisoc.com>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 Ciprian Regus <ciprian.regus@analog.com>, Fabio Estevam
 <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandru
 Ardelean <aardelean@deviqon.com>, Florian Boor
 <florian.boor@kernelconcepts.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, Chen-Yu
 Tsai <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir
 Zapolskiy <vz@mleia.com>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen <haibo.chen@nxp.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2 08/16] iio: adc: sc27xx_adc: do not use internal
 iio_dev lock
Message-ID: <20221009130514.133eff43@jic23-huawei>
In-Reply-To: <20221004134909.1692021-9-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-9-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_050501_095121_AAE67664 
X-CRM114-Status: GOOD (  18.33  )
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

T24gVHVlLCA0IE9jdCAyMDIyIDE1OjQ5OjAxICswMjAwCk51bm8gU8OhIDxudW5vLnNhQGFuYWxv
Zy5jb20+IHdyb3RlOgoKPiBUaGUgaWlvX2RldmljZSBsb2NrIGlzIG9ubHkgbWVhbnQgZm9yIGlu
dGVybmFsIHVzZS4gSGVuY2UgZGVmaW5lIGEKPiBkZXZpY2UgbG9jYWwgbG9jayB0byBwcm90ZWN0
IGFnYWluc3QgY29uY3VycmVudCBhY2Nlc3Nlcy4KPiAKPiBXaGlsZSBhdCBpdCwgcHJvcGVybHkg
aW5jbHVkZSAibXV0ZXguaCIgZm9yIG11dGV4IHJlbGF0ZWQgQVBJcy4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgpBcHBsaWVkLiBQdXNoZWQgb3V0IGFz
IHRlc3RpbmcgZm9yIG5vdywgd2lsbCByZWJhc2UgYWZ0ZXIgcmMxLgoKVGhhbmtzLAoKSgo+IC0t
LQo+ICBkcml2ZXJzL2lpby9hZGMvc2MyN3h4X2FkYy5jIHwgMTQgKysrKysrKysrKy0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9zYzI3eHhfYWRjLmMgYi9kcml2ZXJzL2lpby9hZGMv
c2MyN3h4X2FkYy5jCj4gaW5kZXggZjg0MjFjYmJhOGZhLi5mZjFmYzMyOWJiOWIgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9paW8vYWRjL3NjMjd4eF9hZGMuYwo+ICsrKyBiL2RyaXZlcnMvaWlvL2Fk
Yy9zYzI3eHhfYWRjLmMKPiBAQCAtNCw2ICs0LDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2h3c3Bp
bmxvY2suaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2lpby9paW8uaD4KPiAgI2luY2x1ZGUgPGxpbnV4
L21vZHVsZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KPiAgI2luY2x1ZGUgPGxpbnV4
L252bWVtLWNvbnN1bWVyLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ICAjaW5jbHVkZSA8
bGludXgvb2ZfZGV2aWNlLmg+Cj4gQEAgLTgzLDYgKzg0LDggQEAgc3RydWN0IHNjMjd4eF9hZGNf
ZGF0YSB7Cj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXY7Cj4gIAlzdHJ1Y3QgcmVndWxhdG9yICp2b2xy
ZWY7Cj4gIAlzdHJ1Y3QgcmVnbWFwICpyZWdtYXA7Cj4gKwkvKiBsb2NrIHRvIHByb3RlY3QgYWdh
aW5zdCBtdWx0aXBsZSBhY2Nlc3MgdG8gdGhlIGRldmljZSAqLwo+ICsJc3RydWN0IG11dGV4IGxv
Y2s7Cj4gIAkvKgo+ICAJICogT25lIGhhcmR3YXJlIHNwaW5sb2NrIHRvIHN5bmNocm9uaXplIGJl
dHdlZW4gdGhlIG11bHRpcGxlCj4gIAkgKiBzdWJzeXN0ZW1zIHdoaWNoIHdpbGwgYWNjZXNzIHRo
ZSB1bmlxdWUgQURDIGNvbnRyb2xsZXIuCj4gQEAgLTY2NCw5ICs2NjcsOSBAQCBzdGF0aWMgaW50
IHNjMjd4eF9hZGNfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKPiAgCj4gIAlz
d2l0Y2ggKG1hc2spIHsKPiAgCWNhc2UgSUlPX0NIQU5fSU5GT19SQVc6Cj4gLQkJbXV0ZXhfbG9j
aygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKwkJbXV0ZXhfbG9jaygmZGF0YS0+bG9jayk7Cj4gIAkJ
cmV0ID0gc2MyN3h4X2FkY19yZWFkKGRhdGEsIGNoYW4tPmNoYW5uZWwsIHNjYWxlLCAmdG1wKTsK
PiAtCQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsJCW11dGV4X3VubG9jaygm
ZGF0YS0+bG9jayk7Cj4gIAo+ICAJCWlmIChyZXQpCj4gIAkJCXJldHVybiByZXQ7Cj4gQEAgLTY3
NSwxMCArNjc4LDEwIEBAIHN0YXRpYyBpbnQgc2MyN3h4X2FkY19yZWFkX3JhdyhzdHJ1Y3QgaWlv
X2RldiAqaW5kaW9fZGV2LAo+ICAJCXJldHVybiBJSU9fVkFMX0lOVDsKPiAgCj4gIAljYXNlIElJ
T19DSEFOX0lORk9fUFJPQ0VTU0VEOgo+IC0JCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2sp
Owo+ICsJCW11dGV4X2xvY2soJmRhdGEtPmxvY2spOwo+ICAJCXJldCA9IHNjMjd4eF9hZGNfcmVh
ZF9wcm9jZXNzZWQoZGF0YSwgY2hhbi0+Y2hhbm5lbCwgc2NhbGUsCj4gIAkJCQkJCSZ0bXApOwo+
IC0JCW11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKwkJbXV0ZXhfdW5sb2NrKCZk
YXRhLT5sb2NrKTsKPiAgCj4gIAkJaWYgKHJldCkKPiAgCQkJcmV0dXJuIHJldDsKPiBAQCAtOTM0
LDYgKzkzNyw5IEBAIHN0YXRpYyBpbnQgc2MyN3h4X2FkY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ICAJaW5kaW9fZGV2LT5pbmZvID0gJnNjMjd4eF9pbmZvOwo+ICAJaW5k
aW9fZGV2LT5jaGFubmVscyA9IHNjMjd4eF9jaGFubmVsczsKPiAgCWluZGlvX2Rldi0+bnVtX2No
YW5uZWxzID0gQVJSQVlfU0laRShzYzI3eHhfY2hhbm5lbHMpOwo+ICsKPiArCW11dGV4X2luaXQo
JnNjMjd4eF9kYXRhLT5sb2NrKTsKPiArCj4gIAlyZXQgPSBkZXZtX2lpb19kZXZpY2VfcmVnaXN0
ZXIoZGV2LCBpbmRpb19kZXYpOwo+ICAJaWYgKHJldCkKPiAgCQlkZXZfZXJyKGRldiwgImNvdWxk
IG5vdCByZWdpc3RlciBpaW8gKEFEQykiKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
