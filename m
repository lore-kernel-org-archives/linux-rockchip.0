Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9431ECD9A8
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Feb 2026 21:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Z5CKSf4Hmui2acCVrtHb4p3WgXdw3D2tZu7QDqqji4=; b=276AmrxyYziegN
	mvb+LyRojc1rjy9Y2wXy2BhGYxDhlJ8YVAYFkv4CPunCKvdmEIghUKv7NWnG4RWHVZmPCY7+d4YK/
	CPVcwRIosrw/vkU2EdFU9aDml0PyIMsqLZfi5P2Qx/RhbTPUFgUmsd0Lp4JiWxD2yIAbHsOMk1Ei6
	f09V8nz0z76L9CAoBLRN+MzhNdxI2XhhNz72pNn902AiB1jjNCvp3Slx+5N3FZtuEsL/980LSeCu/
	8RDF8PVSm3IiEOXyaqJsEktuR9l1UpxLb6nGqszhjuPUJGKUIT9Y6/UL1uCvBClYVMbJ+vQLHHO1a
	it3bun9YLffIPJm1sE8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo6ui-0000000AWRo-1ldN;
	Thu, 05 Feb 2026 21:29:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo6ug-0000000AWRL-0Wqp;
	Thu, 05 Feb 2026 21:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=/wAd/239BwDVBbEy2HHvjF0Km3ZlDxZOWPwFteBhOuE=; b=suuyb0UsFejPSRDPi5rxp2bKPI
	rpW0rci/ZvUv4j/jWRBHeZqaHtsC6oauLVU5ABig/dwhqV4Xk1bfUJVqmDyYD/fZt+k0FO6HKiLZr
	dB9IS1p0U6oIiZapDFIbz3YNq2pX7UEz7c08nnjmLZqq7lWxDXoTO6C4hK5xza0ASefeqOmwfqWKv
	a1oDjFVVrRcVt+kj/jRtyBwOUZwVB9bFD1IPNfSSPCG7T2WlIIGnRLfpx9KRQkM6GNHi28ZTSZlbF
	nQG+DDnNdmDNhG9sPCQj2nN+sPMowTvYqf/kD5one1iyWypE8FkXooe590j1lXwWbmwHQJhFVz0+n
	hVwVgPHw==;
Received: from i53875afe.versanet.de ([83.135.90.254] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vo6ua-007GOA-5m; Thu, 05 Feb 2026 22:29:16 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Willy Tarreau <w@1wt.eu>
Cc: Kever Yang <kever.yang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Finley Xiao <finley.xiao@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v3 3/3] nvmem: rockchip-otp: Add support for rk3562
Date: Thu, 05 Feb 2026 22:29:15 +0100
Message-ID: <4412828.687JKscXgg@diego>
In-Reply-To: <aYS5ATObatoDnKFs@1wt.eu>
References: <20250415103203.82972-1-kever.yang@rock-chips.com> <3080333.vCJZsxu672@diego>
 <aYS5ATObatoDnKFs@1wt.eu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_132922_168638_3757EE9A 
X-CRM114-Status: GOOD (  22.68  )
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

