Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB65606A324
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 21:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UmZPoCz5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=cIZk8F7y
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PLWgBoca7p//HKehzALm5ttPgZAmD8pocL0gf8R0U2M=; b=UmZPoCz5578SdenG4hPEAr8OB6
	LtiRl2fbxE/2TuOgVYsrDBunSTGfv3QA95yFtyIni5Zhrahy6KEU7g3E7nmOc7QKl3OEcZCgxM/wy
	Pe1IsNJWxp7/WSGwU4YFjqQkvZ60SgWdBzdowYQ0syIL2GeUlxv18o960MzkaQ/VVZSVRc2MeOybR
	y1t6uNU5vYo2CrjAYuctbAkuQ8Oj6aj69yNpbACy5wwRbyrGCuZ1goFb3Q2RNWopM8Smds5WfUfc5
	kB6ifdlN02EPqk+DG6nL0ErPernW3q+xG6rxEWJiLCPyj/k4YZ/r2l50iTWuUuF0r2603viDrwGYg
	WpGvVOJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU9s3-0000000DUvt-3evU;
	Thu, 19 Nov 2026 21:40:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU9s1-0000000DUuR-2cFM;
	Thu, 19 Nov 2026 21:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2rk+9h91UF2ccmiOZHWNjHja5T1YkUMf6w6s0Yio7b0=; b=cIZk8F7yhAFCNkrt6xE1Y+BH0v
	nyS733Z7MQ12xmYp4/P1CojN6TCgQBabqGw7NqzjcRoJWAf5mLCJA1KC5quBtfD73fHgeHJlxMGpo
	mMlbVftarWrNbpBNM6R2rsKwi1F4bXkvjVWiZvdzugb3218cxGNnce7ZNhfYD+xOyqWr7D2tcyrZJ
	LZgOv8Nh3URQ54loXMQxqq0tEL93UMM6mxK9DX/xu2H0izBE3NQ0OSoaa34tEkbUEh2Rj2hGyCoTK
	5crHzHwGpRM8GlOsDGUgmuCRXAeIhCPJQzqdPXR1PVlTxOPTMnzW4TDkPYss8u7e61o/I4V2BhF2R
	HyRZHyuw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linusw@kernel.org>, Ye Zhang <ye.zhang@rock-chips.com>,
 Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] pinctrl: rockchip: Fix RK3506 pinctrl support
Date: Thu, 19 Nov 2026 22:40:28 +0100
Message-ID: <R9Lr9e5PRAa-_53xglqBFw@sntech.de>
In-Reply-To: <20261119211739.566874-1-jonas@kwiboo.se>
References: <20261119211739.566874-1-jonas@kwiboo.se>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_134041_690310_BE79D233 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRG9ubmVyc3RhZywgMTkuIE5vdmVtYmVyIDIwMjYsIDIyOjE3OjM5IE1pdHRlbGV1cm9ww6Rp
c2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPiBUaGUgcGluY3RybCBkcml2
ZXIgYWRkZWQgaW4gY29tbWl0IGRiZDIzMTdkN2I5ZiAoInBpbmN0cmw6IHJvY2tjaGlwOgo+IEFk
ZCByazM1MDYgcGluY3RybCBzdXBwb3J0IikgZGVwZW5kcyBvbiBhIHJvY2tjaGlwLGlvYzEgcHJv
cGVydHkgbm90Cj4gZG9jdW1lbnRlZCBpbiBkdC1iaW5kaW5ncyB0byB3b3JrLCBpLmUuIGl0IGV4
cGVjdHMgdGhlIHBpbmN0cmwgbm9kZSB0bwo+IGxvb2sgc29tZXRoaW5nIGxpa2UgZm9sbG93aW5n
Ogo+IAo+ICAgcGluY3RybCB7Cj4gCXJvY2tjaGlwLHBtdSA9IDwmZ3BpbzBfaW9jPjsKPiAJcm9j
a2NoaXAsaW9jMSA9IDwmZ3BpbzFfaW9jPjsKPiAJcm9ja2NoaXAsZ3JmID0gPCZncGlvMjM0X2lv
Yz47Cj4gCj4gCWdwaW8wIHsgfTsKPiAJZ3BpbzEgeyB9Owo+IAlncGlvMiB7IH07Cj4gICB9Owo+
IAo+IFdpdGggdGhlIGNvbW1pdCA2MzExM2Q0ZmNlNmMgKCJwaW5jdHJsOiByb2NrY2hpcDogQWRk
IFJWMTEwNiBwaW5jdHJsCj4gc3VwcG9ydCIpIHRoZSBkcml2ZXIgZ2FpbmVkIHN1cHBvcnQgZm9y
IHVzaW5nIEdQSU8gYmFuayByZWZlcmVuY2VkIElPCj4gY29udHJvbCByZWdpc3RlciBibG9ja3Mg
dXNpbmcgdGhlIHJvY2tjaGlwLGdyZiBwaGFuZGxlIG9mIHRoZSBiYW5rIG5vZGUuCj4gCj4gQ2hh
bmdlIHRoZSBkcml2ZXIgdG8gd29yayB3aXRoIGR0LWJpbmRpbmdzIGRvY3VtZW50ZWQgbm9kZXMg
YW5kCj4gcHJvcGVydGllcywgaS5lLiBzb21ldGhpbmcgbGlrZToKPiAKPiAgIHBpbmN0cmwgewo+
IAlyb2NrY2hpcCxncmYgPSA8JmdwaW8yMzRfaW9jPjsKPiAKPiAJZ3BpbzAgewo+IAkJcm9ja2No
aXAsZ3JmID0gPCZncGlvMF9pb2M+Owo+IAl9Owo+IAlncGlvMSB7Cj4gCQlyb2NrY2hpcCxncmYg
PSA8JmdwaW8xX2lvYz47Cj4gCX07Cj4gCWdwaW8yIHsgfTsKPiAgIH07Cj4gCj4gRml4ZXM6IGRi
ZDIzMTdkN2I5ZiAoInBpbmN0cmw6IHJvY2tjaGlwOiBBZGQgcmszNTA2IHBpbmN0cmwgc3VwcG9y
dCIpCj4gU2lnbmVkLW9mZi1ieTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgoKdGhh
bmtzIGZvciB3b3JraW5nIG9uIHRoaXMsIGFsc28gYXMgdGhlIHJrMzUwNiBkZXZpY2V0cmVlIGhh
cyBzbyBmYXIKX25vdF8gbWFkZSBpdCBtYWlubGluZSBhdCBhbGwsIHRoaXMgY2hhbmdlIGNhbm5v
dCBicmVhayBhbnkgYmFja3dhcmRzCmNvbXBhdGlibGl0eSAtIGFzIHRoZXJlJ3Mgbm90aGluZyB0
byBicmVhay4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
