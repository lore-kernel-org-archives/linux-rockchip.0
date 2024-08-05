Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82548C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 17:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5W/R7s+qokDxHzjNwWJD5WcopOFOQbErGU4T93Gvid0=; b=sUeegvb3wqY/i+
	o41BgOu6J6YFsJAoEVr2s+D9AC8JKyLKRUh+bnA98iEbIz/oCNaqUNkfx+zr5tsr4FHessiYwu/L+
	FoXM98QSa8HyWK88k/uPJY9BRszKhTDNZ8GT5uyLXOn+kC6Fv1YnDQVMMNZzJ+jV8cH+kraZPpfOs
	oCPSHI0+sa8F9b9Tjg/fsAY/utDIUpXgOnsxhAt8gKNq4G8XGhW+kVGRM4Y+OPlUfYqSKdCcdfXVB
	f2TocbjXVTm/dMNRWP7tllRf8nUQXGRxHpSSZirV/DMzHk2LC7Q1J6JORmsIIHYk3g4IozCJjvtLl
	lqjIXAaOLHDQRw562rag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb16h-0000000Gc8u-1Yzz;
	Mon, 05 Aug 2024 17:02:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb169-0000000Gc1E-00oC;
	Mon, 05 Aug 2024 17:02:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6DE1C60CA4;
	Mon,  5 Aug 2024 17:02:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B400EC32782;
	Mon,  5 Aug 2024 17:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722877335;
	bh=buWMdJiBFjNIl3Zdlss6nsnG6P87jRDiUQ9VCDRogio=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BGVipVjKalid41sRU8+kvk+mKajZEAjey0KD8qmCDhINhPijVCHEu9ER78gBH0QGG
	 pW87cpO0nEo9l5Gyg8RozCUT8c4/5NeeBGO0q//2TqjKk/g/S09pGsLcZo+0OHEusg
	 yVJbpqf+z6gf7UEHLlJY6lgc1RdHjMrdBO4xBgOkXziiXtrBw+ezScoRFG19pHaAMC
	 n8QJzvMh3TfTAFJT+q1cEgI1Zh0DhewVry/NfvYWjBVAYzExvRBezfzr04g89q4eDm
	 SloaBt+dfJ3G1kRlUSZmyAGskrMHARDI7lWrZf5DEd3ilUSw5zqW/EgFOwZApHBW60
	 znWrKbdfgr2hQ==
Message-ID: <e16df619-4309-45af-bd1e-883498be1b67@kernel.org>
Date: Mon, 5 Aug 2024 19:02:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
To: Yao Zi <ziyao@disroot.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org
References: <20240803125510.4699-2-ziyao@disroot.org>
 <ZrCwrWjRgvE0RS98@ziyaolaptop.my.domain>
 <82e7e3a78f784b3ad63094c8a0ab1932@manjaro.org> <7941737.iedYuu7f5S@diego>
 <ZrD8N7_tYAiKCg-C@ziyaolaptop.my.domain>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <ZrD8N7_tYAiKCg-C@ziyaolaptop.my.domain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_100217_601543_DDD2DB19 
X-CRM114-Status: GOOD (  18.53  )
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

