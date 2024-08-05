Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FFB3C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 05:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZcwcBtsyOxpGuppGcPQT+KVJR795WWEYT/JrLl48EqU=; b=08YhO6YpE2TkqZz/3ZNhz2Oiow
	o6WBqhDDfcV7Hmy8xVl9NAIvnDYQhKnylPjIQT9WR0PyhBNYe12xGlDt3OUHI9Y/LmTLOV1zoXFtX
	B9MAv7TW6lkx0LFj8xeRQHLkC5UH5noVeUeu/q+qEsNVZnoy+YKton5L5O4WHEih7f0SwD5x26Jvn
	0tLglF/YZ2DEsuelZHfwxFHDx8t4bzE5KgaJrw2N+xfHi2NrOkzsEdmqzxhh5rud0piO4SJ8NKVR0
	lztZOrH6CNSH+Ed3WH1tnsjy8qSwjdJ6VCChAJSOMBSYVqWm8FwzbptNoFTn3QvNvC+v5FeO1w0vr
	Y5K12/Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saqBi-0000000EgXW-1wMM;
	Mon, 05 Aug 2024 05:23:18 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saqB8-0000000EgPY-1xKk;
	Mon, 05 Aug 2024 05:22:44 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722835360;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+AOe1X1BK2T9Nhb61hULdxwB8+O9eooFF234E3lK5bc=;
	b=gu6gyClfqFB4PQ+WxAd5h9p9n4YjVkd+J9VwMd9c2CwEAg18JJ547LmzTGDdhxeKXwKUwe
	IHWdr43Kqif02h2PBhgyxI3bMsGEuv9PMOTvZLB4bBU8+ca59vRfuZht0b7iDZdEEsgGWk
	Apy+y47XAEB/JuXSsxmH+9fTjPFYaU+iRO+66bYHqBV9EIjtnwdNDuGevmKuD5r+c3pPw7
	LJHW23x+jMMn3rKEKswV6A69D2wOdvM4KvF85xQlXU7gJbGlbbzVFn2wta5Ddalv+IvoT+
	m+eSIbi3oVo/u7+YIyYdHRV3Mk3BXtjsMinyzs7WBit9ZxUIUnqDDkMrLop2rw==
Date: Mon, 05 Aug 2024 07:22:34 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Yao Zi <ziyao@disroot.org>, Krzysztof Kozlowski <krzk@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Chris
 Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>, Tim Lunn
 <tim@feathertop.org>, Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin
 <efectn@protonmail.com>, Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman
 <megi@xff.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
In-Reply-To: <10256980.nnTZe4vzsl@diego>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <2408413.9XhxPE3A7Q@diego> <81147f0205c2a9555c9c64e4f7a69b6b@manjaro.org>
 <10256980.nnTZe4vzsl@diego>
Message-ID: <1da29af645d98be85b422208136e8150@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_222243_167424_60B5EAC4 
X-CRM114-Status: GOOD (  24.60  )
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

