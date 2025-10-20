Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58860CCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zii3LeOH7V1aQ947ELGiuxVz513rSJOogXf8B5s9N14=; b=SPSNuAdtLZ8PCi
	aH+HrJ4LzwAX7VXMN/50xUm6boswq5Yqg3j9xB4V1LzYp4Tpsh839h42iImWb2u7vwgHbxPFF08PZ
	K5PvFyIy16+p/VySCUITnoBI4CEPzWicT3vNmxpC8gr5NbA9nGpsVALijUkmC+u12EsrH+PYZwVg7
	4EOimdEgB0UJ9wYQwn5bg0k4LU9HiAMBaPQI9pUurDuECQ7pTuVthuJbirkH8kDtob900k0qQuHrU
	Of0paznFHt+xtmBcN1yJ34t/svF9p/PYubBp2uiNy8nldhJ5Q8NR5RUqjcpUzzZjduvKTC0S3T9D7
	UV1E0XL3r1eWyi2NZwxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApKB-0000000Dcvd-3EWa;
	Mon, 20 Oct 2025 12:49:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApKA-0000000Dcv8-2z59;
	Mon, 20 Oct 2025 12:49:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=LT8UUy5Ej3UyVlJPtvk5iRBgSEzEU437pG46R+ymarY=; b=Sckcs4B1DMoAf+R+VKASmCSlsH
	UuL+8/5Vq90WXxiopcDXRshB2d5vkuJvC3PgnMB/kGlJ2caebfPirKbSLfWlkqJveSHiLZ5Rw6DPB
	N0nN8UewjWozirdXYg4fq9t47zUJP9gAie6eeDbdp28wsejDHLtJxmE6APQHdIEMuATHYkoMZ9KUm
	yArDJVdESTMjXJL4Qyy5/hjKWU9d1WUrwiGGweNSz03q7nDWX6YQUjiOIA5qfV+/Ynz4OF+ZVFXlP
	+v1/1M4VWmvvgrMaOCkB1RhWET3LLS0+nG+BwlOwU4x9ejvQu8SRItzGrLV+SCX3Ga97a89XZbF9o
	IIXsIixA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApK6-00000007Ug6-2zGb;
	Mon, 20 Oct 2025 12:49:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=LT8UUy5Ej3UyVlJPtvk5iRBgSEzEU437pG46R+ymarY=; b=t8qVnE7A5m3NrSDtXnEhrdx7oQ
	GuDvt4aKjvYuD5KxLgHuTFwBuvqYZ9xOEN2q90ikgdkzDwTlxrWocmflwGb5z0hRiDqz9U42cRdsY
	R8CSpzsS/ZEJtBp9gv3OYLvpTjZMxMaIUK+4C0w00Uz9daMN2Di6EUosKmxapNblnFB+X/NiLGc/H
	qCxsAPlLyz8ZGipQgIaxh/OqFIgkbxHGGI1KOrRG0N2mGDV9aM65nPqC6jOiIIRLiC5/98VpfpckX
	P1il/ZXHNeecX9PH6kATylv9hWtIsXJuHTmAwj06x1g80o9a9JnAmL0h55UKbHb/Sp9kzBIIq5MPE
	z47iTySw==;
Received: from [141.76.253.240] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vApK3-0001CH-4r; Mon, 20 Oct 2025 14:49:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Quentin Schulz <quentin.schulz@cherry.de>, mturquette@baylibre.com,
 sboyd@kernel.org, zhangqing@rock-chips.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] clk: rockchip: rk3588: Don't change PLL rates when setting
 dclk_vop2_src
Date: Mon, 20 Oct 2025 14:49:10 +0200
Message-ID: <4856104.usQuhbGJ8B@phil>
In-Reply-To: <eumxn7lvp34si2gik33hcavcrsstqqoxixiznjbertxars7zcx@xsycorjhj3id>
References: <20251008133135.3745785-1-heiko@sntech.de> <2749454.BddDVKsqQX@diego>
 <eumxn7lvp34si2gik33hcavcrsstqqoxixiznjbertxars7zcx@xsycorjhj3id>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_134916_003662_B9275B85 
