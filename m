Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87A17C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 May 2025 10:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6vPjd7MsAPLzAthydjAcaYXRFfe0hXAonsVYoa8iWo=; b=ClwnVhANAH6zFG
	Tqy/447Nlfh1C38HTQeFqUzbpjJYsMWqtQKrL004iZJfybim90Nkd5K68vQMNW+rLp0QhCjSEH9Lc
	u68y51IfDKD3PGH189w5w4GBBGq+65PRDMYr39fDoe2Y+j1lhgneBLU0Q7u0pJANcRSjGZAgkFo17
	bgWTu9mK4PelqfHnb/57xJ8cpR347g5ti8qBmIKgoGoLznY8qzqaTrAKszKgQfSAv2HQi21F50fLx
	S40rqZkD1/0GkVuHknVboRRGKrp9B3fcy8xiPyrxuU+GCuSE85kkBQFKKLEk95+3CKhPCilazryPB
	uqqOANT7dtKuLyI2hKlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uE3jz-000000074it-0oWQ;
	Sun, 11 May 2025 10:17:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uE3hy-000000074W0-1SGu;
	Sun, 11 May 2025 10:14:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=5a3a7V+XtBUb1Y2DCtBO9bFgMKOod7QDQZbBrVd+0qg=; b=I6znUy3gTyckQuu0SDQ90zmn//
	MfHHUDDdn7yySDUuZqxcXtoyiJU02Y6TrTYMNjlo0na2og0PZ7ucuhKLyCu8eJ/t8H13Y4sFiaix8
	VBZHuowl2RXJIYFshxy3cIhm50NS8Q+NCCWxKKJKK/L5oNL8Hf/uTEFYWnKDgOuSfa9MCjQ85MtPd
	62Oc+zBe/5yNYyfGsajEGbQRJ4A4e4cEIztLGapSLFu+KpDLewF+p396mbYzVaw75FTne2tEmKN8N
	i+V0Nt9faMGex0wZ8yOBYlEVHy4aYMErOLl8gH0qPWnhv6+yzf5tBzncR0qj64MmxwFNcibzCxuf7
	3Dkbp4jg==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uE3hT-0002ls-VM; Sun, 11 May 2025 12:14:28 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: ziyao@disroot.org, Chukun Pan <amadeus@jmu.edu.cn>
Cc: andyshrk@163.com, conor+dt@kernel.org, damon.ding@rock-chips.com,
 devicetree@vger.kernel.org, didi.debian@cknow.org, dsimic@manjaro.org,
 jbx6244@gmail.com, jing@jing.rocks, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, sebastian.reichel@collabora.com,
 Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v7 4/5] arm64: dts: rockchip: add core dtsi for RK3562 SoC
Date: Sun, 11 May 2025 12:14:27 +0200
Message-ID: <13758471.dW097sEU6C@diego>
In-Reply-To: <20250511100022.31465-1-amadeus@jmu.edu.cn>
References: <20250310140916.14384-2-ziyao@disroot.org>
 <20250511100022.31465-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250511_031458_406797_EB155260 
X-CRM114-Status: GOOD (  24.70  )
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

