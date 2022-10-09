Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A83D7C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 11:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CX/0HVrIVjR0AEvnl+rOEtz7+wlKvgbI0MRsTiGble8=; b=BIl3i5UNoRqW1J
	48c3Ast5a96xwwQzp/Xf9XMnKF/tbobo047dqENQ0MjQ70oRvJ94gh+st+DjthWfAqniL3XVQoYCx
	tecpCTJDpOhRfSJ6t1Mk28ocFjBXKMGnjtnZSrmArRNtWraNz/Mcgm1Bb4ogj+LvuvJ684alRQSh7
	a1eKmUOB0O4RzSLVZ2FKESDNIJhoY+p21lDI5nuDD1QbH8LgN8NYFWO8jVv0XV4BJk33GLGY1mChc
	GMXrtFQmZElkEmAQBGqZmJOpJP0A3dgZ9qqrEWz4FzElyOsKv4rL0g1osryoWFRcQlJpg0aVWiQZd
	n6AoDiecormjQgr5BK2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUgK-00FOoG-HC; Sun, 09 Oct 2022 11:41:20 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUg7-00FOlw-4K; Sun, 09 Oct 2022 11:41:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D4ED4B80C8C;
	Sun,  9 Oct 2022 11:41:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62715C433D7;
	Sun,  9 Oct 2022 11:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665315663;
	bh=f1VoKZXNgofSuY7kHfAakcUS845fjP5e/h0mPwmW+64=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=VgOam0GCCwF/f4WkQPha60Y2yxmMNuhOsp3exvUan+5OtsbAleFj55hDAHYvnHRpb
	 s8ulQ4YWiEeCmO9S3+z1zLH21o+7p8Ii5oJvywskxxPzwitr4a6remWsYzVdBwv1SU
	 eBqLzVbGGFeZPLrkHNFv/mNcwQMEXTT35I1jb8dJAS3KU//SSvjUNqAMi7PiwA3k87
	 kO/ENazwQ7OLppxlJZiSexO3U0QTI5dEEVBsduI2tfwrM4fIuCty3oEODFZqk0kTY5
	 TkMUFDeERRbHPx9J3dDyONgHKHOENz6MjTpF4qGuvqZhaaZD8aw7KhzD/kv8ddmR58
	 emz58odusvM1g==
Date: Sun, 9 Oct 2022 12:41:20 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, Nuno =?UTF-8?B?U8Oh?= 
 <nuno.sa@analog.com>, linux-amlogic@lists.infradead.org, linux-imx@nxp.com,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
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
 Zapolskiy <vz@mleia.com>, Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen
 <haibo.chen@nxp.com>, Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2 13/16] iio: core: introduce
 iio_device_{claim|release}_buffer_mode() APIs
Message-ID: <20221009124120.39a43103@jic23-huawei>
In-Reply-To: <609d7e50d76a2a2aa2bbaddfed8a846c91854065.camel@gmail.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-14-nuno.sa@analog.com>
	<CAHp75VfmMWonUV1jahbAmBZJixfdxA=ZAm-NNt7XiO+RDbupyg@mail.gmail.com>
	<609d7e50d76a2a2aa2bbaddfed8a846c91854065.camel@gmail.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_044107_511550_D1F99DB2 
X-CRM114-Status: GOOD (  22.87  )
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

