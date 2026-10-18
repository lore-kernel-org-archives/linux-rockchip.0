Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68AA9CCF2C9
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Oct 2026 06:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NL9LmjgXwKBmhudV7BHDpzU4z0jYEQCzAgDPetAdE64=; b=NubPLdnLrJtxAo
	ZEQDgLe/5PhgEC9n+/fRg42NzP0lfCV0UVFPKp3DU6PNlBm6s15Udsa3GOGHUDZBkyzQj2KvtfFDO
	NtNWTi/YlE85Wm8v6HYbly15kqVdWuXnS1IHsxlxXaE5FALJEhzkIpjpB4V9VSHIiyqhIf+pB8Jgm
	JMBtm6xkXmPvoY7rviOIddJCuILq0qTDmo0eQXc8V6EIrfqpGVQSGENO2ziJTo8IvJNCGkJJs4r81
	Y/PgbBgQkE0xfyKnlkT1hJ91pl0yfl5DPGMeun636N0iF7cJbH/b5NkYJehMsfl22uQJSk205dBeG
	OJZTyBMjm72r7i+v0qOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKeF-00000005djF-0XpD;
	Sun, 18 Oct 2026 06:45:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKeA-00000005dhv-0Fxz;
	Sun, 18 Oct 2026 06:45:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B28CF41B42;
	Sun, 18 Oct 2026 06:45:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72C781F000C4;
	Sun, 18 Oct 2026 06:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792305928;
	bh=GmrzgKuxZvWAxQ2tnujHlgWERhtGHR5yo6rInNCm21o=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=g1d6mYdEYS97TBYvK7eQHXHGgzLs+KxzxHuk5iKkkjJ/GTCq0odOJzSVH+X/ykvkD
	 yVcQqZ4Yre6GfADEMX/WVtSnyKAYLO1RIPFWr6qVdF34RC6qA6Df1s2F81ImJLrOgT
	 iDCFwv0khYsGH1DWZNX/X8KOcQVF7z+rDmYh/5RMUVxaeK/Mqvgpd6APyAkcctCAk1
	 A3I4m0RwEb5wNxN95cxidm3nQOGPZGWBHQtyI3onaWzTM96ulhbk9udk2RvYQiGWTv
	 mtmg5rNjDIif+ZJYDEZ7Vl5jr5n2zNBL6fQkx/SksxrnRJDP0dSUByDnFoTAkTQT+r
	 GADRjPZvBtTlw==
Subject: Re: [PATCH net-next v12 1/6] net: pcs: xpcs: add ANRESTART support
 for SGMII link recovery
From: netdev-bot+sashiko@kernel.org
To: coiaprant@gmail.com
Cc: kuba@kernel.org, netdev@vger.kernel.org, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@kernel.org, pabeni@redhat.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, hkallweit1@gmail.com, linux@armlinux.org.uk,
 david.wu@rock-chips.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Sun, 18 Oct 2026 06:45:26 +0000
