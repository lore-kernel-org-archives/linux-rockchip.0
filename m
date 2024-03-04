Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 746DEC48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 21:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oAhZsG7DdpIJ+/EHOad1wyfGE0+LoIVm/rSP0l0fVZo=; b=v+8uL+Zui9BycW
	ohRGLLTs5I8FcskVxxJMmiez13KRAsCjHr50ixyQZQkhKOO75EBQdv3ShIXWtWbMIv4YuJrnVidkf
	Uw1mMk3v1pJcbm8qemE73Ep4cvwch0h2rKGjRVES7nCcdnCWaWTgvTDwuYZJAN6xePRcCBEgNazBA
	JU7cKaLYQKIT5HNim7EtBuiqBfUj+lPAWGWcABlTLfZEVttVMRC21oRMhjZkGvEGjO2EirkPKwaQw
	EAW8hp7f09ir3oW5CVaxWLyV4B5BpjEMjkVeP/i6F+sz2Jl1CQMHtG32oNVHgRmDAMq17TH469wvB
	J8CldMlISw3B1Jwgxj0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhFT9-0000000Ah2N-1PHd;
	Mon, 04 Mar 2024 21:03:31 +0000
Received: from stravinsky.debian.org ([2001:41b8:202:deb::311:108])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhFT5-0000000Ah1O-0Yam;
	Mon, 04 Mar 2024 21:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description;
	bh=DmGb6+Q1mNlu6VCk7kl84rD0txL+0WYOa43KIKbfRL8=; b=IxHRc6erhiEl0McnvwpzI4K2t3
	qjKHRlbrdHpIpFQiFfOaPTah58qMMcm2sw1gPwMsdY8eaeAa8q6bwM/fezVPKlzOd3nGlONTz4lLA
	dX9cMG+bXs4HbYC65Ow5KtnmKbzIZMLuMeVYBwwZ34RS8fs8uV/ZplCYKE0+JM9FE2jnlOSrUqTNL
	a8ybk6D/sllwCNw5R/rFxgrs33jpcx+A+kaJgusJrVDk/ihCGgnhE5wyio8heGpdxaasJAEY7GKKG
	37XfmKh7FEPqmwbIxLPcYAS1VHzLfPn1AOoEzV/HtAEL1ZdVyxPqXSq68sU9tkFW6OPSxsJvOKFke
	YjKph05Q==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128)
	(Exim 4.94.2)
	(envelope-from <ukleinek@debian.org>)
	id 1rhFSs-003CtY-0K; Mon, 04 Mar 2024 21:03:14 +0000
Message-ID: <9e6d2e18-ed39-49f1-be1a-3ede2e4a850c@debian.org>
Date: Mon, 4 Mar 2024 22:03:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240304084612.711678-2-ukleinek@debian.org>
 <3082796.ktpJ11cQ8Q@diego> <0f7d2882-aa4b-424e-a999-45f2e18fc7f0@debian.org>
 <3246455.0WQXIW03uk@diego>
Content-Language: en-US, de-DE
From: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Autocrypt: addr=ukleinek@debian.org; keydata=
 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
 MaQkyqbBqIbxBNgANCE5eTk=
In-Reply-To: <3246455.0WQXIW03uk@diego>
X-Debian-User: ukleinek
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_130327_220009_DD6F0468 
X-CRM114-Status: GOOD (  12.92  )
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

