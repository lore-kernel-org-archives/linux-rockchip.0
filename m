Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32B06C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Sep 2022 20:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ru7elddnYKH3LSQOWR/nmCKHJv/tX2wFFr0yJn51wO0=; b=1vKyrLEPA1CwoV
	Upd+1+tP1GpM76/ztI5J3ojfUc3J9MjViyx2st/WwH8Lvz/DxMx+dKfy8OfWTQTxM+QqG5qmKMHAl
	prmQBFT+6XSPLZSdZSQZA1xrYfDcNSDWIGBtaJvWdNUQqPlsGetoB4NIX0ksxHAbLxiNrHO8lBdXc
	bjt5KNK6WWfxGG1P9HUyHM8J3BS1PQ8yPHmgRLJJjHKLtWIxVQ4Y3LgE1MbRumzQYGpJLycXE8evn
	V3HZ8vIIKcDJUBQLxMyqtcD0R67eDoEgOeWXZDF/Ufk5dlEfnxqU05CkZpLFHhnOOD7mGbf0ID1RJ
	UEiXc1zXxTU2Er5XID0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe0EX-005PVf-CW; Thu, 29 Sep 2022 20:34:13 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe0EL-005PSS-94; Thu, 29 Sep 2022 20:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=4+GjA4+t+FzJUOojt9RIJscA2LdcugK+jY+KWvx9VGc=; b=GUY4j4gO6c8Nj/KLnYCcpKa/mN
	Kh7jelRHhC5GURsBbQwvuOZgWHzubD8jwPw+iPVY5nLpL5Y9jE+LNP05kuBpvF1LY9V395zwMMFBQ
	2njCRDh/UhL6z/FNqLT+OLnf9kcGE87y3Iy8SfD4pUoeBqkVlBgh6OhfiiGbMhqG0qSnHCTh/aYCD
	jMJe60bpAfuXHVI/c94vb/vgkzLg/lE6wQ6mr2bUXz76ju7uryMX8X4yYovELCXBVBZ21UG8vSq7o
	EDfghfU8so6cambSalU5n2GNDeKNx39RTG0rLd1R2GMdaQwsp80Z16wPgWiTMfYus9PC2R7KciNyO
	DpMxVX/g==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe0Dq-00DTdP-EC; Thu, 29 Sep 2022 22:33:30 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe0Dp-001WpD-2o;
	Thu, 29 Sep 2022 22:33:29 +0200
Date: Thu, 29 Sep 2022 22:33:29 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: LABBE Corentin <clabbe@baylibre.com>
Cc: heiko@sntech.de, davem@davemloft.net, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RFT 0/5] crypto: rockchip: add crypto offloader V2
Message-ID: <YzYBGQeaouraFDyo@aurel32.net>
Mail-Followup-To: LABBE Corentin <clabbe@baylibre.com>, heiko@sntech.de,
	davem@davemloft.net, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
References: <20220927080048.3151911-1-clabbe@baylibre.com>
 <YzNsgjPFwVEDo4E4@aurel32.net>
 <YzVKR0DjpXT/bB8J@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzVKR0DjpXT/bB8J@Red>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_133401_338099_11BA4631 
X-CRM114-Status: GOOD (  20.44  )
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

T24gMjAyMi0wOS0yOSAwOTozMywgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgVHVlLCBTZXAg
MjcsIDIwMjIgYXQgMTE6MzQ6NThQTSArMDIwMCwgQXVyZWxpZW4gSmFybm8gYSDDqWNyaXQgOgo+
ID4gT24gMjAyMi0wOS0yNyAwODowMCwgQ29yZW50aW4gTGFiYmUgd3JvdGU6Cj4gPiA+IEhlbGxv
Cj4gPiA+IAo+ID4gPiBSb2NrY2hpcCByazM1NjggYW5kIHJrMzU4OCBoYXZlIGEgY29tbW9uIGNy
eXB0byBvZmZsb2FkZXIgSVAgZGlmZmVyZW50Cj4gPiA+IHRoYW4gcmszMjI4IG9uZS4KPiA+ID4g
SSBzdGFydGVkIHRvIHdvcmsgdGhlIGRyaXZlciBmb3IgdGhpcyBJUCBvbiBhIHJrMzU4OCBiYXNl
ZCBib2FyZCwgYnV0IHRoaXMgU29DCj4gPiA+IGlzIHN0aWxsIG5vdCB1cHN0cmVhbS4KPiA+ID4g
U28gaXQgaXMgd2h5IEkgc2VuZCB0aGlzIHNlcmllIGFza2luZyBmb3IgdGVzdCBzaW5jZSBJIG93
biBubyByazM1NjggYW5kCj4gPiA+IEkgbmVlZCB0byBiZSBzdXJlIGRhdGFzaGVldCBpcyByaWdo
dC4KPiA+IAo+ID4gSSBkaWQgYSBxdWljayB0ZXN0LCBhbmQgaXQgZG9lc24ndCBzZWVtIHRvIHdv
cmsuIEkgZ2V0Ogo+ID4gCj4gPiByazM1ODgtY3J5cHRvIGZlMzgwMDAwLmNyeXB0bzogRE1BIHRp
bWVvdXQKPiA+IHJrMzU4OC1jcnlwdG8gZmUzODAwMDAuY3J5cHRvOiBETUEgdGltZW91dAo+ID4g
Cj4gPiBUaGF0J3Mgb24gYW4gT0RST0lELU0xIGJvYXJkLCBzbyB3aXRoIHRoZSBzZXQgb2YgcGF0
Y2hlcyBJIHNlbnQKPiA+IHllc3RlcmRheSB0byBzdXBwb3J0IGl0Lgo+IAo+IFRoYW5rcyBmb3Ig
dGVzdGluZyBpdCwgcHJvYmFibHkgSSBkaWQgc29tZXRoaW5nIHdyb25nIGJlY2F1c2UgSSBnb3Qg
YSBzdWNjZXNzZnVsbCB0ZXN0IGJ5IHNvbWVvbmUgb24gI2xpbnV4LXJvY2tjaGlwLgo+IEJ1dCBJ
IGRvbnQga25vdyBvbiB3aGljaCBib2FyZCBpdCBpcywgYW5kIGl0IHdhcyBvbiBteSBkZWJ1ZyB0
cmVlLCBzbyBwcm9iYWJseSBjbGVhbmVkIHNvbWV0aGluZyB3cm9uZyBiZWZvcmUgc2VuZGluZyB0
aGUgcGF0Y2hzLgo+IAo+IElmIEkgc2VudCB5b3UgYSBsaW5rIHRvIG15IHRyZWUsIGNvdWxkIHlv
dSByZXRyeSA/CgpZZXAsIEkgY2FuIHRyeSB0aGF0LgoKUmVnYXJkcwpBdXJlbGllbgoKLS0gCkF1
cmVsaWVuIEphcm5vICAgICAgICAgICAgICAgICAgICAgICAgICBHUEc6IDQwOTZSLzFEREQ4QzlC
CmF1cmVsaWVuQGF1cmVsMzIubmV0ICAgICAgICAgICAgICAgICBodHRwOi8vd3d3LmF1cmVsMzIu
bmV0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
