Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EF1AC02181
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 10:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WOfvinnYwdjyMc0xeR8PGtYS8yPPjVkYDfmBsHgmU4o=; b=u0tvB5jWFjg730eukbOe3YBd6z
	yrfgvdXX0H5joICMJ0aTe1Ck1Zg3lyRc4T+qrj4VX/49MQnpft0mjUwqd+vza/BFKPcEVb9U8YAY4
	qrOc7/+jbK4z3bdSQ3Hnv/07ZLPw3j9HUjwieiKGdoCmlBO88DYcQDASV+4/2zTmo6bT4BXydi9St
	Plvq0Tq66apH7krS5tgej2/fK5FEhaKQdRtu9JGlzDFIvuU6rX0pISRPG4Xo/Ld+VyddEFP08KQhU
	mqhMyKz5r0B1quWsJYtQ5AIxFoZOkLSAqByvqf+sQG7HIEZUZhCGG5sxrhdMyPFs+Xx51WQ8NkRPt
	84ylAx9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbH57-0000000ETMB-3aGA;
	Fri, 24 Jan 2025 10:38:33 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbH3k-0000000ETHS-21Yk;
	Fri, 24 Jan 2025 10:37:09 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737715026;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qut7dtNiJ0EjOhPsNaw96lXsUIuxlOfalPVxYzFJpjE=;
	b=Y2m7JB18UVW2v/MAOSH+OVb7u4Hh6y+MVpWW22Nem84MrECxywTcgUdUUgMV94srqTzNKW
	tuwLyeA4A55lbOVIjtUWBJqCiXcRpeDmL5WnOYJ6BcJkeALU+yumIoYaNe+qJ6rgkYCh6K
	UHGDAt0XBYObNFqqGZoK1UN44FdpXNQOjaM0kyCPhDVMRaUacs3+XIulRF7uxbZtwFrs3T
	H8uFGVZLsgz3laMWT7F32C+/Ovps2X/ZqyhEGuGCVVfHk/if/UroELY9OTK4SJmZfX2cOf
	HHLhbYw3uEWkpNw150PTUL53OQsItUFnrcdNelKzY3zu5SRA01Pr5WSnMz3hIg==
Date: Fri, 24 Jan 2025 11:37:05 +0100
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
In-Reply-To: <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
 <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
 <a76f315f023a3f8f5435e0681119b4eb@manjaro.org>
 <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
Message-ID: <61b494b209d7360d0f36adbf6d5443a4@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_023708_831693_75629ED4 
X-CRM114-Status: GOOD (  30.95  )
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