SGkgV2lsbHksCgpBbSBEb25uZXJzdGFnLCA1LiBGZWJydWFyIDIwMjYsIDE2OjM2OjMzIE1pdHRl
bGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgV2lsbHkgVGFycmVhdToKPiBPbiBUaHUs
IEZlYiAwNSwgMjAyNiBhdCAwMTo1MDozNFBNICswMTAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiA+IEFtIE1vbnRhZywgMjguIEp1bGkgMjAyNSwgMjE6MDE6NTQgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBXaWxseSBUYXJyZWF1Ogo+ID4gPiBPbiBUdWUsIEFwciAxNSwg
MjAyNSBhdCAwNjozMjowM1BNICswODAwLCBLZXZlciBZYW5nIHdyb3RlOgo+ID4gPiA+IEZyb206
IEZpbmxleSBYaWFvIDxmaW5sZXkueGlhb0Byb2NrLWNoaXBzLmNvbT4KPiA+ID4gPiAKPiA+ID4g
PiBUaGlzIGFkZHMgdGhlIG5lY2Vzc2FyeSBkYXRhIGZvciBoYW5kbGluZyBvdHAgb24gdGhlIHJr
MzU2Mi4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGaW5sZXkgWGlhbyA8ZmlubGV5
LnhpYW9Acm9jay1jaGlwcy5jb20+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogS2V2ZXIgWWFuZyA8
a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiA+ID4gCj4gPiA+IFN1Y2Nlc3NmdWxseSB0ZXN0
ZWQgd2l0aCBKb25hcycgcGF0Y2hlcyBvbiB0b3Agb2YgaXQgb24gbXkKPiA+ID4gUmFkeGEgRTIw
QyAoUkszNTI4KToKPiA+ID4gCj4gPiA+IFRlc3RlZC1ieTogV2lsbHkgVGFycmVhdSA8d0Axd3Qu
ZXU+Cj4gPiAKPiA+IGFzIHlvdSByZXBsaWVkIHRvIHRoZSByazM1NjIgdmFyaWFudCwgZG9lcyB0
aGF0IG1lYW4gdGhlIHJrMzUyOAo+ID4gdXNlcyB0aGUgc2FtZSB2YXJpYW50IGRhdGE/CgpbLi4u
XQoKPiBJdCdzIHZlcnkgcG9zc2libGUgdGhhdCBJIHZpc3VhbGx5IG1pc3Rvb2sgb25lIGZvciB0
aGUgb3RoZXIgd2hlbgo+IHJlc3BvbmRpbmcgdG8gdGhlIHNlcmllcywgYW5kIGlmIHNvLCBJJ20g
cmVhbGx5IHNvcnJ5IGFib3V0IHRoYXQhCgpSZWFsbHksIG5vIHdvcnJpZXMgLi4uIGl0IGp1c3Qg
Y29uZnVzZWQgbWUgYSBiaXQsIHdoaWxlIEkgd2FzCnJlc3VycmVjdGluZyB0aGUgd2hvbGUgdGhp
bmcgOi0pCgpbLi4uXQoKPiBJIGhhdmUgb25lIGV4dHJhIEUyMEMgdGhhdCdzIG5vdCB5ZXQgaW4g
cHJvZCBpZiB5b3UncmUgaW50ZXJlc3RlZCBpbgo+IG1lIHJ1bm5pbmcgc29tZSBzcGVjaWZpYyB0
ZXN0cy4gSXQgd2lsbCBub3QgaGFwcGVuIHF1aWNrbHkgYnV0IGp1c3QgbGV0Cj4gbWUga25vdyBp
ZiBJIGNhbiBoZWxwLCBhcyBpdCdzIGEgbmljZSBsaXR0bGUgbWFjaGluZS4KCldpdGggSm9uYXMn
IGJsZXNzaW5nIEkgYWRkZWQgaGlzIHBhdGNoZXMgZm9yIHRoZSBSSzM1MjggYW5kIHNlbmQKdGhl
IGRyaXZlciB0aGluZyByZWJhc2VkIG9udG8gYSByZWNlbnQga2VybmVsIGp1c3Qgbm93IFswXSB3
aXRoIHlvdQppbiBDYy4KCkkndmUgYWxzbyBzZW5kIGluIHRoZSBjb3JyZXNwb25kaW5nIERUUyBw
YXRjaGVzIGZvciBhbGwgMyBbMV0sIGFnYWluCndpdGggeW91IGluIENjIDotKSAuCgpTbyBpZiB5
b3UgY2FuIGdpdmUgdGhlbSBhIHNwaW4gb24geW91ciBSSzM1MjggYm9hcmQsIHRoYXQgd291bGQg
YmUgZ3JlYXQuCkJlY2F1c2UgSSBuZWVkIHRvIGZpbmQgbXkgUkszNTI4IGJvYXJkIGZpcnN0IDot
KSAuCgoKVGhhbmtzIGEgbG90CkhlaWtvCgoKWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LXJvY2tjaGlwLzIwMjYwMjA1MjExOTAxLjQ5MDE4MS0xLWhlaWtvQHNudGVjaC5kZS9ULyN0
ClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI2MDIwNTIxMjM0
Ny40OTA2MzYtMS1oZWlrb0BzbnRlY2guZGUvVC8jdAoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
