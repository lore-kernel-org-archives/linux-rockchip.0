Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6957FC02181
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jan 2025 06:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oDYMNRaq4AFIPItqJpUwtjlqSnKlivox60HyydS7Iaw=; b=SWTC9PyCq04FHpWWUQudnkLFt9
	pRvPTgA2B/F18fv+SzH5pUYSouAXgM9g+JUCU5OLYIAg4LrJ6PjCKl4JfwxJzBbbrPiGsDHTJFzDB
	2lQuDTMCLffRlp5fnO6SwPxh2mHmL7qBE5ymk5ebLxTFwRCL7vl395wmDfK4NNm8kvZyjmbndt73O
	V20BxlfA8cg9k1HKBm+ceLWaeGtrWyV5O3TdfEni2eWPbhJ0EJMcbwumUE08WwUVsjLyQHHF9+Mac
	kCbSECJNknrzvQujP0OFSaOs/D1ETp8wz8hrq2xIwh/mSqxlrg6hWycalkxHZge85onbPG+KyTXnU
	DgB7VLtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbvrd-0000000H9MS-2Xlg;
	Sun, 26 Jan 2025 06:11:21 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbvqK-0000000H9Fm-0qq6;
	Sun, 26 Jan 2025 06:10:01 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737871795;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DrfJ78PLe0e9lwqqdfT9D6sSqigv1UBh5RIKHcYWJUo=;
	b=tFUnnaeHEoJd5qT2dXcBvG5zfVSBBuQY0/Y5kapqlcWbPiuFKZnhBj+PvnOdzX6zh+LW6H
	KkkXKM2YEtUfPDEz2vyceipOk0casJxkryLczSLNE8kKU7mQVJB1/gh/J5yujLDUKIwQHs
	Tqu9QKkN1+6I6Q3YEjwZ9acULarTagpytbjS15NMT7QW6nS6oenVcUQmhxbUXnKAqKKXFA
	cZwLD+dzYA8ZJ6Pn3TiRaW2NPwHsghN2bL8I2vebY3ndh2GqFgVH9stE3kmb6J98Z7OrqH
	qHvYwFIaW7pzIj5dznkKFHVmqUc4gsynvioOWn4wQ7YNzkeaDCJCTOQEhwNesw==
Date: Sun, 26 Jan 2025 07:09:54 +0100
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
In-Reply-To: <CABjd4Yx0p0B=e00MjCpDDq8Z=0FtM0s9EN86WdvRimt-_+kh2w@mail.gmail.com>
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
 <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
 <a76f315f023a3f8f5435e0681119b4eb@manjaro.org>
 <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
 <61b494b209d7360d0f36adbf6d5443a4@manjaro.org>
 <CABjd4Yx0p0B=e00MjCpDDq8Z=0FtM0s9EN86WdvRimt-_+kh2w@mail.gmail.com>
Message-ID: <3e5e7761887e7624c2c225b105105864@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250125_221000_545958_B9BCFB33 
X-CRM114-Status: GOOD (  28.49  )
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

