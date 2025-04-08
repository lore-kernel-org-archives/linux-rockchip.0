Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDC6DC3600C
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 07:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSLIxkdLxw5a3E+qUoAdKftQgr00lJ0MxqdK4uRfvTU=; b=DEw/ouHw38KEwG
	GZ2KgRJVbK521Hvw25ZiialR/nL6EqAtuBMs59C6HLM8Ey+/MrXENNdVwJhawFdvuvVIKPZQ1Zs1r
	eToO1aYdG8ADGiikCdG4KWw+WmEm9h9c4hLuUW45BFZSD5WTco7Lw6OSLoiXkr1PwsF/YMu1IJSKD
	sM/ii7SDFN2EoGMV3FsGSq6g0oSLDisgUqvZp15CuZL6QzXGsrpsA+qVe/6y4DtUaF4ZE0OilEAr1
	U3QfwC2xg+TXGn/ihk8ViWcYCjChPPXLW8yghz4YNzzVwlnxk35zfvaB46hVELMPB5AZt2f96Jb8z
	FzkdQiBQQM/YmGMYNxPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u23Wc-000000036O2-3s0t;
	Tue, 08 Apr 2025 07:37:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u23R2-000000034dK-1qel;
	Tue, 08 Apr 2025 07:31:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=y2C+uRo2fVHUKx/+iSBSrq317XScpLFo+rXN012kNqs=; b=0t+ePt6z+QxWnu8TYx2heg9Wol
	NRgQcKJR9WRPerFtM6YFYBDdWjiek8EV+Tg2n647qjfHDFVetKcnnXvW4V37ZifW/m9+4/EWHIYJw
	8iycksI2i8YAx73B29Z/lTXwTo8lv5MRxSEQfRu8YDGdgUb8dlBiFOMPhOuPGZtv+X3F/hSLDS05Z
	yXrPln7nDPLG4E809r++H5+p4Vs4qZF3XOWMpCRGMQcQ5eFgehaTO3JhyloeXkcPKtc3jhGiqzWPk
	15mKTOjJBdaN4Jh9dMHoN9N2bB7g6Ptjg3a0cffvNPhn5+8Vvxeq5NwWsnwJ2v3ot9PcTqArGDLLx
	CTbOrqVw==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u23Qn-0005H9-MJ; Tue, 08 Apr 2025 09:31:37 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 1/2] clk: rockchip: clk-pll: Fix CRU_xx_CON2 register usage
Date: Tue, 08 Apr 2025 09:31:36 +0200
Message-ID: <3871892.kQq0lBPeGt@diego>
In-Reply-To: <20250408063126.38904-1-eagle.alexander923@gmail.com>
References: <20250408063126.38904-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_003152_494780_058B8755 
X-CRM114-Status: GOOD (  16.67  )
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

SGkgQWxleGFuZGVyLAoKQW0gRGllbnN0YWcsIDguIEFwcmlsIDIwMjUsIDA4OjMxOjI1IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQWxleGFuZGVyIFNoaXlhbjoKPiBBY2Nv
cmRpbmcgdG8gUkszNTg4IFRSTSwgQ1JVXyhDUExML0dQTEwvZXRjKV9DT04yIHJlZ2lzdGVyCj4g
KHJhdGUtayB2YWx1ZSkgZG9lcyBub3QgdXNlIGhpZ2h3b3JkIHdyaXRlIGVuYWJsZSBtYXNrLgo+
IExldHMgZml4IHRoaXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIFNoaXlhbiA8ZWFn
bGUuYWxleGFuZGVyOTIzQGdtYWlsLmNvbT4KClRoZSBjb21taXQgbWVzc2FnZSBkb2Vzbid0IHNh
eSwgYnV0IGRpZCB5b3UgY2hlY2sgdGhpcyBvbiBhY3R1YWwKaGFyZHdhcmUgdG9vPwoKU29tZXRp
bWVzIHRoZXJlIGlzIGEgZGlzY29ubmVjdCBiZXR3ZWVuIHRoZSBUUk0gYW5kIGFjdHVhbCBoYXJk
d2FyZSwKc28gdGhlIGFjdHVhbCByZWFsLWxpZmUgc2l0dWF0aW9uIHNob3VsZCBiZSBjaGVja2Vk
LgoKCkFzIGZvciBhIHRlc3QtY2FzZSwgYW55IHdyaXRlIHdpdGhvdXQgd3JpdGUtbWFzayB0byBh
IHJlZ2lzdGVyIHRoYXQKd291bGQgcmVxdWlyZSBhIHdyaXRlLW1hc2sgd291bGQgbm90IGNvbWUg
dGhyb3VnaC4KU28gd2l0aCB5b3VyIHBhdGNoIGFwcGxpZWQsIGRvZXMgdGhlIHJlZ2lzdGVyIHZh
bHVlIGNoYW5nZSBhZnRlcgp0aGUgd3JpdGUgYmVsb3cgd2hlbiByZWFkaW5nIGl0IGJhY2sgYWdh
aW4/CgoKVGhhbmtzCkhlaWtvCgoKPiAtLS0KPiAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBs
bC5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5jIGIvZHJp
dmVycy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5jCj4gaW5kZXggMmMyYWJiM2I0MjEwLi43N2JhNGQ2
ZTdiNWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5jCj4gKysr
IGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5jCj4gQEAgLTk1OSw3ICs5NTksNyBAQCBz
dGF0aWMgaW50IHJvY2tjaGlwX3JrMzU4OF9wbGxfc2V0X3BhcmFtcyhzdHJ1Y3Qgcm9ja2NoaXBf
Y2xrX3BsbCAqcGxsLAo+ICAJCSAgICAgICBISVdPUkRfVVBEQVRFKHJhdGUtPnMsIFJLMzU4OF9Q
TExDT04xX1NfTUFTSywgUkszNTg4X1BMTENPTjFfU19TSElGVCksCj4gIAkJICAgICAgIHBsbC0+
cmVnX2Jhc2UgKyBSSzMzOTlfUExMQ09OKDEpKTsKPiAgCj4gLQl3cml0ZWxfcmVsYXhlZChISVdP
UkRfVVBEQVRFKHJhdGUtPmssIFJLMzU4OF9QTExDT04yX0tfTUFTSywgUkszNTg4X1BMTENPTjJf
S19TSElGVCksCj4gKwl3cml0ZWxfcmVsYXhlZCgocmF0ZS0+ayAmIFJLMzU4OF9QTExDT04yX0tf
TUFTSykgPDwgUkszNTg4X1BMTENPTjJfS19TSElGVCwKPiAgCQkgICAgICAgcGxsLT5yZWdfYmFz
ZSArIFJLMzM5OV9QTExDT04oMikpOwo+ICAKPiAgCS8qIHNldCBwbGwgcG93ZXIgdXAgKi8KPiAK
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
