Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 848CBC282D0
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 09:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOR8wMwXCkJjpIQuEsJ5i7d7h7omBCCDPXUh1Kqk5Jg=; b=oPbuSnRUC8Ks2/
	uVIt3tafIyBKmPSpUx2/Ri121ns5IMZ47fNzbNS8Sq9rbb59AnH8x5PAHAfvi305QSTaCO7HFIpdX
	mRkB4qpXHdFAjS7w6eiylUjSEQrCipnV34ZKEw38Gp939uOFbXZdExU3hpalwwfA4bwTovYkxTqfv
	7Z124QOsAnW/JXShMYL1fPMn9MaqbsOqYZ847n17OdNpuOHePP9vO/PLdVHaHMWcqD4Wp8CIaz2d7
	lW2/Y+olt84KwDL81FTZGm2/8ECoyjqxqzVx94kAxW4BOEpR2seHFukCQTW+plx6EW9/cKbnLVfPO
	XyBGXzZpO9zrzlT2jIEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqU3o-0000000DijL-1qdb;
	Fri, 07 Mar 2025 09:32:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqU1H-0000000DiBp-1s4r;
	Fri, 07 Mar 2025 09:29:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=D2F6Zdb1CkSBitSIoiyY8ywRdELphgvUiwPTl0y2m+g=; b=MfBYfJcDOUJ7bmp4dok8wEmuaJ
	s+yyx3IlEJGd4KThHeWy3pAxTHVErNEA+3t9rrrGyHhIC1iQ+ZefIqjYk7FknH3oKX1GjF2gY3WLT
	+lUHpZPwe7d2cLz5xeEN6MiYDqzmLU124SaDix8I1yDz9h/nJOWkU25hJB96NDIOe/KL7D9WeUZyy
	pKWGJnS728oPVRpb60e1WJAaDeNsSG8y0bj9ocXbmZSCYH+bmYT9X9qsbYhB7GeJxVRUT8u1XNv1+
	RFFGO32ilew0RNMPDCaMkVYG9KjTO/rZTL7gkmRUNjHbh66yygeEemgVc3gb0CuLZRwoc0wz+6PkS
	NKUMyvLw==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqU0n-0002G6-II; Fri, 07 Mar 2025 10:28:57 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Daniel Golle <daniel@makrotopia.org>,
 Aurelien Jarno <aurelien@aurel32.net>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Olivia Mackall <olivia@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: rng: rockchip,rk3588-rng.: Drop unnecessary status
 from example
Date: Fri, 07 Mar 2025 10:28:55 +0100
Message-ID: <5865714.DvuYhMxLoT@diego>
In-Reply-To: <20250307081406.35242-1-krzysztof.kozlowski@linaro.org>
References: <20250307081406.35242-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_012927_550965_EA050BA1 
X-CRM114-Status: GOOD (  14.69  )
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

QW0gRnJlaXRhZywgNy4gTcOkcnogMjAyNSwgMDk6MTQ6MDYgTUVaIHNjaHJpZWIgS3J6eXN6dG9m
IEtvemxvd3NraToKPiBEZXZpY2Ugbm9kZXMgYXJlIGVuYWJsZWQgYnkgZGVmYXVsdCwgc28gbm8g
bmVlZCBmb3IgJ3N0YXR1cyA9ICJva2F5IicgaW4KPiB0aGUgRFRTIGV4YW1wbGUuCj4gCj4gU2ln
bmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5h
cm8ub3JnPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cgo+
IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3JvY2tjaGlwLHJr
MzU4OC1ybmcueWFtbCB8IDEgLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3JvY2tj
aGlwLHJrMzU4OC1ybmcueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9y
bmcvcm9ja2NoaXAscmszNTg4LXJuZy55YW1sCj4gaW5kZXggNzU3OTY3MjEyZjU1Li5jYTcxYjQw
MGJjYWUgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Ju
Zy9yb2NrY2hpcCxyazM1ODgtcm5nLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3Mvcm5nL3JvY2tjaGlwLHJrMzU4OC1ybmcueWFtbAo+IEBAIC01Myw3ICs1Myw2
IEBAIGV4YW1wbGVzOgo+ICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA0MDAgSVJRX1RZ
UEVfTEVWRUxfSElHSCAwPjsKPiAgICAgICAgICBjbG9ja3MgPSA8JnNjbWlfY2xrIFNDTUlfSENM
S19TRUNVUkVfTlM+Owo+ICAgICAgICAgIHJlc2V0cyA9IDwmc2NtaV9yZXNldCBTQ01JX1NSU1Rf
SF9UUk5HX05TPjsKPiAtICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gICAgICAgIH07Cj4gICAg
ICB9Owo+ICAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