SGVsbG8gQWxleGV5LAoKT24gMjAyNS0wMS0yNCAxODoyMywgQWxleGV5IENoYXJrb3Ygd3JvdGU6
Cj4gT24gRnJpLCBKYW4gMjQsIDIwMjUgYXQgMjozN+KAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWlj
QG1hbmphcm8ub3JnPiAKPiB3cm90ZToKPj4gT24gMjAyNS0wMS0yNCAxMToyNSwgQWxleGV5IENo
YXJrb3Ygd3JvdGU6Cj4+ID4gT24gRnJpLCBKYW4gMjQsIDIwMjUgYXQgMjowNuKAr1BNIERyYWdh
biBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPgo+PiA+IHdyb3RlOgo+PiA+PiBPbiAyMDI1LTAx
LTI0IDA5OjMzLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPj4gPj4gPiBPbiBGcmksIEphbiAyNCwg
MjAyNSBhdCA5OjI24oCvQU0gQWxleGFuZGVyIFNoaXlhbgo+PiA+PiA+IDxlYWdsZS5hbGV4YW5k
ZXI5MjNAZ21haWwuY29tPiB3cm90ZToKPj4gPj4gPj4KPj4gPj4gPj4gVGhlcmUgaXMgbm8gcGlu
Y3RybCAiZ3BpbyIgYW5kICJvdHBvdXQiIChwcm9iYWJseSBkZXNpZ25lZCBhcwo+PiA+PiA+PiAi
b3V0cHV0IikKPj4gPj4gPj4gaGFuZGxpbmcgaW4gdGhlIHRzYWRjIGRyaXZlci4KPj4gPj4gPj4g
TGV0J3MgdXNlIHByb3BlciBiaW5kaW5nICJkZWZhdWx0IiBhbmQgInNsZWVwIi4KPj4gPj4gPgo+
PiA+PiA+IFRoaXMgbG9va3MgcmVhc29uYWJsZSwgaG93ZXZlciBJJ3ZlIHRyaWVkIGl0IG9uIG15
IFJhZHhhIFJvY2sgNUMgYW5kCj4+ID4+ID4gdGhlIGRyaXZlciBzdGlsbCBkb2Vzbid0IGNsYWlt
IEdQSU8wIFJLX1BBMSBldmVuIHdpdGggdGhpcyBjaGFuZ2UuIEFzCj4+ID4+ID4gYSByZXN1bHQs
IGEgc2ltdWxhdGVkIHRoZXJtYWwgcnVuYXdheSBjb25kaXRpb24gKEkndmUgY2hhbmdlZCB0aGUK
Pj4gPj4gPiB0c2h1dCB0ZW1wZXJhdHVyZSB0byA2NTAwMCBhbmQgdHNodXQgbW9kZSB0byAxKSBk
b2Vzbid0IHRyaWdnZXIgYSBQTUlDCj4+ID4+ID4gcmVzZXQsIGV2ZW4gdGhvdWdoIGEgZGlyZWN0
IGBncGlvc2V0IDAgMT0wYCBkb2VzLgo+PiA+PiA+Cj4+ID4+ID4gQXJlIGFueSBhZGRpdGlvbmFs
IGNoYW5nZXMgbmVlZGVkIHRvIHRoZSBkcml2ZXIgaXRzZWxmPwo+PiA+Pgo+PiA+PiBJJ3ZlIGJl
ZW4gZGlnZ2luZyB0aHJvdWdoIHRoaXMgcGF0Y2ggdGhlIHdob2xlIFRTQURDL09UUCB0aGluZyBp
biB0aGUKPj4gPj4gbGFzdCBjb3VwbGUgb2YgaG91cnMsIGFuZCBBRkFJSyBzb21lIHBhcnRzIG9m
IHRoZSB1cHN0cmVhbSBkcml2ZXIgYXJlCj4+ID4+IHN0aWxsIG1pc3NpbmcsIGluIGNvbXBhcmlz
b24gd2l0aCB0aGUgZG93bnN0cmVhbSBkcml2ZXIuCj4+ID4+Cj4+ID4+IEkndmUgZ290IHNvbWUg
c21hbGwgc3VnZ2VzdGlvbnMgZm9yIHRoZSBwYXRjaCBpdHNlbGYsIGJ1dCB0aGUgaXNzdWUKPj4g
Pj4geW91IG9ic2VydmVkIGlzIG9idmlvdXNseSBvZiBoaWdoZXIgcHJpb3JpdHksIGFuZCBJJ3Zl
IHNpbmdsZWQgaXQgb3V0Cj4+ID4+IGFzIHdlbGwgd2hpbGUgZGlnZ2luZyB0aHJvdWdoIHRoZSBj
b2RlLgo+PiA+Pgo+PiA+PiBDb3VsZCB5b3UsIHBsZWFzZSwgdHJ5IHRoZSBwYXRjaCBiZWxvdyBx
dWlja2x5LCB0byBzZWUgaXMgaXQgZ29pbmcgdG8KPj4gPj4gZml4IHRoZSBpc3N1ZSB5b3Ugb2Jz
ZXJ2ZWQ/ICBJJ3ZlIGdvdCBzb21lICJJUkwgc3R1ZmYiIHRvIHRha2UgY2FyZSBvZgo+PiA+PiB0
b2RheSwgc28gSSBjYW4ndCB0ZXN0IGl0IG15c2VsZiwgYW5kIGl0IHdvdWxkIGJlIGdyZWF0IHRv
IGtub3cgaXMgaXQKPj4gPj4gdGhlIHJpZ2h0IHBhdGggdG8gdGhlIHByb3BlciBmaXguCj4+ID4+
Cj4+ID4+IGRpZmYgLS1naXQgaS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4+
ID4+IHcvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+PiA+PiBpbmRleCBmNTUx
ZGY0OGVlZjkuLjYyZjBlMTRhOGQ5OCAxMDA2NDQKPj4gPj4gLS0tIGkvZHJpdmVycy90aGVybWFs
L3JvY2tjaGlwX3RoZXJtYWwuYwo+PiA+PiArKysgdy9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBf
dGhlcm1hbC5jCj4+ID4+IEBAIC0xNTY4LDYgKzE1NjgsMTEgQEAgc3RhdGljIGludCByb2NrY2hp
cF90aGVybWFsX3Byb2JlKHN0cnVjdAo+PiA+PiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ID4+
ICAgICAgICAgIHRoZXJtYWwtPmNoaXAtPmluaXRpYWxpemUodGhlcm1hbC0+Z3JmLCB0aGVybWFs
LT5yZWdzLAo+PiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRoZXJtYWwt
PnRzaHV0X3BvbGFyaXR5KTsKPj4gPj4KPj4gPj4gKyAgICAgICBpZiAodGhlcm1hbC0+dHNodXRf
bW9kZSA9PSBUU0hVVF9NT0RFX0dQSU8pCj4+ID4+ICsgICAgICAgICAgICAgICBwaW5jdHJsX3Nl
bGVjdF9kZWZhdWx0X3N0YXRlKGRldik7Cj4+ID4+ICsgICAgICAgZWxzZQo+PiA+PiArICAgICAg
ICAgICAgICAgcGluY3RybF9zZWxlY3Rfc2xlZXBfc3RhdGUoZGV2KTsKPj4gPgo+PiA+IEkgYmVs
aWV2ZSBubyAnZWxzZScgYmxvY2sgaXMgbmVlZGVkIGhlcmUsIGJlY2F1c2UgaWYgdHNodXRfbW9k
ZSBpcyBub3QKPj4gPiBUU0hVVF9NT0RFX0dQSU8gdGhlbiB0aGUgVFNBREMgZG9lc24ndCB1c2Ug
dGhpcyBwaW4gYXQgYWxsLCBzbyB0aGVyZSdzCj4+ID4gbm8gcmVhc29uIGZvciB0aGUgZHJpdmVy
IHRvIG1lc3Mgd2l0aCBpdHMgcGluY3RybCBzdGF0ZS4gSSdkIHJhdGhlcgo+PiA+IHB1dCBhIG1p
cnJvcmluZyBibG9jayB0byBwdXQgdGhlIHBpbiBiYWNrIHRvIGl0cyAnc2xlZXAnIHN0YXRlIGlu
IHRoZQo+PiA+IHJlbW92YWwgZnVuY3Rpb24gZm9yIHRoZSBUU0hVVF9NT0RFX0dQSU8gY2FzZS4K
Pj4gCj4+IFlvdSdyZSByaWdodCwgYnV0IHRoZSAiZWxzZSBibG9jayIgaXMgd2hhdCB0aGUgZG93
bnN0cmVhbSBkcml2ZXIgZG9lcywKPiAKPiBEb2VzIGl0IHRob3VnaD8gSXQgb25seSBoYW5kbGVz
IHRoZSBUU0hVVF9NT0RFX0dQSU8gY2FzZSBhcyBmYXIgYXMgSQo+IGNhbiB0ZWxsIChvciBUU0hV
VF9NT0RFX09UUCBpbiBkb3duc3RyZWFtIGRyaXZlciBsaW5nbykgWzFdCj4gCj4gWzFdIAo+IGh0
dHBzOi8vZ2l0aHViLmNvbS9yYWR4YS9rZXJuZWwvYmxvYi9lZGIzZWVlYWE0NjQzZWNhYzZmNDE4
NWQ2ZDM5MWM1NzQ3MzVmY2ExL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMjTDI1
NjQKCkFoLCB5b3UncmUgcmlnaHQuICBTb21laG93IEkgc2F3IHNvbWV0aGluZyB0aGF0IGFjdHVh
bGx5IHdhc24ndAp0aGVyZSwgc28gdGhlIGVsc2UgYmxvY2sgd291bGQgaW5kZWVkIGJlIHJlZHVu
ZGFudC4KCj4+IHNvIEkgdGhpbmsgaXQncyBiZXR0ZXIgdG8gc2ltcGx5IHN0YXkgb24gdGhlIHNh
ZmUgc2lkZSBhbmQgZm9sbG93IHRoYXQKPj4gbG9naWMgaW4gdGhlIHVwc3RyZWFtIGRyaXZlci4g
IElzIGl0IHJlYWxseSBuZWVkZWQ/ICBQZXJoYXBzIG5vdCwgYnV0Cj4+IGl0IGFsc28gc2hvdWxk
bid0IGh1cnQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
