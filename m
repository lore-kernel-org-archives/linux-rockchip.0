Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DA8DC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 11:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CyD1gesRgdQw6zMnTn9AAAAQVlhejnFKbu70160h7O0=; b=V05rDddfdaXJ73x1RdYOqBEJ5r
	suZWuE121T/OTcIoPKBO77e3ZM6ouVpM2oJ7t+VjMrSMGfcFe+TBErQ4GsOEFalXZegR1HPU1e4oz
	TjjkRrrsUeLEeti7AqHwh4XDswuAa71dFQhxoNItLqgcPkwpsqT5wE7QkDlL4bopdcbV0mpKO/81y
	JnVyE6GmSBKVtJN9VCDe46UTcZNS461fXvSDhUEGH89EiA4WyWnMwePl9i2zmXK9HVGc8dIR8aolP
	YAisPm60Pj9c5Z5Q1xGQwRKy+yCE6/Rgl/PKtRrHFICBqlZFo1eKNSMXIeVEGtdoITxdvwsE8114/
	bfShp2pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLhU-0000000Ducp-0WFn;
	Sun, 23 Jun 2024 11:48:04 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLhN-0000000DucA-3nQK;
	Sun, 23 Jun 2024 11:48:00 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719143275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yZOaYUoA97Ep2akKiluJXo61048Ck0byvoUwJNmlD6g=;
	b=hty961XIXoBvEtYoWvvtAB6zK7d8snxmtmqhs4AqVp2gw3TC30vm8HF6cI0u2mXj4TJxJO
	qvNAGUeGfecMkrperYCtVjAVDDwcqMhiH6CopcAefHqTn1Ff+YFz9DqP9sn5QsD7VpQocR
	jMfRLNJOsjghVOPvfwH9WbBKW3dtgRDzKK4NV9Da/CjszS2c7TGGy+HtIS3mr7UgP00Br9
	e3qGF+JjNR4FZ/7YpUswgtKRk8nyCJTPQQh78PtjYEnPLd9MjC1eDGPzJ4k+u8JTFyqMWP
	0LBYR/vgWbO9fqNnOBYLeAjgmBR4wKXEhmG0TV1JwG7wnwURsrgLvxqBbsiGQg==
Date: Sun, 23 Jun 2024 13:47:47 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Daniel Golle
 <daniel@makrotopia.org>, Aurelien Jarno <aurelien@aurel32.net>, Olivia
 Mackall <olivia@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Philipp
 Zabel <p.zabel@pengutronix.de>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Martin Kaiser <martin@kaiser.cx>, Ard Biesheuvel <ardb@kernel.org>,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] hwrng: add Rockchip SoC hwrng driver
In-Reply-To: <395f8ebe-1392-4d8f-b91f-c9a8f5f48afe@debian.org>
References: <cover.1719106472.git.daniel@makrotopia.org>
 <240db6e0ab07e8e2a86da99b0fc085eabaf9f0cc.1719106472.git.daniel@makrotopia.org>
 <612bd49c-c44a-41f2-89e9-c96e62e52a0a@kernel.org>
 <395f8ebe-1392-4d8f-b91f-c9a8f5f48afe@debian.org>
Message-ID: <051d76a29de62b943b221cf0c7662ef1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_044758_445417_D20E3EC7 
X-CRM114-Status: GOOD (  15.35  )
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

