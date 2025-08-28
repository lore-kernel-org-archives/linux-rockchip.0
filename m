Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9D4FC8303F
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 17:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4DRwtsZeScEf1GsnV4RYC3dlfg+HREWQ61Tx3ityo0=; b=y1Na0QqWJOS5Y+
	sAThLwK8/hQ+LFdoIuhqeHWkMEq37HGWKrc7DrfSLM49zl2qfq0eKwWvVG5/RJegnjS2MlKHhBNM3
	NXR6VPn1P/1niJBm2DNXTOWvsMwlNDthkxYj6nKbi9fa9FVLx1WS7P5UCUzmaijmjXmGko2sb2LyP
	wmrrhqWNdaUlgXe5EivmAUrdALE+b5QNv90xZNJN3TrZU7jJ2B5z6q9ma0urZJ1T1QFPCWKlSDg7L
	TNhDUl1TU1gJmJufwLRrupis/1+S3Ow6oM9QlbMlrtUzCHNsDxLxV7n2FezBWblSiJpWIExP3PQ0S
	oxPhOY9dAQUyMwhk/MvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgN1-00000002Rck-2Mod;
	Thu, 28 Aug 2025 17:25:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urbax-00000001Vw1-0IRf;
	Thu, 28 Aug 2025 12:19:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=gRhjEBrevYYfktmYdx+YKcry9xJxHMto6KG5iP6elAE=; b=uCgKNvwHN4Qm9UCbBdv+J4UNw8
	ncy3IW3c63C2jS60Brsl3Ew8ECK6sFq1KxS0SBwam+tzQu+R11/NrUFUAbi+V6e/GSgIGWCevOFtc
	KiO4xdtiWcayAN+5IGdiO2cO9/Z5bs8JDuqn9Jycf2aWrzQlbeXyRQQvIR9MxIzlr6uqQTt+j6NH2
	EmNuI39YK4f1yfzA54Puy52LikT4a7gAaUEWyjsHIQChJCSN01GUsqAQNeclaxLJj0jMIpDFMxzAZ
	W5ea7x2H+niHckX61ns3OCw7/4sN2wxVfM3Y+oZj6M2/10UD5H9hEsIL6ykk6JnZJhmYD/ikuFDxu
	Jf4DvZoA==;
Received: from [185.205.242.134] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urbai-0007hz-0a; Thu, 28 Aug 2025 14:18:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Thomas Zimmermann <tzimmermann@suse.de>,
 Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v7 00/10] Add support for RK3588 DisplayPort Controller
Date: Thu, 28 Aug 2025 14:18:55 +0200
Message-ID: <6614832.V25eIC5XRa@phil>
In-Reply-To: <20250828-tangible-wakeful-coati-ec27d1@houat>
References: <20250822063959.692098-1-andyshrk@163.com>
 <d040da3e-501f-45d8-bcbb-95fa77e94a59@suse.de>
 <20250828-tangible-wakeful-coati-ec27d1@houat>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_051911_109403_3F3547CB 
