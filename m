Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92F94C282EC
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 22:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJI1p2fggt0iiWiQGUeqwbgkSWhkOVLf6z0L6qvukFk=; b=p/eoulIw7aKdwi
	5pCYq+PqodnBX9LBqKaGhUge42ajJFiCDZMQOZ735xeoMqcjzqxpouBF/w5TLdvsrdODbDCWh7PxC
	GsH0tChBqYdilraT8J34GgkL3MFvkVf5lZpqL+gTX3vMZNPKPwAv0gZdYBbUmmOWNlV81JWXcSK6v
	fuzRUQqLEa1yeoQFV10Q9/one6LuHhF9I/0ODmLJ8zKt4HVTf91gEqlSqi+1JXzuIiyF7oFpZMWjo
	dh6k/KndtL7oKwXrQDSj6hEMbGs1ipanXQXt3nfZ3MU/Xsa1vbF8BpctDdVhcXYJo4uMx8GsmtWpC
	7V3ZchWD4+kURS9YL8jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpx9c-00000009TVp-1MhO;
	Wed, 05 Mar 2025 22:23:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpx7P-00000009TEi-1wwX;
	Wed, 05 Mar 2025 22:21:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=06kA3D7q5+feETjZztMj3/pQCz9ZvioWeY+GXfhxs+g=; b=lUkw1mDJPwmNN8PM4Mq+QkuCs5
	Eq040osdHWsuyn11Tm0W6UnpxHctuR9ScrqJrklLaLFeq/pcRVhBtomEqmObs5JzVoPO1VGKjIr8q
	4ROKTP9xz8touEtqnKHm6AwMTf8QB9svZAUOK6/4MlMvsnSqIEtwoJq5vyHoAx6oGAKwzlAEWMkzJ
	vYqtdicoO7FQK4S0CvsZ/571lwZsB94zEB04FS5porMskAH1e7oVSN2IzsU9dn4FZR50F6HNBTTTG
	gQs6G+/alVnXe33g6eFmi58lFL2VVYHYjxkMuWMDY7hJSLtz+yd5naztafwQRvtnzkAqH751ZHw+9
	8X3U5BSw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpx7M-00000006IAF-2LHm;
	Wed, 05 Mar 2025 22:21:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=06kA3D7q5+feETjZztMj3/pQCz9ZvioWeY+GXfhxs+g=; b=0jTs1xQcFwh5ox+whGadW7md9L
	WS1OfCwNfoT/R60g3n715mKlYtI9WjDijcapfP4h/inDZR9976tcNGiyoNj0+yyneWUUZ2ggYSdAe
	yTo082HyUXdH7MF4UTjHFsIIOaEanyKuNhhTjVOJGqQtmCMT0qjnUX24pLy8QLutraI3hv/b0hqYT
	NjRL5QdypTnZidKKbC9xcOtUQ/4uTdV1VVo/ryphnbf6BiucQwY7rFp0uoRRwUprlDco3Mtw4ZcWk
	t1fJObmKUI8LjICwz9D/wFRCAQHEJ0kTZTE91wGbNagju9vdMn3f0SDQJxg7PBglm6o8jBr62LP8Y
	IiygmWWQ==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tpx74-00060i-4M; Wed, 05 Mar 2025 23:21:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH 2/7] clk: rockchip: add support for GRF gated clocks
Date: Wed, 05 Mar 2025 23:21:12 +0100
Message-ID: <4964374.GXAFRqVoOG@phil>
In-Reply-To: <20250305-rk3576-sai-v1-2-64e6cf863e9a@collabora.com>
References: <20250305-rk3576-sai-v1-0-64e6cf863e9a@collabora.com>
 <20250305-rk3576-sai-v1-2-64e6cf863e9a@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_222132_635546_FD5A1FA7 