T24gMjAyNS0wMS0yNCAxMToyNSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gT24gRnJpLCBKYW4g
MjQsIDIwMjUgYXQgMjowNuKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiAK
PiB3cm90ZToKPj4gT24gMjAyNS0wMS0yNCAwOTozMywgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+
ID4gT24gRnJpLCBKYW4gMjQsIDIwMjUgYXQgOToyNuKAr0FNIEFsZXhhbmRlciBTaGl5YW4KPj4g
PiA8ZWFnbGUuYWxleGFuZGVyOTIzQGdtYWlsLmNvbT4gd3JvdGU6Cj4+ID4+Cj4+ID4+IFRoZXJl
IGlzIG5vIHBpbmN0cmwgImdwaW8iIGFuZCAib3Rwb3V0IiAocHJvYmFibHkgZGVzaWduZWQgYXMK
Pj4gPj4gIm91dHB1dCIpCj4+ID4+IGhhbmRsaW5nIGluIHRoZSB0c2FkYyBkcml2ZXIuCj4+ID4+
IExldCdzIHVzZSBwcm9wZXIgYmluZGluZyAiZGVmYXVsdCIgYW5kICJzbGVlcCIuCj4+ID4KPj4g
PiBUaGlzIGxvb2tzIHJlYXNvbmFibGUsIGhvd2V2ZXIgSSd2ZSB0cmllZCBpdCBvbiBteSBSYWR4
YSBSb2NrIDVDIGFuZAo+PiA+IHRoZSBkcml2ZXIgc3RpbGwgZG9lc24ndCBjbGFpbSBHUElPMCBS
S19QQTEgZXZlbiB3aXRoIHRoaXMgY2hhbmdlLiBBcwo+PiA+IGEgcmVzdWx0LCBhIHNpbXVsYXRl
ZCB0aGVybWFsIHJ1bmF3YXkgY29uZGl0aW9uIChJJ3ZlIGNoYW5nZWQgdGhlCj4+ID4gdHNodXQg
dGVtcGVyYXR1cmUgdG8gNjUwMDAgYW5kIHRzaHV0IG1vZGUgdG8gMSkgZG9lc24ndCB0cmlnZ2Vy
IGEgUE1JQwo+PiA+IHJlc2V0LCBldmVuIHRob3VnaCBhIGRpcmVjdCBgZ3Bpb3NldCAwIDE9MGAg
ZG9lcy4KPj4gPgo+PiA+IEFyZSBhbnkgYWRkaXRpb25hbCBjaGFuZ2VzIG5lZWRlZCB0byB0aGUg
ZHJpdmVyIGl0c2VsZj8KPj4gCj4+IEkndmUgYmVlbiBkaWdnaW5nIHRocm91Z2ggdGhpcyBwYXRj
aCB0aGUgd2hvbGUgVFNBREMvT1RQIHRoaW5nIGluIHRoZQo+PiBsYXN0IGNvdXBsZSBvZiBob3Vy
cywgYW5kIEFGQUlLIHNvbWUgcGFydHMgb2YgdGhlIHVwc3RyZWFtIGRyaXZlciBhcmUKPj4gc3Rp
bGwgbWlzc2luZywgaW4gY29tcGFyaXNvbiB3aXRoIHRoZSBkb3duc3RyZWFtIGRyaXZlci4KPj4g
Cj4+IEkndmUgZ290IHNvbWUgc21hbGwgc3VnZ2VzdGlvbnMgZm9yIHRoZSBwYXRjaCBpdHNlbGYs
IGJ1dCB0aGUgaXNzdWUKPj4geW91IG9ic2VydmVkIGlzIG9idmlvdXNseSBvZiBoaWdoZXIgcHJp
b3JpdHksIGFuZCBJJ3ZlIHNpbmdsZWQgaXQgb3V0Cj4+IGFzIHdlbGwgd2hpbGUgZGlnZ2luZyB0
aHJvdWdoIHRoZSBjb2RlLgo+PiAKPj4gQ291bGQgeW91LCBwbGVhc2UsIHRyeSB0aGUgcGF0Y2gg
YmVsb3cgcXVpY2tseSwgdG8gc2VlIGlzIGl0IGdvaW5nIHRvCj4+IGZpeCB0aGUgaXNzdWUgeW91
IG9ic2VydmVkPyAgSSd2ZSBnb3Qgc29tZSAiSVJMIHN0dWZmIiB0byB0YWtlIGNhcmUgb2YKPj4g
dG9kYXksIHNvIEkgY2FuJ3QgdGVzdCBpdCBteXNlbGYsIGFuZCBpdCB3b3VsZCBiZSBncmVhdCB0
byBrbm93IGlzIGl0Cj4+IHRoZSByaWdodCBwYXRoIHRvIHRoZSBwcm9wZXIgZml4Lgo+PiAKPj4g
ZGlmZiAtLWdpdCBpL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPj4gdy9kcml2
ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4+IGluZGV4IGY1NTFkZjQ4ZWVmOS4uNjJm
MGUxNGE4ZDk4IDEwMDY0NAo+PiAtLS0gaS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1h
bC5jCj4+ICsrKyB3L2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPj4gQEAgLTE1
NjgsNiArMTU2OCwxMSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3RoZXJtYWxfcHJvYmUoc3RydWN0
Cj4+IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gICAgICAgICAgdGhlcm1hbC0+Y2hpcC0+aW5p
dGlhbGl6ZSh0aGVybWFsLT5ncmYsIHRoZXJtYWwtPnJlZ3MsCj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdGhlcm1hbC0+dHNodXRfcG9sYXJpdHkpOwo+PiAKPj4gKyAgICAg
ICBpZiAodGhlcm1hbC0+dHNodXRfbW9kZSA9PSBUU0hVVF9NT0RFX0dQSU8pCj4+ICsgICAgICAg
ICAgICAgICBwaW5jdHJsX3NlbGVjdF9kZWZhdWx0X3N0YXRlKGRldik7Cj4+ICsgICAgICAgZWxz
ZQo+PiArICAgICAgICAgICAgICAgcGluY3RybF9zZWxlY3Rfc2xlZXBfc3RhdGUoZGV2KTsKPiAK
PiBJIGJlbGlldmUgbm8gJ2Vsc2UnIGJsb2NrIGlzIG5lZWRlZCBoZXJlLCBiZWNhdXNlIGlmIHRz
aHV0X21vZGUgaXMgbm90Cj4gVFNIVVRfTU9ERV9HUElPIHRoZW4gdGhlIFRTQURDIGRvZXNuJ3Qg
dXNlIHRoaXMgcGluIGF0IGFsbCwgc28gdGhlcmUncwo+IG5vIHJlYXNvbiBmb3IgdGhlIGRyaXZl
ciB0byBtZXNzIHdpdGggaXRzIHBpbmN0cmwgc3RhdGUuIEknZCByYXRoZXIKPiBwdXQgYSBtaXJy
b3JpbmcgYmxvY2sgdG8gcHV0IHRoZSBwaW4gYmFjayB0byBpdHMgJ3NsZWVwJyBzdGF0ZSBpbiB0
aGUKPiByZW1vdmFsIGZ1bmN0aW9uIGZvciB0aGUgVFNIVVRfTU9ERV9HUElPIGNhc2UuCgpZb3Un
cmUgcmlnaHQsIGJ1dCB0aGUgImVsc2UgYmxvY2siIGlzIHdoYXQgdGhlIGRvd25zdHJlYW0gZHJp
dmVyIGRvZXMsCnNvIEkgdGhpbmsgaXQncyBiZXR0ZXIgdG8gc2ltcGx5IHN0YXkgb24gdGhlIHNh
ZmUgc2lkZSBhbmQgZm9sbG93IHRoYXQKbG9naWMgaW4gdGhlIHVwc3RyZWFtIGRyaXZlci4gIElz
IGl0IHJlYWxseSBuZWVkZWQ/ICBQZXJoYXBzIG5vdCwgYnV0Cml0IGFsc28gc2hvdWxkbid0IGh1
cnQuCgo+IFdpbGwgdHJ5IGFuZCByZXZlcnQuCgpBd2Vzb21lLCB0aGFua3MhCgo+IFAuUy4gSnVz
dCBsb29rZWQgYXQgdGhlIGRvd25zdHJlYW0gZHJpdmVyLCBhbmQgaXQgYWN0dWFsbHkgY2FsbHMK
PiBUU0hVVF9NT0RFX0dQSU8gVFNIVVRfTU9ERV9PVFAgaW5zdGVhZCwgc28gaXQgc2VlbXMgdGhh
dCAib3Rwb3V0IiB3YXMKPiBub3QgYSB0eXBvIGluIHRoZSBmaXJzdCBwbGFjZS4gU28gbWF5YmUg
dGhlIHJpZ2h0IGFwcHJvYWNoIGhlcmUgaXMgbm90Cj4gdG8gY2hhbmdlIHRoZSBkZXZpY2UgdHJl
ZSBidXQgcmF0aGVyIGZpeCB0aGUgImdwaW8iIC8gIm90cG91dCIgcGluY3RybAo+IHN0YXRlIGhh
bmRsaW5nIGluIHRoZSBkcml2ZXIuCgpJbmRlZWQsICJvdHBvdXQiIHdhc24ndCBhIHR5cG8sIGFu
ZCBJJ3ZlIGFscmVhZHkgYWRkcmVzc2VkIHRoYXQgaW4gbXkKY29tbWVudHMgdG8gQWxleGFuZGVy
J3MgcGF0Y2guICBXaWxsIHNlbmQgdGhhdCByZXNwb25zZSBhIGJpdCBsYXRlci4KCkkgdGhpbmsg
aXQncyBhY3R1YWxseSBiZXR0ZXIgdG8gYWNjZXB0IHRoZSBhcHByb2FjaCBpbiBBbGV4YW5kZXIn
cwpwYXRjaCwgYmVjYXVzZSB0aGUgd2hvbGUgdGhpbmcgYXBwbGllcyB0byBvdGhlciBSb2NrY2hp
cCBTb0NzIGFzIHdlbGwsCm5vdCBqdXN0IHRvIHRoZSBSSzM1ODgoUykuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
