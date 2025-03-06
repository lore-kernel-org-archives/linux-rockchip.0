Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4FFEC282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 18:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCA8AlfHr4Y0gIsvQExJ2ye7zZ806JvxYGg+96yeav8=; b=H81RnlPnkLY0hJ
	dEVKWUSUaCACq1MoM4HBYO/JL6tQ7NI82z+5QVRzWIVceKSclBRULUr9+Vd9P60h8HYk5Npc4ux0s
	t/mzVR1mEnxSN1tkNXVkDWbhPUYYl6lNDeRwUCcBQqIUzFtD7ZPT09UeN8Tcy3U3CqR1IWOg5JrQG
	D+uTHTxY0vOb+IkuQsFbNeOeb5eJjyJqWozRy/HQZ6hkX/amWpbW5vqeQjBkzDVIYRa50DyOlN4D/
	Eh0hxmzDfAcAsr5rtloB4hvruxLM23fu/sczCBRS8NoXVgefLlyXTObxbIzQf6ZyDwKZXW6lGu/5/
	37VvTDX6RKEsIuyLFG2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqFjc-0000000BpW2-01CH;
	Thu, 06 Mar 2025 18:14:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqFeI-0000000BoCn-2UR6;
	Thu, 06 Mar 2025 18:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qoSIZeEZItfdQePn3xpCH5SMAbZNHhyWtQWXr+rp4aI=; b=r5sEDRIGxBH5f3gyz69wvRQSgC
	t7CIcyI+U1fP26VBt8p8YKwZFGcGW3bvpz8Z5Vvzsq+xzhjX/qmWP2+LuRDlfBkasaCAMhh84pJKs
	6ho59zt56Lv+Wbr07v4wpaMNgLx4T505ik1wUHZS6IGOhM3mca8GbssBhJztcPkhhBIjCi+guQ9cR
	lrBqyIUlEJwqu2ITq4EII85fjWKwmJeNgfwDmAmBapvG7dw0a/trEaxmpotVMPbqYBoqt0dfpGV2c
	YpsnWiEEf1NKxxRknYHSq+f2quCO2svAH2xIQ/H8k4lx7CGYb0XFuCuY8sYSh5h73ZdfaXCOyvlBy
	aX6mzrJA==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqFeA-0005TK-H2; Thu, 06 Mar 2025 19:08:38 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>
Cc: Yao Zi <ziyao@disroot.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3528 QoS register node
Date: Thu, 06 Mar 2025 19:08:37 +0100
Message-ID: <117081043.nniJfEyVGO@diego>
In-Reply-To: <cdbc1556-4662-4078-a4d6-33545e2e2491@kwiboo.se>
References: <20250306123809.273655-1-amadeus@jmu.edu.cn>
 <20250306123809.273655-3-amadeus@jmu.edu.cn>
 <cdbc1556-4662-4078-a4d6-33545e2e2491@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_100846_650865_97B30160 
X-CRM114-Status: GOOD (  18.30  )
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

QW0gRG9ubmVyc3RhZywgNi4gTcOkcnogMjAyNSwgMTc6NTU6MTYgTUVaIHNjaHJpZWIgSm9uYXMg
S2FybG1hbjoKPiBIaSBDaHVrdW4sCj4gCj4gT24gMjAyNS0wMy0wNiAxMzozOCwgQ2h1a3VuIFBh
biB3cm90ZToKPiA+IFRoZSBRdWFsaXR5LW9mLVNlcnZpY2UgKFFzUykgbm9kZSBzdG9yZXMvcmVz
dG9yZXMgc3BlY2lmaWMKPiA+IHJlZ2lzdGVyIGNvbnRlbnRzIHdoZW4gdGhlIHBvd2VyIGRvbWFp
bnMgaXMgdHVybmVkIG9mZi9vbi4KPiA+IEFkZCBRb1Mgbm9kZSBzbyB0aGF0IHRoZXkgY2FuIGNv
bm5lY3QgdG8gdGhlIHBvd2VyIGRvbWFpbi4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQ2h1a3Vu
IFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNuPgo+ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1MjguZHRzaSB8IDE2MCArKysrKysrKysrKysrKysrKysrKysrKwo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAxNjAgaW5zZXJ0aW9ucygrKQo+ID4gCgo+IAo+IFRoZXNlIFFvUyBu
b2RlIGFyZSB0eXBpY2FsbHkgcmVmZXJlbmNlZCBmcm9tIHBvd2VyIGRvbWFpbnMgc28gdGhhdCB0
aGUKPiBQTVUgZHJpdmVyIGtub3cgd2hhdCBRb1MgdG8gc2F2ZS9yZXN0b3JlIHdoZW4gYSBwb3dl
ciBkb21haW4gaXMgcG93ZXIKPiBjeWNsZWQuCj4gCj4gVmVuZG9yIGtlcm5lbCBvbmx5IHJlZmVy
ZW5jZSB0aGUgdHdvIHFvc19ncHUgbm9kZXMgaW4gaXQncyBwb3dlciBkb21haW5zLAo+IGRvIHlv
dSBoYXZlIGFueSBkb2N1bWVudGF0aW9uIG9yIGtub3dsZWRnZSBhYm91dCB3aGF0IHBvd2VyIGRv
bWFpbiB0aGUKPiByZW1haW5pbmcgUW9TIGFyZSByZWxhdGVkIHRvPwoKSSB0aGluayB0aGUgR1BV
IGFjdHVhbGx5IGlzIHRoZSBfb25seV8gZnVsbHkgc3dpdGNoYWJsZSBwb3dlci1kb21haW4gb24g
dGhlCnJrMzUyOC4gVGhlIG90aGVyIHBvd2VyZG9tYWlucyBzZWVtIHRvIGJlIGFsd2F5cyBvbiwg
YnV0IGNhbiBkbyB0aGlzCmlkbGUtcmVxdWVzdCB0aGluZy4KCkF0IGxlYXN0IHRoYXQgaXMgd2hh
dCBJJ20gcmVhZGluZyBmcm9tIHRoZSBwbS1kb21haW4gZGVmaW5pdGlvbnMgaW4gdGhlCnZlbmRv
ci1rZXJuZWwsIGNvbWJpbmVkIHdpdGggYSBsb29rIGF0IHRoZSBwbXUgc2VjdGlvbiBvZiB0aGUg
cmszNTI4IFRSTS4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