SGksCgpBbSBTb25udGFnLCAxMS4gTWFpIDIwMjUsIDEyOjAwOjIyIE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQ2h1a3VuIFBhbjoKPiA+IDxzbmlwPgo+ID4gLS0tIC9kZXYv
bnVsbAo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjIuZHRzaQo+
ID4gQEAgLTAsMCArMSwxMTg3IEBACj4gPiA8c25pcD4KPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvcGh5L3BoeS5oPgo+ID4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9yb2NrY2hpcCxy
azM1NjItcG93ZXIuaD4KPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGluY3RybC9yb2NrY2hp
cC5oPgo+IAo+IERvZXMgdGhpcyBuZWVkIHRvIGJlIHNvcnRlZCBhbHBoYWJldGljYWxseT8KCnRo
ZSByazM1NjItcG93ZXIgaGVhZGVyIGlzIGdvbmUgdGVtcG9yYXJpbHkgYW55d2F5IChpbiBhbm90
aGVyIHRyZWUpLApzbyBJIG1vdmVkIHRoaW5ncyB0byBudW1iZXJzIHRlbXBvcmFyaWx5IGFuZCBj
cmVhdGVkCglodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNTEwMTYxNTMxLjIwODY3MDYt
MS1oZWlrb0BzbnRlY2guZGUKdG8gYmUgYXBwbGllZCBhZnRlciB0aGUgbWVyZ2Utd2luZG93LgoK
PiAKPiA+IDxzbmlwPgo+ID4gKwkJaWRsZS1zdGF0ZXMgewo+ID4gKwkJCWVudHJ5LW1ldGhvZCA9
ICJwc2NpIjsKPiAKPiBJdCB3b3VsZCBiZSBiZXR0ZXIgdG8gbGVhdmUgYSBibGFuayBsaW5lIGhl
cmUuCgphZGRlZAoKPiA+ICsJCQlDUFVfU0xFRVA6IGNwdS1zbGVlcCB7Cj4gCj4gPiA8c25pcD4K
PiA+ICsJCXB3bTA6IHB3bUBmZjIzMDAwMCB7Cj4gPiArCQkJY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxyazM1NjItcHdtIiwgInJvY2tjaGlwLHJrMzMyOC1wd20iOwo+ID4gKwkJCXJlZyA9IDwweDAg
MHhmZjIzMDAwMCAweDAgMHgxMD47Cj4gPiArCQkJI3B3bS1jZWxscyA9IDwzPjsKPiA+ICsJCQlw
aW5jdHJsLW5hbWVzID0gImFjdGl2ZSI7Cj4gCj4gSXQgc2hvdWxkIGJlIGBwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiO2AgZm9yIHB3bSwgc2VlIGFsc28gWzFdCgpmaXhlZCB0aGUgcGluY3RybAoK
Cj4gPiArCQkJcGluY3RybC0wID0gPCZwd20wbTBfcGlucz47Cj4gPiArCQkJY2xvY2tzID0gPCZj
cnUgQ0xLX1BNVTFfUFdNMD4sIDwmY3J1IFBDTEtfUE1VMV9QV00wPjsKPiA+ICsJCQljbG9jay1u
YW1lcyA9ICJwd20iLCAicGNsayI7Cj4gPiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICsJ
CX07Cj4gCj4gVGhlIHBpbmN0cmwgc2hvdWxkIGJlIHBsYWNlZCBiZWxvdyB0aGUgY2xvY2suCgpm
aXhlZCBvcmRlcmluZwoKPiAKPiA+IDxzbmlwPgo+ID4gKwkJCXBvd2VyOiBwb3dlci1jb250cm9s
bGVyIHsKPiA+ICsJCQkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjItcG93ZXItY29udHJv
bGxlciI7Cj4gPiArCQkJCSNwb3dlci1kb21haW4tY2VsbHMgPSA8MT47Cj4gPiArCQkJCSNhZGRy
ZXNzLWNlbGxzID0gPDE+Owo+ID4gKwkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiA+ICsJCQkJc3Rh
dHVzID0gIm9rYXkiOwo+ID4gKwo+IAo+IGBzdGF0dXMgPSAib2theSJgIGlzIG5vdCBuZWVkZWQg
aGVyZS4KPiBBbHNvIHJlbW92ZSBleHRyYSBibGFuayBsaW5lcy4KCmRyb3BwZWQgb2theSAuLi4g
ZXh0cmEgYmxhbmsgd2FzIGFscmVhZHkgcmVtb3Zpbmcgd2hlbiBhcHBseWluZwoKPiAKPiA+ICsK
PiA+ICsJCQkJcG93ZXItZG9tYWluQFJLMzU2Ml9QRF9HUFUgewo+ID4gPHNuaXA+Cj4gPiArCQkJ
CXBvd2VyLWRvbWFpbkBSSzM1NjJfUERfVkkgewo+ID4gKwkJCQkJcmVnID0gPFJLMzU2Ml9QRF9W
ST47Cj4gPiArCQkJCQkjcG93ZXItZG9tYWluLWNlbGxzID0gPDE+Owo+ID4gKwkJCQkJI2FkZHJl
c3MtY2VsbHMgPSA8MT47Cj4gPiArCQkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiA+ICsJCQkJCXBt
X3FvcyA9IDwmcW9zX2lzcD4sCj4gPiArCQkJCQkJIDwmcW9zX3ZpY2FwPjsKPiA+ICsKPiA+ICsJ
CQkJCXBvd2VyLWRvbWFpbkBSSzM1NjJfUERfVkVQVSB7Cj4gPiArCQkJCQkJcmVnID0gPFJLMzU2
Ml9QRF9WRVBVPjsKPiA+ICsJCQkJCQlwbV9xb3MgPSA8JnFvc192ZXB1PjsKPiA+ICsJCQkJCSNw
b3dlci1kb21haW4tY2VsbHMgPSA8MD47Cj4gCj4gVGhpcyBsaW5lIGlzIG1pc3NpbmcgYSB0YWIs
IHJlc3VsdGluZyBpbiBhbiBpbmRlbnRhdGlvbiBlcnJvci4KCmZpeGVkIHRoZSBpbmRlbnRhdGlv
bgoKCj4gPiArCQkJCQl9Owo+ID4gKwkJCQl9Owo+ID4gPHNuaXA+Cj4gCj4gPiArCQlwY2llMngx
OiBwY2llQGZmNTAwMDAwIHsKPiA+ICsJCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2Mi1w
Y2llIiwgInJvY2tjaGlwLHJrMzU2OC1wY2llIjsKPiA+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwz
PjsKPiA+ICsJCQkjc2l6ZS1jZWxscyA9IDwyPjsKPiAKPiAjYWRkcmVzcy1jZWxscy8jc2l6ZS1j
ZWxscyBzaG91bGQgYmUgcGxhY2VkIGFib3ZlIGBzdGF0dXMgPSAiZGlzYWJsZWQiO2AKPiBJIHRo
aW5rIG90aGVyIG5vZGVzIGFsc28gbmVlZCB0byBjaGFuZ2UgdGhpcy4gKFNvbWUgZm9yICNwd20t
Y2VsbHMpCgptb3ZlZCB0aGVtIChhbmQgdGhlICNwd20tY2VsbHMgYWJvdmUpCgoKPiA+ICsJCQlp
bnRlcnJ1cHQtbmFtZXMgPSAic3lzIiwgInBtYyIsICJtc2ciLCAibGVnYWN5IiwgImVyciIsICJt
c2kiOwo+IAo+IEkgbm90aWNlZCB0aGF0IHRoZSBic3AgNS4xMCBrZXJuZWwgc2FpZCB0aGF0IHBj
aWUgb25seSBoYXMgOCBNU0kgdmVjdG9ycywKPiBbMl1bM10gYnV0IGluIHRoZSBic3AgNi4xIGtl
cm5lbCBpdCBjaGFuZ2VkIHRvIDMyIE1TSSB2ZWN0b3JzIFs0XS4KPiAKPiBUaGUgcm9ja2NoaXAg
ZG9jdW1lbnRhdGlvbiBhbHNvIHNheXMgdGhlcmUgYXJlIG9ubHkgOCBNU0kgdmVjdG9yczoKPiAK
PiBbNV0gUGFnZTM3IDguOCAiUkszNTI4L1JLMzU2Mi9SSzM1Nzblj6/liIbphY3nmoRNU0nmiJbo
gIVNU0ktWOaAu+aVsOaYrzjkuKoiCj4gVHJhbnNsYXRlIGludG8gRW5nbGlzaDogIlRoZSB0b3Rh
bCBudW1iZXIgb2YgTVNJIG9yIE1TSS1YIHRoYXQKPiBjYW4gYmUgYWxsb2NhdGVkIGJ5IFJLMzUy
OC9SSzM1NjIvUkszNTc2IGlzIDgiCj4gCj4gV2Ugbm90aWNlZCB0aGlzIHdoZW4gc3VwcG9ydGlu
ZyByazM1MjgsIHNvIHdoaWNoIG9uZSBpcyBjb3JyZWN0PwoKSSdsbCBsZWF2ZSB0aGF0IGZvciBh
IGZpeHVwIHBhdGNoIG9yIGZ1cnRoZXIgZGlzY3Vzc2lvbiA7LSkKCgo+ID4gKwkJCXBoeXMgPSA8
JmNvbWJwaHlfcHUgUEhZX1RZUEVfUENJRT47Cj4gCj4gcy9jb21icGh5X3B1L2NvbWJwaHkKPiAK
PiA+IDxzbmlwPgo+ICsJCWNvbWJwaHlfcHU6IHBoeUBmZjc1MDAwMCB7Cj4gCj4gUGxlYXNlIGNo
YW5nZSBpdCB0byBgY29tYnBoeWAgbGlrZSByazM1NjguCgpjaGFuZ2VkIHRoZSBuYW1pbmcuCgoK
PiBIZWlrbyBJIGtub3cgeW91IGp1c3QgbWVyZ2VkIHRoaXMsIGl0J3MgYSBiaXQgb2ZmZW5zaXZl
IGJ1dCBJIHRoaW5rCj4gaXQgd291bGQgYmUgYmV0dGVyIHRvIGRyb3AgdGhlc2UgcGF0Y2hlcyBh
bmQgZml4IHRoZW0gZnVydGhlci4KPiBPciBrZXZlciB3b3VsZCB5b3UgbGlrZSB0byBzZW5kIGEg
Zml4IHBhdGNoPyBBbHRob3VnaCBtb3N0IG9mCj4gdGhlbSBhcmUgdHlwbyBpc3N1ZXMsIGl0IHdp
bGwgdGFrZSBhIGZldyBwYXRjaGVzIHRvIGZpeCBpdC4KCkZpcnN0IG9mIGFsbCwgdGhhbmtzIGZv
ciBub3RpY2luZyBhbGwgdGhlIGJpdHMgYW5kIHBpZWNlcyB0byBpbXByb3ZlLgpJIGRpIHRoaW5r
IEkgaGF2ZSBub3cgZml4ZWQgdXAgYWxsIHRoZSAicmVndWxhciIgcGllY2VzIHlvdSBtZW50aW9u
ZWQKYW5kIGFtZW5kZWQgdGhlIGNvbW1pdCBhY2NvcmRpbmdseToKCmh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21taW5kL2xpbnV4LXJvY2tjaGlwLmdpdC9j
b21taXQvP2lkPTFkMmY2NWZhOThkZGNhZmRmZDFlYmNkYjg3MTA1MTQxODYxYjU4NGEKCgpIZWlr
bwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
