Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE8A1D68BEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Dec 2025 08:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xk3m2NSfOSCt3ECrcHlkDqqx9NDl3rupO+6chsc2/nI=; b=Az4QwlNLWq5QlM
	9vFH4VIc63L/srvk7jAAli3tNH7w1flrSfABQXY4EccWNeWjJ7firnGuHTbhS8Bsc6e5bAZEwNMZa
	ShpA8Of59SrbQdnaFKFokkoFWiIdnwfEdpZ/TB6YxbFG0WbjsLKiNWT2Va00V3SCaDzp+uGRHJ4m8
	BOtRJzBxoLOoC4myKzjVjD2G5tKX+zbrrPiT3AXNSNr9Jnfk7iJLUsgu+hG6UNFsR4ZrY2gEf9SPp
	3IRdpW2fAFki9fbwxwpV/2SulEyAAkTBMGeH/Kq9NdkvXpfUEN4Uw/kR7vBdkAG/Z7VpVdDaVKb79
	mkFfrycyYnMBvXxlxwNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW91M-000000080T0-3v5f;
	Thu, 18 Dec 2025 08:06:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW91H-000000080RK-2ep2;
	Thu, 18 Dec 2025 08:05:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9CF8140442;
	Thu, 18 Dec 2025 08:05:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E393C4CEFB;
	Thu, 18 Dec 2025 08:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766045152;
	bh=vELv4ehStK9743Z/oJRveuR6s774Sgk9sYDjlKQxYHw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dhcrn/0v8iolfLj1jxR1g5oRubuNyBWt96mwHJuW+kMJiY/qBzLvc86ldzkuiXcmm
	 x7jz5j8FIP3qVNfyczt+6/44EuK/H8UF3AIcHQFc/cm/5C5oyqN3yOtZTe6I3KxGpQ
	 yhdejaMoESOBd3WpOZIcd0qFj+pF9d7aAvclak0iQWTeG8i03Fbvfn1fs0TvPxWwaH
	 maePQ1k2KE2UTYaNbtbzfE5BRVynKnAbGLm44r15PkBh9a8gzr/wmqS9dc0L2ATLjc
	 JT4jkX2Eee1DRPEFhPiQqv6yYq/QU08kAAtfYMXVAD/4NmVdILXSU5kR5YrttQkEg7
	 N3p54RER5gAgg==
Date: Thu, 18 Dec 2025 13:35:37 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>, 
	Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to
 prevent damage
Message-ID: <qncj72c3owrw7rvnj6jit2sbn4ojyr3kztcjailfxtdboan6sy@ddh5g7v4fcvt>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_000555_718670_F655322F 
X-CRM114-Status: GOOD (  19.63  )
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

