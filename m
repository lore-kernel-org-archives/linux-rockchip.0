Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E426C5AD49
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jun 2025 13:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ifpx0emZM4gMI4WikEIdBbKJWvuffP5dLLrI3SD3N40=; b=klQ1qVdId87Q3z
	7uneSzIdqHRV7I/FZ8pK7lun79OtrrIJ9WsKgd0VpotipY0aQdeQK4dQ+TVoDqnnngqnIGrRf9wv9
	LsBlZShq7WRxPIX16b03dP2hxZejMji4QF01KEYkjSguiY6XFnPQ5+3fPw4WCz+CzSlIpoApPiYab
	r+RYH/VStkqswTqTNmTBXOhaz7nDOQbc+Vtri9kjpbIrPgLBtvMli3D8xkZgDAnVtV8o1oyqU4dZd
	lZBfSAASGsLkPBgPJIpW0Khz9u/bqSh51Xj7PbkuEa0kvdG3H74JwLhCMxUon3/lVOSD39Hg5AsBU
	l9FgY40eNCsH2RZHXrjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM51w-00000007RcA-1fbm;
	Mon, 02 Jun 2025 13:16:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4zk-00000007RPn-13HA;
	Mon, 02 Jun 2025 13:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Th1bsXYbOdZNBdF4HpkqWzJZdFEbTYJpHy2+yVwfjLk=; b=Zltz4DYEAJKKQbIDz9XRJRi/AJ
	59wjiN/h8OXZGaXQGB0452s2iFnI1zU+IPY1w8k5EKp4u81L8YgToJme/4Y7pK4jA7yez7TWCegkN
	OQGc6sZvsIGtymAkACMrMnE+3y/Vp/fxEgFVrLGadY4xXOxOmQoQjzfqn8Jw08rbA0Dys9bFKdTiw
	G2mLBp2M1MzNsCfMVOOIWHQmWJHz3hU0XprPlfMM2WzxPYznBwsqZaI8KwuAnwKZ6jyx/ju6Onc+R
	+P9cVvuKJ90OZhDAIq7vBruure411VR6UT/1AJtSwfuDuniO2L7l0hC3GCGZge3bprxpiH4EYriKg
	Pip1Md9A==;
Received: from i53875a2b.versanet.de ([83.135.90.43] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uM4zc-00038Y-5g; Mon, 02 Jun 2025 15:14:20 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>,
 William Breathitt Gray <wbg@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, kernel@collabora.com,
 Jonas Karlman <jonas@kwiboo.se>,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH 4/7] soc: rockchip: add mfpwm driver
Date: Mon, 02 Jun 2025 15:14:19 +0200
Message-ID: <1970051.6tgchFWduM@diego>
In-Reply-To: <13790724.uLZWGnKmhe@workhorse>
References: <20250408-rk3576-pwm-v1-0-a49286c2ca8e@collabora.com>
 <2188729.OBFZWjSADL@diego> <13790724.uLZWGnKmhe@workhorse>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_061428_309231_BF9781F6 
X-CRM114-Status: GOOD (  31.03  )
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

