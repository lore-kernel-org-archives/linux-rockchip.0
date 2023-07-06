Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1D57EB64DD
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jul 2023 11:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Sna7HBfFTtGGMx1DuxBVfKrnY4Xzvd9oW45gkQCiy8=; b=j6Cab0OV+wLOpF
	V9ZNysTa2fcFfOnItF7QtJf/j1teUtr7huKNj8N1XmjWRR0Z3WQwq+iikYcc8phLtRXmRNJlC/TPQ
	Hffb+oaugvcC2rqXElDvEJGZd2krxMUpTcLs8W7sobjrtBw00zNHzzxvPLG2t6X87DIYYquoY7HoB
	+chhZKlEBzq1teLVOuSOX5ayLkKswaNzzHRsDXjlZ3I2JOQlu9ZnK0YKsgNC2A+b3tdI6p6694s6A
	zE0EvfmNOkfy1iXX7/y5CcMKm6jlZfjZXrVKZ401B76+CuWO2qInKCrIaolfDjHnLkCGOsf6NLj9H
	cJmLLDxFUGs+9kKt6QlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHNEX-001URC-1E;
	Thu, 06 Jul 2023 11:33:13 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHNEU-001UQ7-0U;
	Thu, 06 Jul 2023 11:33:11 +0000
Received: from [IPv6:2a00:23c8:b70a:ae01:35d0:8e34:613c:c44e] (unknown [IPv6:2a00:23c8:b70a:ae01:35d0:8e34:613c:c44e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B0B466602242;
	Thu,  6 Jul 2023 12:33:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688643188;
	bh=l5+LL5sG+6oNk98vidsTUD1ZT1xF0tRZN4EIfi2Jzz8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=KInwh3I9qZsDTaBRQW8F/t2QGDZ/ofjWuirTgSfnjvf1QBmRrbOhTjY3xbvIQSbpX
	 Pit1IhOCJ2snhlQMmw0aDhv+7mrD/F8ov/0fLaHolXyNQmXdP1Oz7wjPeNxtDucp9A
	 bssu7N7XnEgKC2b/y3ocQaS6HS8MwwCz5W4FdpPBBNo/KxmkXtq3B7u6EBtuDgaCGC
	 B+ft4lFfJSpFsvqJkhNQ5BS0KMpucyYCvZjkvObuLrJcpWi1VI2c+QtHWVjutoWLHq
	 uetic+AXTYY95fYRBXaW9giOQPHdJAf1A1tr/NgWWHrTnHbldG02pyk9wGhQ8lKBGe
	 x/XNpt32UQfGg==
Message-ID: <7fa80568e37cca3b8c4560e033cd2cfc18b2eb27.camel@collabora.com>
Subject: Re: [PATCH v1 3/3] arm64: dts: rockchip: Add Radxa ROCK 4SE
From: Christopher Obbard <chris.obbard@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>, Chris Morgan
 <macromorgan@hotmail.com>, Conor Dooley <conor+dt@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Jagan Teki <jagan@edgeble.ai>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Maya Matuszczyk
 <maccraft123mc@gmail.com>,  Rob Herring <robh+dt@kernel.org>, Sebastian
 Reichel <sebastian.reichel@collabora.com>, Tianling Shen
 <cnsztl@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Thu, 06 Jul 2023 12:33:06 +0100
In-Reply-To: <b573535b-25f8-8986-3d5d-2e8d4b4c5ca1@linaro.org>
References: <20230705141011.111568-1-chris.obbard@collabora.com>
	 <20230705141011.111568-4-chris.obbard@collabora.com>
	 <b573535b-25f8-8986-3d5d-2e8d4b4c5ca1@linaro.org>
User-Agent: Evolution 3.48.4-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_043310_324379_D9800098 
X-CRM114-Status: GOOD (  13.53  )
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

SGkgS3J6eXN6dG9mLAoKT24gV2VkLCAyMDIzLTA3LTA1IGF0IDE3OjUzICswMjAwLCBLcnp5c3p0
b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDA1LzA3LzIwMjMgMTY6MTAsIENocmlzdG9waGVyIE9i
YmFyZCB3cm90ZToKPiA+IEFkZCBib2FyZC1zcGVjaWZpYyBkZXZpY2V0cmVlIGZpbGUgZm9yIHRo
ZSBSSzMzOTlULWJhc2VkIFJhZHhhIFJPQ0sgNFNFCj4gPiBib2FyZC4gVGhpcyBib2FyZCBvZmZl
cnMgc2ltaWxhciBwZXJpcGhlcmFscyBpbiBhIHNpbWlsYXIgZm9ybS1mYWN0b3IgdG8KPiA+IHRo
ZSBleGlzdGluZyBST0NLIFBpIDRCIGJ1dCB1c2VzIHRoZSBjb3N0LW9wdGltaXNlZCBSSzMzOTlU
IHByb2Nlc3Nvcgo+ID4gKHdoaWNoIGhhcyBkaWZmZXJlbnQgT1BQIHRhYmxlIHRoYW4gdGhlIFJL
MzM5OSkgYW5kIG90aGVyIG1pbmltYWwgaGFyZHdhcmUKPiA+IGNoYW5nZXMuCj4gPiAKPiA+IFNp
Z25lZC1vZmYtYnk6IENocmlzdG9waGVyIE9iYmFyZCA8Y2hyaXMub2JiYXJkQGNvbGxhYm9yYS5j
b20+Cj4gPiAtLS0KPiA+IAo+IAo+IAo+ID4gKwo+ID4gKyZzZGlvMCB7Cj4gPiArwqDCoMKgwqDC
oMKgwqBzdGF0dXMgPSAib2theSI7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBicmNtZjogd2lm
aUAxIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0gImJy
Y20sYmNtNDMyOS1mbWFjIjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZWcg
PSA8MT47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZXJydXB0LXBhcmVu
dCA9IDwmZ3BpbzA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVycnVw
dHMgPSA8UktfUEEzIEdQSU9fQUNUSVZFX0hJR0g+Owo+IAo+IEkganVzdCBzZW5kIGEgcGF0Y2gg
dG8gZml4IHRoaXMgaW4gc29tZSBmaWxlcywgc28gbGV0J3MgdHJ5IGtlZXAgaXQKPiBnb29kLiBV
c2UgcHJvcGVyIGludGVycnVwdCB0eXBlLCBub3Qgbm9uZS4KClRoYW5rIHlvdSBmb3IgeW91ciBy
ZXZpZXcuIEkgbWlzc2VkIHRoYXQgcGF0Y2gsIHNlbnQgb25seSBhIGZldyBob3VycyBiZWZvcmUg
bWluZS4gSSB3aWxsIGFkZHJlc3MgdGhpcyBpbiB2Mi4KCgpDaGVlcnMhCgpDaHJpcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