X-CRM114-Status: GOOD (  31.97  )
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
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, neil.armstrong@linaro.org, sebastian.reichel@collabora.com, stephen@radxa.com, linux-kernel@vger.kernel.org, Andy Yan <andyshrk@163.com>, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRG9ubmVyc3RhZywgMjguIEF1Z3VzdCAyMDI1LCAxMDowNToyOCBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIE1heGltZSBSaXBhcmQ6Cj4gT24gVGh1LCBBdWcgMjgsIDIw
MjUgYXQgMDk6NTA6MzRBTSArMDIwMCwgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4gPiBIaQo+
ID4gCj4gPiBBbSAyOC4wOC4yNSB1bSAwMDoyNCBzY2hyaWViIERtaXRyeSBCYXJ5c2hrb3Y6Cj4g
PiA+IE9uIEZyaSwgQXVnIDIyLCAyMDI1IGF0IDAyOjM5OjQ0UE0gKzA4MDAsIEFuZHkgWWFuIHdy
b3RlOgo+ID4gPiA+IEZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPiA+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBUaGVyZSBhcmUgdHdvIERXIERQVFggYmFzZWQgRGlzcGxh
eVBvcnQgQ29udHJvbGxlciBvbiByazM1ODggd2hpY2gKPiA+ID4gPiBhcmUgY29tcGxpYW50IHdp
dGggdGhlIERpc3BsYXlQb3J0IFNwZWNpZmljYXRpb24gVmVyc2lvbiAxLjQgd2l0aAo+ID4gPiA+
IHRoZSBmb2xsb3dpbmcgZmVhdHVyZXM6Cj4gPiA+ID4gCj4gPiA+ID4gKiBEaXNwbGF5UG9ydCAx
LjRhCj4gPiA+ID4gKiBNYWluIExpbms6IDEvMi80IGxhbmVzCj4gPiA+ID4gKiBNYWluIExpbmsg
U3VwcG9ydCAxLjYyR2JwcywgMi43R2JwcywgNS40R2JwcyBhbmQgOC4xR2Jwcwo+ID4gPiA+ICog
QVVYIGNoYW5uZWwgMU1icHMKPiA+ID4gPiAqIFNpbmdsZSBTdHJlYW0gVHJhbnNwb3J0KFNTVCkK
PiA+ID4gPiAqIE11bHRpc3RyZWFtIFRyYW5zcG9ydCAoTVNUKQo+ID4gPiA+ICogVHlwZS1DIHN1
cHBvcnQgKGFsdGVybmF0ZSBtb2RlKQo+ID4gPiA+ICogSERDUCAyLjIsIEhEQ1AgMS4zCj4gPiA+
ID4gKiBTdXBwb3J0cyB1cCB0byA4LzEwIGJpdHMgcGVyIGNvbG9yIGNvbXBvbmVudAo+ID4gPiA+
ICogU3VwcG9ydHMgUkJHLCBZQ2JDcjQ6NDo0LCBZQ2JDcjQ6MjoyLCBZQ2JDcjQ6MjowCj4gPiA+
ID4gKiBQaXhlbCBjbG9jayB1cCB0byA1OTRNSHoKPiA+ID4gPiAqIEkyUywgU1BESUYgYXVkaW8g
aW50ZXJmYWNlCj4gPiA+ID4gCj4gPiA+ID4gVGhlIGN1cnJlbnQgdmVyc2lvbiBvZiB0aGlzIHBh
dGNoIHNlcmllcyBvbmx5IHN1cHBvcnRzIGJhc2ljIGRpc3BsYXkgb3V0cHV0cy4KPiA+ID4gPiBJ
IGNvbmR1Y3RlZCB0ZXN0cyB3aXRoIERQMCBpbiAxMDgwcCBhbmQgNEtANjAgWUNiQ3I0OjI6MCBt
b2RlczsgdGhlIEFMVC9UeXBlLUMKPiA+ID4gPiBtb2RlIHdhcyB0ZXN0ZWQgb24gUm9jayA1Qiwg
RFAxIHdhcyB0ZXN0ZWQgb24gUm9jayA1IElUWCBieSBTdGVwaGVuIGFuZCBQaW90ci4KPiA+ID4g
PiBIRENQIGFuZCBhdWRpbyBmZWF0dXJlcyByZW1haW4gdW5pbXBsZW1lbnRlZC4KPiA+ID4gPiBG
b3IgUkszNTg4LCBpdCdzIG9ubHkgc3VwcG9ydCBTU1QsIHdoaWxlIGluIHRoZSB1cGNvbWluZyBS
SzM1NzYsIGl0IGNhbiBzdXBwb3J0Cj4gPiA+ID4gTVNUIG91dHB1dC4KPiA+ID4gPiAKPiA+ID4g
W3NraXBwZWQgY2hhbmdlbG9nXQo+ID4gPiAKPiA+ID4gPiBBbmR5IFlhbiAoMTApOgo+ID4gPiA+
ICAgIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiByb2NrY2hpcDogQWRkIHNjaGVtYSBmb3IgUkszNTg4
IERQVFggQ29udHJvbGxlcgo+ID4gPiA+ICAgIGRybS9icmlkZ2U6IHN5bm9wc3lzOiBBZGQgRFcg
RFBUWCBDb250cm9sbGVyIHN1cHBvcnQgbGlicmFyeQo+ID4gPiA+ICAgIGRybS9yb2NrY2hpcDog
QWRkIFJLMzU4OCBEUFRYIG91dHB1dCBzdXBwb3J0Cj4gPiA+ID4gICAgTUFJTlRBSU5FUlM6IEFk
ZCBlbnRyeSBmb3IgRFcgRFBUWCBDb250cm9sbGVyIGJyaWRnZQo+ID4gPiBJIHRyaWVkIHB1c2hp
bmcgcGF0Y2hlcyAxLTQsIGJ1dCBnb3QgdGhlIGZvbGxvd2luZyBlcnJvcjoKPiA+ID4gCj4gPiA+
IGRpbTogRVJST1I6IDVhNjhkY2Y1ODM3YSAoIk1BSU5UQUlORVJTOiBBZGQgZW50cnkgZm9yIERX
IERQVFggQ29udHJvbGxlciBicmlkZ2UiKTogTWFuZGF0b3J5IE1haW50YWluZXIgQWNrZWQtYnkg
bWlzc2luZy4sIGFib3J0aW5nCj4gPiA+IAo+ID4gPiBJJ20gbm90IHN1cmUgaG93IHRvIGhhbmRs
ZSBNQUlOVEFJTkVSUyBjaGFuZ2VzIChvciB3aGV0aGVyIGl0J3MgZmluZSBmb3IKPiA+ID4gbWUg
b3Igbm90KSwgc28gSSB3aWxsIHByb2JhYmx5IHB1c2ggcGF0Y2hlcyAxLTMgaW4gYSBmZXcgZGF5
cywgaWYgbm9ib2R5Cj4gPiA+IGJlYXRzIG1lIChvciB1bmxlc3Mgc29tZWJvZHkgcG9pbnRzIG91
dCBhIGNvcnJlY3QgcHJvY2VzcyBmb3IKPiA+ID4gTUFJTlRBSU5FUlMgY2hhbmdlcykuCj4gPiAK
PiA+IFRoYXQgd2FybmluZyBoYXMgYmVlbiBhZGRlZCByZWNlbnRseSB0byBtYWtlIHN1cmUgdGhh
dCBwYXRjaGVzIGRvIG5vdCBnZXQgaW4KPiA+IHdpdGhvdXQgc3VmZmljaWVudCByZXZpZXcuIEl0
J3Mgb3Zlcmx5IHBlZGFudGljLCB0aG91Z2guCj4gCj4gSXQncyBub3QgIm92ZXJseSBwZWRhbnRp
YyIsIGl0IGZvbGxvd3MgdGhlIGNvbnRyaWJ1dGlvbiBydWxlcy4gSSdkIGFyZ3VlCj4gdGhhdCwg
aWYgYW55dGhpbmcsIHdlJ3ZlIGJlZW4gb3Zlcmx5IHRvbGVyYW50IHdpdGggdGhhdCBraW5kIG9m
Cj4gcHJhY3RpY2VzLgo+IAo+IFdlIGRvIGhhdmUgYSBidWcgd2l0aCBoYW5kbGluZyBNQUlOVEFJ
TkVSUyBjaGFuZ2VzIGF0IHRoZSBtb21lbnQuIEJ1dAo+IGV2ZXJ5dGhpbmcgZWxzZSBzaG91bGRu
J3QgYmUgaWdub3JlZDogZWl0aGVyIHBhdGNoIE1BSU5UQUlORVJTIHRvCj4gcmVmbGVjdCB0aGUg
YWN0dWFsIGNvbnRyaWJ1dGlvbiBwYXRoLCBvciBnZXQgdGhlIG1haW50YWluZXJzIEFjay4KCiQg
c2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCBNQUlOVEFJTkVSUwpsaW51eC1rZXJuZWxAdmdlci5r
ZXJuZWwub3JnIChvcGVuIGxpc3QpCgpNQUlOVEFJTkVSUyBkb2VzIG5vdCBoYXZlIGEgbWFpbnRh
aW5lciB0aG91Z2gsIHRvIEFjayBhIHBhdGNoIGNoYW5naW5nIGl0CgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