T24gTW9uLCBOb3YgMTcsIDIwMjUgYXQgMDY6NDc6MDVQTSAtMDMwMCwgR2VyYWxkbyBOYXNjaW1l
bnRvIHdyb3RlOgo+IFNoYXduIExpbiBmcm9tIFJvY2tjaGlwIGhhcyByZWl0ZXJhdGVkIHRoYXQg
dGhlcmUgbWF5IGJlIGRhbmdlciBpbiB1c2luZwo+IHRoZWlyIFBDSWUgd2l0aCA1LjAgR1QvcyBz
cGVlZHMuIFdhcm4gdGhlIHVzZXIgaWYgdGhleSBtYWtlIGEgRFQgY2hhbmdlCj4gZnJvbSB0aGUg
ZGVmYXVsdCBhbmQgZHJpdmUgYXQgMi41IEdUL3Mgb25seSwgZXZlbiBpZiB0aGUgRFQKPiBtYXgt
bGluay1zcGVlZCBwcm9wZXJ0eSBpcyBpbnZhbGlkIG9yIGluZXhpc3RlbnQuCj4gCj4gVGhpcyBj
aGFuZ2UgaXMgY29ycm9ib3JhdGVkIGJ5IFJLMzM5OSBvZmZpY2lhbCBkYXRhc2hlZXQgWzFdLCB3
aGljaAo+IHNheXMgbWF4aW11bSBsaW5rIHNwZWVkIGZvciB0aGlzIHBsYXRmb3JtIGlzIDIuNSBH
VC9zLgo+IAo+IFsxXSBodHRwczovL29wZW5zb3VyY2Uucm9jay1jaGlwcy5jb20vaW1hZ2VzL2Qv
ZDcvUm9ja2NoaXBfUkszMzk5X0RhdGFzaGVldF9WMi4xLTIwMjAwMzIzLnBkZgo+IAo+IEZpeGVz
OiA5NTZjZDk5YjM1YTggKCJQQ0k6IHJvY2tjaGlwOiBTZXBhcmF0ZSBjb21tb24gY29kZSBmcm9t
IFJDIGRyaXZlciIpCj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2ZmZDA1MDcw
LTk4NzktNDQ2OC05NGUzLWI4ODk2OGI0YzIxYkByb2NrLWNoaXBzLmNvbS8KPiBDYzogc3RhYmxl
QHZnZXIua2VybmVsLm9yZwo+IFJlcG9ydGVkLWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5q
YXJvLm9yZz4KPiBSZXBvcnRlZC1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5j
b20+Cj4gUmV2aWV3ZWQtYnk6IERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPgo+IFNp
Z25lZC1vZmYtYnk6IEdlcmFsZG8gTmFzY2ltZW50byA8Z2VyYWxkb2dhYnJpZWxAZ21haWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYyB8IDEwICsr
KysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlw
LmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+IGluZGV4IDBmODhk
YTM3ODgwNS4uOTkyY2NmNGIxMzllIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpZS1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJv
Y2tjaGlwLmMKPiBAQCAtNjYsOCArNjYsMTQgQEAgaW50IHJvY2tjaGlwX3BjaWVfcGFyc2VfZHQo
c3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ICAJfQo+ICAKPiAgCXJvY2tjaGlwLT5s
aW5rX2dlbiA9IG9mX3BjaV9nZXRfbWF4X2xpbmtfc3BlZWQobm9kZSk7Cj4gLQlpZiAocm9ja2No
aXAtPmxpbmtfZ2VuIDwgMCB8fCByb2NrY2hpcC0+bGlua19nZW4gPiAyKQo+IC0JCXJvY2tjaGlw
LT5saW5rX2dlbiA9IDI7Cj4gKwlpZiAocm9ja2NoaXAtPmxpbmtfZ2VuIDwgMCB8fCByb2NrY2hp
cC0+bGlua19nZW4gPiAyKSB7Cj4gKwkJcm9ja2NoaXAtPmxpbmtfZ2VuID0gMTsKPiArCQlkZXZf
d2FybihkZXYsICJpbnZhbGlkIG1heC1saW5rLXNwZWVkLCBzZXQgdG8gMi41IEdUL3NcbiIpOwo+
ICsJfQo+ICsJZWxzZSBpZiAocm9ja2NoaXAtPmxpbmtfZ2VuID09IDIpIHsKPiArCQlyb2NrY2hp
cC0+bGlua19nZW4gPSAxOwo+ICsJCWRldl93YXJuKGRldiwgIjUuMCBHVC9zIGlzIGRhbmdlcm91
cywgc2V0IHRvIDIuNSBHVC9zXG4iKTsKCldoYXQgZG9lcyAnZGFuZ2VyJyByZWFsbHkgbWVhbiBo
ZXJlPyBMaW5rIGluc3RhYmlsaXR5IG9yIHNvbWV0aGluZyBlbHNlPwoKRXJyb3IgbWVzc2FnZXMg
c2hvdWxkIGJlIHByZWNpc2UgYW5kIG5vdCBmZWFybW9uZ2VyaW5nLgoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
