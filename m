Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F33E6C47258
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jan 2024 23:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpLJlon0RxQ4PGTOvX1LoJFgfuzeqEGa3X2dI6NJZ2w=; b=m+FGtLLedS+yDr
	VIUO5F2HMyyCqQgRNbXmB0WbuHPIicsrKM3F8XKV3U0SUDcG8+S5xInDIdMcv++YXsRYdmNx01VAe
	rirC3MI5gtDvuRC05/XmhTj9MzU0z9Jxg15a3lGDM3zbaZNuhEwr2a4u3t+pRSFv1pApba8U9rkgJ
	mOTTxHryGlZ1dMgn/2XdBpVgkWhwsApCv20WV2pfgY5d4PzbpayvHBWwNEw/pcS01ZUg2F90c6oRC
	n7seMIbe7Ys6RRu7B9F8fugN4K6yXz83ZpZAJEMHKWV3zttqyZw23SUOuHdfIuLZQXASRBpwiQGxE
	/OVSPqAHVujW0wSgwLxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUERM-0000000AjWs-20RG;
	Sun, 28 Jan 2024 23:19:52 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUERI-0000000AjWA-2oed;
	Sun, 28 Jan 2024 23:19:50 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailout.west.internal (Postfix) with ESMTP id C6D8F3200A7A;
	Sun, 28 Jan 2024 18:19:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Sun, 28 Jan 2024 18:19:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1706483983; x=1706570383; bh=1fKfNWclQmzN7rLysWXCqLcTCDbjGptQ
	Vt1xQ/FClcA=; b=MTt7WYjl2HZPvvVjU3x1449zJ75O42f4XLIyEEXaZehlmBfv
	7b7Sf8dK1z2x5qip0c+5b9/1RhsR/5K46hSZ6KISGh8yB9pZT1rai1gewNj0aASB
	MMsOqixRmsCDX4qu1qwU+HVgAQuBUbq8+QoExkvTGFGVD1L0eC2OluF14umQ9hVa
	7DDXxzHLmdJP9oUeV9tOiXPiZRnK9AOAtMYqIzdSjl3oL7rmlYxxRivHyNfOKQZG
	H6Lf+xOYF6Eisb4nl3i5kIjq9fVYtz0qMqGMW8dG3C1XegO5mVvbIprtByuf3EcQ
	jR+l9mrtfU2eqZaHMAdZBwFxHuDbkuMk97XsoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1706483983; x=
	1706570383; bh=1fKfNWclQmzN7rLysWXCqLcTCDbjGptQVt1xQ/FClcA=; b=H
	tZoouw2KWp888ydU+aBBPKcYu3/9eLYWilcQVPQobJnsnjpo018BlGWkbW0sQUK/
	kwsvhZUyNMMOvvnOKi5EiIHBDcGUbQ9jXQm76TtgR3KDch+NLPUOIxa7fouiwlPF
	CydOXmzkC18BjLuUwbuUtJk5PSlsrJHOvKMGD2K2ewNe4lRdezOwBS2QuSPkI7QC
	rRpuilma1cEOx3h/ucmQ5mTlYMaSeSFnQ4/cw7QMOjDXKYwLQsAB+qpJRAelmwQJ
	B7Rvf4xVSPYH3F9sUEBXO9CdSllZ5SP+iODiUAb4+w3e/Ekdby83ESWBESjzJDo1
	DxSG4K7kOaSXMN8C0UEvQ==
X-ME-Sender: <xms:DuG2ZQXsxg30Bgpj0yLpIiO13CyGwVPLDSzI-FnjJaiO87ZqhpuNbg>
    <xme:DuG2ZUkYUcicLuK-olDOCl6KGQOm5xXbWKfLwZCcnG70IKtT0QmPC4hjkkXXJm5sc
    vJBInn9wg>
X-ME-Received: <xmr:DuG2ZUZFBc83PoUuvkUtd0I3PzySMUp5jywhDF_WDC9_zC1x89_GgRE7R7LDIV0oB9ERzfYafUO1sXU1sujAfQ-QtbHB8Zy1khTkmA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedtfedgtdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepueegfefgveeuiedtheffgfefveejkeetiefhhfdvjeevlefhueekudeuleeghfek
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:DuG2ZfXO5rafG7DDuUnj8H8nidQvmanzsnFODoAkDDz7u6URHBVZfA>
    <xmx:DuG2ZakAVrrsPN5fxrPtXjx0SFRlKkRekDq9DT2hFDrskRC1hffkJg>
    <xmx:DuG2ZUe66EWt5D3omkzr7KK9QXlmsc-DVKAhbQ6CCG0E_pIpP5UCyg>
    <xmx:D-G2ZcVGRdLsXVztB9damzissF5osJhFZBQzxpqdd8BggjP5B3avSQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Jan 2024 18:19:39 -0500 (EST)
