Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDA0BC07E9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 15:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uO8Yw8dVa8WGe9WZFcqgKdLFdhfPf/kKhOO9ZQG+t84=; b=RogVCYybdvzYc3
	R14Kf2uk8qeQjLcCtNJZFi9kWXzUwRN+FEAdhX4Id0xY8Cy1ZqBTcRQAzPWim+Loy8huh+zYs18aL
	87ZtRQMDA+paQ77Jj+2m3CPwcn7aabWw0Za/VL4I3UNDysbVFCevvPeFnvj4d7gv04ua4UsbWsjFZ
	RPfhrXZ7seLA1z56AkolTb47ROXOT8a+RH3q55WND7pqEWOor5wETFCk1doVG0cJXR7slpBUhOmfO
	ca7ImRonmjsIlQSpM3U7CWFi9R/xGDYGhrvp8DQqbOWbtbAc5Of3z5oYgZ2pOPyTj3ZTO+zt9M1+k
	iPl8uip2wXt7sV4fiaSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc70J-007aGq-Kl; Sat, 24 Sep 2022 15:23:43 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc706-007aCZ-7E; Sat, 24 Sep 2022 15:23:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9EBCEB8049B;
	Sat, 24 Sep 2022 15:23:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19371C433C1;
	Sat, 24 Sep 2022 15:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664033007;
	bh=8ZTQWTVeH3oTNXCofwKxdW1dGEo0jwBg7H7ydQ/CskQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=S/5DlNRWGPoIqFtMx5J10lqW3MLJx3RrPAGxfNI45g2TM70jcKokKibQtcnZwOKox
	 c34sfdJXAzcpDx6JZk1KA6lvAZlbW02gzK0mwbwBXNJkI6kFSdjZO4UlUzhtbn8eVJ
	 ZbMW+lbEJ3NeWKev4U520ZbiJqofSUAmuY6TIGg8Wgmbf6FVpzGQgtBwiqTtva/p9m
	 HfhvM5fX3dk3jVHZHZLLxHe5i/GxdFJBKuW9/On8Dbl1Rgpw5Us9Q30yf5lPAKFleH
	 Fd5SjljThTd651c36JT14rqQSKiWni0UpaeZqxDvSC1A9MN2fF6ygBX4rDsv45iMVz
	 jhJIramDe1XPw==
Date: Sat, 24 Sep 2022 16:23:29 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, "Sa, Nuno"
 <Nuno.Sa@analog.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
 "Hennerich, Michael" <Michael.Hennerich@analog.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman
 <khilman@baylibre.com>, Vladimir Zapolskiy <vz@mleia.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Alexandru Ardelean
 <aardelean@deviqon.com>, Fabio Estevam <festevam@gmail.com>, Andriy
 Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen
 <haibo.chen@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, Florian
 Boor <florian.boor@kernelconcepts.de>, "Regus, Ciprian"
 <Ciprian.Regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Neil
 Armstrong <narmstrong@baylibre.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Jyoti Bhayana <jbhayana@google.com>,
 Chen-Yu Tsai <wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
Subject: Re: [PATCH 03/15] iio: adc: axp288_adc: do not use internal iio_dev
 lock
Message-ID: <20220924162329.5f0dd680@jic23-huawei>
In-Reply-To: <c487df06699aa53292909ff6be2b07de324793f4.camel@gmail.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-4-nuno.sa@analog.com>
	<CAHp75VeA48FbKy2uUjW4T19=Vn-UEznT7prkXZq4sdZ4Q9o-YA@mail.gmail.com>
	<SJ0PR03MB6778FFE254E9DDC103258FE8994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
	<CAHp75VdVbkXCC1PpT4h-+4HHpZX-zK34xH9dVG8vGcpQhXaQHQ@mail.gmail.com>
	<CAHp75VfdUOTd9tRXdTVq_prNf_T2=iQ4tEjusHC=gXDZvb3Qeg@mail.gmail.com>
	<SJ0PR03MB6778EEF81693C026CE131B49994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
	<CAHp75VdT0a2DevybjT4HN8xGFrKzrR0sPXA6P89xnBg1xcqbQA@mail.gmail.com>
	<c487df06699aa53292909ff6be2b07de324793f4.camel@gmail.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_082330_589397_F1C73E66 
X-CRM114-Status: GOOD (  30.67  )
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

