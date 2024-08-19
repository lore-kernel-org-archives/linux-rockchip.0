Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB81EC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 20:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NH0wwAfj6okdEDvM6vNk2nW6isl0pFjk9MqnndKGL+E=; b=BAnKpNmkeMuUomr8kCqi5oVnCO
	8dipmd6mZ8VWV2p88wsgDWguWCWMQWCva8oKGgifEYwRHWDmDaf4TZ5aVbVEamNsJc/Wc72o+mYQV
	++VMNuSnUd7iShuuEGMhGthczgwzLCMRRxz0JO+ApusdOPaWM7rQgU/cX0teaHYp1p/pNYkbKwKou
	7TNZo2gA8zzXcAQU/YIwjHCCmp8q3N0XVipoffFqh/N3nw9vl3MbQC23JovGvMkhZRqABXsMhKLu9
	PNokGK6woOnE9KAApcT5MgXR/P4W0vweTq5+lFUzZ19Ba/XwrDnu88GHuNzrExyv2gDMysepyPzx3
	uhGHuDog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg8mL-00000002qQ3-0nuP;
	Mon, 19 Aug 2024 20:15:01 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg8lc-00000002qI4-3NQo;
	Mon, 19 Aug 2024 20:14:18 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724098452;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vW7nBfaUoWGYI3LaABUbY8ys4mwOX5zqzPW9Oi+BnTM=;
	b=YBCsQiDQMvk8FzjJcNLq/AItWxnGaj673csQreNjjDaZqjm3SpID+TQ/2C/Y8+6H14lUjO
	pdpgmvvxSp8f9ohXDF4GfiQmrJD0kR7xlRf1Jow+J2ubvjlQ35jjWpAb8bJ5DsAr1mXZ0k
	C47uWBPhPuK7ZNHVlnfNUwuXJk9ddm9wZD2qn/gw39KswaI3hMmego1JvNK2omhoZ/n/CW
	Q/bQYvYpTydUQpdirL7JbbxrGciJB4xlLBzPZRprPgnHV1rs+1UmRTp72BBEnOeBF2za3T
	9oOTqOJ/PlqtGb8wlUpi+xa56UqavY5PBjAjJZ5tRpqCKICw1HvgRChArqwmXg==
Date: Mon, 19 Aug 2024 22:14:10 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Vicente Bergas <vicencb@gmail.com>
Cc: Diederik de Haas <didi.debian@cknow.org>, Huang-Huang Bao <i@eh5.me>,
 "Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-spi@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Linus Walleij
 <linus.walleij@linaro.org>, Sasha Levin <sashal@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
In-Reply-To: <CAAMcf8BAiva1GB_1AoVH-Nq8sp81KdtVe=rUMVjV2ZxCiM4NAg@mail.gmail.com>
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
 <CAAMcf8DZu4B2AN+=8xP3wuknqUtD-e-v+Ej31=08ibPfyL+dGw@mail.gmail.com>
 <CAAMcf8A59MqhZEswC5VmKZyThG7oG=ztEYd_yfuOwvGTvKzMow@mail.gmail.com>
 <CAAMcf8Ctr9rOZ2oOzk48haakJOO2bzyNURb2oZTRxJ3tnafXUA@mail.gmail.com>
 <D3JXD607339U.2F1IAKUSM59UP@cknow.org>
 <CAAMcf8BAiva1GB_1AoVH-Nq8sp81KdtVe=rUMVjV2ZxCiM4NAg@mail.gmail.com>
Message-ID: <164916293044ff73e8b35e9a9ab4283b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_131417_444349_8C151091 
X-CRM114-Status: GOOD (  20.52  )
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

