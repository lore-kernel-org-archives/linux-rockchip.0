Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17324C0218D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jan 2025 10:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+OCjNMj3QqphuLuurChCPkIGaPBoLuQPP4e5ZGLwPqI=; b=V/AOE7TO3NxqcawzEv6ZBn29JS
	1VGbNNTZdslsYF70WTt3n96n1IVG/64mUjdED/xborPkAJaiG6THWjAq5Klo1+rdXNhqgs7i1+ewe
	2+tO/hT7ZthNzmXC1tci6PxjnMMjYn/UhSatabCbCC6w7oMaBCuYvTKG85QgbWHA+uM7Qj+atC1gf
	7bIOpc4oe6FZ+sJFd4bAbLv6hzE09VCrjm7OR41howIQMPrzkoS4aJUtwnxBWwOqY5fQKI4w6EBnU
	oW/Pu7CvTAKnIdvffWUiKNp6iiTbd+jyNgAkmmcPptG+o6Bu6mFRNZneK0LcWxi3naZ9bZdYaLUqo
	SIqQU2jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcj6V-00000004gLQ-2bNM;
	Tue, 28 Jan 2025 10:45:59 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcj5A-00000004gCa-2OHh;
	Tue, 28 Jan 2025 10:44:37 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1738061074;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QH2HlRrsM2GhBqfQeM842UlYrI8bH7FA97PniLkwhl0=;
	b=WNFLx3YFReVPhS8mPLJ+8dWLkj7tr6Z5rlcSM2MBg2AlKXwjQwOYTyUZ7BuIy9cl88zSRg
	9L7QNBrhJTIxbdft7iM1P+wPCvkXVvFBA0CDNbX9oKzXFYPKCPZVjzH+e9KVXAMRll4JG8
	boKosHygywwhKQ7xIsa9MtIZVb8M9nk56NLhzf1qVSLLxENSJqyM6+dM5JV9JrBqhw5ESm
	eqrdC+qqUJ7QOL5Wq8OY/pcLTF8jFTfl4/B92L6B0g2k10D3DUNLajEFHQpL67DMSYhIKV
	knmDzwnuzqgJlPsEFmi/PuyL9iVg57bBwNfmLLkPTkT29wL164GeBWvft+kNEA==
Date: Tue, 28 Jan 2025 11:44:34 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>, Rob Herring
 <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, devicetree@vger.kernel.org, Sebastian Reichel
 <sebastian.reichel@collabora.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix broken tsadc pinctrl binding
 for rk3588
In-Reply-To: <CABjd4YwCH93-=Cqck5TiuJoTUkYbRh0495J6w=J8t93oHdt43g@mail.gmail.com>
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
 <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
 <a76f315f023a3f8f5435e0681119b4eb@manjaro.org>
 <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
 <61b494b209d7360d0f36adbf6d5443a4@manjaro.org>
 <CABjd4Yx0p0B=e00MjCpDDq8Z=0FtM0s9EN86WdvRimt-_+kh2w@mail.gmail.com>
 <CABjd4Yy14bpjzvFyc8et-=pmds5uwzfxNqcs7L=+XRXBogZEsQ@mail.gmail.com>
 <CAP1tNvTRER=QzC29Udw4ffOetVECWV+MfZ2o-mbUFvuZ0_i-Kw@mail.gmail.com>
 <b57d8a834f5c07e37e0e7ee74346c700@manjaro.org>
 <CABjd4YwCH93-=Cqck5TiuJoTUkYbRh0495J6w=J8t93oHdt43g@mail.gmail.com>
Message-ID: <1498db1c6664b39b49cfc71d2e4eb5ef@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_024436_920035_3CD0DFF0 
X-CRM114-Status: GOOD (  24.38  )
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