T24gV2VkLCAwNSBPY3QgMjAyMiAxMDozNzozOSArMDIwMApOdW5vIFPDoSA8bm9uYW1lLm51bm9A
Z21haWwuY29tPiB3cm90ZToKCj4gT24gVHVlLCAyMDIyLTEwLTA0IGF0IDE3OjA4ICswMzAwLCBB
bmR5IFNoZXZjaGVua28gd3JvdGU6Cj4gPiBPbiBUdWUsIE9jdCA0LCAyMDIyIGF0IDQ6NDkgUE0g
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4gd3JvdGU6ICAKPiA+ID4gCj4gPiA+IFRoZXNl
IEFQSXMgYXJlIGFuYWxvZ291cyB0byBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkgYW5k
Cj4gPiA+IGlpb19kZXZpY2VfcmVsZWFzZV9kaXJlY3RfbW9kZSgpIGJ1dCwgYXMgdGhlIG5hbWUg
c3VnZ2VzdHMsIHdpdGgKPiA+ID4gdGhlCj4gPiA+IGxvZ2ljIGZsaXBwZWQuIFdoaWxlIHRoaXMg
bG9va3Mgb2RkIGVub3VnaCwgaXQgd2lsbCBoYXZlIGF0IGxlYXN0Cj4gPiA+IHR3bwo+ID4gPiB1
c2VycyAoaW4gZm9sbG93aW5nIGNoYW5nZXMpIGFuZCBpdCB3aWxsIGJlIGltcG9ydGFudCB0byBt
b3ZlIHRoZQo+ID4gPiBpaW8KPiA+ID4gbWxvY2sgdG8gdGhlIHByaXZhdGUgc3RydWN0LiAgCj4g
PiAKPiA+IC4uLgo+ID4gICAKPiA+ID4gK2ludCBpaW9fZGV2aWNlX2NsYWltX2J1ZmZlcl9tb2Rl
KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCj4gPiA+ICt7Cj4gPiA+ICvCoMKgwqDCoMKgwqAg
bXV0ZXhfbG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gPiA+ICsKPiA+ID4gK8KgwqDCoMKgwqDC
oCBpZiAoaWlvX2J1ZmZlcl9lbmFibGVkKGluZGlvX2RldikpICAKPiA+IAo+ID4gRG8geW91IG5l
ZWQgdG8gYW5ub3RhdGUgdGhlc2UgdHdvIEFQSXMgdG8gbWFrZSBzcGFyc2UgaGFwcHkgYWJvdXQK
PiA+IGxvY2tpbmcgYmFsYW5jZT8KPiA+IAo+ID4gKFRyeSB0byBydW4gYG1ha2UgVz0xIEM9MSAu
Li5gIHdpdGggeW91ciBwYXRjaGVzIGFuZCBsb29rIGlmIGFueSBuZXcKPiA+IHdhcm5pbmdzIGFw
cGVhci4pICAKPiAKPiBtYWtlIFc9MSBDPTEgZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLWNvcmUu
bwo+ICMgIFVQRCAgICAgaW5jbHVkZS9jb25maWcva2VybmVsLnJlbGVhc2UKCi4uLgoKPiBkcml2
ZXJzL2lpby9pbmR1c3RyaWFsaW8tY29yZS5jOjIxMDA6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90
b3R5cGUgZm9yCj4gaWlvX2RldmljZV9jbGFpbV9idWZmZXJlZF9tb2RlKCkuIFByb3RvdHlwZSB3
YXMgZm9yCj4gaWlvX2RldmljZV9jbGFpbV9idWZmZXJfbW9kZSgpIGluc3RlYWQKClRoYXQgb25l
IHdhbnRzIGZpeGluZyBhcyB0aGlzIHBhdGNoIGludHJvZHVjZXMgaXQuCgo+IAo+IERvbid0IHJl
YWxseSBzZWUgYW55dGhpbmcgb2RkIGluIGhlcmUuLi4gQW0gSSBtaXNzaW5nIHNvbWV0aGluZz8g
Cj4gCj4gQW55d2F5cywgSSBndWVzcyB5b3UgbWVhbiBhbm5vdGF0aW9ucyBhcyBfX2FjcXVpcmVz
KCkgYW5kCj4gX19yZWxlYXNlcygpLi4uIFdlbGwsIHRoaXMgQVBJIGlzIHByZXR0eSBtdWNoIGFu
YWxvZ291cyB0bwo+IGlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUoKSB3aGljaCBhbHNvIGRv
bid0IGhhdmUgc3VjaCBhbm5vdGF0aW9ucy4KPiBUaHVzLCBJIHdvdWxkIHNheSB0byBhZGQgdGhl
bSAoaWYgd2UgYXJlIGdvaW5nIHRvbykgaW4gYSBmdXR1cmUgcGF0Y2gKPiB0byBib3RoIEFQSXMu
Li4KPiAKPiBBbHNvIGZpbmUgd2l0aCBhZGRpbmcgdGhlbSBub3cgaWYgSm9uYXRoYW4gZmVlbHMg
aXQncyBuZWNlc3NhcnkuCgpJJ3ZlIHdvbmRlcmVkIGZvciBhIHdoaWxlIHdoeSB3ZSBkb24ndCBn
ZXQgcmVwb3J0cyBhcwphIHJlc3VsdCBvZiB0aG9zZSBub3QgYmVpbmcgYW5ub3RhdGVkLiAgSG93
ZXZlciwgZm9sbG93IHVwIHBhdGNoCnByb2JhYmx5IG1ha2VzIHNlbnNlIHJhdGhlciB0aGFuIHJv
bGxpbmcgaXQgaW50byB0aGlzIHNlcmllcy4KCkpvbmF0aGFuCj4gCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