T24gMDUvMDgvMjAyNCAxODoyMiwgWWFvIFppIHdyb3RlOgo+IE9uIE1vbiwgQXVnIDA1LCAyMDI0
IGF0IDAxOjQ3OjQ1UE0gKzAyMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBBbSBNb250YWcs
IDUuIEF1Z3VzdCAyMDI0LCAxMzozNzoxMSBDRVNUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+Pj4g
T24gMjAyNC0wOC0wNSAxMjo1OSwgWWFvIFppIHdyb3RlOgo+Pj4+IE9uIFN1biwgQXVnIDA0LCAy
MDI0IGF0IDA0OjA1OjI0UE0gKzAyMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4+
IE9uIDA0LzA4LzIwMjQgMTU6MjAsIFlhbyBaaSB3cm90ZToKPj4+Pj4+Pgo+Pj4+Pj4+PiArCQlj
b21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKPj4+Pj4+Pj4gKwkJI2Nsb2NrLWNlbGxzID0gPDA+
Owo+Pj4+Pj4+PiArCQljbG9jay1mcmVxdWVuY3kgPSA8MjQwMDAwMDA+Owo+Pj4+Pj4+PiArCQlj
bG9jay1vdXRwdXQtbmFtZXMgPSAieGluMjRtIjsKPj4+Pj4+Pj4gKwl9Owo+Pj4+Pj4+PiArCj4+
Pj4+Pj4+ICsJZ2ljOiBpbnRlcnJ1cHQtY29udHJvbGxlckBmZWQwMTAwMCB7Cj4+Pj4+Pj4KPj4+
Pj4+PiBXaHkgdGhpcyBhbGwgaXMgb3V0c2lkZSBvZiBTb0M/Cj4+Pj4+Pgo+Pj4+Pj4gSnVzdCBh
cyBIZWlrbyBzYXlzLCBkZXZpY2UgdHJlZSBmb3IgYWxsIG90aGVyIFJvY2tjaGlwIFNvQ3MgZG9u
J3QgaGF2ZQo+Pj4+Pj4gYSAic29jIiBub2RlLiBJIGRpZG4ndCBrbm93IHdoeSBiZWZvcmUgYnV0
IGp1c3QgZm9sbG93IHRoZSBzdHlsZS4KPj4+Pj4+Cj4+Pj4+PiBJZiB5b3UgcHJlZmVyIGFkZCBh
IHNvYyBub2RlLCBJIGFtIHdpbGxpbmcgdG8uCj4+Pj4+Cj4+Pj4+IFN1cnByaXNpbmcgYXMgdXN1
YWxseSB3ZSBleHBlY3QgTU1JTyBub2RlcyBiZWluZyBwYXJ0IG9mIFNvQyB0byBiZSAKPj4+Pj4g
dW5kZXIKPj4+Pj4gc29jQCwgYnV0IGlmIHRoYXQncyBSb2NrY2hpcCBwcmVmZXJlbmNlIHRoZW4g
ZmluZS4KPj4+Pj4KPj4+Pgo+Pj4+IE9rYXksIHRoZW4gSSB3b3VsZCBsZWF2ZSBpdCBhcyBpcy4K
Pj4+Pgo+Pj4+IEZvciB0aGUgZml4ZWQtY2xvY2sgbm9kZSwgSSB0aGluayAieGluMjRtOiBjbG9j
ay0yNG0geyB9IiBpcyBva2F5IGFuZAo+Pj4+IGZvbGxvd3MgdGhlIG5ldyBydWxlPwo+Pj4KPj4+
IEkgZmluZCAieGluMjRtOiBjbG9jay14aW4yNG0geyB9IiBiZXR0ZXIsIGJlY2F1c2Uga2VlcGlu
ZyB0aGUgInhpbjI0bSIKPj4+IHBhcnQgaW4gL3N5cyBsaXN0aW5nKHMpLCBmb3IgZXhhbXBsZSwg
Y2FuIG9ubHkgYmUgaGVscGZ1bC4KPj4KPj4gSSB3b3VsZCBzZWNvbmQgdGhhdCA6LSkgLiBMaWtl
IG9uIGEgbnVtYmVyIG9mIGJvYXJkcyB3ZSBoYXZlIGZvciBleGFtcGxlCj4+IDEyNU1IeiBnbWFj
IGNsb2NrIGdlbmVyYXRvcnMgLi4uIHdpdGggMiBnbWFjcywgdGhlcmUgYXJlIDIgb2YgdGhlbS4K
Pj4KPj4gSSdtIG5vdCBzdXJlIHRoZSBwcmVmZXJyZWQgbmFtZSBhY2NvdW50cyBmb3IgdGhhdD8K
Pj4KPj4gU2ltaWxhcmx5IHdlIGFsc28ga2VlcCB0aGUgbmFtaW5nIGluIHRoZSByZWd1bGF0b3Ig
bm9kZSwKPj4gaXQncyByZWd1bGF0b3ItdmNjM3YzLXNvbWVuYW1lIHt9IGluc3RlYWQgb2YganVz
dCByZWd1bGF0b3ItM3YzIHt9Lgo+Pgo+IAo+ICJjbG9jay14aW4yNG0iIHdvdWxkbid0IGJlIG1v
cmUgZGVzY3JpcHRpdmUgdGhhbiAiY2xvY2stMjRtIiBhbmQgdGhlcmUKPiBhcmUgdXN1YWxseSBv
bmx5IGEgZmV3IGZpeGVkIGNsb2NrcyBpbiBkdCwgdGh1cyBmaW5kaW5nIGNvcnJlc3BvbmRpbmcK
PiBkZWZpbml0aW9uIGlzbid0IGEgcHJvYmxlbSBJIHRoaW5rLgo+IAo+IEZvciB0aGUgZ21hYyBj
YXNlLCBLcnp5c3p0b2YsIGRvIHlvdSB0aGluayBzb21ldGhpbmcgbGlrZQo+ICJjbG9jay0xMjVt
LWdtYWMxIiBpcyBhY2NlcHRhYmxlLCBqdXN0IGxpa2Ugd2hhdCBoYXMgYmVlbiBkb25lIGZvcgo+
IHJlZ3VsYXRvcnM/Cj4KCkhvdyBib3RoIGFib3ZlIGZpdCB0aGUgZ2VuZXJpYyBub2RlIG5hbWlu
ZyBydWxlPyBZb3UgYWRkIG5vdyBzcGVjaWZpYwpwYXJ0IC0gcHVycG9zZSBvZiB0aGUgY2xvY2su
IFRoZSBwdXJwb3NlIGlzIG9idmlvdXMgZnJvbQpjbG9jay1vdXRwdXQtbmFtZXMgb3IgbGFiZWwu
IEFueXdheSwgbm90IGltcG9ydGFudCB0b3BpYyB0byBuYWsgdGhlc2UKcGF0Y2hlcy4KCkJlc3Qg
cmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
