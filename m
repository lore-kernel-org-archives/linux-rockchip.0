Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BF8CC07E9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 15:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6fOpa0pCo37DhV93LAyb/CTAEeBv0LQkioGwVczTbI=; b=HJ6IqRJc7izn/L
	OkK4YYVl6SfClHe5efGcebU6eja8LXhOI5YOD7EWvAShyJIrub7UaozOCWQ5WomSKV5ywV3MuOfR/
	VObZI1ZdaA5PTYzmHV0mwQAJEGR3FvlDPP4Kyj+RNmqZZqlG/bgXK7/rRuV/6CeAWAPYe93+3MAb6
	OTvHHqicDIMlTVKqanM/7ZYDk1XKCsgARgN5Vw40RauW6BRcNX2FSoP80VUXqA5zR2BfXAJzhFdKj
	b+DPzZ8uCe/bl9XJN9BoqPwcEGi8KJ2idRjUxy7AMesrj5xengAGCiLT5yQbBI9qub1a+8+2ePlNr
	mViE5Y3HUF4pcY6Mp/tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc736-007bPs-5v; Sat, 24 Sep 2022 15:26:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc72r-007bKh-Tn; Sat, 24 Sep 2022 15:26:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5B37061375;
	Sat, 24 Sep 2022 15:26:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EDAEC433C1;
	Sat, 24 Sep 2022 15:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664033180;
	bh=mrFI7ONNqcKCXJbtWHFoq/iPiCayS08Oha0UjYfBXn8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=nhXw/ztGaPsFHfTINnvveraB0d5izw0b3jRAtltkB/jF9NH3mGx9ikNjJ2h3V8ui6
	 /vSj8M/ook2IWaFlnQl1WKflShWdQQfxoHeKWi+u1PUK12R0KWDglIvr+5tUW/CHeh
	 Lj5N5vJBBwHFodWbqnNxdO4g0Tp7JYwOkQeBaXILYkWVhzD6ve7YAF4KqJqHCEo5hT
	 K4bfjlAznBTQgakohXEJFPFzeL0RT0qNF/iSf9kUwrZbiHE9XvTxUQM0HAsHcOuIdV
	 LrPil8H/0MeTFxhysnfeKhJU20y3+nthHQMKD1WemB5X+j4nv8ZxpGW6hDwjcpa8JR
	 YU0TCvhzFg/7g==
Date: Sat, 24 Sep 2022 16:26:22 +0100
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
Subject: Re: [PATCH 04/15] iio: adc: imx7d_adc: do not use internal iio_dev
 lock
Message-ID: <20220924162622.66802d96@jic23-huawei>
In-Reply-To: <20220920112821.975359-5-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-5-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_082622_060433_3C995927 
X-CRM114-Status: GOOD (  20.38  )
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

