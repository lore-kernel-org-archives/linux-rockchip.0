Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15093E81BDF
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Feb 2026 16:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Cma5wgK4oifWzet9uAJ89iUzKJEYKQXlwwHv9uCVDc=; b=XvE2Yikojk25Ft
	CpH8wyKiMXYKqznp3s29pMaKJtEPSLmaD+VvY4Q0fpQqsb7AaUPFWnbc6yW5Q8Gx5hzRNXBY6iMsd
	QZhHEuvESeBaqrVmBi/NcmtdAdxGIl+hTgDPYkJdSqwURWxL/utg8Sq2j4RGDH8EM4vNS9TnmkcJ0
	NgF4SZvpIvvRVdEDtqjLzFlHovllfpiMO+EbeFoe24EKJYJdpU+Nv1SEHP3xONNWdPZpqRiL2Vs8D
	FrQlH+izsQowdsfv7ILVLD4LhTnmBceD6uHTSq1tBISLAO/BAFdRu+d/A9iQ8QPeoNCeMFAO2CKpY
	drVGmG7nhzeIu4izbH8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpU7G-0000000FgkC-0rrT;
	Mon, 09 Feb 2026 16:28:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpU7D-0000000FgjU-0Nvm;
	Mon, 09 Feb 2026 16:28:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=5IZQ4COQKPXn9DHaU1hZteGEj7qfkW1soHzUGkYDH58=; b=oYif8k3yTZnZIcyM4COKRbCgoV
	W3TYLbDNyqPT1CA6CQ7rIdUQOD7Mvp1SuqLSLkHh62A1fxd8wjYe148jCsoqzpjJPPirB7SZNthL1
	lBCUfvEWMN+KtPbK9GGd0SsFQPSFudqZIncwSLImb9CPoLAKwpq5A3yAgAzelBEjwNNmrV5vyt+tC
	s+sZ+h7CxmAdPaUqmY2zD5bWsHBECk/mmSSA5/1VwLqdJWoEtgIHIacmkWng2QxOmiYuCFPsVfGmz
	Csp4vG66he2ip+9+C9kYPZPueO34rS5Y1//W7CjpQqHpQyv8WnF4G7RiXWTPssEz6OWRIXcagWOon
	m/Pe0XBw==;
