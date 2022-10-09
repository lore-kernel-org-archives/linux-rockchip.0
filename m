Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8853C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 11:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dMCQhW1PSBFphmTahPzWn0TS0jCWtbiuQSpeFS20FU=; b=yPOIUX1gyYqCED
	MKKOI/MqnoRa482lncu8KsEDi1i2Dc2BtIjsbx3LPkaKX9IyCF+C2lFE9rHwH/JgQjoRtpg7bVvE/
	me5/XpquHzu0JY2BP5+v4WAkA/yvaGZfFmRydvutK7J03iGwnEHJJGNSKiEiwq8+9Xh7AeOfsWonc
	4B4JYWpd4gosSkaC8PNbF72MB/gFCxiA+Qj36mse+5Snq/a5ZYHle1djkMXuNeoF4c4V7JoIWcm3X
	eWzMSTsnuKXQy2bqad8LEPy9oPJZ9EzYqRd+Jq0oR4svI0I0fgdHqOeoa4FogG6YzLjM1GiMcV6k7
	3IJLpfwJiuqKbKonDVlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUs2-00FRO8-CC; Sun, 09 Oct 2022 11:53:26 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUrp-00FRJd-3s; Sun, 09 Oct 2022 11:53:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B8ED4B80D13;
	Sun,  9 Oct 2022 11:53:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B41A9C433C1;
	Sun,  9 Oct 2022 11:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665316390;
	bh=qsz74MmjKWXTto8e5NlBeLW2eYHp/fAnJa9dnoOj1dY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=vAsj/eVfy/Bu0FlYaK5w/yTiBn0ZZnFK3U9RA6uubKcIjBc2B2ULHE6hlJOI1P2TH
	 rTMkY4uFtGzommk4xLfXFe6IXpJrPOpaSenIwSEhuy/OvWxTGD+OmjjQd/vhsQqmLM
	 lZTGPWvYsuWxavdsn0m1iOiOpCq6cj+7w22jB5Jb+xfcSAkslY1ZOV5ksESVhLq5gO
	 2rkdYYgqGrxOUV8P/I/2GA6t+58+626tu1rsjJt4Etv1+lfnW98HtNBmgtDJHWE35d
	 v4lTt5OEXmmYzTjap77DYlu9rH7eGLMM6dFaRKJvNqghUF0QxIyssOeCy28XkqlwGm
	 oVnZ7RvSy7qig==
Date: Sun, 9 Oct 2022 12:53:26 +0100
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
Subject: Re: [PATCH v2 01/16] iio: adc: ad799x: do not use internal iio_dev
 lock
Message-ID: <20221009125326.038e1469@jic23-huawei>
In-Reply-To: <20221004134909.1692021-2-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-2-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_045313_478605_9EDD4A39 
X-CRM114-Status: GOOD (  24.07  )
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