T24gVHVlLCAyMCBTZXAgMjAyMiAxMzoyODoxMCArMDIwMApOdW5vIFPDoSA8bnVuby5zYUBhbmFs
b2cuY29tPiB3cm90ZToKCj4gVGhlIGlpb19kZXZpY2UgbG9jayBpcyBvbmx5IG1lYW50IGZvciBp
bnRlcm5hbCB1c2UuIEhlbmNlIGRlZmluZSBhCj4gZGV2aWNlIGxvY2FsIGxvY2sgdG8gcHJvdGVj
dCBhZ2FpbnN0IGNvbmN1cnJlbnQgYWNjZXNzZXMuCgpNZW50aW9uIHRoZSBtdXRleC5oIGluY2x1
ZGUuICBUZWNobmljYWxseSBpdCdzIGFuIHVucmVsYXRlZCAoZ29vZCkgY2hhbmdlLgpEZWZpbml0
ZWx5IG5vdCB3b3J0aCBhIHNlcGFyYXRlIHBhdGNoIGhvd2V2ZXIgc28ganVzdCBtZW50aW9uIGl0
IGluIHRoZQpkZXNjcmlwdGlvbi4KCj4gCj4gU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8u
c2FAYW5hbG9nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9paW8vYWRjL2lteDdkX2FkYy5jIHwgMTMg
KysrKysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvaW14N2RfYWRjLmMgYi9k
cml2ZXJzL2lpby9hZGMvaW14N2RfYWRjLmMKPiBpbmRleCA4NmNhZmYxZDAwNmIuLmZhMTlmNWUw
OTA3OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lpby9hZGMvaW14N2RfYWRjLmMKPiArKysgYi9k
cml2ZXJzL2lpby9hZGMvaW14N2RfYWRjLmMKPiBAQCAtMTMsNiArMTMsNyBAQAo+ICAjaW5jbHVk
ZSA8bGludXgva2VybmVsLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9tb2RfZGV2aWNldGFibGUuaD4K
PiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4K
PiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGludXgv
cmVndWxhdG9yL2NvbnN1bWVyLmg+Cj4gIAo+IEBAIC0xMDgsNyArMTA5LDggQEAgc3RydWN0IGlt
eDdkX2FkYyB7Cj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXY7Cj4gIAl2b2lkIF9faW9tZW0gKnJlZ3M7
Cj4gIAlzdHJ1Y3QgY2xrICpjbGs7Cj4gLQo+ICsJLyogbG9jayB0byBwcm90ZWN0IGFnYWluc3Qg
bXVsdGlwbGUgYWNjZXNzIHRvIHRoZSBkZXZpY2UgKi8KPiArCXN0cnVjdCBtdXRleCBsb2NrOwo+
ICAJdTMyIHZyZWZfdXY7Cj4gIAl1MzIgdmFsdWU7Cj4gIAl1MzIgY2hhbm5lbDsKPiBAQCAtMjkz
LDcgKzI5NSw3IEBAIHN0YXRpYyBpbnQgaW14N2RfYWRjX3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2
ICppbmRpb19kZXYsCj4gIAo+ICAJc3dpdGNoIChtYXNrKSB7Cj4gIAljYXNlIElJT19DSEFOX0lO
Rk9fUkFXOgo+IC0JCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsJCW11dGV4X2xv
Y2soJmluZm8tPmxvY2spOwo+ICAJCXJlaW5pdF9jb21wbGV0aW9uKCZpbmZvLT5jb21wbGV0aW9u
KTsKPiAgCj4gIAkJY2hhbm5lbCA9IGNoYW4tPmNoYW5uZWwgJiAweDAzOwo+IEBAIC0zMDMsMTYg
KzMwNSwxNiBAQCBzdGF0aWMgaW50IGlteDdkX2FkY19yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAq
aW5kaW9fZGV2LAo+ICAJCXJldCA9IHdhaXRfZm9yX2NvbXBsZXRpb25faW50ZXJydXB0aWJsZV90
aW1lb3V0Cj4gIAkJCQkoJmluZm8tPmNvbXBsZXRpb24sIElNWDdEX0FEQ19USU1FT1VUKTsKPiAg
CQlpZiAocmV0ID09IDApIHsKPiAtCQkJbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsK
PiArCQkJbXV0ZXhfdW5sb2NrKCZpbmZvLT5sb2NrKTsKPiAgCQkJcmV0dXJuIC1FVElNRURPVVQ7
Cj4gIAkJfQo+ICAJCWlmIChyZXQgPCAwKSB7Cj4gLQkJCW11dGV4X3VubG9jaygmaW5kaW9fZGV2
LT5tbG9jayk7Cj4gKwkJCW11dGV4X3VubG9jaygmaW5mby0+bG9jayk7Cj4gIAkJCXJldHVybiBy
ZXQ7Cj4gIAkJfQo+ICAKPiAgCQkqdmFsID0gaW5mby0+dmFsdWU7Cj4gLQkJbXV0ZXhfdW5sb2Nr
KCZpbmRpb19kZXYtPm1sb2NrKTsKPiArCQltdXRleF91bmxvY2soJmluZm8tPmxvY2spOwo+ICAJ
CXJldHVybiBJSU9fVkFMX0lOVDsKPiAgCj4gIAljYXNlIElJT19DSEFOX0lORk9fU0NBTEU6Cj4g
QEAgLTQ4Nyw2ICs0ODksNyBAQCBzdGF0aWMgaW50IGlteDdkX2FkY19wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+ICAKPiAgCWluZm8gPSBpaW9fcHJpdihpbmRpb19kZXYpOwo+
ICAJaW5mby0+ZGV2ID0gZGV2Owo+ICsJbXV0ZXhfaW5pdCgmaW5mby0+bG9jayk7Cj4gIAo+ICAJ
aW5mby0+cmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiAg
CWlmIChJU19FUlIoaW5mby0+cmVncykpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