QW0gTW9udGFnLCAyLiBKdW5pIDIwMjUsIDE0OjE1OjQ1IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IE9uIFNhdHVyZGF5LCAzMSBNYXkg
MjAyNSAyMzo0ODoyOSBDZW50cmFsIEV1cm9wZWFuIFN1bW1lciBUaW1lIEhlaWtvIFN0w7xibmVy
IHdyb3RlOgo+ID4gQW0gRGllbnN0YWcsIDguIEFwcmlsIDIwMjUsIDE0OjMyOjE2IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgoKPiA+IE9u
IGEgbW9yZSBnZW5lcmFsIG5vdGUsIHdoYXQgaXMgdGhlIGRpZmZlcmVudGlhdGlvbiB0byBhbiBN
RkQgaGVyZT8KPiA+IAo+ID4gTGlrZSB5b3UgY2FuIGFscmVhZHkgYmluZCBkdC1ub2RlcyB0byBN
RkQgc3ViZGV2aWNlcywgYW5kIGNhbiBpbXBsZW1lbnQKPiA+IHRoZSBleGNsdXNpdml0eSBBUEkg
dGhpbmcgb24gdG9wIG9mIGEgZ2VuZXJhbCBtZmQgZGV2aWNlLCB0byBtYWtlIHN1cmUgb25seQo+
ID4gb25lIG1mZC1jZWxsIGdldHMgYWN0aXZhdGVkIGF0IG9uZSB0aW1lLgo+ID4gCj4gPiBPdGhl
ciB0aGFuIHRoYXQsIHRoaXMgbG9va3MgbGlrZSBpdCByZWltcGxlbWVudHMgTUZEcz8KPiAKPiBX
aGF0IGluaXRpYWxseSBtYWRlIG1lIG5vdCBtYWtlIHRoaXMgYW4gTUZEIHdhcyBVd2UgS2xlaW5l
LUvDtm5pZyBleHByZXNzaW5nCj4gc29tZSBkb3VidHMsIHdoaWNoIGxlYWQgbWUgdG8gYWx0ZXJu
YXRpdmVzIGxpa2UgdGhlIGF1eGlsaWFyeSBidXMuIFJlYWRpbmcgdGhlCj4gYXV4aWxpYXJ5IGJ1
cyBkb2NzIEkgZm91bmQ6Cj4gCj4gICBBIGtleSByZXF1aXJlbWVudCBmb3IgdXRpbGl6aW5nIHRo
ZSBhdXhpbGlhcnkgYnVzIGlzIHRoYXQgdGhlcmUgaXMgbm8KPiAgIGRlcGVuZGVuY3kgb24gYSBw
aHlzaWNhbCBidXMsIGRldmljZSwgcmVnaXN0ZXIgYWNjZXNzZXMgb3IgcmVnbWFwIHN1cHBvcnQu
Cj4gICBUaGVzZSBpbmRpdmlkdWFsIGRldmljZXMgc3BsaXQgZnJvbSB0aGUgY29yZSBjYW5ub3Qg
bGl2ZSBvbiB0aGUgcGxhdGZvcm0KPiAgIGJ1cyBhcyB0aGV5IGFyZSBub3QgcGh5c2ljYWwgZGV2
aWNlcyB0aGF0IGFyZSBjb250cm9sbGVkIGJ5IERUL0FDUEkuIFRoZQo+ICAgc2FtZSBhcmd1bWVu
dCBhcHBsaWVzIGZvciBub3QgdXNpbmcgTUZEIGluIHRoaXMgc2NlbmFyaW8gYXMgTUZEIHJlbGll
cyBvbgo+ICAgaW5kaXZpZHVhbCBmdW5jdGlvbiBkZXZpY2VzIGJlaW5nIHBoeXNpY2FsIGRldmlj
ZXMuCgpJbnRlcmVzdGluZ2x5IHRoZSA1IHllYXIgb2xkIExXTiBhcnRpY2xlIHNlZW1zIHRvIGhh
dmUgYmVlbiBvdmVydGFrZW4gYnkKcmVhbC13b3JsZCB1c2FnZSA7LSkgLgoKSSBzZWUgcGluY3Ry
bC9waW5jdHJsLWVwOTN4eC5jIHVzaW5nIHJlZ21hcHMgKGFuZCB0aHVzIHJlZ2lzdGVycyksIHNp
bWlsYXJseQppbiBncHUvZHJtL2JyaWRnZS90aS1zbjY1ZHNpODYuYyBhbmQgYSBudW1iZXIgbW9y
ZS4KCgo+IEFkZGl0aW9uYWxseSwgTFdOWzFdIGFib3V0IHRoZSBhdXhpbGlhcnkgYnVzLCB3aGlj
aCBJJ3ZlIHJlYWQgdXAgb24gZHVyaW5nIG15Cj4gaWxsLWZhdGVkIGpvdXJuZXkgaW50byB0aGF0
IHZlcnNpb24gb2YgdGhlIGRyaXZlciwgYWxzbyBnb2VzIGZ1cnRoZXIgaW50byB3aHkKPiBNRkQg
aXMgc29tZXRpbWVzIGEgYmFkIGZpdDoKClsuLi5dIExXTiBleGNlcnB0IFsuLi5dCgo+IFRoZSBp
bmRpdmlkdWFsIGZ1bmN0aW9uIGRldmljZXMgbWF5IGJlIGFsbCBwb2ludGluZyBhdCB0aGUgc2Ft
ZSBwaHlzaWNhbAo+IGRldmljZSBoZXJlLCBidXQgdGhleSdyZSBub3QgZGlzdGluY3QgcGFydHMg
b2YgdGhlIGRldmljZS4gSG93ZXZlciwgdGhlcmUKPiBzdGlsbCAqaXMqIGEgcGh5c2ljYWwgZGV2
aWNlLCB3aGljaCBjb252aW5jZWQgbWUgdGhhdCBhdXhpbGlhcnkgYnVzIHdhc24ndAo+IHRoZSBy
aWdodCBvbmUgZWl0aGVyLCBhbmQgdGhlIGlkZWEgZm9yIGp1c3QgdXNpbmcgdGhlIHBsYXRmb3Jt
IGJ1cyBjYW1lCj4gZHVyaW5nIGEgd29yayBtZWV0aW5nLiBJZiBzb21lb25lIHdpdGggZXhwZXJp
ZW5jZSBvbiBhdXggYnVzIHZzIHBsYXRmb3JtIGJ1cwo+ICh3aGF0IHRoaXMgdXNlcykgdnMgTUZE
LCB0aGVuIGZlZWwgZnJlZSB0byBjaGltZSBpbi4gVW5mb3J0dW5hdGVseSwgYXMgaXMgdGhlCj4g
bm9ybSwgSSBjYW4ndCBzZWVtIHRvIGZpbmQgbXVjaCBpbiB0ZXJtcyBvZiBNRkQgZG9jdW1lbnRh
dGlvbi4gTmVlZGluZyB0byBrbm93Cj4gd2hhdCB0eXBlIG9mIGV4Y2x1c2lvbiB0aGV5IGd1YXJh
bnRlZSBhbmQgd2hhdCB0eXBlIG9mIGFic3RyYWN0aW9ucyB0aGV5IGJyaW5nCj4gd2l0aCB0aGVt
IHRoYXQgd291bGQgbWFrZSB0aGVtIG1vcmUgdXNlZnVsIHRoYW4gbXkgc29sdXRpb24gd291bGQg
bmVlZCBzb21lCj4ganVzdGlmaWNhdGlvbiBpbiBtb3JlIHRoYW4ganVzdCBhbiBhdXRvLWdlbmVy
YXRlZCBoZWFkZXIgbGlzdGluZy4KCkkgdGhpbmsgTUZEIGl0c2VsZiBkb2VzIG5vdCBwcm92aWRl
IGFueSBleGNsdXNpdml0eSAtIGFrYSBhbGxvd2luZyBkZWZpbml0aW9ucwp0aGF0IGNvbWJpbmF0
aW9ucyBvZiBzdWItZGV2aWNlcyBjYW5ub3QgYmUgdXNlZCBhdCB0aGUgc2FtZSB0aW1lLgoKQnV0
IGFzIEkgc2VlIGl0IHJpZ2h0IG5vdywgeW91IGhhdmUgc29ydCBvZiBhIG1mZC1kZXZpY2UgaW4g
dGhlcmUsIGNyZWF0aW5nCmFsbCB0aGUgc3ViLWRldmljZXMgYW5kIHRoZW4gdGhlIGFxdWlyZS9y
ZWxlYXNlIGxvZ2ljIG9uIHRvcCBtYWtpbmcgc3VyZQpvbmx5IG9uZSBkZXZpY2UgaXMgZXZlciBh
Y3RpdmUgYXQgdGhlIHNhbWUgdGltZS4KClJpZ2h0IG5vdyBJIHJlYWxseSBkb24ndCBzZWUgKHBy
b25lIHRvIGNvZGUtYmxpbmRuZXNzIHRob3VnaCkgd2h5IHRoZQphcXVpcmUvcmVsZWFzZSBsb2dp
YyBjb3VsZCBub3QgbGl2ZSBpbiBhIG1mZC1kZXZpY2UuCgoKPiBJIGFtIHZlcnkgaW5jbGluZWQg
dG8gc3RhcnQgcHJldGVuZGluZyB0aGluZ3MgdGhhdCBhcmVuJ3QgZG9jdW1lbnRlZCBkbwo+IG5v
dCBhY3R1YWxseSBleGlzdCBpbiB0aGUga2VybmVsLCBiZWNhdXNlIGl0J3MgdmVyeSBhbm5veWlu
ZyB0byBoYXZlIHRvCj4gY29uc3RhbnRseSBkZWFsIHdpdGggdGhpcy4KClNhZGx5IHRoZSAib3N0
cmljaCBtZXRob2QiIHdvbid0IHdvcmsgOy0pCgpTbyBhcyBhIHdheSBmb3J3YXJkLCBJJ2Qgc3Vn
Z2VzdCB5b3UgcG9zdGluZyB5b3VyIHYyLCBzbyB0aGF0IGFsbCB0aGUKY3VycmVudCByZXZpZXcg
Y29tbWVudHMgZ2V0IGFkZHJlc3NlZCBhbmQgYW1lbmRpbmcgdGhlCmNvdmVyLWxldHRlciB3aXRo
IHRoZSBhdXgtYnV4IC8gbWZkIGRpc2N1c3Npb24gdGhpbmcgKGlkZWFsbHkgaW4gYQpzb21ld2hh
dCBoaWdobGlnaGVkIGJsb2NrIHNvIHRoYXQgcGVvcGxlIHNraW1taW5nIGFsb25nIHdpbGwgbm90
aWNlKQphbmQgaW5jbHVkZSB0aGUgcmVsZXZhbnQgcGVvcGxlOgoKLSBmb3IgYXV4LWJ1eCBnZXRf
bWFpbnRhaW5lci5wbCBzYXlzOgpHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5k
YXRpb24ub3JnPiAobWFpbnRhaW5lcjpBVVhJTElBUlkgQlVTIERSSVZFUikKRGF2ZSBFcnRtYW4g
PGRhdmlkLm0uZXJ0bWFuQGludGVsLmNvbT4gKHJldmlld2VyOkFVWElMSUFSWSBCVVMgRFJJVkVS
KQpJcmEgV2VpbnkgPGlyYS53ZWlueUBpbnRlbC5jb20+IChyZXZpZXdlcjpBVVhJTElBUlkgQlVT
IERSSVZFUikKTGVvbiBSb21hbm92c2t5IDxsZW9uQGtlcm5lbC5vcmc+IChyZXZpZXdlcjpBVVhJ
TElBUlkgQlVTIERSSVZFUikKCi0gYW5kIGZvciBNRkQgaXQncyBvZiBjb3Vyc2UgTGVlOgpMZWUg
Sm9uZXMgPGxlZUBrZXJuZWwub3JnPiAobWFpbnRhaW5lcjpNVUxUSUZVTkNUSU9OIERFVklDRVMg
KE1GRCkpCgoKSGVpa28KCgo+IFsxXTogaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzg0MDQxNi8K
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
