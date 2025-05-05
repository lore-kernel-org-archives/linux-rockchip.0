Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0588BC3ABB6
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 21:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKoQvNvvFF6L5JnCg6VOeLvl0eM+avd5nFh62G3dP/A=; b=BZq14KFdq2qgK/
	oltqFOnJlaFTOxbIBZh5bh93Uq4dcKypxzVwzQgU24D7ZxXV2baJGJhn+9ppmn9CbgPXiyBWFT3zB
	BDbVlwLtuhEwQNguiKT3JHCCTqefoc8M4+9gDXAewGJ5hUIxeedcLfowlZc07gBffndanlCjLfneO
	AmRN63TYOuX7pI/6Xv55YyQ+iwMzvLqroBD81RHLG/2g0PoaDq4S2YOsiu1XTjmLdOSoMs5udpqyd
	yU5YpONSSl5YAwl4/1cxr3BWcncQiH6r1dCUhtgJYgpLNYBTOa05MXyrexZ4BcCHmvypV2LA/PMwH
	zq5XGppK3XaHxgcupt3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC3dJ-00000008esD-2pez;
	Mon, 05 May 2025 21:45:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC3bJ-00000008ea2-2ICD;
	Mon, 05 May 2025 21:43:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=KGoHMvJXNrLt/JsqqoIqwpdT9g6Nv2QdDE3wTmLc9bE=; b=kSUUApq2S4eNRL51I1LuJ6Pe8t
	eNc4wgeEMwVSJCCJEyO3cH0gVI4kAR6O8AK0gbnQgS8L2CF2rstRWLwBpClZ7Aa17YQAwgqkOhje7
	Ort+DuY3t/6gjVNpfu6XWjqI1EycDlm5bqqiTc08w2AMJgffh+ywAjDKPEMALs7eE1D9YJuJykWsS
	EGeZWgKsYLugvRv3jHGNkbEiWZMSATsz9fCKyahntq0eKPQVtx+m1ld1Z7VRkHO6sAzN4RSFBv2DO
	wz1ZxpHGm/94FZsS8BaDRfeiTOFriNE5JBz37Uveoko2KzOWySP4kuPirh+ZxxSvDLT2W2fpQQsUD
	OPCGLDWw==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uC3bE-0000B0-Ug; Mon, 05 May 2025 23:43:44 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: i2c: i2c-rk3x: Add compatible string for
 RK3528
Date: Mon, 05 May 2025 23:43:43 +0200
Message-ID: <2918896.Y6S9NjorxK@diego>
In-Reply-To: <h4hpaadpeu2pnsbcfbg4iye7w5sn26wflth4uztdghafuegqi5@2xbtygdwe2hu>
References: <20250417120118.17610-3-ziyao@disroot.org> <4864135.rnE6jSC6OK@diego>
 <h4hpaadpeu2pnsbcfbg4iye7w5sn26wflth4uztdghafuegqi5@2xbtygdwe2hu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_144349_586323_A76A660A 
X-CRM114-Status: GOOD (  21.13  )
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

SGkgQW5kaSwKCkFtIE1vbnRhZywgNS4gTWFpIDIwMjUsIDIyOjQ3OjA0IE1pdHRlbGV1cm9ww6Rp
c2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQW5kaSBTaHl0aToKPiBIaSBIZWlrbywKPiAKPiBPbiBN
b24sIE1heSAwNSwgMjAyNSBhdCAwOTo0OTozNkFNICswMjAwLCBIZWlrbyBTdMO8Ym5lciB3cm90
ZToKPiA+IEFtIERvbm5lcnN0YWcsIDE3LiBBcHJpbCAyMDI1LCAxNDowMToxNyBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFlhbyBaaToKPiA+ID4gRG9jdW1lbnQgSTJDIGNv
bnRyb2xsZXJzIGludGVncmF0ZWQgaW4gUkszNTI4LCB3aGljaCBhcmUgY29tcGF0aWJsZSB3aXRo
Cj4gPiA+IHRoZSBSSzMzOTkgdmFyaWFudC4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFlh
byBaaSA8eml5YW9AZGlzcm9vdC5vcmc+Cj4gPiA+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5l
ciA8aGVpa29Ac250ZWNoLmRlPgo+ID4gPiBBY2tlZC1ieTogQ29ub3IgRG9vbGV5IDxjb25vci5k
b29sZXlAbWljcm9jaGlwLmNvbT4KPiA+ID4gUmV2aWV3ZWQtYnk6IEFuZGkgU2h5dGkgPGFuZGku
c2h5dGlAa2VybmVsLm9yZz4KPiA+IAo+ID4gZG8geW91IGV4cGVjdCB0byBhcHBseSB0aGlzIHBh
dGNoIHRvIHRoZSBpMmMgdHJlZSBpbmRpdmlkdWFsbHksCj4gPiBvciBoYXZlIGl0IGdvIHRvZ2V0
aGVyIHdpdGggdGhlIGRldmljZXRyZWUgcGF0Y2g/Cj4gCj4gd2l0aCB0aGVzZSBwYXRjaGVzLCBJ
IG5vcm1hbGx5IHdhaXQgYSBiaXQgdG8gc2VlIGhvdyB0aGUgb3RoZXJzCj4gaW4gdGhlIHNhbWUg
c2VyaWVzIGdvIGJlZm9yZSBtZXJnaW5nLgo+IAo+IEkgbm93IG1lcmdlZCB0aGlzIHBhdGNoIGlu
dG8gaTJjL2kyYy1ob3N0Lgo+IAo+IElmIHRoZXJlIGlzIGFueSBwYXJ0aWN1bGFyIG5lZWQgdG8g
bWVyZ2UgZXZlcnl0aGluZyB0b2dldGhlciBpbgo+IHRoZSBkZXZpY2V0cmVlLCB0aGVuIEkgY2Fu
IHRha2UgaXQgb3V0LgoKb24gdGhlIGNvbnRyYXJ5IC4uLiBJIHdhcyBob3BpbmcgZm9yIGV4YWN0
bHkgdGhpcyA6LSkgLgoKSS5lLiB0aGVyZSBpcyBubyBuZWVkIHRvIG1lcmdlIGV2ZXJ5dGhpbmcg
dG9nZXRoZXIgYW5kIHRoZSBjb21tb24gcGF0dGVybgppcyAiYmluZGluZyBnb2VzIHRocm91Z2gg
dGhlIGRyaXZlci10cmVlIiwgZHRzIGdvZXMgdGhyb3VnaCBzb21lIHNvYy10cmVlCihtaW5lIGl0
IHRoaXMgY2FzZSkuCgpCdXQgSSBjYW4gb25seSBtZXJnZSB0aGUgZHRzIHBhdGNoZXMsIF9hZnRl
cl8gdGhlIGJpbmRpbmcgd2FzIG1lcmdlZCwKc28gdGhhdCB3YXMgbW9yZSBvZiBhbiBlbGJvcmF0
ZSAicGluZyIgYW5kIF9zb21ldGltZXNfIG1haW50YWluZXJzCm1pZ2h0IGV4cGVjdCB0aGUgYmlu
ZGluZyBqdXN0IGdvaW5nIHdpdGggdGhlIGR0cyBwYXRjaGVzLgoKClNvLCB0aGFua3MgZm9yIG1l
cmdpbmcgdGhlIGJpbmRpbmcgYW5kIEknbGwgbWVyZ2UgdGhlIGR0cyBwYXRjaGVzIG5vdy4KCgpU
aGFua3MgYSBsb3QKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