SGVsbG8gQWxleGV5LAoKT24gMjAyNS0wMS0yOCAxMTozMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6
Cj4gT24gVHVlLCBKYW4gMjgsIDIwMjUgYXQgMToyNOKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWlj
QG1hbmphcm8ub3JnPiAKPiB3cm90ZToKPj4gT24gMjAyNS0wMS0yNiAxNToyNSwgQWxleGFuZGVy
IFNoaXlhbiB3cm90ZToKPj4gPj4gPiA+IEkgdGhpbmsgaXQncyBhY3R1YWxseSBiZXR0ZXIgdG8g
YWNjZXB0IHRoZSBhcHByb2FjaCBpbiBBbGV4YW5kZXIncwo+PiA+PiA+ID4gcGF0Y2gsIGJlY2F1
c2UgdGhlIHdob2xlIHRoaW5nIGFwcGxpZXMgdG8gb3RoZXIgUm9ja2NoaXAgU29DcyBhcyB3ZWxs
LAo+PiA+PiA+ID4gbm90IGp1c3QgdG8gdGhlIFJLMzU4OChTKS4KPj4gPj4gPgo+PiA+PiA+IEFu
eXdheSwgSSd2ZSBqdXN0IHRyaWVkIGl0IGFmdGVyIGluY2x1ZGluZyB0aGUgY2hhbmdlcyBiZWxv
dywgYW5kCj4+ID4+ID4gd2hpbGUgL3N5cy9rZXJuZWwvZGVidWcvcGluY3RybC9waW5jdHJsLWhh
bmRsZXMgc2hvd3MgdGhlIGV4cGVjdGVkCj4+ID4+ID4gcGluY3RybHMgdW5kZXIgdHNhZGMsIHRo
ZSBkcml2ZXIgc3RpbGwgZG9lc24ndCBzZWVtIHRvIGJlIHRyaWdnZXJpbmcgYQo+PiA+PiA+IFBN
SUMgcmVzZXQuIFdlaXJkLiBBbnkgdGhvdWdodHMgd2VsY29tZS4KPj4gPj4KPj4gPj4gSSBmb3Vu
ZCB0aGUgY3VscHJpdC4gIm90cG91dCIgKG9yICJkZWZhdWx0IiBpZiB3ZSBmb2xsb3cgQWxleGFu
ZGVyJ3MKPj4gPj4gc3VnZ2VzdGVkIGFwcHJvYWNoKSBwaW5jdHJsIHN0YXRlIHNob3VsZCByZWZl
ciB0byB0aGUgJnRzYWRjX3NodXRfb3JnCj4+ID4+IGNvbmZpZyBpbnN0ZWFkIG9mICZ0c2FkY19z
aHV0IC0gdGhlbiB0aGUgUE1JQyByZXNldCB3b3Jrcy4KPj4gPgo+PiA+IEdyZWF0LCBJJ2xsIHVz
ZSB0aGlzIGluIHYyLgo+PiAKPj4gUGxlYXNlLCBsZXQncyB3YWl0IHdpdGggdGhlIHYyIHVudGls
IEkgZ28gdGhyb3VnaCB0aGUgd2hvbGUgdGhpbmcgCj4+IGFnYWluCj4gCj4gSSwgZm9yIG9uZSwg
d291bGQgd2VsY29tZSBhIHYyIHRoYXQgY291bGQgYmUgdGVzdGVkIGFuZCBjb25maXJtZWQKPiB3
b3JraW5nIHdpdGggYW5kIHdpdGhvdXQgZHJpdmVyIGNoYW5nZXMuIEVzcGVjaWFsbHkgZ2l2ZW4g
dGhhdDoKPiAgLSB0aGUgY2hhbmdlcyBhcmUgcHJldHR5IHNtYWxsCj4gIC0gaGFyZHdhcmUgZG9j
cyBzYXkgbm90aGluZyBhYm91dCB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIFRTQURDX1NIVVQKPiB2
cy4gVFNBRENfU0hVVF9PUkcsIGV4Y2VwdCB0aGF0IG9uZSBpcyBjb25maWcgIzIgYW5kIHRoZSBv
dGhlciBpcwo+IGNvbmZpZyAjMQo+ICAtIG5vbmUgb2YgdGhlIHNvdXJjZSB0cmVlcyBJIGxvb2tl
ZCBhdCBzZWVtIHRvIGVuYWJsZSBQTUlDIGJhc2VkCj4gcmVzZXRzIG9uIGFueSBSSzM1ODgtYmFz
ZWQgYm9hcmRzLCBzbyB0aGVzZSBwaW5jdHJsIGNvbmZpZ3MgYXBwZWFyIHRvCj4gaGF2ZSBuZXZl
ciBiZWVuIHRlc3RlZCBpbiB0aGUgd2lsZCBmb3IgUkszNTg4Kgo+IAo+IFNvIHRyeWluZyBhbmQg
dGVzdGluZyBzZWVtcyB0byBiZSB0aGUgb25seSB3YXkgdG8gdW5kZXJzdGFuZCB0aGUgYmVzdAo+
IHdheSBmb3J3YXJkLiBVbmxlc3MsIG9mIGNvdXJzZSwgc29tZW9uZSBmcm9tIFJvY2tjaGlwIGNh
biBjb21tZW50IG9uCj4gaG93IHRoZSBoYXJkd2FyZSB3b3JrcyB3aXRoIFRTQURDX1NIVVQgdnMu
IFRTQURDX1NIVVRfT1JHLgoKUGVyaGFwcyB0aGUgYmVzdCBhcHByb2FjaCB3b3VsZCBiZSB0byBo
YXZlIHRoZSB2MiB0aGF0IHdvcmtzIHdpdGhvdXQKdGhlIGRyaXZlciBjaGFuZ2VzLCBzbyBpdCBj
YW4gYmUgcHJvcGFnYXRlZCBpbnRvIHRoZSBzdGFibGUga2VybmVscy4KClRoZW4sIGEgc2VwYXJh
dGUgc2VyaWVzLCB3aGljaCBJJ2xsIHZvbHVudGVlciBmb3IsIDopIHdvdWxkIGludHJvZHVjZQp0
aGUgY2xlYW51cHMgYW5kIGFueSBuZWVkZWQgZHJpdmVyIGNoYW5nZXMsIHdoaWNoIHdvdWxkbid0
IGJlIHByb3BhZ2F0ZWQKaW50byB0aGUgc3RhYmxlIGtlcm5lbHMuICBUaGF0IHdheSwgd2UnZCBo
YXZlIHRoZSBtaW5pbWFsIGJ1Z2ZpeGVzIGluCnN0YWJsZSBrZXJuZWxzLCBhbmQgdGhlIG5pY2Ug
Y2xlYW51cHMgaW4gdGhlIGxhdGVzdCBrZXJuZWwgdmVyc2lvbi4KCk9mIGNvdXJzZSwgZGV0YWls
ZWQgdGVzdGluZyBpcyBtYW5kYXRvcnkuCgo+PiB3aGljaCBJIGV4cGVjdGVkIHRvIGhhdmUgZG9u
ZSBhbHJlYWR5LCBidXQgaGFkIHNvbWUgb3RoZXIgIklSTCBzdHVmZiIKPj4gdGhhdCBpbnRyb2R1
Y2VkIGEgZGVsYXkuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
