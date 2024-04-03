Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA3E4CD1288
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 22:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Paqtm8oxKr2+9RfG2AIiVOJjX0FhFrZxRQhjG2w2pPA=; b=pSmSeDy+if1Gjq
	k0uM5LuvAiaep58/qH2AAyINrifaZtvi6wdVabAz+1VlAv2NiLa29dJnVM4joff1Fx5QWvI8y4GI3
	2KIrcJYOUZ1tEZCTE0h8LF6E7jrI243SrsD59RgEkwnvnCh0J8IIzsSm1tQKxcY0wVI3FN4JGWTLn
	rDWs92XkNFHsDhCkuHxFUin053e7pN0utzYIXDaLhNHV4reQgj0YPokTTR7zjkqbrO6lXQEx6mBCr
	7gGN7Vgvs/iMCyk7yh4pB2O8/HrPK2ixxrJUqHfG3gpmN5C6x0xv9y7r0t6l1QQtx9svKaIda7Cuy
	fz1PaUrpMOWSNSf/33Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs8xu-00000000N9C-2Pza;
	Wed, 03 Apr 2024 22:20:18 +0000
Received: from wfout6-smtp.messagingengine.com ([64.147.123.149])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs8xq-00000000N7q-3QqH;
	Wed, 03 Apr 2024 22:20:16 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.west.internal (Postfix) with ESMTP id E66511C000D6;
	Wed,  3 Apr 2024 18:20:05 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute5.internal (MEProxy); Wed, 03 Apr 2024 18:20:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1712182805;
	 x=1712269205; bh=Xbt92os27lL5H9pYrJJJSECna8SqfJoMjVwzgkuyoZM=; b=
	cJesWQV6sdI6FrzfX4Lid/lEGt6FnxnOnyh9gq0kDbchrgT68okmI4OuEg1r492/
	DQCj2kqFBdSg9f4v6PxKlwP3WJ0O2Gvq5+2rWETAzirKeRMxX4S6fuckou+9DtfQ
	UHcn/mNG6lnEE6byR7hr+uy7geJK8si93XjFbB5FNiFhY4rrKiS7H8jKjBdZjnY5
	UJsWFBC6TVig2jTzaxJiLECLQCw5EoiutJJw8v9tKcjnCwyZc098EWgIuqvwIyG9
	mND4GEj/1BxLEBB0LBRffwARQftQftUvvaV+0OP7hhITzN2AEtNUvKw0X+nP/E4S
	uYss4K1DglH6KZ5SYYt7hA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1712182805; x=
	1712269205; bh=Xbt92os27lL5H9pYrJJJSECna8SqfJoMjVwzgkuyoZM=; b=w
	vGu6xtOGcCz9d9iyhRkHEdJk+qDMi9unSaDst+Fg2yk7d3lTD7aYZC7WkjS0PhC/
	gOdopkn+KZthmg9+FTE/uRJ5yF36BuWnIFtd8C5kV8XJHaORKs+591FbtVBYxJ0h
	mpHmNItIxNT3WTJzXS1+TxYkeXpKx746regGbPsBvsMB+YPCIfIDyy0ntAq/urEz
	RrohZpr2o03YQ8aPUh3EWbRcT4xNfSmNf6RZiQna6io7rOTC5+jx03MOYe0wCTGe
	3XWNGWtwEchsbzLSfYtNuAmjAyhxsrA9Vwg31AHT63Fi7cbB73fc1BDDkYOn+emM
	upWAjEMBBVe8kEUWMagxQ==
X-ME-Sender: <xms:FNYNZluQf7QcdxGcufSbjYo1HsftnTLndE9a24KgyTIcl8ym2Mq7qw>
    <xme:FNYNZudU3LsSXhQcLB_u7SjDhgQp5drJPkhZqPnEZ-6b5sIwri950uqmb5Q5Qhizy
    rSwQAocGj9r-zSDhD4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudefjedguddtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdet
    rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
    htthgvrhhnpeegfeejhedvledvffeijeeijeeivddvhfeliedvleevheejleetgedukedt
    gfejveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:FNYNZowIbH-1mbC7tl04s8luS269xSWyYLvh50n0U2_Gm4z0pKpNag>
    <xmx:FNYNZsPXoN6J3nYP9LUHpomCZmMH848FtqB1lJFLPI7kw8rCZfX7UA>
    <xmx:FNYNZl_UXIpsDoIEVulnGYZMwWMxVwGZzIB6ZEMhxLWIfaJfFr34lg>
    <xmx:FNYNZsVizvrRhvC7M-87G7YT1K82Di35hmhKA6jWxC2yLKzsYM2bVA>
    <xmx:FdYNZhLG2Ve1yP_2u6OobwgJQnl7P8ga3FycwOyCVO30x_Cnr92C7lpT>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 05200B60092; Wed,  3 Apr 2024 18:20:04 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-333-gbfea15422e-fm-20240327.001-gbfea1542
