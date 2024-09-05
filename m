Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 414C6CE7A9A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 20:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxQtGt7SX30QA/gfLF0+MoI0afh4Dwuc2oKASWjWyzM=; b=B3xJiyOK7bmLO/
	nGG1t4VqXBbxtf3ifjo/yB/AhCEt6UQ9yAQezk6USravjRafmyn8tNTgpn5QAXxvWh9RfQa2uBBzC
	ZM6KM0q+xfypvbf5dUHuodCUXjF0bHEv470opQeex3lcNw9tWN3+IPDt1wOfqg3KhyOhD+fm05Q8E
	BQqMjO+EuiuDP4gEGOF0GNx1zT9hAe00uOuzl0q8m97ftaNXKPDyFUS4og6esKf60BJlxTLlZ/Jbx
	yJTV9Q1cbol8xpBI6EUHIZeMDV7drOX+wzLtEhevJcODNosp/usitROOxuxwuJLBh2Toi+KF761hV
	c3rzb7YdKUKal3WNIIeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smJBv-00000009lso-34Ka;
	Thu, 05 Sep 2024 20:34:55 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smJAx-00000009lkV-1A9V;
	Thu, 05 Sep 2024 20:33:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 15BCBA44F5D;
	Thu,  5 Sep 2024 20:33:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C681C4CEC3;
	Thu,  5 Sep 2024 20:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725568434;
	bh=H49BPIC9s3SPzT/V3Ja0oEGR0PhQWoDW/01521CaypU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u2O6pYIBtWf7JOB8act6rnR56J4AlqXUypgCXmH/ESWWU6+OhvKbRFxokhuy2lq50
	 gUUaToEoCTsIk/EpEyS4kc6N8zt8hDvpAVKE/XfTgSceq5m/aPZX1FZn1j2EUx6aX9
	 Ifoag2Nbe+JSC4TKESBxtxQ/Ym/rrAqeBmtWQzzLzvfAesuLoOFenmi6j6pB8Zr8MZ
	 35MMl81Fpn1ZSeJtUEcDyD2oAjqQJM+vk1/99ewMB80uRnm1nijIKPliBYh6+nWrVR
	 De++5WSsivgg/TdRytFRkRlpRzGj3kAcpJSj+5LLBmL03cwfUJytxg94Y94cv+SV32
	 7kqoA3NEYXumA==
Date: Thu, 5 Sep 2024 22:33:49 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>, 
	Guenter Roeck <linux@roeck-us.net>, Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH v7 2/8] i2c: muxes: add support for tsd,mule-i2c
 multiplexer
Message-ID: <wncr3gah2qsakgvqj5c2rj6ovm5kja3di2ybqemd3t6i6v7hdv@arkg6mvhozxj>
References: <20240902-dev-mule-i2c-mux-v7-0-bf7b8f5385ed@cherry.de>
 <20240902-dev-mule-i2c-mux-v7-2-bf7b8f5385ed@cherry.de>
 <fvk5u2j7wu7pjrlpbbnggp3vhopotctu2vr3fh77kl2icrvnyt@tukh2ytkiwdz>
 <b12ac5ac-306f-4f36-895a-e1472ff86271@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b12ac5ac-306f-4f36-895a-e1472ff86271@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_133355_470298_9B41ED6A 
X-CRM114-Status: GOOD (  25.32  )
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

