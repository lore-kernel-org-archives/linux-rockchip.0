Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59999C32771
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 15:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fabM6v63J+BC5pakBl1BW00uZO/nOyDAtod8E2xEsQs=; b=BKvadh1aCZggE0
	8KeL6Kh1o0VD18daRidehno9RakevD7hW7lHnruON8QCq47kxL1jl7qCscXXDTHUsJWsLMRvF9iWl
	gYoqFhGZ2527v3MSdGTcPEuvRTraq0pXOTOyg7iszG/IyH7O+wUrs5Wo59wZ0JQuvu0kN5rcHLFhe
	tBw87wV08MB3QKQm8QFn772h0LfCRIFgBObvyuYfuMwNASrZwHDREXFBR9Gc8+IribAN/XilJIhhX
	mm977xNHbudmluio9uyfhQhNmwmx0bBdCgfSEdiXpxDYfMpj49vwvQINHvA0J3auZ6bl7KHSkp5L4
	GWDeTHl5N7IPYRim4yng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7Md-007la5-FU; Sat, 24 Sep 2022 15:46:47 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7Lw-007lFM-0q; Sat, 24 Sep 2022 15:46:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0AFC6B80E4D;
	Sat, 24 Sep 2022 15:46:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92C2BC433D6;
	Sat, 24 Sep 2022 15:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664034358;
	bh=31VmF6s9m67JEi4R+AisNT1iAfhlAHfnXHUBZfAaouo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Z8VheRpWRUmUmHSsAN/lhJ2agbF32eXhheWEvuv8n39bfqWnZ2AvLxnmazawQgmkU
	 9Bt8rDJkeMXQ9zonxPuESDQmtRDuFdRvg1LQAQghuwqRezLhLbeWUA14Jf45qPV5Jx
	 v8D6l1BW8Iw7a2/Kn5Q8RlRtrBHpUtIhC4lJyFMyeeIYbE6gtJfwbrGicZoOaP2eXU
	 gvfE6Pgho8QOWXUeDM6J0VZ6YxrB6wmuavilvxaHdg/5FwOBgvfqmc5i3d+Hw/7fOd
	 kbDd0XYDOeD9NxzHXHfQlKgYOr9BgYDwmkt3/73ObW2ZYFrXZqa5aReyby8yGvJezy
	 Nwgse25Gpv5ug==
Date: Sat, 24 Sep 2022 16:46:00 +0100
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
 <aardelean@deviqon.com>, "Fabio Estevam" <festevam@gmail.com>, Andriy
 Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen
 <haibo.chen@nxp.com>, "Shawn Guo" <shawnguo@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Jerome
 Brunet <jbrunet@baylibre.com>, "Heiko Stuebner" <heiko@sntech.de>, Florian
 Boor <florian.boor@kernelconcepts.de>, Ciprian Regus
 <ciprian.regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, "Baolin Wang" <baolin.wang@linux.alibaba.com>,
 Jyoti Bhayana <jbhayana@google.com>, Chen-Yu Tsai <wens@csie.org>, Orson
 Zhai <orsonzhai@gmail.com>
Subject: Re: [PATCH 12/15] iio: fyro: itg3200_core: do not use internal
 iio_dev lock
Message-ID: <20220924164600.56abd07b@jic23-huawei>
In-Reply-To: <20220920112821.975359-13-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-13-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_084604_393840_FAA7827D 
X-CRM114-Status: GOOD (  20.40  )
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