MIME-Version: 1.0
Message-Id: <e5ebcbac-f445-4a48-a40f-7aa606c7d460@app.fastmail.com>
In-Reply-To: <Zg3GdUtBUKzB6NNZ@surfacebook.localdomain>
References: <20240403080702.3509288-1-arnd@kernel.org>
 <20240403080702.3509288-32-arnd@kernel.org>
 <b4418ac1-10ba-4932-be6e-93282707024f@sirena.org.uk>
 <5f3qvhasho4mfnf6f7i6djak3ankje375mt4fzvv3gqrlj242o@zdk2ajvha6hx>
 <Zg3GdUtBUKzB6NNZ@surfacebook.localdomain>
Date: Thu, 04 Apr 2024 00:19:41 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Andy Shevchenko" <andy.shevchenko@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: "Mark Brown" <broonie@kernel.org>, "Arnd Bergmann" <arnd@kernel.org>,
 linux-kernel@vger.kernel.org,
 "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Kevin Hilman" <khilman@baylibre.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Andi Shyti" <andi.shyti@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
 "Jerome Brunet" <jbrunet@baylibre.com>,
 "Martin Blumenstingl" <martin.blumenstingl@googlemail.com>,
 "Alim Akhtar" <alim.akhtar@samsung.com>,
 "Li Zetao" <lizetao1@huawei.com>,
 "Jonathan Cameron" <Jonathan.Cameron@huawei.com>,
 "Rob Herring" <robh@kernel.org>,
 "Yang Yingliang" <yangyingliang@huawei.com>,
 "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>,
 "Luis de Arquer" <luis.dearquer@inertim.com>,
 "Tudor Ambarus" <tudor.ambarus@linaro.org>,
 "Sam Protsenko" <semen.protsenko@linaro.org>,
 "Peter Griffin" <peter.griffin@linaro.org>,
 "Jaewon Kim" <jaewon02.kim@samsung.com>, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 31/34] spi: remove incorrect of_match_ptr annotations
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_152015_043656_94D0DAC4 
X-CRM114-Status: GOOD (  22.87  )
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