T24gMjAyNC0wOC0wNCAxNzo1MSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gU29ubnRhZywg
NC4gQXVndXN0IDIwMjQsIDE1OjU5OjE5IENFU1Qgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4+IE9u
IDIwMjQtMDgtMDQgMTU6NDQsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiA+IEFtIFNvbm50YWcs
IDQuIEF1Z3VzdCAyMDI0LCAxNToyNTo0NyBDRVNUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+PiA+
PiBPbiAyMDI0LTA4LTA0IDE1OjIwLCBZYW8gWmkgd3JvdGU6Cj4+ID4+ID4gT24gU3VuLCBBdWcg
MDQsIDIwMjQgYXQgMTI6MDU6MTFQTSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToK
Pj4gPj4gPj4gT24gMDMvMDgvMjAyNCAxNDo1NSwgWWFvIFppIHdyb3RlOgo+PiA+PiA+PiA+ICsJ
eGluMjRtOiB4aW4yNG0gewo+PiA+PiA+Pgo+PiA+PiA+PiBQbGVhc2UgdXNlIG5hbWUgZm9yIGFs
bCBmaXhlZCBjbG9ja3Mgd2hpY2ggbWF0Y2hlcyBjdXJyZW50IGZvcm1hdAo+PiA+PiA+PiByZWNv
bW1lbmRhdGlvbjogJ2Nsb2NrLShbMC05XSt8W2EtejAtOS1dKykrJwo+PiA+PiA+Cj4+ID4+ID4g
V2lsbCBiZSBmaXhlZCBpbiBuZXh0IHJldmlzaW9uLgo+PiA+Pgo+PiA+PiBIbW0sIHdoeSBzaG91
bGQgd2UgYXBwbHkgdGhhdCBydWxlIHRvIHRoZSB4aW4yNG0gY2xvY2ssIHdoaWNoIGlzCj4+ID4+
IG5hbWVkIGV4YWN0bHkgbGlrZSB0aGF0IGV2ZXJ5d2hlcmUgZWxzZSBpbiBSb2NrY2hpcCBTb0Mg
ZHRzaSBmaWxlcz8KPj4gPj4gSXQncyBtdWNoIGJldHRlciB0byByZW1haW4gY29uc2lzdGVudC4K
Pj4gPgo+PiA+IGJpbmRpbmdzIG9yIGhvdyB3ZSB3cml0ZSBkZXZpY2V0cmVlcyBldm9sdmUgb3Zl
ciB0aW1lIC4uLiBzaW1pbGFybHkgdGhlCj4+ID4geGluMjRtIG5hbWUgY29tZXMgZnJvbSBtb3Jl
IHRoYW4gMTAgeWVhcnMgYWdvLgo+PiA+Cj4+ID4gV2UgYWxzbyBuYW1lIGFsbCB0aG9zZSByZWd1
bGF0b3Igbm9kZXMgcmVndWxhdG9yLWZvbyBub3csIHdoaWNoIGluIHR1cm4KPj4gPiBhdXRvbWF0
aWNhbGx5IGRvZXMgZW5mb3JjZSBhIG5pY2Ugc29ydGluZyBydWxlIHRvIGtlZXAgYWxsIHRoZQo+
PiA+IHJlZ3VsYXRvcnMKPj4gPiBhcm91bmQgdGhlIHNhbWUgYXJlYSA7LSkKPj4gPgo+PiA+IFNv
IEkgZG9uJ3Qgc2VlIGEgcHJvYmxlbSBvZiBnb2luZyB3aXRoIHhpbjI0bTogY2xvY2steGluMjRt
IHt9Cj4+IAo+PiBJIGFncmVlIHRoYXQgdXNpbmcgImNsb2NrLXhpbjI0bSIgbWFrZXMgbW9yZSBz
ZW5zZSBpbiBnZW5lcmFsLCBidXQgdGhlCj4+IHRyb3VibGUgaXMgdGhhdCB3ZSBjYW4ndCByZW5h
bWUgdGhlIGFscmVhZHkgZXhpc3RpbmcgaW5zdGFuY2VzIG9mCj4+ICJ4aW4yNG0iLAo+PiBiZWNh
dXNlIHRoYXQgaGFzIGJlY29tZSBwYXJ0IG9mIHRoZSBBQkkuICBUaHVzLCBJJ20gbm90IHN1cmUg
dGhhdAo+PiBicmVha2luZwo+PiBhd2F5IGZyb20gdGhlIGxlZ2FjeSBicmluZ3MgYmVuZWZpdHMg
aW4gdGhpcyBwYXJ0aWN1bGFyIGNhc2UuCj4gCj4gSW4gdGhlIHJlZ3VsYXRvciBjYXNlLCB3ZSBo
YXZlIF9uZXdfIGJvYXJkcyB1c2luZyB0aGUgbmV3IF9ub2RlXy1uYW1lcwo+IGJ1dCBJIGRvbid0
IHNlZSBhbnkgcmVuYW1pbmcgb2Ygb2xkIGJvYXJkcyBhbmQgYWxzbyBkb24ndCB0aGluayB3ZSAK
PiBzaG91bGQuCj4gCj4gQnV0IHRoYXQgc3RpbGwgZG9lcyBub3Qga2VlcCB1cyBmcm9tIHVzaW5n
IHRoZSBuaWNlciBuYW1pbmcgY29udmVudGlvbiAKPiBpbgo+IG5ldyBib2FyZHMgOy0pIC4KPiAK
PiBTYW1lIHdpdGggeGluMjRtLiBXZSdyZSB0YWxraW5nIG9ubHkgYWJvdXQgdGhlIG5vZGUtbmFt
ZSBoZXJlLiBUaGUKPiBwaGFuZGxlIHN0YXlzIHRoZSBzYW1lIGFuZCBhbHNvIHRoZSBhY3R1YWwg
Y2xvY2sgbmFtZSBzdGF5cyB0aGUgc2FtZSAKPiBhbmQKPiByZWFsbHkgb25seSB0aGUgYWN0dWFs
IG5vZGUgbmFtZSB5b3UgbmVlZCB0byBsb29rIGZvciBpbiAKPiAvcHJvYy9kZXZpY2UtdHJlZQo+
IGNoYW5nZXMgOy0pIC4KPiAKPiBTbyBJIGRvbid0IHNlZSB0aGUgbmVlZCB0byBnbyBhYm91dCBj
aGFuZ2luZyBhbGwgdGhlIG9sZCBzb2NzLCBidXQgbmV3Cj4gYWRkaXRpb25zIHNob3VsZCB1c2Ug
aW1wcm92ZWQgbmFtaW5nIGNvbnZlbnRpb25zLgo+IAo+IHhpbjI0bTogY2xvY2steGluMjRtIHsK
PiAJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gCSNjbG9jay1jZWxscyA9IDwwPjsKPiAJ
Y2xvY2stZnJlcXVlbmN5ID0gPDI0MDAwMDAwPjsKPiAJY2xvY2stb3V0cHV0LW5hbWVzID0gInhp
bjI0bSI7Cj4gfTsKCk1ha2VzIHNlbnNlLiAgVGhvdWdoLCB1cGRhdGluZyB0aGUgZHRzaSBmaWxl
cyBmb3Igb2xkZXIgU29DcyB0byBmb2xsb3cKdGhlIG5ldyBydWxlcywgaWYgcG9zc2libGUsIHN0
aWxsIHJlbWFpbnMgYW4gaXRjaCB0byBtZS4gOikKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