T24gVHVlLCAyMCBTZXAgMjAyMiAxMzoyODoxOCArMDIwMApOdW5vIFPDoSA8bnVuby5zYUBhbmFs
b2cuY29tPiB3cm90ZToKCj4gVGhlIGlpb19kZXZpY2UgbG9jayBpcyBvbmx5IG1lYW50IGZvciBp
bnRlcm5hbCB1c2UuIEhlbmNlIGRlZmluZSBhCj4gZGV2aWNlIGxvY2FsIGxvY2sgdG8gcHJvdGVj
dCBhZ2FpbnN0IGNvbmN1cnJlbnQgYWNjZXNzZXMuCkFzIHdpdGggZWFybGllciwgYWRkIGEgbm90
ZSBhYm91dCBtdXRleC5oIGluY2x1ZGUuCgpPdGhlcndpc2UsIGxvb2tzIGZpbmUuICBNeSBndXQg
ZmVlbGluZyBpcyB0aGF0IHdlIHNob3VsZApoYXZlIGEgY2xhaW1fZGlyZWN0X21vZGUoKSBpbiB0
aGF0IHdyaXRlX3JhdygpIGFzIHdlbGwgYXMKY2hhbmdpbmcgZnJlcXVlbmN5IHdoaWxzdCBkb2lu
ZyBidWZmZXJlZCBjYXB0dXJlIGlzIHJhcmVseSBhIGdvb2QKaWRlYSwgYnV0IG1laCwgd2UgZG9u
J3QgbmVlZCB0byBjaGFuZ2UgdGhlIEFCSSBzbyBsZXQgdXMgbm90IGRvIHNvLgoKSm9uYXRoYW4K
Cj4gCj4gU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9paW8vZ3lyby9pdGczMjAwX2NvcmUuYyAgfCA5ICsrKysrKy0tLQo+ICBpbmNs
dWRlL2xpbnV4L2lpby9neXJvL2l0ZzMyMDAuaCB8IDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
aWlvL2d5cm8vaXRnMzIwMF9jb3JlLmMgYi9kcml2ZXJzL2lpby9neXJvL2l0ZzMyMDBfY29yZS5j
Cj4gaW5kZXggMDQ5MWM2NGUxYjMyLi4zNThhYThhYzBjNmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9paW8vZ3lyby9pdGczMjAwX2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMvaWlvL2d5cm8vaXRnMzIw
MF9jb3JlLmMKPiBAQCAtMTgsNiArMTgsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+
ICAjaW5jbHVkZSA8bGludXgvc3RhdC5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4g
KyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgo+ICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiAg
Cj4gICNpbmNsdWRlIDxsaW51eC9paW8vaWlvLmg+Cj4gQEAgLTEzMSw2ICsxMzIsNyBAQCBzdGF0
aWMgaW50IGl0ZzMyMDBfd3JpdGVfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gIAkJ
CSAgICAgaW50IHZhbDIsCj4gIAkJCSAgICAgbG9uZyBtYXNrKQo+ICB7Cj4gKwlzdHJ1Y3QgaXRn
MzIwMCAqc3QgPSBpaW9fcHJpdihpbmRpb19kZXYpOwo+ICAJaW50IHJldDsKPiAgCXU4IHQ7Cj4g
IAo+IEBAIC0xMzksMTEgKzE0MSwxMSBAQCBzdGF0aWMgaW50IGl0ZzMyMDBfd3JpdGVfcmF3KHN0
cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gIAkJaWYgKHZhbCA9PSAwIHx8IHZhbDIgIT0gMCkK
PiAgCQkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+IC0JCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxv
Y2spOwo+ICsJCW11dGV4X2xvY2soJnN0LT5sb2NrKTsKPiAgCj4gIAkJcmV0ID0gaXRnMzIwMF9y
ZWFkX3JlZ184KGluZGlvX2RldiwgSVRHMzIwMF9SRUdfRExQRiwgJnQpOwo+ICAJCWlmIChyZXQp
IHsKPiAtCQkJbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKPiArCQkJbXV0ZXhfdW5s
b2NrKCZzdC0+bG9jayk7Cj4gIAkJCXJldHVybiByZXQ7Cj4gIAkJfQo+ICAJCXQgPSAoKHQgJiBJ
VEczMjAwX0RMUEZfQ0ZHX01BU0spID8gMTAwMHUgOiA4MDAwdSkgLyB2YWwgLSAxOwo+IEBAIC0x
NTIsNyArMTU0LDcgQEAgc3RhdGljIGludCBpdGczMjAwX3dyaXRlX3JhdyhzdHJ1Y3QgaWlvX2Rl
diAqaW5kaW9fZGV2LAo+ICAJCQkJCSAgSVRHMzIwMF9SRUdfU0FNUExFX1JBVEVfRElWLAo+ICAJ
CQkJCSAgdCk7Cj4gIAo+IC0JCW11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKwkJ
bXV0ZXhfdW5sb2NrKCZzdC0+bG9jayk7Cj4gIAkJcmV0dXJuIHJldDsKPiAgCj4gIAlkZWZhdWx0
Ogo+IEBAIC0zMDcsNiArMzA5LDcgQEAgc3RhdGljIGludCBpdGczMjAwX3Byb2JlKHN0cnVjdCBp
MmNfY2xpZW50ICpjbGllbnQsCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+ICAJc3QgPSBpaW9f
cHJpdihpbmRpb19kZXYpOwo+ICsJbXV0ZXhfaW5pdCgmc3QtPmxvY2spOwo+ICAKPiAgCXJldCA9
IGlpb19yZWFkX21vdW50X21hdHJpeCgmY2xpZW50LT5kZXYsICZzdC0+b3JpZW50YXRpb24pOwo+
ICAJaWYgKHJldCkKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9paW8vZ3lyby9pdGczMjAw
LmggYi9pbmNsdWRlL2xpbnV4L2lpby9neXJvL2l0ZzMyMDAuaAo+IGluZGV4IGE2MDJmZTdiODRm
YS4uNzRiNmQxY2FkYzg2IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvaWlvL2d5cm8vaXRn
MzIwMC5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9paW8vZ3lyby9pdGczMjAwLmgKPiBAQCAtMTAy
LDYgKzEwMiw4IEBAIHN0cnVjdCBpdGczMjAwIHsKPiAgCXN0cnVjdCBpMmNfY2xpZW50CSppMmM7
Cj4gIAlzdHJ1Y3QgaWlvX3RyaWdnZXIJKnRyaWc7Cj4gIAlzdHJ1Y3QgaWlvX21vdW50X21hdHJp
eCBvcmllbnRhdGlvbjsKPiArCS8qIGxvY2sgdG8gcHJvdGVjdCBhZ2FpbnN0IG11bHRpcGxlIGFj
Y2VzcyB0byB0aGUgZGV2aWNlICovCj4gKwlzdHJ1Y3QgbXV0ZXgJCWxvY2s7Cj4gIH07Cj4gIAo+
ICBlbnVtIElURzMyMDBfU0NBTl9JTkRFWCB7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
