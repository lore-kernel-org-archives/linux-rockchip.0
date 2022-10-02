Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C32ECC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 11:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2sCVL6KbFCqM0xNlUW4xXn7HdBuBDDN5m4p35fEojyQ=; b=VfvueRPFKNqUKA
	bOZgYyJDgLwDqfSYvkom2iYdysXJZ/HnnKct+cRT6rQugy8qPI+ugQEL5B7ESXgwh04aJxHnoEcLH
	veWlsBiYCf2e5mK5ndIZrRnyBrvAdLf7UTPcRT7/QjwswSohSn6mqPFinRXCot7b2TUSef1H+oYis
	L19ke8sjIzDJ2NqHMuK9YOajam1Zk9zqWRU0C7s8J96OQfQeUJVhNqaTQb92TnSpAVODUlfoSWM4l
	vciZ1FQFZBcjNm9fST1Y1zG0W15u523vfs3ziBckdeXEY041vxq0jpeVq6BvwgAxtARoKykZ2z26J
	uo49F3WolxcE7YXvVfyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oewpt-000tN7-6b; Sun, 02 Oct 2022 11:08:41 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oewpi-000tIy-8k; Sun, 02 Oct 2022 11:08:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id C47EACE09B0;
	Sun,  2 Oct 2022 11:08:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD61DC433C1;
	Sun,  2 Oct 2022 11:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664708900;
	bh=Nc2ydgbMIQ6OD7F0wBMPbQVGKnY8yn+fS6qUUd9/xas=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ho8+hC2dVibWioupL83ztIB0d19HmKOELPOWm4YYl1n9E06jLwAIcRcqbpoVxK5E0
	 +fl7G557JdnvutgXcy/Oqwes6uaeHSFfqya/gPvC7iJYTbOSSeKT/jXv4ggfRYfsTJ
	 MMJbOleuNOeb+9z081hbsrLTm0C5trT+ShlhcQyhJEdEwqZmjKPeEpIjLA+c6RzOYC
	 CPclxUq+uhcNNIV4P/spMRwWpKnZqiWGFjiUq+RLBVU0Ht/wUhk+PLux6ikDo/tlWy
	 H/lKuwR9nJ3z1AHSvkj5oLn7IG1wRuobp4WjrLONWSurNi4BW6T2I9YfUtMXU4zEqb
	 CtpMvDrXwil8g==
Date: Sun, 2 Oct 2022 12:08:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Nuno =?UTF-8?B?U8Oh?=  <nuno.sa@analog.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-imx@nxp.com,
 linux-iio@vger.kernel.org, Chunyan Zhang <zhang.lyra@gmail.com>, Michael
 Hennerich <Michael.Hennerich@analog.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Sascha Hauer
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
Subject: Re: [PATCH 14/15] iio: health: max30102: do not use internal
 iio_dev lock
Message-ID: <20221002120830.52699870@jic23-huawei>
In-Reply-To: <d41b131df565e7c7d6083ebbd7de0346c46b9e23.camel@gmail.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-15-nuno.sa@analog.com>
	<20220924165417.46a1fc44@jic23-huawei>
	<d41b131df565e7c7d6083ebbd7de0346c46b9e23.camel@gmail.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221002_040830_714946_BE08060A 
X-CRM114-Status: GOOD (  41.33  )
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