X-CRM114-Status: GOOD (  22.10  )
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
Cc: devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, Luca Ceresoli <luca.ceresoli@bootlin.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGV5LAoKQW0gTWl0dHdvY2gsIDUuIE3DpHJ6IDIwMjUsIDIyOjI0OjIyIE1FWiBzY2hyaWViIE5p
Y29sYXMgRnJhdHRhcm9saToKPiBDZXJ0YWluIFJvY2tjaGlwIFNvQ3MsIHRoZSBSSzM1NzYgaW4g
cGFydGljdWxhciwgaGF2ZSBzb21lIGNsb2NrcyB0aGF0Cj4gYXJlIGVzc2VudGlhbGx5IGdhdGVk
IGJlaGluZCBhbiBhZGRpdGlvbmFsIEdSRiB3cml0ZS4gRG93bnN0cmVhbSB1c2VzIGFuCj4gYWRk
aXRpb25hbCBlbnRpcmVseSBzZXBhcmF0ZSBjbG9jayBkcml2ZXIgdGhhdCBtYXBzIG92ZXIgdGhl
IHNhbWUKPiBhZGRyZXNzIHJhbmdlIGFzIGlvY19ncmYgaW4gdGhlIERULgo+IAo+IEluc3RlYWQs
IHRoaXMgaW1wbGVtZW50YXRpb24gaW50cm9kdWNlcyBhIG5ldyBnYXRlIHR5cGUsIEdSRiBnYXRl
cy4KPiBUaGVzZSBnYXRlcyBmdW5jdGlvbiBxdWl0ZSBsaWtlIHJlZ3VsYXIgZ2F0ZXMuIEluIGVm
ZmVjdCwgdGhpcyBtZWFucwo+IHRoZXknbGwgb25seSBiZSBlbmFibGVkIGlmIHRoZSBjbG9jayBp
cyB1c2VkLCB3aGljaCBJIGZlZWwgaXMgYSBtb3JlCj4gYXBwcm9wcmlhdGUgd2F5IHRvIGRlc2Ny
aWJlIHRoaXMgY29tcGFyZWQgdG8gZG9pbmcgaXQgaW4sIHNheSwgcGluY3RybCwKPiBvciBldmVu
IGluIHRoZSBkcml2ZXJzIG9mIHRoZSByZXNwZWN0aXZlIGNsb2NrIGNvbnN1bWVycyBzdWNoIGFz
IFNBSS4KPiAKPiBJdCBzaG91bGQgYmUgbm90ZWQgdGhhdCBSSzM1ODggaGFzIHNpbWlsYXIgR1JG
LWdhdGVkIGNsb2NrcywgYnV0IGhhcwo+IGdvdHRlbiBhd2F5IHdpdGggbm90IGhhdmluZyB0byBk
ZWFsIHdpdGggYW55IG9mIHRoaXMgYmVjYXVzZSB0aGUgY2xvY2tzCj4gYXJlIHVuZ2F0ZWQgYnkg
dGhlIGhhcmR3YXJlJ3MgcmVnaXN0ZXIgcmVzZXQgdmFsdWUgYnkgZGVmYXVsdC4gVGhlCj4gUksz
NTc2IGlzIG5vdCBzbyBsdWNreSwgYW5kIHRoZSBoYXJkd2FyZSdzIHJlc2V0IHZhbHVlIGdhdGVz
IHRoZW0KPiBpbnN0ZWFkLCB3aGljaCBtZWFucyB3ZSdsbCBoYXZlIHRvIHVuZ2F0ZSB0aGVtIHNv
bWV3aGVyZS4KPiAKPiBJbiBvcmRlciB0byBmYWNpbGl0YXRlIHRoZSBHUkYgZ2F0aW5nIG9uIFJL
MzU3Niwgd2UgaW50cm9kdWNlIHRoZQo+IGNvbmNlcHQgb2YgYXV4aWxpYXJ5IEdSRnMuIFRoZSBS
SzM1NzYgaGFzIHNldmVyYWwgZGVmaW5lZCBHUkYgbm9kZXMsIGFuZAo+IHNvIGZhciBpdCBjb3Vs
ZCBnZXQgYXdheSB3aXRoIGp1c3QgdXNpbmcgb25lIGZvciBNVVhHUkYgYnkgcmVhc3NpZ25pbmcK
PiB0aGUgY2xvY2sgcHJvdmlkZXIncyBncmYgbWVtYmVyLgo+IAo+IEhvd2V2ZXIsIHdpdGggdGhl
IElPQyBHUkYgZ2F0ZWQgY2xvY2tzLCB3ZSBub3cgYWxzbyBuZWVkIGFjY2VzcyB0byB0aGUKPiBJ
T0MgR1JGLCBzbyB3ZSBjYW4ndCBnZXQgYXdheSB3aXRoIHRoaXMgYW55bW9yZS4gSW5zdGVhZCwg
d2UgYWRkIGEKPiBoYXNodGFibGUgdG8gdGhlIGNsb2NrIHByb3ZpZGVyIHN0cnVjdCwga2V5ZWQg
YnkgYSBncmYgdHlwZSBlbnVtLiBUaGUKPiBjbG9jayBicmFuY2hlcyBjYW4gdGhlbiBzcGVjaWZ5
IHRocm91Z2ggdGhlIHVzZSBvZiBhIG5ldyBtZW1iZXIgb2YgdGhhdAo+IGVudW0ncyB0eXBlICh3
aXRoIGNvcnJlc3BvbmRpbmcgY2hhbmdlcyB0byByZWxldmFudCBtYWNyb3MpIHdoaWNoIEdSRgo+
IHJhbmdlIHRoZXkgd291bGQgbGlrZSB0byB1c2UuCj4gCj4gVGhlIFNvQy1zcGVjaWZpYyBjbGtf
aW5pdCBjYW4gdGhlbiBwb3B1bGF0ZSB0aGUgaGFzaHRhYmxlIHdpdGggdGhlIEdSRnMKPiB0aGF0
IGl0IG5lZWRzLiBUaGlzIHdheSwgR1JGLWRlcGVuZGVudCBjbG9jayBicmFuY2hlcyBkb24ndCBo
YXZlIHRvIGJlCj4gcmVnaXN0ZXJlZCBpbiBhIGRpZmZlcmVudCBzdGVwIHRoYW4gZXZlcnl0aGlu
ZyBlbHNlLCBhcyB0aGV5IHdvdWxkIG5lZWQKPiB0byBiZSBoYWQgSSBleHRlbmRlZCB0aGUgYnJh
bmNoIHN0cnVjdCB0byBpbnN0ZWFkIHRha2UgYSBwb2ludGVyIHRvIGEKPiBHUkYsIHdoaWNoIGlz
bid0IGF2YWlsYWJsZSBhdCB0aGUgdGltZSBtb3N0IG9mIG91ciBicmFuY2hlcyBhcmUgZGVmaW5l
ZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRh
cm9saUBjb2xsYWJvcmEuY29tPgoKSSBvbmx5IGRpZCBhIHNob3J0IGxvb2sgdGhyb3VnaCB0aGUg
cGF0Y2ggYW5kIGRpZG4ndCBzZWUgYW55dGhpbmcKZ2xhcmluZ2x5IHdyb25nLCBidXQgdGhpcyB3
YW50cyB0byBiZSBhdCBsZWFzdCAzIHBhdGNoZXM6Ci0gYWRkIHRoZSBoYW5kbGluZyAoaGFzaC10
YWJsZSBldGMpIGZvciBtdWx0aXBsZSBncmZzCiAgKGluY2x1ZGluZyBhZGFwdGluZyB0aGUgZ3Jm
LW11eCkKLSBhZGRpbmcgdGhlIGdyZi1nYXRlIGNsb2NrLXR5cGUKLSBhZGRpbmcgdGhlIHJrMzU3
NiBncmYtZ2F0ZXMKCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
