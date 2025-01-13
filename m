Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90DAFC02183
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jan 2025 08:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mQAeKGBgI9lvo9bKR4Q3LIzg1neCq93QBXNdKyyGi1w=; b=CEcohyqlkCW5tBKceWr3PhcKqI
	76nU7lWfQdVxIPpnEnFqi8IepBOkLxBl3wHN0rAK6YkFokqJMEjgkbeabFzYV4Scz2cEq2V2lumbW
	uUU7dW1IdxMr1Hk1KBcsP3utFjQGAoYoenRzn4gmz75xLGViZ2dkGdxbXe8f/3okYnNJBvaOPW5d4
	TIw3Ft684U3RQAxv30vlLJk1OXDy0jwPEBcmXLOoVMuauwAfIw5vkFzsvIGRp7MJ7JAU3XKRCXvRH
	l9Ue+AWQrF3fMaDoy6nVVSfHV+sZyNJl6uTxUVfHqe+VS553QyeNdnF/aEdb4aAv71m5+vGkhSn0v
	WR8AFxXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXFlR-00000004Njl-2rSo;
	Mon, 13 Jan 2025 08:25:37 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXFkC-00000004Ncd-0dpE;
	Mon, 13 Jan 2025 08:24:21 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736756657;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NP5Y8/O0Oc9k478L1LRw9mJQHwjSZlVZoadTLuLD3bY=;
	b=d8Empi5WA2UJ1zS0ddwUrM+Qk1NkOfJa4O3dj5SEXV6LaLW7Y+bc12XtymLBfnjfJ6AgIt
	sf/zpnRI2sY1w1ufENH7lsq77JuGSqiG8Td2KqrSyllg3aqZthzhUOWKQcWfVXzlnh9n9p
	dZT1YstAPQKIzzzJWDIxgoHf4KrYWzWgolISWRgFS1fN0vRprnNkcGA9HTODoDwmrfU47C
	eMai8Ilw7AxGhPCMWO6oGs0+Fwa4ZtXEX+98DYe7iRKAA7k/Pc2dy2Mzbm/e8R0hVILBxM
	fGNUlWyfs/7sVCUtcMkdK3zpn4r3OmQqBgMLkhnUrWlel2a+BNWaVQKoVLZ49g==
Date: Mon, 13 Jan 2025 09:24:16 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas
 Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki
 <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
In-Reply-To: <54b5dac0-5791-4b20-a237-dac6fd03c259@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <20250112073344.1976411-4-bigfoot@classfun.cn>
 <1e72cc9cdc390e79e97806fe4f7d8abf@manjaro.org>
 <35f8fe37-b06f-49eb-b0c2-430421f1ff3b@classfun.cn>
 <7b55c7469774c41d9896df3100df1630@manjaro.org>
 <54b5dac0-5791-4b20-a237-dac6fd03c259@classfun.cn>
Message-ID: <3ee25756b12e999631bd959d787ff248@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_002420_482874_8C39A5A4 
X-CRM114-Status: GOOD (  13.72  )
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

