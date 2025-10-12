Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 065BBCCD184
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Oct 2025 12:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v30rDe8MUsGN9SXtYVtqvqeFZaKDw/aGfbgh2UfsWlA=; b=yPyJNXE1QuUJ1L
	Gvo1f1M4370DlALBkCAz+A5p3OmecEzQu8Wrg0V7O8uksy4aXqDmAOwE5JNij6P0ViVpH7e1OJm4z
	DotVurTRESuu0XECi3BGw9M8hkMxZwy1tNme4Z2da3JnU7yXVIiAEufUtTIu2gaFM9TxCsSywuFh2
	NG6lBxYBp+Z0NSZdn9g3nbjWfxFq5eutJFh9C4LwBzVbm1aQLPv8wbSWKV0FNH5evTVjvR5rz1Nda
	7Ph8N5+0jH3xn2EFktzuQUZ0dQk9GKeD7y/na2WPioi1aCPUhwXBjuIp2/j+knsCTZ/rnlCPXaUYd
	vpIN8+NSGmRqJg8b1KQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7umj-0000000BILN-1a3s;
	Sun, 12 Oct 2025 12:02:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7umg-0000000BIKa-0ZyD;
	Sun, 12 Oct 2025 12:02:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=aA9seg1fpxaQELGrSnSu4+Jx/cuciZJA886149/ITZE=; b=mjkEg+LUVGD6UvMWXmsyec6jkd
	BhThjFqW6VIJTzrPqKA+UJqUuBojkOfhtxNaIuK4Se20xmvnXYSYbCzfTgtZuFgovphlA609Q+zGo
	foE2pPuwgPqW0AMuHt4u9dkY+3dFuUway0kwiCHeazgvJfdph9rUdi52F/B9QP4PUSo2vpgfe0Qd+
	HhQVMp5aaUCcecFVXicrP9868hkAOGUnMX0qqDm6JtqRKk2IGnjMeyX36S7oVG0WkBv/4R+AMhnCt
	B4UwR1mHogFP6cZ5QiscHyMzGv4x+x3LrgwRT/AEGKGsNXL9lyc38LOWwq2Tf/ZeSemRw1fPFVVbR
	pQmNyZJg==;
Received: from i53875bfd.versanet.de ([83.135.91.253] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v7umc-0005Mi-Fg; Sun, 12 Oct 2025 14:02:38 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Andrey Leonchikov <andreil499@gmail.com>
Cc: Andrey Leonchikov <andreil499@gmail.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH] dt-bindings: arm: rockchip: Fix PCIe power enable pin for BTT CB2
 and Pi2
Date: Sun, 12 Oct 2025 14:02:37 +0200
Message-ID: <2674033.Lt9SDvczpP@diego>
In-Reply-To: <20251012093135.80395-1-andreil499@gmail.com>
References: <20251012093135.80395-1-andreil499@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251012_050242_219566_64EF0CCE 
X-CRM114-Status: GOOD (  14.17  )
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

SGV5IEFuZHJleSwKCkFtIFNvbm50YWcsIDEyLiBPa3RvYmVyIDIwMjUsIDExOjMxOjI2IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQW5kcmV5IExlb25jaGlrb3Y6Cj4gRml4
IHR5cG8gaW50byByZWd1bGF0b3IgR1BJTyBkZWZpbml0aW9uLiBXaXRoIGN1cnJlbnQKPiBkZWZp
bml0aW9uIC0gUENJZSBkb24ndCB1cC4gVmFsaWQgZGVmaW5pdGlvbiBoYXZlIG9uCj4gInBpbmN0
cmwiIHNlY3Rpb24sICJwY2llX2RydiIgKGdwaW80LCBSS19QQjEpLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEFuZHJleSBMZW9uY2hpa292IDxhbmRyZWlsNDk5QGdtYWlsLmNvbT4KPiAtLS0KPiAgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtYmlndHJlZXRlY2gtY2IyLmR0c2kgfCAy
ICstCgpIb3cgZGlkIHlvdSBkZWNpZGUgb24gdGhlIHBhdGNoIHN1YmplY3Q/CgpJLmUuICJkdC1i
aW5kaW5nOiAuLi4iIGRlbm90ZXMgY2hhbmdlcyBmb3IgdGhlIGJpbmRpbmcgYXMgdGhlIG5hbWUg
aW1wbGllcywKd2hpbGUgeW91IGNoYW5nZSB0byBhIFJvY2tjaGlwIHNwZWNpZmljIERldmljZXRy
ZWUgc2hvdWxkIGhhdmUgc3RhcnRlZCB3aXRoCiJhcm02NDogZHRzOiByb2NrY2hpcDogRml4IFBD
SWUgLi4uIgoKQWxzbywgcGxlYXNlIHByb3ZpZGUgYSBGaXhlcyB0YWcgaW4gdGhlIGNvbW1pdCBt
ZXNzYWdlLgoKClRoYW5rcwpIZWlrbwoKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY2LWJpZ3RyZWV0ZWNoLWNiMi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjYtYmlndHJlZXRlY2gtY2IyLmR0c2kKPiBpbmRleCA3ZjU3OGM1MGI0YWQu
LmY3NDU5MGFmN2UzMyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2Ni1iaWd0cmVldGVjaC1jYjIuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY2LWJpZ3RyZWV0ZWNoLWNiMi5kdHNpCj4gQEAgLTEyMCw3ICsxMjAsNyBA
QCB2Y2MzdjNfcGNpZTogcmVndWxhdG9yLXZjYzN2My1wY2llIHsKPiAgCQljb21wYXRpYmxlID0g
InJlZ3VsYXRvci1maXhlZCI7Cj4gIAkJcmVndWxhdG9yLW5hbWUgPSAidmNjM3YzX3BjaWUiOwo+
ICAJCWVuYWJsZS1hY3RpdmUtaGlnaDsKPiAtCQlncGlvcyA9IDwmZ3BpbzAgUktfUEIxIEdQSU9f
QUNUSVZFX0hJR0g+Owo+ICsJCWdwaW9zID0gPCZncGlvNCBSS19QQjEgR1BJT19BQ1RJVkVfSElH
SD47Cj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgCQlwaW5jdHJsLTAgPSA8JnBj
aWVfZHJ2PjsKPiAgCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+IAoKCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