Received: from i53875a32.versanet.de ([83.135.90.50] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vpU78-007nOC-2C; Mon, 09 Feb 2026 17:27:54 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add pinctrl for clk-generator GPIO on
 rk3588-tiger
Date: Mon, 09 Feb 2026 17:27:51 +0100
Message-ID: <5539724.6PsWsQAL7t@diego>
In-Reply-To: <c8816ada-bb46-4c15-a3a8-a06dac5acdbd@cherry.de>
References: <20260205102104.394991-1-heiko@sntech.de>
 <20260205102104.394991-4-heiko@sntech.de>
 <c8816ada-bb46-4c15-a3a8-a06dac5acdbd@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_082759_211271_639714B5 
X-CRM114-Status: GOOD (  27.25  )
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

QW0gRG9ubmVyc3RhZywgNS4gRmVicnVhciAyMDI2LCAxNzo0OToxNSBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIFF1ZW50aW4gU2NodWx6Ogo+IEhpIEhlaWtvLAo+IAo+IE9u
IDIvNS8yNiAxMToyMSBBTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiBGcm9tOiBIZWlrbyBT
dHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAY2hlcnJ5LmRlPgo+ID4gCj4gPiBXaGlsZSBzcGVjaWZp
YyBkcml2ZXIgaW4gdGhlIExpbnV4LUtlcm5lbCBoYW5kbGVzIEdQSU9zIGdyYWNlZnVsbHkgd2l0
aG91dAo+ID4gbWF0Y2hpbmcgcGluY3RybCBlbnRyaWVzLCB0aGlzIG1pZ2h0IG5vdCBiZSB0cnVl
IGZvciBvdGhlciBvcGVyYXRpbmcKPiA+IHN5c3RlbXMuIFNvIGhhdmluZyBwaW5jdHJsIGVudHJp
ZXMgbWFrZXMgdGhlIGhhcmR3YXJlLWRlc2NyaXB0aW9uCj4gPiBtb3JlIGNvbXBsZXRlLgo+ID4g
Cj4gPiBUaGUgc29tZXdoYXQgc2ltaWxhciByazM1ODgtamFndWFyIGJvYXJkIGhhcyBhIHBpbmN0
cmwgZW50cnkgYWxyZWFkeSwKPiA+IHNvIGFsc28gYWRkIG9uZSBmb3IgcmszNTg4LXRpZ2VyLgo+
ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAY2hl
cnJ5LmRlPgo+ID4gLS0tCj4gPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LXRpZ2VyLmR0c2kgfCA4ICsrKysrKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LXRpZ2VyLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10
aWdlci5kdHNpCj4gPiBpbmRleCAyNTlmYjEyNWUxM2YuLjkxMDU3YjE2NjY5MCAxMDA2NDQKPiA+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXRpZ2VyLmR0c2kKPiA+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXRpZ2VyLmR0c2kKPiA+
IEBAIC01OCw2ICs1OCw4IEBAIHBjaWVfcmVmY2xrOiBwY2llLWNsb2NrLWdlbmVyYXRvciB7Cj4g
PiAgIAkJY2xvY2stZnJlcXVlbmN5ID0gPDEwMDAwMDAwMD47Cj4gPiAgIAkJY2xvY2stb3V0cHV0
LW5hbWVzID0gInBjaWUzX3JlZmNsayI7Cj4gPiAgIAkJZW5hYmxlLWdwaW9zID0gPCZncGlvNCBS
S19QQjQgR1BJT19BQ1RJVkVfSElHSD47IC8qIFBDSUUzMFg0X0NMS1JFUU5fTTFfTCAqLwo+ID4g
KwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICsJCXBpbmN0cmwtMCA9IDwmcGNpZTMw
eDRfY2xrcmVxbl9tMV9sPjsKPiA+ICAgCQl2ZGQtc3VwcGx5ID0gPCZ2Y2NhXzN2M19zMD47Cj4g
PiAgIAl9Owo+ID4gICAKPiA+IEBAIC0zNTcsNiArMzU5LDEyIEBAIG1vZHVsZV9sZWRfcGluOiBt
b2R1bGUtbGVkLXBpbiB7Cj4gPiAgIAkJfTsKPiA+ICAgCX07Cj4gPiAgIAo+ID4gKwlwY2llMzB4
NCB7Cj4gPiArCQlwY2llMzB4NF9jbGtyZXFuX20xX2w6IHBjaWUzMHg0LWNsa3JlcW4tbTEtbCB7
Cj4gPiArCQkJcm9ja2NoaXAscGlucyA9IDw0IFJLX1BCNCBSS19GVU5DX0dQSU8gJnBjZmdfcHVs
bF9ub25lPjsKPiAKPiBTbyB0aGlzIGlzIGludGVyZXN0aW5nIGJlY2F1c2UgaXQgbWFkZSBtZSBk
b3VibGUtY2hlY2sgdGhlIHNjaGVtYXRpY3MgCj4gYW5kIEkgdGhpbmsgd2UgZGlkIGEgbWlzdGFr
ZSBvbiBKYWd1YXIuCj4gCj4gVGhpcyBvbmUgaGVyZSBpcyBmaW5lIGFzIHRoaXMgU29DIHBpbiBp
cyBjb25uZWN0ZWQgdG8gdGhlIFBEbiBwaW4gb2YgdGhlIAo+IElDIHdoaWNoIGhhcyBhbiBpbnRl
cm5hbCBQdWxsLVVwLCBzbyB0aGUgc3RhdGUgaXMgZGVmaW5lZC4KPiAKPiBIb3dldmVyLCBvbiBK
YWd1YXIgdGhpcyBzaWduYWwgY29udHJvbHMgYSB0cmFuc2lzdG9yIGFuZCB0aGVyZSdzIG5vIAo+
IGV4dGVybmFsIFB1bGwtVXAgb3IgUHVsbC1Eb3duIGJldHdlZW4gdGhlIFNvQyBhbmQgdGhlIHRy
YW5zaXN0b3IgZ2F0ZSBzbyAKPiB3ZSBwcm9iYWJseSBzaG91bGQgbm90IGhhdmUgcHVsbF9ub25l
IGZvciB0aGUgcGluY29uZi4gVGhlIGRlZmF1bHQgcmVzZXQgCj4gc3RhdGUgb2YgdGhpcyBwaW4g
aW4gUHVsbC1VcCBzbyBtYXliZSB3ZSBzaG91bGQgZ28gd2l0aCB0aGF0IHN1Y2ggdGhhdCAKPiB0
aGVyZSdzIG5vIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgcmVzZXQgZGVmYXVsdCBhbmQgdGhlIHRp
bWUgYmV0d2VlbiAKPiBhcHBsaWNhdGlvbiBvZiB0aGUgcGluY29uZiBieSB0aGUgY29yZSBhbmQg
YXNzZXJ0aW5nIG9mIHRoZSBwaW4gYnkgdGhlIAo+IGRyaXZlci4gV2hhdCBkbyB5b3UgdGhpbms/
CgpMb29raW5nIGF0IHRoZSBkYXRhc2hlZXQgZm9yIHRoZSBQSTZDNTU3LTA1QiwgYm90aCBuUEQg
YW5kIE9FIGFyZQpkZXNjcmliZWQgYXMgaGF2aW5nIGFuICJpbnRlcm5hbCBwdWxsIHVwIHJlc2lz
dG9yIiwgc28gdGhlIHBpbmNvbmYgc2lkZQpzaG91bGQgbm90IG1hdHRlcj8KCgo+IEFzIGZvciBU
aWdlciwgdGhpcyBpcyBmaW5lLCBzbzoKPiAKPiBSZXZpZXdlZC1ieTogUXVlbnRpbiBTY2h1bHog
PHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