SGVsbG8sCgpbSSBhbHJlYWR5IHJlcGxpZWQgdG8gdGhpcyBtYWlsIGVhcmxpZXIgdG9kYXksIGJ1
dCBJIGp1c3Qgbm90aWNlZCBJIG9ubHkgCmRpZCB0aGF0IHRvIEhlaWtvLiBTbyBoZXJlIGNvbWVz
IHRoZSBtYWlsIGFnYWluLl0KCk9uIDA0LjAzLjI0IDEwOjI0LCBIZWlrbyBTdMO8Ym5lciB3cm90
ZToKPiBBbSBNb250YWcsIDQuIE3DpHJ6IDIwMjQsIDEwOjE1OjU3IENFVCBzY2hyaWViIFV3ZSBL
bGVpbmUtS8O2bmlnOgo+PiBPbiAwNC4wMy4yNCAxMDowNywgSGVpa28gU3TDvGJuZXIgd3JvdGU6
Cj4+PiBBbSBNb250YWcsIDQuIE3DpHJ6IDIwMjQsIDA5OjQ2OjExIENFVCBzY2hyaWViIFV3ZSBL
bGVpbmUtS8O2bmlnOgo+Pj4+IFdoaWxlIGl0IHJlcXVpcmVzIHRvIGhhdmUgdGhlIHJpZ2h0IHBo
eSBkcml2ZXIgbG9hZGVkIChpLmUuIG1vdG9yY29tbSkKPj4+PiB0byBtYWtlIHRoZSBwaHkgYXNz
ZXJ0aW5nIHRoZSByaWdodCBkZWxheXMsIHRoaXMgaXMgZ2VuZXJhbGx5IHRoZQo+Pj4+IHByZWZl
cnJlZCB3YXkgdG8gZGVmaW5lIHRoZSBNQUMgPC0+IFBIWSBjb25uZWN0aW9uLgo+Pj4+Cj4+Pj4g
U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVpbmVrQGRlYmlhbi5vcmc+Cj4+
Pj4gLS0tCj4+Pj4gSGVsbG8sCj4+Pj4KPj4+PiBBbmRyZXcgYWxyZWFkeSBwb2ludGVkIG91dCB3
aGVuIEkgcG9zdGVkIHRoZSBwYXRjaCBpbnRyb2R1Y2luZyB0aGUgZ21hYzAgbm9kZQo+Pj4+IHRo
YXQgcmdtaWktaWQgd291bGQgYmUgdGhlIHByZWZlcnJlZCB3YXkgdG8gc2V0dXAgdGhpbmdzLiBC
YWNrIHRoZW4gdGhpcyBkaWRuJ3QKPj4+PiBoYXBwZW4gYmVjYXVzZSB0aGlzIGNoYW5nZSBicm9r
ZSByZWNlcHRpb24gb2YgbmV0d29yayBwYWNrZXRzLiBIb3dldmVyIHRoaXMKPj4+PiBvbmx5IGhh
cHBlbmQgYmVjYXVzZSBJIGRpZG4ndCBoYXZlIHRoZSByaWdodCBwaHkgZHJpdmVyIGxvYWRlZC4K
Pj4+Cj4+PiB0cnlpbmcgdG8gdW5kZXJzdGFuZCBob3cgdGhlIChub3QpIGxvYWRlZCBtb2R1bGUg
Zml0cyBpbnRvIHRoaXMgOi0pCj4+PiBUaGUgbWRpby1idXMgaXMgc3VwcG9zZWQgdG8gcHJvYmUg
dGhlIHBoeSBhbmQgbG9hZCB0aGUgYXBwcm9wcmlhdGUgbW9kdWxlLgo+Pj4KPj4+ICAgRnJvbSB5
b3VyIGRlc2NyaXB0aW9uIGl0IHNvdW5kcyBsaWtlIHRoZSBjb3JyZWN0IHBoeSBtb2R1bGUgbmVl
ZHMgdG8gYmUKPj4+IGFjdHVhbGx5IGxvYWRlZD8gT3Igd2FzIHRoYXQgbWVhbnQgdG8gYmUgYSAi
cmVxdWlyZXMgdG8gaGF2ZSB0aGUgcmlnaHQgcGh5Cj4+PiBkcml2ZXIgY29tcGlsZWQiIGluc3Rl
YWQ/Cj4+Cj4+IFRoZSBsYXR0ZXIuIGkuZS4gd2l0aCBNT1RPUkNPTU1fUEhZPW4gaXQncyBicm9r
ZW4sIGJ1dCB3b3JrcyBmaW5lIHdpdGgKPj4gTU9UT1JDT01NX1BIWT15IG9yID1tLgo+IAo+IGFo
IGdyZWF0LCB0aGVuIGl0J3MgcmVhbGx5IGZpbmUuIElmIGl0J3Mgb2sgd2l0aCB5b3UgSSdsbCBj
aGFuZ2UgdGhlICJsb2FkZWQiCj4gdG8gImF2YWlsYWJsZSIgdGhlbiAoZm9yIGNvbXBpbGVkIGlu
IG9yIGFzIG1vZHVsZSkKCmFjayEKCkJlc3QgcmVnYXJkcwpVd2UKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