SGVsbG8gVXdlLAoKT24gMjAyNC0wNi0yMyAxMTo0NiwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6
Cj4gT24gNi8yMy8yNCAwOTowMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMjMv
MDYvMjAyNCAwNTozMywgRGFuaWVsIEdvbGxlIHdyb3RlOgo+Pj4gKwo+Pj4gKwlwbV9ydW50aW1l
X3NldF9hdXRvc3VzcGVuZF9kZWxheShkZXYsIFJLX1JOR19BVVRPU1VTUEVORF9ERUxBWSk7Cj4+
PiArCXBtX3J1bnRpbWVfdXNlX2F1dG9zdXNwZW5kKGRldik7Cj4+PiArCWRldm1fcG1fcnVudGlt
ZV9lbmFibGUoZGV2KTsKPj4+ICsKPj4+ICsJcmV0ID0gZGV2bV9od3JuZ19yZWdpc3RlcihkZXYs
ICZya19ybmctPnJuZyk7Cj4+PiArCWlmIChyZXQpCj4+PiArCQlyZXR1cm4gZGV2X2Vycl9wcm9i
ZSgmcGRldi0+ZGV2LCByZXQsICJGYWlsZWQgdG8gcmVnaXN0ZXIgUm9ja2NoaXAgCj4+PiBod3Ju
Z1xuIik7Cj4+PiArCj4+PiArCWRldl9kYmcoJnBkZXYtPmRldiwgIlJlZ2lzdGVyZWQgUm9ja2No
aXAgaHdybmdcbiIpOwo+PiAKPj4gRHJvcCwgaXQgaXMgbm90IHVzZWZ1bCBhdCBhbGwuIFNyc2x5
LCB3ZSBoYWQgYWxyZWFkeSBsb25nIGVub3VnaCB0YWxrLAo+PiBbLi4uXQo+IAo+IEFuZCBpbiB0
aGlzIGxvbmcgdGFsayB1c2luZyBkZXZfZGJnKCkgd2FzIG9uZSBvZiB0aGUgc3VnZ2VzdGlvbnMg
Zm9yIGEKPiBjb21wcm9taXNlLiBGb3IgbWUgdGhpcyBpcyBvay4KPiAKPj4gVGhlcmUgaXMgbm8g
c2luZ2xlIGJlbmVmaXQgb2Ygc3VjaCBkZWJ1ZyBzdGF0ZW1lbnQuIHN5c2ZzIGFscmVhZHkKPj4g
cHJvdmlkZXMgeW91IHRoaXMgaW5mb3JtYXRpb24uIFNpbXBsZSBlbnRyeS9leGl0ICBpcyBwcm92
aWRlZCBieQo+PiB0cmFjaW5nLiBZb3UgZHVwbGljYXRlIGV4aXN0aW5nIGludGVyZmFjZXMgd2l0
aG91dCBhbnkgYmVuZWZpdCwgCj4+IGJlY2F1c2UKPj4gdGhpcyBwcmludHMgbm90aGluZyBtb3Jl
Lgo+IAo+IFRoZXJlIG1pZ2h0IGJlIGEgKHNtYWxsKSB2YWx1ZSBpZiB5b3Ugd2FudCB0byBrbm93
IHdoZW4gZHVyaW5nIGJvb3QKPiB0aGUgZGV2aWNlIGJlY29tZXMgYXZhaWxhYmxlLiBTbyBoYXZp
bmcgYSBkZXZfZGJnKCkgdGhhdCBjYW4gYmUKPiBlbmFibGVkIGR5bmFtaWNhbGx5IChhc3N1bWlu
ZyBEWU5BTUlDX0RFQlVHPXkpIGFuZCBpc24ndCBpbiB0aGUgd2F5Cj4gb3RoZXJ3aXNlIG1pZ2h0
IGJlIGp1c3RpZmllZC4gSU1ITyBhIGRldl9kYmcgaXMgbGlnaHR3ZWlnaHQgZW5vdWdoCj4gdGhh
dCAqSSogd29uJ3QgY29udGludWUgdGhlIGRpc2N1c3Npb24uCgpGb3IgYW55b25lIGludGVyZXN0
ZWQsIGJlbG93IGlzIGFuIGV4YW1wbGUgdGhhdCBzaG93cyB0aGUgdXNhYmlsaXR5Cm9mIGtub3dp
bmcgd2hlbiBhIGRldmljZSBiZWNvbWVzIGF2YWlsYWJsZToKCmh0dHBzOi8vZ2l0bGFiLm1hbmph
cm8ub3JnL21hbmphcm8tYXJtL3BhY2thZ2VzL2NvcmUvbGludXgvLS9pc3N1ZXMvMjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