X-CRM114-Status: GOOD (  18.58  )
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

QW0gRG9ubmVyc3RhZywgMTYuIE9rdG9iZXIgMjAyNSwgMDA6NTc6MTUgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBTZWJhc3RpYW4gUmVpY2hlbDoKPiBIaSwKPiAKPiBPbiBX
ZWQsIE9jdCAxNSwgMjAyNSBhdCAwMzoyNzoxMlBNICswMjAwLCBIZWlrbyBTdMO8Ym5lciB3cm90
ZToKPiA+IEFtIE1pdHR3b2NoLCAxNS4gT2t0b2JlciAyMDI1LCAxNDo1ODo0NiBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFF1ZW50aW4gU2NodWx6Ogo+ID4gPiBIaSBIZWlr
bywKPiA+ID4gCj4gPiA+IE9uIDEwLzgvMjUgMzozMSBQTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6
Cj4gPiA+ID4gZGNsa192b3AyX3NyYyBjdXJyZW50bHkgaGFzIENMS19TRVRfUkFURV9QQVJFTlQg
fCBDTEtfU0VUX1JBVEVfTk9fUkVQQVJFTlQKPiA+ID4gPiBmbGFncyBzZXQsIHdoaWNoIGlzIHZh
c3RseSBkaWZmZXJlbnQgdGhhbiBkY2xrX3ZvcDBfc3JjIG9yIGRjbGtfdm9wMV9zcmMsCj4gPiA+
ID4gd2hpY2ggaGF2ZSBub25lIG9mIHRob3NlLgo+ID4gPiA+IAo+ID4gPiA+IFdpdGggdGhlc2Ug
ZmxhZ3MgaW4gZGNsa192b3AyX3NyYywgYWN0dWFsbHkgc2V0dGluZyB0aGUgY2xvY2sgdGhlbiBy
ZXN1bHRzCj4gPiA+ID4gaW4gYSBsb3Qgb2Ygb3RoZXIgcGVyaXBoZXJhbHMgYnJlYWtpbmcsIGJl
Y2F1c2Ugc2V0dGluZyB0aGUgcmF0ZSByZXN1bHRzCj4gPiA+ID4gaW4gdGhlIFBMTCBzb3VyY2Ug
Z2V0dGluZyBjaGFuZ2VkOgo+ID4gPiA+IAo+ID4gPiA+IFsgICAxNC44OTg3MThdIGNsa19jb3Jl
X3NldF9yYXRlX25vbG9jazogc2V0dGluZyByYXRlIGZvciBkY2xrX3ZvcDIgdG8gMTUyODQwMDAw
Cj4gPiA+ID4gWyAgIDE1LjE1NTAxN10gY2xrX2NoYW5nZV9yYXRlOiBzZXR0aW5nIHJhdGUgZm9y
IHBsbF9ncGxsIHRvIDE2ODAwMDAwMDAKPiA+ID4gPiBbIGNsayBhZGp1c3RpbmcgZXZlcnkgZ3Bs
bCB1c2VyIF0KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIGluY2x1ZGVzIHBvc3NpYmx5IHRoZSBvdGhl
ciB2b3BzLCBpMnMsIHNwZGlmIGFuZCBldmVuIHRoZSB1YXJ0cy4KPiA+ID4gPiBBbW9uZyBvdGhl
ciBwb3NzaWJsZSB0aGluZ3MsIHRoaXMgYnJlYWtzIHRoZSB1YXJ0IGNvbnNvbGUgb24gYSBib2Fy
ZAo+ID4gPiA+IEkgdXNlLiBTb21ldGltZXMgaXQgcmVjb3ZlcnMgbGF0ZXIgb24sIGJ1dCB0aGVy
ZSB3aWxsIGJlIGEgYmlnIGJsb2NrCj4gPiA+IAo+ID4gPiBJIGNhbiByZXByb2R1Y2Ugb24gdGhl
IHNhbWUgYm9hcmQgYXMgeW91cnMgYW5kIHRoaXMgZml4ZXMgdGhlIGlzc3VlIAo+ID4gPiBpbmRl
ZWQgKG5vdGUgSSBjYW4gb25seSByZXByb2R1Y2UgZm9yIG5vdyB3aGVuIGRpc3BsYXkgdGhlIG1v
ZGV0ZXN0IAo+ID4gPiBwYXR0ZXJuLCBvdGhlcndpc2UgYWZ0ZXIgYm9vdCB0aGUgY29uc29sZSBz
ZWVtcyBmaW5lIHRvIG1lKS4KPiA+IAo+ID4gSSBib290IGludG8gYSBEZWJpYW4gcm9vdGZzIHdp
dGggZmJjb24gb24gbXkgc3lzdGVtLCBhbmQgdGhlIHNlcmlhbAo+ID4gY29uc29sZSBwcm9kdWNl
cyBnYXJibGVkIG91dHB1dCB3aGVuIHRoZSB2b3AgYWRqdXN0cyB0aGUgY2xvY2sKPiA+IAo+ID4g
U29tZXRpbWVzIGl0IHJlY292ZXJzIGFmdGVyIGEgYml0LCBidXQgb3RoZXIgdGltZXMgaXQgZG9l
c24ndAo+ID4gCj4gPiA+IFJldmlld2VkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1
bHpAY2hlcnJ5LmRlPgo+ID4gPiBUZXN0ZWQtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNj
aHVsekBjaGVycnkuZGU+ICMgUkszNTg4IFRpZ2VyIHcvRFAgY2FycmllcmJvYXJkCj4gCj4gSSdt
IHByZXR0eSBzdXJlIEkndmUgc2VlbiB0aGlzIHdoaWxlIHBsYXlpbmcgd2l0aCBVU0ItQyBEUCBB
bHRNb2RlCj4gb24gUm9jayA1Qi4gU28gZmFyIEkgaGFkIG5vIHRpbWUgdG8gaW52ZXN0aWdhdGUg
ZnVydGhlci4KPiAKPiBXaGF0IEknbSBtaXNzaW5nIGluIHRoZSBjb21taXQgbWVzc2FnZSBpcyB0
aGUgaW1wYWN0IG9uIFZPUC4gQWxzbwo+IGl0IG1pZ2h0IGJlIGEgZ29vZCBpZGVhIHRvIGhhdmUg
QW5keSBpbiBDYywgc28gSSd2ZSBhZGRlZCBoaW0uCgpIbW0sIGl0IGJyaW5ncyBWUDIgaW4gbGlu
ZSB3aXRoIHRoZSBvdGhlciB0d28gVlBzLCBvbmx5IFZQMiBoYWQgdGhpcwpzcGVjaWFsIHNldHRp
bmcgLSBldmVuIHJpZ2h0IGZyb20gdGhlIHN0YXJ0LCBzbyBpdCBjb3VsZCB2ZXJ5IHdlbGwKaGF2
ZSBiZWVuIGxlZnQgdGhlcmUgYWNjaWRlbnRpYWxseSBkdXJpbmcgc3VibWlzc2lvbi4KClNvIGlu
IHRoZSBlbmQgVlAyIHdpbGwgaGF2ZSB0byBkZWFsIHdpdGggdGhpcywgYmVjYXVzZSB3aGVuIHRo
ZSBWUApjYXVzZXMgYSByYXRlIGNoYW5nZSBpbiB0aGUgR1BMTCwgdGhpcyBjaGFuZ2VzIHNvIG1h
bnkgY2xvY2tzIG9mCm90aGVyIHBvc3NpYmx5IHJ1bm5pbmcgZGV2aWNlcy4gTm90IG9ubHkgdGhl
IHVhcnQsIGJ1dCBhbHNvIGVtbWMKYW5kIG1hbnkgbW9yZS4gQW5kIGFsbCB0aG9zZSBkZXZpY2Vz
IGRvIG5vdCBsaWtlIGlmIHRoZWlyIGNsb2NrIGdldHMKY2hhbmdlZCB1bmRlciB0aGVtIEkgdGhp
bmsuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