T24gRnJpLCAzMCBTZXAgMjAyMiAxMjowNDozOSArMDIwMApOdW5vIFPDoSA8bm9uYW1lLm51bm9A
Z21haWwuY29tPiB3cm90ZToKCj4gT24gU2F0LCAyMDIyLTA5LTI0IGF0IDE2OjU0ICswMTAwLCBK
b25hdGhhbiBDYW1lcm9uIHdyb3RlOgo+ID4gT24gVHVlLCAyMCBTZXAgMjAyMiAxMzoyODoyMCAr
MDIwMAo+ID4gTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4gd3JvdGU6Cj4gPiAgIAo+ID4g
PiBUaGUgcGF0dGVybiB1c2VkIGluIHRoaXMgZGV2aWNlIGRvZXMgbm90IHF1aXRlIGZpdCBpbiB0
aGUKPiA+ID4gaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZSgpIHR5cGljYWwgdXNhZ2UuIElu
IHRoaXMgY2FzZSwKPiA+ID4gaWlvX2J1ZmZlcl9lbmFibGVkKCkgd2FzIGJlaW5nIHVzZWQgbm90
IHRvIHByZXZlbnQgdGhlIHJhdyBhY2Nlc3MKPiA+ID4gYnV0IHRvIGRlY2lkZSB3aGV0aGVyIG9y
IG5vdCB0aGUgZGV2aWNlIG5lZWRzIHRvIGJlIHBvd2VyZWQgb24KPiA+ID4gYmVmb3JlLgo+ID4g
PiBJZiBidWZmZXJpbmcsIHRoZW4gdGhlIGRldmljZSBpcyBhbHJlYWR5IG9uLiBUbyBndWFyYW50
ZWUgdGhlIHNhbWUKPiA+ID4gYmVoYXZpb3IsIGEgY29tYmluYXRpb24gb2YgbG9ja3MgaXMgYmVp
bmcgdXNlZDoKPiA+ID4gCj4gPiA+IDEuIFVzZSBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2Rl
KCkgdG8gY2hlY2sgaWYgZGlyZWN0IG1vZGUgY2FuCj4gPiA+IGJlCj4gPiA+IGNsYWltZWQgYW5k
IGlmIHdlIGNhbiwgdGhlbiB3ZSBrZWVwIGl0IHVudGlsIHRoZSByZWFkaW5nIGlzIGRvbmUKPiA+
ID4gKHdoaWNoCj4gPiA+IGFsc28gbWVhbnMgdGhlIGRldmljZSB3aWxsIGJlIHBvd2VyZWQgb24g
YW5kIG9mZik7Cj4gPiA+IDIuIElmIGFscmVhZHkgYnVmZmVyaW5nLCB3ZSBuZWVkIHRvIG1ha2Ug
c3VyZSB0aGF0IGJ1ZmZlcmluZyBpcyBub3QKPiA+ID4gZGlzYWJsZWQgKGFuZCBoZW5jZSwgcG93
ZXJpbmcgb2ZmIHRoZSBkZXZpY2UpIHdoaWxlIGRvaW5nIGEgcmF3Cj4gPiA+IHJlYWQuIEZvcgo+
ID4gPiB0aGF0LCB3ZSBjYW4gbWFrZSB1c2Ugb2YgdGhlIGxvY2FsIGxvY2sgdGhhdCBhbHJlYWR5
IGV4aXN0cy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE51bm8gU8OhIDxudW5vLnNhQGFu
YWxvZy5jb20+ICAKPiA+IE9idmlvdXNseSBzYW1lIGRhbmNlIGluIGhlcmUgYXMgdGhlIHJlbGF0
ZWQgcHJldmlvdXMgcGF0Y2guIFNvIHNhbWUKPiA+IHNvbHV0aW9uCj4gPiBuZWVkcyBhZG9wdGlu
Zy7CoCBJIGp1c3QgdGhvdWdodCBJJ2QgcmVwbHkgdG8gbWFrZSBzdXJlIHdlIGRpZG4ndAo+ID4g
Zm9yZ2V0IHRvCj4gPiBjb3ZlciB0aGVtIGJvdGggOikKPiA+IAo+ID4gICAKPiBIaSBKb25hdGhh
biwKPiAKPiBTbyBJIHdhcyB3b3JraW5nIG9uIHYyIGluIHRoZSBtb3JuaW5nIGFuZCB3ZW50IHdp
dGggeW91cgo+IGlpb19kZXZpY2VfY2xhaW1fYnVmZmVyX21vZGUoKSBhcHByb2FjaC4uLiBBbmQg
YmFoLCB3ZWxsIGl0IHdvcmtzIGxpa2UKPiBhIGNoYXJtIGluIHRoZSBwcmV2aW91cyBwYXRjaCwg
aXQgZmFpbHMgaW4gdGhpcyBvbmU6Cj4gCj4gLSAgICAgICAgICAgICAgIG11dGV4X2xvY2soJmlu
ZGlvX2Rldi0+bWxvY2spOwo+IC0gICAgICAgICAgICAgICBpZiAoIWlpb19idWZmZXJfZW5hYmxl
ZChpbmRpb19kZXYpKQo+ICsgICAgICAgICAgICAgICBpZiAoaWlvX2RldmljZV9jbGFpbV9idWZm
ZXJfbW9kZShpbmRpb19kZXYpKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcmV0ID0gbWF4
MzAxMDJfZ2V0X3RlbXAoZGF0YSwgdmFsLCB0cnVlKTsKPiAtICAgICAgICAgICAgICAgZWxzZQo+
ICsgICAgICAgICAgICAgICB9IGVsc2Ugewo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldCA9
IG1heDMwMTAyX2dldF90ZW1wKGRhdGEsIHZhbCwgZmFsc2UpOwo+IC0gICAgICAgICAgICAgICBt
dXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+IC0gICAgICAgICAgICAgICBpZiAocmV0
KQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlpb19kZXZpY2VfcmVsZWFzZV9idWZmZXJfbW9k
ZShpbmRpb19kZXYpOwo+ICsgICAgICAgICAgICAgICB9Cj4gKyAgICAgICAgICAgICAgIGlmKHJl
dCkKPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+IAo+IAo+IE5vdGUgdGhh
dCBpZiB3ZSBhcmUgbm90IGluIGJ1ZmZlcmVkIG1vZGUgd2Ugd29uJ3QgZ2V0IG1sb2NrIGFuZCBj
YWxsCj4gbWF4MzAxMDJfZ2V0X3RlbXAoZGF0YSwgdmFsLCB0cnVlKSB3aXRob3V0IGFueSBsb2Nr
LiBXaGlsZSBpdCdzIHZlcnkKPiB1bmxpa2VseSBmb3Igc29tZW9uZSwgaW4gdGhlIG1lYW50aW1l
LCB0byBlbmFibGUgdGhlIGJ1ZmZlciBhbmQgdGhlbgo+IGRpc2FibGUgaXQsIGl0J3Mgc3RpbGwg
cmFjeSBhbmQgcG9zc2libGUgKGF0IGxlYXN0IGluIHRoZW9yeSkuCgpBaC4gVGhhdCdzIGluZGVl
ZCB0ZWRpb3VzLiBJJ2QgY2xvc2UgdGhlIHJhY2UgYnkgY2xhaW1pbmcgZGlyZWN0IG1vZGUKZm9y
IHRoZSBlbHNlIGJyYW5jaC4gIElmIHRoYXQgZmFpbHMsIHBhaCwganVzdCBmYWlsIHRoZSBjYWxs
IHdpdGggYSBzdWl0YWJsZQplcnJvciByZXR1cm4gKC1FQUdBSU4gcHJvYmFibHkpLiAKT3IgcHV0
IGEgcmV0cnkgbG9vayBhcm91bmQgdGhlIHdob2xlIHRoaW5nIHRvIG1ha2UgaXQgZXZlbiBsZXNz
IGxpa2VseQp3ZSdsbCBoaXQgdGhlIGdhcCBpbiB0aGUgbG9ja2luZy4KCk90aGVyd2lzZSwgd2Ug
Y291bGQgZG8gaWlvX2RldmljZV9jbGFpbV9jdXJyZW50X21vZGUoKSB0aGF0IGxvY2tzIG9uIG9u
ZQpvciB0aGUgb3RoZXIgYnV0IHRoYXQganVzdCBzZWVtcyB3ZWlyZC4KCj4gCj4gU28sIEknbSB0
aGlua2luZyBhZ2FpbiBvbiB0aGUgZmxhZyBhcHByb2FjaC4uLiBKdXN0IGNoZWNrIG15IGNvbW1l
bnQKPiAoaW4gdGhlIHByZXZpb3VzIHBhdGNoKSBhYm91dCBpdCBiZWluZyByZWZjb3VudGVkLiBJ
IG1lYW4sIEkgbWlnaHQgYmUKPiBtaXNzaW5nIHNvbWV0aGluZywgYnV0IGlmIHdlIG5lZWQgYSBy
ZWZjb3VudCwgSSB3b3VsZCBzYXkgdGhpbmdzIHdvdWxkCj4gYmUgYWxyZWFkeSAocG90ZW50aWFs
bHkpIGJyb2tlbiwgcmlnaHQ/CgpJJ20gbm90IDEwMCUgc3VyZSBvbiB0aGUgcmVmY291bnQgbmVj
ZXNzaXR5LCBhcyBJJ3ZlIG5vdCBsb29rZWQgYXQKdGhlIGNvZGUgYWdhaW4sIGJ1dCB0aGVzZSB0
aGluZ3MgdGVuZCB0byBiZSBzeW1tZXRyaWMgYXMgZGVzY3JpYmVkIGluIHRoZQpyZXBseSB0byB0
aGUgcHJldmlvdXMuICAgU28geW91IG5lZWQgdG8gY292ZXIgdGhlIGNhc2UgdGhhdCB0aGlzIGNh
bGwKcmFjZXMgd2l0aCB0aGUgYnVmZmVyIGJlaW5nIGRpc2FibGVkLgoKPiAKPiBXaXRoIHRoaXMg
c3RlcCBiYWNrLCBJJ20gcGxhbm5pbmcgb24gYSB2MiBpbiB0aGUgYmVnaW5uaW5nIG9mIHRoZSB3
ZWVrCj4gYWZ0ZXIgd2UgaGF2ZSB0aGlzIHNvcnRlZCBvdXQgKGFuZCBJIGd1ZXNzIHdlIG5lZWQg
dG8gc2V0dGxlIHRoaW5ncwo+IGFsc28gaW4gdGhlIGFkNzk5eCBwYXRjaCkKPiAKPiAtIE51bm8g
U8OhCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