T24gV2VkLCBBcHIgMywgMjAyNCwgYXQgMjM6MTMsIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiBX
ZWQsIEFwciAwMywgMjAyNCBhdCAxMTowNTo1MVBNICswMjAwLCBVd2UgS2xlaW5lLUvDtm5pZyBr
aXJqb2l0dGk6Cj4+IE9uIFdlZCwgQXByIDAzLCAyMDI0IGF0IDEwOjU2OjU4QU0gKzAxMDAsIE1h
cmsgQnJvd24gd3JvdGU6Cj4+ID4gT24gV2VkLCBBcHIgMDMsIDIwMjQgYXQgMTA6MDY6NDlBTSAr
MDIwMCwgQXJuZCBCZXJnbWFubiB3cm90ZToKPj4gPiAKPj4gPiA+IFRoZXNlIGFwcGVhciB0byBh
bGwgYmUgY29waWVkIGZyb20gdGhlIHNhbWUgb3JpZ2luYWwgZHJpdmVyLCBzbyBmaXggdGhlbSBh
dCB0aGUKPj4gPiA+IHNhbWUgdGltZSBieSByZW1vdmluZyB0aGUgdW5uZWNlc3Nhcnkgb2ZfbWF0
Y2hfcHRyKCkgYW5ub3RhdGlvbi4gQXMgZmFyIGFzIEkKPj4gPiA+IGNhbiB0ZWxsLCBhbGwgdGhl
c2UgZHJpdmVycyBhcmUgb25seSBhY3R1YWxseSB1c2VkIG9uIGNvbmZpZ3VyYXRpb25zIHRoYXQK
Pj4gPiA+IGhhdmUgQ09ORklHX09GIGVuYWJsZWQuCj4+ID4gCj4+ID4gV2h5IGFyZSB3ZSBub3Qg
Zml4aW5nIG9mX21hdGNoX3B0cigpIGhlcmUsIG9yIGF0IGxlYXN0IGFkZGluZyB0aGUgaWZkZWZz
Cj4+ID4gaW4gY2FzZSBzb21lb25lIGRvZXMgZW5kIHVwIHdhbnRpbmcgdG8gcnVuIHdpdGhvdXQg
T0Y/Cj4+IAo+PiBGaXhpbmcgb2ZfbWF0Y2hfcHRyID0KPj4gCj4+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2xpbnV4L29mLmggYi9pbmNsdWRlL2xpbnV4L29mLmgKPj4gaW5kZXggYTBiZWRkMDM4YTA1
Li5kOTgwYmNjZmZkYTAgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbGludXgvb2YuaAo+PiArKysg
Yi9pbmNsdWRlL2xpbnV4L29mLmgKPj4gQEAgLTg5MCw3ICs4OTAsNyBAQCBzdGF0aWMgaW5saW5l
IGNvbnN0IHZvaWQgKm9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YShjb25zdCBzdHJ1Y3QgZGV2aWNl
ICpkZXYpCj4+ICAJcmV0dXJuIE5VTEw7Cj4+ICB9Cj4+ICAKPj4gLSNkZWZpbmUgb2ZfbWF0Y2hf
cHRyKF9wdHIpCU5VTEwKPj4gKyNkZWZpbmUgb2ZfbWF0Y2hfcHRyKF9wdHIpCSgwID8gKF9wdHIp
IDogTlVMTCkKClRoaXMgd291bGQgcmVxdWlyZSByZW1vdmluZyBzZXZlcmFsIGh1bmRyZWQgIiNp
ZmRlZiBDT05GSUdfT0YiCmNoZWNrcyBhcm91bmQgdGhlIG9mX2RldmljZV9pZCB0YWJsZXMgYXQg
dGhlIHNhbWUgdGltZQp1bmZvcnR1bmF0ZWx5LiBNb3N0IG9mIHRob3NlIGFyZSBjb21wbGV0ZWx5
IHVubmVjZXNzYXJ5LCBzbwppZiB3ZSB3YW50ZWQgdG8gcmVtb3ZlIHRob3NlLCB3ZSBzaG91bGQg
cmVtb3ZlIHRoZSBvZl9tYXRjaF9wdHIoKQppbnN0YW5jZXMgYXQgdGhlIHNhbWUgdGltZS4KCj4+
ICAjZGVmaW5lIG9mX21hdGNoX25vZGUoX21hdGNoZXMsIF9ub2RlKQlOVUxMCj4+ICAjZW5kaWYg
LyogQ09ORklHX09GICovCj4+ICAKPj4gPwo+PiAKPj4gQXNzdW1pbmcgdGhpcyBoZWxwcywgSSBh
Z3JlZSB0aGlzIHdvdWxkIGJlIHRoZSBiZXR0ZXIgZml4Lgo+Cj4gV2h5PyBJIG1lYW4gd2h5IGRv
IHdlIG5lZWQgdG8gZXZlbiBoYXZlIHRoaXMgQVBJPyBJdCdzIGFsd2F5cwo+IGdvb2QgdG8ga25v
dyB3aGljaCBkZXZpY2VzIGFyZSBzdXBwb3J0ZWQgYnkgdGhlIG1vZHVsZSBldmVuCj4gaWYgeW91
IGhhdmUgbm8gbmVlZCBpbiBzdWNoIHN1cHBvcnQgb3IgaXQncyBub3QgY29tcGlsZWQgaW4uCj4g
T25lIG9mIHRoZSByZWFzb25zIHdoeSBpcyB0byBiZSBhYmxlIHRvIGdvb2dsZSBmb3IgY29tcGF0
aWJsZSBoYXJkd2FyZSwKPiBmb3IgZXhhbXBsZS4KCkFzIGZhciBhcyBJIGNhbiB0ZWxsLCB0aGUg
b2ZfbWF0Y2hfcHRyKCkgaGVscGVyIHdhcyBhIGhpc3RvcmljCm1pc3Rha2UsIGl0IG1ha2VzIHBy
ZXR0eSBtdWNoIG5vIHNlbnNlIGluIGl0cyBjdXJyZW50IGZvcm0uCgpUaGUgdmVyc2lvbiB0aGF0
IFV3ZSBwcm9wb3NlcyB3b3VsZCBoYXZlIG1hZGUgc2Vuc2UgYnV0IHdlCmNhbid0IGNoYW5nZSBp
dCBub3cuCgogICAgICBBcm5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