Message-ID: <179230592697.3135.6932872951523750096@kernel.org>
In-Reply-To: <20261017054406.1828061-2-coiaprant@gmail.com>
References: <20261017054406.1828061-2-coiaprant@gmail.com>
X-sashiko-severity: Low
MIME-Version: 1.0
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gSW4geHBjc19nZXRfc3RhdGVfYzM3X3Nn
bWlpKCkgKGRyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy5jIGxpbmVzCiAgMTExMC0xMTIxKSwgdGhl
IEFOQ01QTFQgbGF0Y2ggaXMgY2xlYXJlZCB3aXRo4oCmCgotLQoKbmV0OiBwY3M6IHhwY3M6IGFk
ZCBBTlJFU1RBUlQgc3VwcG9ydCBmb3IgU0dNSUkgbGluayByZWNvdmVyeQoKVGhpcyBjb21taXQg
c2V0cyBCTUNSX0FOUkVTVEFSVCBhbG9uZyB3aXRoIEJNQ1JfQU5FTkFCTEUgaW4KeHBjc19jb25m
aWdfYW5lZ19jMzdfc2dtaWkoKSBhbmQgY2xlYXJzIERXX1ZSX01JSV9BTl9JTlRSX1NUUyBiZWZv
cmUKc3RhcnRpbmcgQU4uIEl0IGFsc28gbWFrZXMgeHBjc19nZXRfc3RhdGVfYzM3X3NnbWlpKCkg
Y2xlYXIgdGhlIEFOQ01QTFQKbGF0Y2ggYW5kIHRyaWdnZXIgYW4gQU4gcmVzdGFydCB3aGVuIHRo
ZSBsaW5rIGlzIGRvd24gYW5kIEFOIGNvbXBsZXRlIGlzCmxhdGNoZWQuIFRoaXMgd29ya3MgYXJv
dW5kIFJLMzU2OCBYUENTLCB3aGljaCBkb2VzIG5vdCByZXN0YXJ0IEFOIG9uIGl0cwpvd24uCgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MuYyBiL2RyaXZlcnMvbmV0L3Bj
cy9wY3MteHBjcy5jCj4gaW5kZXggYjQxNWI5M2Q3N2MxNS4uNjQ2NmUwZmYyYTk4YiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L3Bj
cy9wY3MteHBjcy5jCgpbIC4uLiBdCgo+IEBAIC0xMDkzLDkgKzExMDcsMTggQEAgc3RhdGljIGlu
dCB4cGNzX2dldF9zdGF0ZV9jMzdfc2dtaWkoc3RydWN0IGR3X3hwY3MgKnhwY3MsCj4gIAkJcmV0
dXJuIDA7Cj4gIAl9Cj4gIAo+IC0JLyogQ2xlYXIgQU4gY29tcGxldGUgc3RhdHVzIG9yIGludGVy
cnVwdCAqLwo+IC0JaWYgKHN0YXRlLT5hbl9jb21wbGV0ZSkKPiAtCQl4cGNzX3dyaXRlKHhwY3Ms
IE1ESU9fTU1EX1ZFTkQyLCBEV19WUl9NSUlfQU5fSU5UUl9TVFMsIDApOwo+ICsJaWYgKHN0YXRl
LT5hbl9jb21wbGV0ZSkgewo+ICsJCS8qIENsZWFyIEFOIGNvbXBsZXRlIHN0YXR1cyBvciBpbnRl
cnJ1cHQgKi8KPiArCQlyZXQgPSB4cGNzX3dyaXRlKHhwY3MsIE1ESU9fTU1EX1ZFTkQyLCBEV19W
Ul9NSUlfQU5fSU5UUl9TVFMsIDApOwo+ICsJCWlmIChyZXQgPCAwKQo+ICsJCQlyZXR1cm4gcmV0
Owo+ICsKPiArCQkvKiBJbml0aWF0ZSB0aGUgbmV4dCByb3VuZCBvZiBBTiAqLwo+ICsJCXJldCA9
IHhwY3NfbW9kaWZ5KHhwY3MsIE1ESU9fTU1EX1ZFTkQyLCBNSUlfQk1DUiwgQk1DUl9BTlJFU1RB
UlQsCj4gKwkJCQkgIEJNQ1JfQU5SRVNUQVJUKTsKPiArCQlpZiAocmV0IDwgMCkKPiArCQkJcmV0
dXJuIHJldDsKCltTZXZlcml0eTogTG93XQpXaGF0IGhhcHBlbnMgaWYgdGhlIERXX1ZSX01JSV9B
Tl9JTlRSX1NUUyB3cml0ZSBzdWNjZWVkcyBidXQgdGhlCnhwY3NfbW9kaWZ5KCkgb2YgTUlJX0JN
Q1IgZmFpbHM/CgpBdCB0aGF0IHBvaW50IHRoZSBBTkNNUExUIGxhdGNoIGlzIGFscmVhZHkgY2xl
YXJlZC4gSWYgdGhlIHJlYWQgZmFpbHMsCl9fbWRpb2J1c19jNDVfbW9kaWZ5X2NoYW5nZWQoKSBy
ZXR1cm5zIHdpdGhvdXQgd3JpdGluZyBhbnl0aGluZzoKCmRyaXZlcnMvbmV0L3BoeS9tZGlvX2J1
cy5jOl9fbWRpb2J1c19jNDVfbW9kaWZ5X2NoYW5nZWQoKSB7CiAgICAuLi4KCXJldCA9IF9fbWRp
b2J1c19jNDVfcmVhZChidXMsIGFkZHIsIGRldmFkLCByZWdudW0pOwoJaWYgKHJldCA8IDApCgkJ
cmV0dXJuIHJldDsKICAgIC4uLgp9CgpPbiBoYXJkd2FyZSB0aGF0IG5lZWRzIHRoaXMgd29ya2Fy
b3VuZCwgdGhlIGxhdGNoZWQgQU5DTVBMVCBzZWVtcyB0byBiZQp0aGUgb25seSB0aGluZyB0aGF0
IHRyaWdnZXJzIHRoZSByZXN0YXJ0LiBMYXRlciBjYWxscyB0bwp4cGNzX2dldF9zdGF0ZV9jMzdf
c2dtaWkoKSB3b3VsZCBzZWUgdGhlIGxpbmsgZG93biB3aXRoIG5vIEFOQ01QTFQsIHNvCnRoZSBy
ZXN0YXJ0IHdvdWxkIG5ldmVyIGJlIHJldHJpZWQuCgp4cGNzX2dldF9zdGF0ZSgpIG9ubHkgbG9n
cyB0aGUgZXJyb3I6CgoJY2FzZSBEV19BTl9DMzdfU0dNSUk6CgkJcmV0ID0geHBjc19nZXRfc3Rh
dGVfYzM3X3NnbWlpKHhwY3MsIHN0YXRlKTsKCQlpZiAocmV0KQoJCQlkZXZfZXJyKCZ4cGNzLT5t
ZGlvZGV2LT5kZXYsICIlcyByZXR1cm5lZCAlcGVcbiIsCgkJCQkieHBjc19nZXRfc3RhdGVfYzM3
X3NnbWlpIiwgRVJSX1BUUihyZXQpKTsKCQlicmVhazsKCnBoeWxpbmtfcmVzb2x2ZSgpIG9ubHkg
cmVjb25maWd1cmVzIHRoZSBQQ1Mgd2hlbiB0aGUgaW50ZXJmYWNlIGNoYW5nZXMKb3IgZm9yY2Vf
bWFqb3JfY29uZmlnIGlzIHNldDoKCglpZiAoKG1hY19jb25maWcgJiYgbGlua19zdGF0ZS5pbnRl
cmZhY2UgIT0gcGwtPmxpbmtfY29uZmlnLmludGVyZmFjZSkgfHwKCSAgICBwbC0+Zm9yY2VfbWFq
b3JfY29uZmlnKSB7CgpXb3VsZCB0aGUgbGluayB0aGVuIHN0YXkgZG93biB1bnRpbCBwY3NfY29u
ZmlnIHJ1bnMgYWdhaW4sIGZvciBleGFtcGxlCmFmdGVyIGFuIGludGVyZmFjZSBkb3duL3VwPwoK
VGhlIGNvbW1pdCBtZXNzYWdlIHNheXM6CgogICAgSWYgYW4gTURJTyBhY2Nlc3MgZmFpbHMgYXQg
dGhpcyBwb2ludCwgaXQgaW5kaWNhdGVzIGFuCiAgICB1bnJlY292ZXJhYmxlIGhhcmR3YXJlIGNv
bmRpdGlvbiB1bnRpbCByZXNldC4KCkRvZXMgdGhhdCBob2xkIGZvciBSSzM1Njg/IEluIHRoZSBs
YXRlciBwYXRjaCAibmV0OiBwY3M6IHhwY3M6IGFkZApSb2NrY2hpcCBSSzM1NjggcGxhdGZvcm0g
Z2x1ZSBkcml2ZXIiLCB4cGNzX3JrX3JlYWRfcmVnKCkgYW5kCnhwY3Nfcmtfd3JpdGVfcmVnKCkg
YXBwZWFyIHRvIGZhaWwgb25seSB0aHJvdWdoCnBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoKS4g
QSBmYWlsZWQgcnVudGltZSByZXN1bWUgY2FsbGJhY2sgZG9lcyBub3QKc2V0IHRoZSBzdGlja3kg
cG93ZXIucnVudGltZV9lcnJvciwgc28gdGhlIGZhaWx1cmUgY291bGQgYmUgdHJhbnNpZW50CnJh
dGhlciB0aGFuIHBlcm1hbmVudC4KCj4gKwl9Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIH0KCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL25ldGRldi1haS5ib3RzLmxpbnV4LmRldi9zYXNo
aWtvLyMvcGF0Y2hzZXQvMjAyNjEwMTcwNTQ0MDYuMTgyODA2MS0xLWNvaWFwcmFudCU0MGdtYWls
LmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