T24gV2VkLCAyMSBTZXAgMjAyMiAxMTowNzo1MCArMDIwMApOdW5vIFPDoSA8bm9uYW1lLm51bm9A
Z21haWwuY29tPiB3cm90ZToKCj4gT24gVHVlLCAyMDIyLTA5LTIwIGF0IDE4OjEyICswMzAwLCBB
bmR5IFNoZXZjaGVua28gd3JvdGU6Cj4gPiBPbiBUdWUsIFNlcCAyMCwgMjAyMiBhdCA0OjQ2IFBN
IFNhLCBOdW5vIDxOdW5vLlNhQGFuYWxvZy5jb20+IHdyb3RlOiAgCj4gPiA+ID4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4gPiBGcm9tOiBBbmR5IFNoZXZjaGVua28gPGFuZHkuc2hl
dmNoZW5rb0BnbWFpbC5jb20+Cj4gPiA+ID4gU2VudDogVHVlc2RheSwgU2VwdGVtYmVyIDIwLCAy
MDIyIDM6MzkgUE0KPiA+ID4gPiBPbiBUdWUsIFNlcCAyMCwgMjAyMiBhdCA0OjM3IFBNIEFuZHkg
U2hldmNoZW5rbwo+ID4gPiA+IDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPiB3cm90ZTogIAo+
ID4gPiA+ID4gT24gVHVlLCBTZXAgMjAsIDIwMjIgYXQgNDoxOCBQTSBTYSwgTnVubyA8TnVuby5T
YUBhbmFsb2cuY29tPgo+ID4gPiA+ID4gd3JvdGU6ICAKPiA+ID4gPiA+ID4gPiBPbiBUdWUsIFNl
cCAyMCwgMjAyMiBhdCAyOjI4IFBNIE51bm8gU8OhCj4gPiA+ID4gPiA+ID4gPG51bm8uc2FAYW5h
bG9nLmNvbT4gIAo+ID4gPiA+IHdyb3RlOgo+ID4gPiA+IAo+ID4gPiA+IC4uLgo+ID4gPiA+ICAg
Cj4gPiA+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoCBpbmZvID0gaWlvX3ByaXYoaW5kaW9fZGV2
KTsKPiA+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqAgbXV0ZXhfaW5pdCgmaW5mby0+bG9jayk7
Cj4gPiA+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoCBpbmZvLT5pcnEgPSBwbGF0Zm9ybV9nZXRf
aXJxKHBkZXYsIDApOwo+ID4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgaWYgKGluZm8tPmly
cSA8IDApCj4gPiA+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIGluZm8tPmlycTsgIAo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IENvbnNpZGVyIGlu
aXRpYWxpemluZyBpdCBhcyBsYXRlIGFzIHBvc3NpYmxlLCBsaWtlIGFmdGVyCj4gPiA+ID4gPiA+
ID4gSVJRIHJldHJpZXZhbAo+ID4gPiA+ID4gPiA+IGluIHRoaXMgY29udGV4dCAobWF5YmUgZXZl
biBkZWVwZXIsIGJ1dCBubyBjb250ZXh0Cj4gPiA+ID4gPiA+ID4gYXZhaWxhYmxlKS4gRGl0dG8K
PiA+ID4gPiA+ID4gPiBmb3IgdGhlIHJlc3Qgb2YgdGhlIHNlcmllcy4gIAo+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gQW55IHNwZWNpYWwgcmVhc29uIGZvciBpdCAobWF5YmUgcmVsYXRlZCB0byBs
b2NrZGVwCj4gPiA+ID4gPiA+IDp3b25kZXJpbmc6ICkgPyBKdXN0Cj4gPiA+ID4gPiA+IGN1cmlv
dXMgYXMgSSBuZXZlciBub3RpY2VkIHN1Y2ggYSBwYXR0ZXJuIHdoZW4gaW5pdGlhbGl6aW5nCj4g
PiA+ID4gPiA+IG11dGV4ZXMuICAKPiA+ID4gPiA+IAo+ID4gPiA+ID4gWWVzLiBNaWNyby1vcHRp
bWl6YXRpb24gYmFzZWQgb24gdGhlIHJ1bGUgImRvbid0IGNyZWF0ZSBhCj4gPiA+ID4gPiByZXNv
dXJjZSBpbgo+ID4gPiA+ID4gY2FzZSBvZiBrbm93biBlcnJvciIuCj4gPiA+ID4gPiAKPiA+ID4g
PiA+IE9UT0gsIHlvdSBoYXZlIHRvIGJlIHN1cmUgdGhhdCB0aGUgbXV0ZXggKGFuZCBnZW5lcmFs
bHkKPiA+ID4gPiA+IHNwZWFraW5nIGEKPiA+ID4gPiA+IGxvY2tpbmcpIHNob3VsZCBiZSBpbml0
aWFsaXplZCBlYXJseSBlbm91Z2guICAKPiA+ID4gCj4gPiA+IFR5cGljYWxseSBub3QgcmVhbGx5
IG5lZWRlZCBkdXJpbmcgcHJvYmUuLi4gIAo+ID4gCj4gPiBBY3R1YWxseSBhcyBsb25nIGFzIHlv
dSBleHBvc2UgdGhlIEFCSSB0byB0aGUgdXNlciBhbnl0aGluZyBjYW4KPiA+IGhhcHBlbiwgbWVh
bnMgdGhhdCB5b3VyIGNvZGUgc2hvdWxkIGJlIHJlYWR5IHRvIHJlY2VpdmUgdGhlIHJlcXVlc3Rz
Cj4gPiBpbiBhbnkgcG9zc2libGUgY2FsbGJhY2tzIC8gZmlsZSBvcHMuIFNhbWUgYXBwbGllcyB0
byB0aGUgSVJRCj4gPiBoYW5kbGVyLgo+ID4gU28gaXQncyB2ZXJ5IGltcG9ydGFudCB0byBpbml0
aWFsaXplIGxvY2tpbmcganVzdCBpbiB0aW1lLiBIZW5jZSBJCj4gPiBjYW4KPiA+IHNheSB0aGF0
ICJ0eXBpY2FsbHkgaXQgbmVlZHMgdG8gYmUgY2FyZWZ1bGx5IHBsYWNlZCIuCj4gPiAgIAo+IAo+
IFllcywgSSdtIGF3YXJlIG9mIHRoYXQuLi4gRm9yIHNvbWUgcmVhc29uIEkganVzdCB0aG91Z2h0
IGFib3V0IGNvZGUKPiBwYXRocyBkaXJlY3RseSBvbiBwcm9iZS4gQW55d2F5cywgaG9wZWZ1bGx5
IHRoZXNlIGRyaXZlcnMgbW9zdGx5IGRvIHRoZQo+IHJpZ2h0IHRoaW5nIGFuZCByZWdpc3RlciB0
aGUgSUlPIGRldmljZSBhcyBsYXRlIGFzIHBvc3NpYmxlIChpZGVhbGx5Cj4gdGhlIGxhc3QgdGhp
bmcgdG8gYmUgZG9uZSkuIFRoZSBzYW1lIGdvZXMgZm9yIElSUXMgYW5kIGZvciBJSU8sIHdoZW4K
PiB1c2VkIGFzIHBhcnQgb2YgdHJpZ2dlcmVkIGJ1ZmZlcmluZywgdGhlIGxvY2sgaXMgb2Z0ZW4g
b25seSB1c2VkIGluIHRoZQo+IHRyaWdnZXIgaGFuZGxlciB3aGljaCBtZWFucyBpdCdzIG9ubHkg
cmVhY2hhYmxlIGFmdGVyIHRoZSBBQkkgaXMKPiBleHBvc2VkLi4uIAoKQ2FuJ3Qgc2F5IEkgZmVl
bCB0aGF0IHN0cm9uZ2x5IGFib3V0IGEgbXV0ZXhfaW5pdCgpIHBsYWNlbWVudCwgYnV0Cm5vIGhh
cm0gaW4gbW92aW5nIHRoZW0gbGF0ZXIgLSBpbmRlZWQgYmVmb3JlIHRoZSBpaW9fZGV2aWNlX3Jl
Z2lzdGVyKCkKc2hvdWxkIGJlIGNvcnJlY3QgLSB0aG91Z2ggY2FyZSBuZWVkZWQgYXMgbWlnaHQg
YmUgc29tZSB1bm5lY2Vzc2FyeSBsb2Nrcwp0YWtlbiBpbiBwcm9iZSBiZWNhdXNlIG9mIGNvZGUg
c2hhcmluZyAoYW5kIHRoZW0gcHJldmlvdXNseSBiZWluZyBoYXJtbGVzcykKCkpvbmF0aGFuCj4g
Cj4gLSBOdW5vIFPDoQo+ID4gPiAgIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