SGVsbG8gSnVuaGFvLAoKT24gMjAyNS0wMS0xMyAwOToxOCwgSnVuaGFvIFhpZSB3cm90ZToKPiBP
biAyMDI1LzEvMTMgMTI6MjUsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gT24gMjAyNS0wMS0xMiAy
MzoxNiwgSnVuaGFvIFhpZSB3cm90ZToKPj4+IE9uIDIwMjUvMS8xMiAxNjo0NywgRHJhZ2FuIFNp
bWljIHdyb3RlOgo+Pj4+IFVubGVzcyB0aGUgZGVzaWduIG9mIHRoZSBib2FyZCBpcyBwcm9wcmll
dGFyeSwgaXQgd291bGQgYmUgZ29vZAo+Pj4+IHRvIHByb3ZpZGUgYSBsaW5rIHRvIHRoZSBib2Fy
ZCBzY2hlbWF0aWMsIGZvciB0aG9zZSBpbnRlcmVzdGVkCj4+Pj4gaW4gdmVyaWZ5aW5nIHRoZSBi
b2FyZCBEVCBmaWxlLgo+Pj4+IAo+Pj4+IEFzIGEgbm90ZSwgSSBhbHJlYWR5IHRyaWVkIHRvIGZp
bmQgdGhlIGJvYXJkIHNjaGVtYXRpYyB3aXRoIG5vCj4+Pj4gc3VjY2Vzcywgc28gdGhlIGRlc2ln
biBtaWdodCBiZSBwcm9wcmlldGFyeS4KPj4+IAo+Pj4gWWVzLCB0aGlzIGJvYXJkIGlzIHByb3By
aWV0YXJ5LiBJIGFza2VkIHRoZSBtYW51ZmFjdHVyZXIgYW5kCj4+PiB0aGV5IGRvbid0IHByb3Zp
ZGUgc2NoZW1hdGljcy4KPj4+IAo+Pj4gQnV0IEkgZm91bmQgYSBwYXJ0aWFsIHNjaGVtYXRpYyBk
aWFncmFtIG9mIHNvbWUgb2YgY29ubmVjdG9ycwo+Pj4gb24gdGhlIGJvYXJkIGhlcmUKPj4+IGh0
dHBzOi8vZGwuYXJpYWJvYXJkLmNvbS9waG90b25pY2F0X3JrMzU2OC9QaG90b25pY2F0JTIwcmsz
NTY4JTIwRVZCJTIwQm9hcmQlMjBzcGVjLnBkZgo+PiAKPj4gWWVzLCBJIGFsc28gZm91bmQgdGhh
dCBQREYgZmlsZS7CoCBJdCdzIHNvbWV3aGF0IHNpbWlsYXIgdG8gd2hhdAo+PiBSYXNwYmVycnkg
UGkgcHJvdmlkZXMgd2l0aCBpdHMgcmVkdWNlZCBzY2hlbWF0aWNzIC0tIGhlbHBmdWwgdG8KPj4g
YW4gZXh0ZW50LCBidXQgc3RpbGwgbGVhdmluZyBhIGxvdCB0byBiZSBkZXNpcmVkLgo+PiAKPj4g
T3V0IG9mIGN1cmlvc2l0eSwgd2hhdCBkaWQgeW91IGFjdHVhbGx5IHVzZSBhcyBhIHJlZmVyZW5j
ZSB0byBjcmVhdGUKPj4gdGhlIGJvYXJkIGR0cyBmaWxlP8KgIFBlcmhhcHMgc29tZSBkb3duc3Ry
ZWFtIGR0cyBmaWxlIHByb3ZpZGVkIGJ5Cj4+IHRoZSBtYW51ZmFjdHVyZXIgb3IgZm91bmQgaW4g
c29tZSBvcGVyYXRpbmcgc3lzdGVtIGltYWdlPwo+IAo+IEkgd3JvdGUgdGhpcyBkZXZpY2UgdHJl
ZSBiYXNlZCBvbiBvdGhlciByazM1NjggZGV2aWNlcyBpbiBtYWlubGluZSwKPiBhbmQgZG93bnN0
cmVhbSBib2FyZCBkdHM6Cj4gaHR0cHM6Ly9naXRodWIuY29tL3Bob3RvbmljYXQvcm9ja2NoaXBf
cmszNTY4X2tlcm5lbC9ibG9iL25vdm90ZWNoLTUuMTAvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjgtcGhvdG9uaWNhdC1iYXNlLmR0c2kKClRoYW5rcyBmb3IgdGhlIGNsYXJpZmlj
YXRpb24uICBJdCB3b3VsZCBiZSBnb29kIHRvIGluY2x1ZGUgdGhhdApsaW5rIGluIHRoZSBkZXNj
cmlwdGlvbiBvZiBwYXRjaCAzLzMsIGZvciBmdXR1cmUgcmVmZXJlbmNlLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