Message-ID: <030766c0-a6b9-401d-9e9a-fe5d11c5d381@feathertop.org>
Date: Mon, 29 Jan 2024 10:19:35 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH AUTOSEL 6.1 27/27] i2c: rk3x: Adjust mask/value offset for
 i2c2 on rv1126
Content-Language: en-US
To: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>,
 Wolfram Sang <wsa@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org
References: <20240128161424.203600-1-sashal@kernel.org>
 <20240128161424.203600-27-sashal@kernel.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <20240128161424.203600-27-sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240128_151948_917632_38B8E67F 
X-CRM114-Status: GOOD (  19.00  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2FzaGEsCgogwqAgU3VwcG9ydCBmb3IgdGhlIHJ2MTEyNiBTb0Mgd2FzIG9ubHkgYWRkZWQg
YXJvdW5kIGxpbnV4IDYuMiBhbmQgNi4zLCAKdGh1cyBkb2VzbnQgbWFrZSBzZW5zZSB0byBwaWNr
IHRoaXMgcGF0Y2ggdXAgaW4gNi4xCgpSZWdhcmRzCiDCoCBUaW0KCk9uIDEvMjkvMjQgMDM6MTQs
IFNhc2hhIExldmluIHdyb3RlOgo+IEZyb206IFRpbSBMdW5uIDx0aW1AZmVhdGhlcnRvcC5vcmc+
Cj4KPiBbIFVwc3RyZWFtIGNvbW1pdCA5MmE4NWI3YzYyNjJmMTljNjVhMWMxMTVjZjE1ZjQxMWJh
NjVhNTdjIF0KPgo+IFJvY2tjaGlwIFJWMTEyNiBpcyB1c2luZyBvbGQgc3R5bGUgaTJjIGNvbnRy
b2xsZXIsIHRoZSBpMmMyCj4gYnVzIHVzZXMgYSBub24tc2VxdWVudGlhbCBvZmZzZXQgaW4gdGhl
IGdyZiByZWdpc3RlciBmb3IgdGhlCj4gbWFzay92YWx1ZSBiaXRzIGZvciB0aGlzIGJ1cy4KPgo+
IFRoaXMgcGF0Y2ggZml4ZXMgaTJjMiBidXMgb24gcnYxMTI2IFNvQ3MuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBUaW0gTHVubiA8dGltQGZlYXRoZXJ0b3Aub3JnPgo+IEFja2VkLWJ5OiBIZWlrbyBTdHVl
Ym5lciA8aGVpa29Ac250ZWNoLmRlPgo+IFJldmlld2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNo
eXRpQGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogV29sZnJhbSBTYW5nIDx3c2FAa2VybmVs
Lm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Cj4g
LS0tCj4gICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYyB8IDggKysrKysrLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1yazN4LmMgYi9kcml2ZXJzL2kyYy9idXNzZXMv
aTJjLXJrM3guYwo+IGluZGV4IDZhYTRmMWYwNjI0MC4uYzhjZDVjYWRjZjU2IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jCj4gKysrIGIvZHJpdmVycy9pMmMvYnVz
c2VzL2kyYy1yazN4LmMKPiBAQCAtMTI5NSw4ICsxMjk1LDEyIEBAIHN0YXRpYyBpbnQgcmszeF9p
MmNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAkJCXJldHVybiAtRUlO
VkFMOwo+ICAgCQl9Cj4gICAKPiAtCQkvKiAyNytpOiB3cml0ZSBtYXNrLCAxMStpOiB2YWx1ZSAq
Lwo+IC0JCXZhbHVlID0gQklUKDI3ICsgYnVzX25yKSB8IEJJVCgxMSArIGJ1c19ucik7Cj4gKwkJ
LyogcnYxMTI2IGkyYzIgdXNlcyBub24tc2VxdWVudGlhbCB3cml0ZSBtYXNrIDIwLCB2YWx1ZSA0
ICovCj4gKwkJaWYgKGkyYy0+c29jX2RhdGEgPT0gJnJ2MTEyNl9zb2NfZGF0YSAmJiBidXNfbnIg
PT0gMikKPiArCQkJdmFsdWUgPSBCSVQoMjApIHwgQklUKDQpOwo+ICsJCWVsc2UKPiArCQkJLyog
MjcraTogd3JpdGUgbWFzaywgMTEraTogdmFsdWUgKi8KPiArCQkJdmFsdWUgPSBCSVQoMjcgKyBi
dXNfbnIpIHwgQklUKDExICsgYnVzX25yKTsKPiAgIAo+ICAgCQlyZXQgPSByZWdtYXBfd3JpdGUo
Z3JmLCBpMmMtPnNvY19kYXRhLT5ncmZfb2Zmc2V0LCB2YWx1ZSk7Cj4gICAJCWlmIChyZXQgIT0g
MCkgewoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
