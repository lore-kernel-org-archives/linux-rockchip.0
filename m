Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81772C83F03
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 19:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TN9jAZpb+vNPxnivYZtY48+unZ8wNb4BU4/MdbdCqw=; b=xaJZc/ZzYkiP8E
	6EM6S9+x5oJrhWHF2/tD7RDaiRrzjF+1xJx19mziJBlLJ8UOcT9+xJsQNGCnp1pIjnVBB2uSyKIm7
	RZj5jqb/ec1Sjrq4JseMNmwz65BjO5/I4q1DJpPNQs/lBWw5EGNDGaHZgm3Njfg3Nr4cCmgJmCIgq
	eYLv0018fKlK5nuCIPZYYdO6o4M23f53s/3qFrG/ygVDdcmAZst+JRP8sOnNkAGpB9ezuvSzbVy5J
	UD1bJzvBfev9fzL/aCA4CJ+kzV8pBEjooUFJ4q/7AR4orjCehQgPxP42Am1I0SN284EV7aByd7Bdt
	G8v1bGjKAcMBxE4MB1BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZa5u-00000009dBx-3tXv;
	Wed, 09 Jul 2025 19:04:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZWSQ-000000097CZ-35Aw;
	Wed, 09 Jul 2025 15:11:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=hSvqoLf0LP5lzWLW+28LdzLoZ3lXqAKVepinrDPL/NU=; b=ivXLvStVMsA2ZVrqLyZJY7hMse
	yCNz2LW2NI8wqvB45/u+ezwSkR0PCxZnV3CgyQPEW43N924bNvJI5PoMRd4e3lDjj4acP7DhN1fJR
	9q0PMiSldEnVbeshyHPuwsiOmlsldPQVR7SJXj4yCXDSE6sHAc5QCgnV+F3/VnghCDaUwS+9O3f7y
	RaXWUspJQHBmZk3BgiNeFsp/Ygw9R5ay9gY747RFIaP8UswuF0yIoYFfsm+BEooABjXnojhZPmtNv
	6IcwCgse+kV94xYkRz6VG9nU1Rh6aa6CBeAetFZSbP6JpSKhtd0mKj0BYw8f3kaoQ4CImlctKmOiW
	H2cE3Kfg==;