T24gMjAyNC0wOC0xOSAxNjozNywgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4gT24gTW9uLCBBdWcg
MTksIDIwMjQgYXQgMzozM+KAr1BNIERpZWRlcmlrIGRlIEhhYXMgCj4gPGRpZGkuZGViaWFuQGNr
bm93Lm9yZz4gd3JvdGU6Cj4+IAo+PiBPbiBNb24gQXVnIDE5LCAyMDI0IGF0IDM6MTQgUE0gQ0VT
VCwgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4+ID4gT24gTW9uLCBBdWcgMTksIDIwMjQgYXQgMjo0
OeKAr1BNIFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNiQGdtYWlsLmNvbT4gd3JvdGU6Cj4+ID4gPiBP
biBNb24sIEF1ZyAxOSwgMjAyNCBhdCA0OjEy4oCvQU0gVmljZW50ZSBCZXJnYXMgPHZpY2VuY2JA
Z21haWwuY29tPiB3cm90ZToKPj4gPiA+ID4gPiBpIGFtIGEgdXNlciBvZiB0aGUgQ09ORklHX1NQ
SV9TUElERVYgZGV2aWNlLgo+PiA+ID4gPiA+IEl0IHN0b3BwZWQgd29ya2luZyBiZXR3ZWVuIDYu
OCBhbmQgNi4xMC41Lgo+PiA+ID4gPiA+IFRoZSBTUEkgYnVzIGl0c2VsZiByZXBvcnRzIG5vIGVy
cm9ycyB0byB1c2Vyc3BhY2UsIGJ1dCBubyBkZXZpY2VzCj4+ID4gPiA+ID4gYXBwZWFyIGNvbm5l
Y3RlZCB0byB0aGUgYnVzLgo+PiA+ID4gPiA+IFRoZSBwbGF0Zm9ybSB1c2VkIGlzIFJLMzMyOC4K
Pj4gPiA+ID4gPiBUaGUgb25seSBzcGktcmVsYXRlZCBtZXNzYWdlIGluIGRtZXNnIGlzOgo+PiA+
ID4gPiA+IHJvY2tjaGlwLXNwaSBmZjE5MDAwMC5zcGk6IFJ1bnRpbWUgUE0gdXNhZ2UgY291bnQg
dW5kZXJmbG93IQo+PiAKPj4gRldJVzogSSd2ZSBzZWVuIHRoaXMgaXNzdWUgYXMgd2VsbC4KPj4g
Cj4+ID4gPiBBZGRlZDoKPj4gPiA+IEh1YW5nLUh1YW5nIEJhbyA8aUBlaDUubWU+Cj4+ID4gPiBM
aW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4+ID4gPiBTYXNoYSBMZXZp
biA8c2FzaGFsQGtlcm5lbC5vcmc+Cj4+ID4gPgo+PiA+ID4gVGhlIGZpcnN0IG9mZmVuZGluZyBj
b21taXQgaXM6Cj4+ID4gPiAyOWQ4MTAxZmI5NDQyNTQ0MDc3ZTY4ZTI3ODM5YTE5NzlmODU2MzNk
IHBpbmN0cmw6IHJvY2tjaGlwOiBmaXggcGlubXV4Cj4+ID4gPiBiaXRzIGZvciBSSzMzMjggR1BJ
TzItQiBwaW5zCj4+ID4gPgo+PiA+ID4gSSd2ZSBhbHNvIHRlc3RlZCA2LjEwLjYgd2l0aCBpdCBy
ZXZlcnRlZCAoYW5kCj4+ID4gPiA0NTY0NDdmZjFmZTNjMjhlMmZkN2I1N2E3OTY1MGY2MjI0NWM2
NDI4IGFuZAo+PiA+ID4gNzEyN2M2OGM3NmYxMjAzNjdiOWE1MDUzZjUyNGRmMGI2MDNkNGE0OCBh
cyBkZXBlbmRlbmNpZXMpIGFuZCBTUEkKPj4gPiA+IHdvcmtzIGZpbmUuCj4+ID4KPj4gPiBTb3Jy
eSBmb3IgdGhlIG5vaXNlOgo+PiA+IHJldmVydGluZyBvbmx5IDI5ZDgxMDFmYjk0NDI1NDQwNzdl
NjhlMjc4MzlhMTk3OWY4NTYzM2QgbWFrZXMgaXQgd29yayBvbiA2LjEwLjYuCj4+ID4gSWdub3Jl
IHdoYXQgaSBzYWlkIGFib3V0IDQ1NjQ0N2ZmMWZlM2MyOGUyZmQ3YjU3YTc5NjUwZjYyMjQ1YzY0
MjggYW5kCj4+ID4gNzEyN2M2OGM3NmYxMjAzNjdiOWE1MDUzZjUyNGRmMGI2MDNkNGE0OC4KPj4g
Cj4+IFBsZWFzZSB0cnkgaWYgdW5yZXZlcnRpbmcgdGhhdCBjb21taXQgYW5kIGFkZGluZyB0aGUg
Zm9sbG93aW5nOgo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI0
MDcwOTEwNTQyOC4xMTc2Mzc1LTEtaUBlaDUubWUvCj4+IAo+PiBmaXhlcyB0aGUgaXNzdWUgYXMg
d2VsbC4KPiAKPiBJIGNvbmZpcm0gdGhhdCA2LjEwLjYgd2l0aG91dCBhbnkgcmV2ZXJ0cyBwbHVz
Cj4gMjAyNDA3MDkxMDU0MjguMTE3NjM3NS0xLWlAZWg1Lm1lIGFsc28gZml4ZXMgdGhlIGlzc3Vl
Lgo+IFRoYW5rIHlvdSBhbGwuCgpHcmVhdCEgIENvdWxkIHlvdSwgcGxlYXNlLCBwcm92aWRlIHlv
dXIgVGVzdGVkLWJ5IGluIHRoZSBwYXRjaCB0aHJlYWQKbGlua2VkIGFib3ZlPyAgVGhhdCBzaG91
bGQgaGVscCB3aXRoIGdldHRpbmcgdGhhdCBwYXRjaCBtZXJnZWQgdXBzdHJlYW0uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