SGkgRmFyb3VrLAoKT24gV2VkLCBTZXAgMDQsIDIwMjQgYXQgMTI6MjM6NTZQTSBHTVQsIEZhcm91
ayBCb3VhYmlkIHdyb3RlOgo+IE9uIDAzLjA5LjI0IDE3OjEzLCBBbmRpIFNoeXRpIHdyb3RlOgo+
ID4gPiBUaGVvYnJvbWEgU3lzdGVtcyBNdWxlIGlzIGFuIE1DVSB0aGF0IGVtdWxhdGVzIGEgc2V0
IG9mIEkyQyBkZXZpY2VzLAo+ID4gPiBhbW9uZyB3aGljaCBhbiBhbWM2ODIxIGFuZCBkZXZpY2Vz
IHRoYXQgYXJlIHJlYWNoYWJsZSB0aHJvdWdoIGFuIEkyQy1tdXguCj4gPiA+IFRoZSBkZXZpY2Vz
IG9uIHRoZSBtdXggY2FuIGJlIHNlbGVjdGVkIGJ5IHdyaXRpbmcgdGhlIGFwcHJvcHJpYXRlIGRl
dmljZQo+ID4gPiBudW1iZXIgdG8gYW4gSTJDIGNvbmZpZyByZWdpc3RlciAoYW1jNjgyMSByZWcg
MHhmZikuCj4gPiA+IAo+ID4gPiBUaGlzIGRyaXZlciBpcyBleHBlY3RlZCB0byBiZSBwcm9iZWQg
YXMgYSBwbGF0Zm9ybSBkZXZpY2Ugd2l0aCBhbWM2ODIxCj4gPiA+IGFzIGl0cyBwYXJlbnQgaTJj
IGRldmljZS4KPiA+ID4gCj4gPiA+IEFkZCBzdXBwb3J0IGZvciB0aGUgbXVsZS1pMmMtbXV4IHBs
YXRmb3JtIGRyaXZlci4gVGhlIGFtYzY4MjEgZHJpdmVyCj4gPiBBbG9uZyB0aGUgZHJpdmVyIEkg
ZXhwcmVzc2VkIHNvbWUgY29uY2VybiBhYm91dCB0aGUgcHJlZml4ZXMuCj4gPiAKPiA+IFlvdSBz
aG91bGQgYXZvaWQgcHJlZml4ZXMgc3VjaCBhcyBtdXhfKiBvciBNVVhfKiBiZWNhdXNlIHRoZXkK
PiA+IGRvbid0IGJlbG9uZyB0byB5b3VyIGRyaXZlci4gWW91IHNob3VsZCBhbHdheXMgdXNlIHlv
dXIgZHJpdmVyJ3MKPiA+IG5hbWU6Cj4gPiAKPiA+ICAgMS4gbXVsZV8qCj4gPiAgIDIuIG11bGVf
bXV4XyoKPiA+ICAgMy4gbXVsZV9pMmNfbXV4XyoKPiA+IAo+ID4gWW91IGhhdmUgdXNlZCB0aGUg
M3JkLCBJJ2QgcmF0aGVyIHByZWZlciB0aGUgMXN0LiBCZWNhdXNlIHdoZW4KPiA+IHlvdSBhcmUg
aW4gaTJjL211eGV4LyBpdCdzIGltcGxpZWQgdGhhdCB5b3UgYXJlIGFuIGkyYyBtdXgKPiA+IGRl
dmljZS4gQnV0IGl0J3MgYSBtYXR0ZXIgb2YgcGVyc29uYWwgdGFzdGUuCj4gPiAKPiAKPiBBcmUg
eW91IGhlcmUgcmVmZXJyaW5nIHRvIHRoZSBjb21taXQgbG9nLCBtb2R1bGUgbmFtZSBvciBmdW5j
dGlvbiBwcmVmaXhlcyA/Cj4gKGJlY2F1c2XCoCBsYXRlciB5b3Ugc3VnZ2VzdGVkIHRoYXQgd2Ug
dXNlICJtdWxlX2kyY19tdXhfKiIgZm9yIGZ1bmN0aW9ucykKCkkgbWFkZSBhIGdlbmVyYWwgY29t
bWVudCB0aGF0IGFwcGxpZXMgdG8gYWxsIHRoZSBmdW5jdGlvbnMsCmRlZmluZXMsIGFuZCBnbG9i
YWwgdmFyaWFibGVzIHlvdSd2ZSBtYWRlIGhlcmUuCgpNeSBzdWdnZXN0aW9uIHRvIHVzZSBtdWxl
X2kyY19tdXhfKiBpcyBiYXNlZCBvbiB0aGUgZmFjdCB0aGF0Cml0J3MgdGhlIG1vc3QgY29tbW9u
bHkgdXNlZCBwcmVmaXggaW4geW91ciBjb2RlLCBidXQgeW91IGRvbid0Cm5lY2Vzc2FyaWx5IG5l
ZWQgdG8gdXNlIGl0LiBUaGF0J3Mgd2h5IEkgbGlzdGVkIGEgZmV3IG9wdGlvbnMuCgo+ICJNdWxl
IiBpcyBhIGNoaXAgdGhhdCByZXF1aXJlcyBtdWx0aXBsZSBkcml2ZXJzIHRoYXQgd2lsbCBiZSBh
ZGRlZCBsYXRlciBvbiwKPiBhbmQgSSBzdXBwb3NlIHdlIGRvbid0IHdhbnQgY29uZmxpY3Qgd2l0
aCBvdGhlciBtb2R1bGUgbmFtZXMgPwoKSXQncyBhbiB1bndyaXR0ZW4gcnVsZSB0aGF0IHlvdSBz
aG91bGQgYXZvaWQgdXNpbmcgb3Zlcmx5IGdlbmVyaWMKdGVybXMgYXMgcHJlZml4ZXMgaW4geW91
ciBkcml2ZXIsIGxpa2UgInNtYnVzX3JlYWQoKSIgb3IKImkyY19yZWFkKCkiLiBJbnN0ZWFkLCB5
b3Ugc2hvdWxkIGluY29ycG9yYXRlIHRvIHRoZSBwcmVmaXggdGhlCmNoaXAgaWRlbnRpZmllciBh
cyBuYW1lZCBieSB0aGUgdmVuZG9yLiBJZiB0aGlzIGRldmljZSBpcyBjYWxsZWQKJ1RoZW9icm9t
YSBTeXN0ZW1zIE11bGUsJyB5b3Ugc2hvdWxkIHN0aWNrIHRvIHRoYXQgbmFtaW5nIGFzIG11Y2gK
YXMgcG9zc2libGUuCgpVc2luZyB0aGUgY29ycmVjdCBwcmVmaXggbWlnaHQgc2VlbSBsaWtlIG92
ZXJraWxsLCBidXQgaXQncwplc3NlbnRpYWwgZm9yIGRlYnVnZ2luZywgZ3JlcHBpbmcsIGFuZCBh
dm9pZGluZyBjb25mbGljdHMgaW4KY2FzZXMgd2hlcmUgb3RoZXIgZGV2ZWxvcGVycyBoYXZlbuKA
mXQgdXNlZCB1bmlxdWUgaWRlbnRpZmllcnMgaW4KdGhlaXIgbW9kdWxlcy4KCkxhc3RseSwgaWYg
eW91J3JlIHdvcmtpbmcgd2l0aGluIHRoZSBpMmMvbXV4ZXMgZGlyZWN0b3J5LCB5b3UgY2FuCm9t
aXQgdGhlICdtdXgnIHByZWZpeC4gSXTigJlzIGFscmVhZHkgY2xlYXIgdGhhdCB5b3UncmUgd29y
a2luZwp3aXRoIGFuIEkyQyBtdXggZGV2aWNlLgoKVGhhbmtzLApBbmRpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