Received: from i53875a79.versanet.de ([83.135.90.121] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZWSF-0004jl-6x; Wed, 09 Jul 2025 17:11:27 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add reset button to NanoPi R5S
Date: Wed, 09 Jul 2025 17:11:26 +0200
Message-ID: <5360173.ktpJ11cQ8Q@diego>
In-Reply-To: <ea6f2815-5882-4fab-8372-1c252a87e09a@kernel.org>
References: <20250709105715.119771-1-didi.debian@cknow.org>
 <DB7HDOPFOQAE.3NG4SP67ES80J@cknow.org>
 <ea6f2815-5882-4fab-8372-1c252a87e09a@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_081138_793843_2E2AC57F 
X-CRM114-Status: GOOD (  22.48  )
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

QW0gTWl0dHdvY2gsIDkuIEp1bGkgMjAyNSwgMTY6MTg6MTcgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBLcnp5c3p0b2YgS296bG93c2tpOgo+IE9uIDA5LzA3LzIwMjUgMTM6
MTcsIERpZWRlcmlrIGRlIEhhYXMgd3JvdGU6Cj4gPj4+ICAJCWNvbXBhdGlibGUgPSAiZ3Bpby1s
ZWRzIjsKPiA+Pj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+Pj4gQEAgLTEyNyw2
ICsxNDAsMTIgQEAgZXRoX3BoeTBfcmVzZXRfcGluOiBldGgtcGh5MC1yZXNldC1waW4gewo+ID4+
PiAgCQl9Owo+ID4+PiAgCX07Cj4gPj4+ICAKPiA+Pj4gKwlncGlvLWtleXMgewo+ID4+PiArCQln
cGlvNF9hMF9rMTogZ3BpbzQtYTAtazEgewo+ID4+Cj4gPj4gQXJlIHlvdSBzdXJlIHRoYXQgdGhp
cyBwYXNzZXMgY2hlY2tzPwo+ID4gCj4gPiBJIGRpZCB0aGUgZm9sbG93aW5nOgo+ID4gCj4gPiBg
YGBzaAo+ID4gZXhwb3J0IFBBVEg9fi9kZXYva2VybmVsLm9yZy9kdC1zY2hlbWEtdmVudi9iaW4v
OiRQQVRIIENST1NTX0NPTVBJTEU9YWFyY2g2NC1saW51eC1nbnUtIEFSQ0g9YXJtNjQKPiA+IG1h
a2UgZGlzdGNsZWFuCj4gPiBtYWtlIGRlYmFybTY0X2RlZmNvbmZpZwo+ID4gbWFrZSBDSEVDS19E
VEJTPXkgVz0xIHJvY2tjaGlwL3JrMzU2OC1uYW5vcGktcjVzLmR0Ygo+IAo+IFRoaXMgbG9va3Mg
ZmluZS4KPiAKPiA+IGBgYAo+ID4gCj4gPiBBbmQgaXQgZGlkIG5vdCByZXBvcnQgYW55IGlzc3Vl
cy4KPiA+IFRoZW4gYm9vdGVkIHVwIG15IE5hbm9QaSBSNVMgYW5kIHZlcmlmaWVkIHRoYXQgd2l0
aCB0aGUgdXBkYXRlZCBkdGIgdGhlCj4gPiByZXNldCBidXR0b24gd29ya2VkLgo+ID4gCj4gPiBJ
ZiBpdCdzIGFib3V0IHRoZSAnd2VpcmQnIG5hbWUvbGFiZWwsIGl0IGlzIHdoYXQgaXMgdXNlZCBp
biB0aGUKPiA+IHNjaGVtYXRpYyBkb2N1bWVudCBJIGhhdmUgYW5kIEkgYXNrZWQgSGVpa28gKG9u
IElSQykgaWYgdXNpbmcKPiA+IGBgcmVzZXRfYnV0dG9uX3BpbjogZ3BpbzQtYTAtazFgYCB3b3Vs
ZCBub3QgYmUgYmV0dGVyLiBUaGF0IHdvdWxkIG1ha2UKPiA+IGl0IG1vcmUgZGVzY3JpcHRpdmUg
d2hpbGUgYWxzbyBoYXZpbmcgdGhlIHNjaGVtYXRpYyB0cmFjZWFiaWxpdHkgaW4gaXQuCj4gPiBU
aGUgYW5zd2VyIHdhcyBubywgdXNlIHRoZSBmb3JtIEkgdXNlZCBpbiB0aGlzIHBhdGNoLgo+ID4g
Cj4gPiBBbSBJIG1pc3NpbmcgY2hlY2tzIEkgc2hvdWxkJ3ZlIGRvbmUgYXMgd2VsbD8KPiBJIG1l
YW50IHRoYXQgdXN1YWxseSBub2RlcywgaW5jbHVkaW5nIHBpbiBjb250cm9sbGVyIG11eC9jb25m
aWcgbm9kZXMsCj4gaGF2ZSBzcGVjaWZpYyBwcmVmaXhlcyBvciBzdWZmaXhlcy4gT3RoZXIgY2Fz
ZXMgaGF2ZSBoZXJlIGFzIHdlbGwuIFlvdXIKPiBkb2VzIG5vdC4KCkkgZ3Vlc3MgdGhpcyBtaWdo
dCBoYXZlIG1vcmUgdG8gZG8gd2l0aCBob3cgZGVlcCBwZW9wbGUgc3VibWl0dGluZyBEVHMKZGl2
ZSBpbnRvIHRoZSBzY2hlbWF0aWNzLgoKVGhlICJhaW0iIGhhcyBhbHdheXMgYmVlbiB0byBqdXN0
IHVzZSB0aGUgc2NoZW1hdGljcy9UUk0gbmFtZXMsIHdoaWNoIGlzCnRydWUgZm9yIHRoZSBjb3Jl
IHNvYyBwaW5jdHJsIGVudHJpZXMsIGFuZCBtYW55IGlmIG5vdCBtb3N0IGJvYXJkcyBkbyB0aGlz
LgoKSSB3b3VsZCBhc3N1bWUgdGhlICJsYW4xLWxlZC1waW4iIGJlbG93IHRoZSBuZXdseSBhZGRl
ZCBvbmUgc3RlbXMgZnJvbQphIG1vcmUgInNoYWxsb3cgZGl2ZSIgOy0pIC4gSSB3b3VsZCBhc3N1
bWUgdGhhdCAibGFuMS1sZWQtcGluIiBtb3N0Cmxpa2VseSBoYXMgYSBkaWZmZXJlbnQgbmFtZSBp
biB0aGUgc2NoZW1hdGljcywgYW5kIHVzaW5nIHRoYXQgd291bGQndmUKYmVlbiBiZXR0ZXIuCgoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