T24gVHVlLCA0IE9jdCAyMDIyIDE1OjQ4OjU0ICswMjAwCk51bm8gU8OhIDxudW5vLnNhQGFuYWxv
Zy5jb20+IHdyb3RlOgoKPiAnbWxvY2snIHdhcyBiZWluZyBncmFiYmVkIHdoZW4gc2V0dGluZyB0
aGUgZGV2aWNlIGZyZXF1ZW5jeS4gSW4gb3JkZXIgdG8KPiBub3QgaW50cm9kdWNlIGFueSBmdW5j
dGlvbmFsIGNoYW5nZSBhIG5ldyBsb2NrIGlzIGFkZGVkLiBXaXRoIHRoYXQgaW4KPiBtaW5kLCB0
aGUgbG9jayBhbHNvIG5lZWRzIHRvIGJlIGdyYWJiZWQgaW4gdGhlIHBsYWNlcyB3aGVyZSAnbWxv
Y2snIGlzCj4gc2luY2UgaXQgd2FzIGFsc28gYmVpbmcgdXNlZCB0byBwcm90ZWN0IHN0LT5jb25m
aWcgYWdhaW5zdCB0aGUgY3VycmVudAo+IGRldmljZSBzdGF0ZS4KPiAKPiBPbiB0aGUgb3RoZXIg
cGxhY2VzIHRoZSBsb2NrIHdhcyBiZWluZyB1c2VkLCB3ZSBjYW4ganVzdCBkcm9wCj4gaXQgc2lu
Y2Ugd2UgYXJlIG9ubHkgZG9pbmcgb25lIGkyYyBidXMgcmVhZC93cml0ZSB3aGljaCBpcyBhbHJl
YWR5Cj4gc2FmZS4KPiAKPiBXaGlsZSBhdCBpdCwgcHJvcGVybHkgaW5jbHVkZSAibXV0ZXguaCIg
Zm9yIG11dGV4IHJlbGF0ZWQgQVBJcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOdW5vIFPDoSA8bnVu
by5zYUBhbmFsb2cuY29tPgpJbiBpbnRlcmVzdHMgb2YgY3V0dGluZyBkb3duIHNjb3BlIG9mIGFu
eSBmdXR1cmUgdmVyc2lvbnMKKFNob3VsZCB0aGVyZSBuZWVkIHRvIGJlIGFueXdheSkgSSdtIGdv
aW5nIHRvIHBpY2sgdXAgdGhlIG5vbiBjb250cm92ZXJzaWFsCnBhdGNoZXMuCgpBcHBsaWVkIHRv
IHRoZSB0b2dyZWcgYnJhbmNoIG9mIGlpby5naXQgdGhvdWdoIHRoYXQncyBvbmx5IHB1c2hlZCBv
dXQKYXMgdGVzdGluZyBmb3Igbm93IGFzIHdlIGFyZSBtaWQgbWVyZ2Ugd2luZG93LgoKVGhhbmtz
LAoKSm9uYXRoYW4KCj4gLS0tCj4gIGRyaXZlcnMvaWlvL2FkYy9hZDc5OXguYyB8IDIwICsrKysr
KysrKysrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvYWQ3OTl4LmMgYi9k
cml2ZXJzL2lpby9hZGMvYWQ3OTl4LmMKPiBpbmRleCAyNjJiZDc2NjViMzMuLjQ0ZjdhODBhMDc0
OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lpby9hZGMvYWQ3OTl4LmMKPiArKysgYi9kcml2ZXJz
L2lpby9hZGMvYWQ3OTl4LmMKPiBAQCAtMjgsNiArMjgsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgv
dHlwZXMuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2Vyci5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9k
dWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgo+ICAjaW5jbHVkZSA8bGludXgvYml0
b3BzLmg+Cj4gIAo+ICAjaW5jbHVkZSA8bGludXgvaWlvL2lpby5oPgo+IEBAIC0xMjUsNiArMTI2
LDggQEAgc3RydWN0IGFkNzk5eF9zdGF0ZSB7Cj4gIAljb25zdCBzdHJ1Y3QgYWQ3OTl4X2NoaXBf
Y29uZmlnCSpjaGlwX2NvbmZpZzsKPiAgCXN0cnVjdCByZWd1bGF0b3IJCSpyZWc7Cj4gIAlzdHJ1
Y3QgcmVndWxhdG9yCQkqdnJlZjsKPiArCS8qIGxvY2sgdG8gcHJvdGVjdCBhZ2FpbnN0IG11bHRp
cGxlIGFjY2VzcyB0byB0aGUgZGV2aWNlICovCj4gKwlzdHJ1Y3QgbXV0ZXgJCQlsb2NrOwo+ICAJ
dW5zaWduZWQJCQlpZDsKPiAgCXUxNgkJCQljb25maWc7Cj4gIAo+IEBAIC0yOTAsNyArMjkzLDkg
QEAgc3RhdGljIGludCBhZDc5OXhfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwK
PiAgCQlyZXQgPSBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKGluZGlvX2Rldik7Cj4gIAkJ
aWYgKHJldCkKPiAgCQkJcmV0dXJuIHJldDsKPiArCQltdXRleF9sb2NrKCZzdC0+bG9jayk7Cj4g
IAkJcmV0ID0gYWQ3OTl4X3NjYW5fZGlyZWN0KHN0LCBjaGFuLT5zY2FuX2luZGV4KTsKPiArCQlt
dXRleF91bmxvY2soJnN0LT5sb2NrKTsKPiAgCQlpaW9fZGV2aWNlX3JlbGVhc2VfZGlyZWN0X21v
ZGUoaW5kaW9fZGV2KTsKPiAgCj4gIAkJaWYgKHJldCA8IDApCj4gQEAgLTM1MSw3ICszNTYsOCBA
QCBzdGF0aWMgc3NpemVfdCBhZDc5OXhfd3JpdGVfZnJlcXVlbmN5KHN0cnVjdCBkZXZpY2UgKmRl
diwKPiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiAgCj4gLQltdXRleF9sb2NrKCZpbmRp
b19kZXYtPm1sb2NrKTsKPiArCW11dGV4X2xvY2soJnN0LT5sb2NrKTsKPiArCj4gIAlyZXQgPSBp
MmNfc21idXNfcmVhZF9ieXRlX2RhdGEoc3QtPmNsaWVudCwgQUQ3OTk4X0NZQ0xFX1RNUl9SRUcp
Owo+ICAJaWYgKHJldCA8IDApCj4gIAkJZ290byBlcnJvcl9yZXRfbXV0ZXg7Cj4gQEAgLTM3Myw3
ICszNzksNyBAQCBzdGF0aWMgc3NpemVfdCBhZDc5OXhfd3JpdGVfZnJlcXVlbmN5KHN0cnVjdCBk
ZXZpY2UgKmRldiwKPiAgCXJldCA9IGxlbjsKPiAgCj4gIGVycm9yX3JldF9tdXRleDoKPiAtCW11
dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKwltdXRleF91bmxvY2soJnN0LT5sb2Nr
KTsKPiAgCj4gIAlyZXR1cm4gcmV0Owo+ICB9Cj4gQEAgLTQwNyw2ICs0MTMsOCBAQCBzdGF0aWMg
aW50IGFkNzk5eF93cml0ZV9ldmVudF9jb25maWcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwK
PiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiAgCj4gKwltdXRleF9sb2NrKCZzdC0+bG9j
ayk7Cj4gKwo+ICAJaWYgKHN0YXRlKQo+ICAJCXN0LT5jb25maWcgfD0gQklUKGNoYW4tPnNjYW5f
aW5kZXgpIDw8IEFENzk5WF9DSEFOTkVMX1NISUZUOwo+ICAJZWxzZQo+IEBAIC00MTgsNiArNDI2
LDcgQEAgc3RhdGljIGludCBhZDc5OXhfd3JpdGVfZXZlbnRfY29uZmlnKHN0cnVjdCBpaW9fZGV2
ICppbmRpb19kZXYsCj4gIAkJc3QtPmNvbmZpZyAmPSB+QUQ3OTk4X0FMRVJUX0VOOwo+ICAKPiAg
CXJldCA9IGFkNzk5eF93cml0ZV9jb25maWcoc3QsIHN0LT5jb25maWcpOwo+ICsJbXV0ZXhfdW5s
b2NrKCZzdC0+bG9jayk7Cj4gIAlpaW9fZGV2aWNlX3JlbGVhc2VfZGlyZWN0X21vZGUoaW5kaW9f
ZGV2KTsKPiAgCXJldHVybiByZXQ7Cj4gIH0KPiBAQCAtNDU0LDExICs0NjMsOSBAQCBzdGF0aWMg
aW50IGFkNzk5eF93cml0ZV9ldmVudF92YWx1ZShzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAo+
ICAJaWYgKHZhbCA8IDAgfHwgdmFsID4gR0VOTUFTSyhjaGFuLT5zY2FuX3R5cGUucmVhbGJpdHMg
LSAxLCAwKSkKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCj4gLQltdXRleF9sb2NrKCZpbmRpb19k
ZXYtPm1sb2NrKTsKPiAgCXJldCA9IGkyY19zbWJ1c193cml0ZV93b3JkX3N3YXBwZWQoc3QtPmNs
aWVudCwKPiAgCQlhZDc5OXhfdGhyZXNob2xkX3JlZyhjaGFuLCBkaXIsIGluZm8pLAo+ICAJCXZh
bCA8PCBjaGFuLT5zY2FuX3R5cGUuc2hpZnQpOwo+IC0JbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYt
Pm1sb2NrKTsKPiAgCj4gIAlyZXR1cm4gcmV0Owo+ICB9Cj4gQEAgLTQ3MywxMCArNDgwLDggQEAg
c3RhdGljIGludCBhZDc5OXhfcmVhZF9ldmVudF92YWx1ZShzdHJ1Y3QgaWlvX2RldiAqaW5kaW9f
ZGV2LAo+ICAJaW50IHJldDsKPiAgCXN0cnVjdCBhZDc5OXhfc3RhdGUgKnN0ID0gaWlvX3ByaXYo
aW5kaW9fZGV2KTsKPiAgCj4gLQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKPiAgCXJl
dCA9IGkyY19zbWJ1c19yZWFkX3dvcmRfc3dhcHBlZChzdC0+Y2xpZW50LAo+ICAJCWFkNzk5eF90
aHJlc2hvbGRfcmVnKGNoYW4sIGRpciwgaW5mbykpOwo+IC0JbXV0ZXhfdW5sb2NrKCZpbmRpb19k
ZXYtPm1sb2NrKTsKPiAgCWlmIChyZXQgPCAwKQo+ICAJCXJldHVybiByZXQ7Cj4gIAkqdmFsID0g
KHJldCA+PiBjaGFuLT5zY2FuX3R5cGUuc2hpZnQpICYKPiBAQCAtODYzLDYgKzg2OCw5IEBAIHN0
YXRpYyBpbnQgYWQ3OTl4X3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsCj4gIAkJaWYg
KHJldCkKPiAgCQkJZ290byBlcnJvcl9jbGVhbnVwX3Jpbmc7Cj4gIAl9Cj4gKwo+ICsJbXV0ZXhf
aW5pdCgmc3QtPmxvY2spOwo+ICsKPiAgCXJldCA9IGlpb19kZXZpY2VfcmVnaXN0ZXIoaW5kaW9f
ZGV2KTsKPiAgCWlmIChyZXQpCj4gIAkJZ290byBlcnJvcl9jbGVhbnVwX3Jpbmc7CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
