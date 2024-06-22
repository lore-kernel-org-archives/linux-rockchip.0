Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EC6EC27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 10:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oz6PL8iCK937qwKOzfcG+pomibQGKEHd01KrG1TiEpY=; b=t8wBIOxNvxpnCJBnlJ4eBmEC50
	qqsi7H6pvuBcnZvF/TUuR6lOH+6qof91WiTh0DjeZQ4LwfwE0N2aoum4wTvZbqUWxSiSvW1cI1+sG
	Ro4jnxKa2ioLP174ZSmchNsqjyqxjnCvC/84HH2e9KDhXAt6m+UikfEumooKQ5yhsVeqX134EcNYO
	57NigTLlJyFt7MO12kFekv5z6MM+u08tvvhjrX9cKZsgrpUbOtw9P0P8fjF8tfWlQ0QVi7nHCZ4au
	VbAIOYawFFsNmw5qZk/05iVMYOla7QrMBD8GiBD+vqWkRPo8KCZAgEUT1SyZCuvk0wii2uId/Edxt
	tFGJMmJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKy0F-0000000Brjn-0eKQ;
	Sat, 22 Jun 2024 10:29:51 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKy09-0000000Briz-1MgU;
	Sat, 22 Jun 2024 10:29:47 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719052181;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gAs4OzU1Oz3fZkEyE0fXcGDcqifaH35w5B5v23oDbGw=;
	b=nLBuVgLdi1Ma3AsC4BcduWrQtZljtVvLRLy8P++PL4vrCvYI8UjuY1RWa1GQEQUYAss95u
	ZhOlYTGJL8HfYiXljF3nuWBQhZXfcw60f48BGapi1QZ1eZnQVwQ7Z7NG5tBGYdPdNEEMDi
	vf45ho21uqRa1x6iiIU5HK0qfJKGsT+YzEjZUhSLXR7eeufJ6saJjzserH6ceUmcMOmi6R
	heTdohQ4ujLYbMNd9ySFlM9XgOJgb9j8eaZow2P5XcKZ4XbABY2Qku9+KTFWgnBxsZn8bM
	tlmA2OK7w48oxzYmXFfp1fzheQXxkSryBkQwf3IG2ms7svnYumxZQIfTJZMqdg==
Date: Sat, 22 Jun 2024 12:29:33 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Daniel Golle
 <daniel@makrotopia.org>, Aurelien Jarno <aurelien@aurel32.net>, Olivia
 Mackall <olivia@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Philipp
 Zabel <p.zabel@pengutronix.de>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Anand Moon <linux.amoon@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Martin Kaiser <martin@kaiser.cx>, Ard
 Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] hwrng: add Rockchip SoC hwrng driver
In-Reply-To: <ead26406-dd3b-491c-b6ab-11002a2db11a@kernel.org>
References: <cover.1718921174.git.daniel@makrotopia.org>
 <57a7fb13451f066ddc8d1d9339d8f6c1e1946bf1.1718921174.git.daniel@makrotopia.org>
 <f8e6b1b9-f8ff-42df-b1ef-bcc439c2e913@kernel.org>
 <173ce1663186ab8282356748abcac3f4@manjaro.org>
 <ead26406-dd3b-491c-b6ab-11002a2db11a@kernel.org>
Message-ID: <07fba45d99e9eabf9bcca71b86651074@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_032945_994556_FE06CFE8 
X-CRM114-Status: GOOD (  21.50  )
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

SGVsbG8gVXdlLAoKT24gMjAyNC0wNi0yMiAwMDoxNiwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6
Cj4gT24gNi8yMS8yNCAyMDoxMywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiBPbiAyMDI0LTA2LTIx
IDExOjU3LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4gT24gMjEvMDYvMjAyNCAwMzoy
NSwgRGFuaWVsIEdvbGxlIHdyb3RlOgo+Pj4+IEZyb206IEF1cmVsaWVuIEphcm5vIDxhdXJlbGll
bkBhdXJlbDMyLm5ldD4KPj4gCj4+IFtzbmlwXQo+PiAKPj4+PiArwqDCoMKgIHBtX3J1bnRpbWVf
c2V0X2F1dG9zdXNwZW5kX2RlbGF5KGRldiwgCj4+Pj4gUktfUk5HX0FVVE9TVVNQRU5EX0RFTEFZ
KTsKPj4+PiArwqDCoMKgIHBtX3J1bnRpbWVfdXNlX2F1dG9zdXNwZW5kKGRldik7Cj4+Pj4gK8Kg
wqDCoCBwbV9ydW50aW1lX2VuYWJsZShkZXYpOwo+Pj4+ICsKPj4+PiArwqDCoMKgIHJldCA9IGRl
dm1faHdybmdfcmVnaXN0ZXIoZGV2LCAmcmtfcm5nLT5ybmcpOwo+Pj4+ICvCoMKgwqAgaWYgKHJl
dCkKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwg
cmV0LCAiRmFpbGVkIHRvIHJlZ2lzdGVyIAo+Pj4+IFJvY2tjaGlwIGh3cm5nXG4iKTsKPj4+PiAr
Cj4+Pj4gK8KgwqDCoCBkZXZfaW5mbygmcGRldi0+ZGV2LCAiUmVnaXN0ZXJlZCBSb2NrY2hpcCBo
d3JuZ1xuIik7Cj4+PiAKPj4+IERyb3AsIGRyaXZlciBzaG91bGQgYmUgc2lsZW50IG9uIHN1Y2Nl
c3MuCj4+IAo+PiBJIHJlc3BlY3RmdWxseSBkaXNhZ3JlZS7CoCBNYW55IGRyaXZlcnMgcHJpbnQg
YSBzaW5nbGUgbGluZSB1cG9uCj4+IHN1Y2Nlc3NmdWwgcHJvYmluZywgd2hpY2ggSSBmaW5kIHZl
cnkgdXNlZnVsLsKgIEluIHRoaXMgcGFydGljdWxhcgo+PiBjYXNlLCBpdCdzIGV2ZW4gbW9yZSB1
c2VmdWwsIGJlY2F1c2Ugc29tZSBwZW9wbGUgbWF5IGJlIGNvbmNlcm5lZAo+PiBhYm91dCB0aGUg
dXNlIG9mIGhhcmR3YXJlIFRSTkdzLCBzbyB3ZSBzaG91bGQgYWN0dWFsbHkgbWFrZSBzdXJlCj4+
IHRvIGFubm91bmNlIGl0Lgo+IAo+IEkgYWdyZWUgdG8gS3J6eXN6dG9mIGhlcmUuIEZyb20gdGhl
IFBPViBvZiBhIGRyaXZlciBhdXRob3IsIHlvdXIgb3duCj4gZHJpdmVyIGlzIHZlcnkgaW1wb3J0
YW50IGFuZCB3aGlsZSB5b3Ugd3JpdGUgaXQsIGl0IHJlYWxseSBpbnRlcmVzdHMKPiAqeW91KiBp
ZiB0aGUgZHJpdmVyIGlzIHN1Y2Nlc3NmdWxseSBwcm9iZWQuIEhvd2V2ZXIgZnJvbSBhIHN5c3Rl
bQo+IHBlcnNwZWN0aXZlIHRoZXNlIGFyZSBhbm5veWluZzogVGhlcmUgYXJlIGVhc2lseSA+NTAg
ZGV2aWNlc1sxXSBvbiBhCj4gc3lzdGVtLCBpZiBhbGwgb2YgdGhlc2UgcHJpbnQgYSBtZXNzYWdl
IGluIHByb2JlLCB5b3UgaGF2ZSBsaXR0bGUgCj4gY2hhbmNlCj4gdG8gc2VlIHRoZSByZWxldmFu
dCBtZXNzYWdlcy4gRXZlbiBpZiBldmVyeSBkcml2ZXIgYXV0aG9yIHRoaW5rcyB0aGVpcgo+IHdv
cmsgaXMgYSBzcGVjaWFsIHNub3cgZmxha2UgdGhhdCBpcyB3b3J0aCBhbm5vdW5jaW5nLCBpbiBw
cmFjdGljZSAKPiB1c2Vycwo+IG9ubHkgY2FyZSBhYm91dCB5b3VyIGRyaXZlciBpZiB0aGVyZSBp
cyBhIHByb2JsZW0uIEFkZGl0aW9uYWxseSBlYWNoCj4gbWVzc2FnZSB0YWtlcyB0aW1lIGFuZCBz
byBkZWxheXMgdGhlIGJvb3QgcHJvY2Vzcy4gQWRkaXRpb25hbGx5IGVhY2gKPiBtZXNzYWdlIHRh
a2VzIHBsYWNlIGluIHRoZSBwcmludGsgcmluZyBidWZmZXIgYW5kIHNvIGVkZ2VzIG91dCBlYXJs
aWVyCj4gbWVzc2FnZXMgdGhhdCBtaWdodCBiZSBtb3JlIGltcG9ydGFudC4KCldlbGwsIEkgZG9u
J3QgZmluZCB0aG9zZSBtZXNzYWdlcyBhbm5veWluZywgZm9yIHRoZSBkcml2ZXJzIEkndmUgaGFk
Cm5vdGhpbmcgdG8gZG8gd2l0aC4gIEFsc28sIGluIG15IGV4cGVyaWVuY2UsIDk5LjklIG9mIHVz
ZXJzIGRvbid0IGNhcmUKYWJvdXQgdGhlIGtlcm5lbCBtZXNzYWdlcyBhdCBhbGwsIGJlIGl0IGV2
ZXJ5dGhpbmcgaHVua3ktZG9yeSwgb3IgYmUKaXQgc29tZXRoaW5nIHJlYWxseSB3cm9uZyBzb21l
d2hlcmUuCgo+IFNvICsxIGZvciBkcm9wcGluZyB0aGUgZGV2X2luZm8oKSBvciBhdCBsZWFzdCB1
c2luZyBkZXZfZGVidWcoKSBmb3IgaXQuCj4gCj4gQmVzdCByZWdhcmRzCj4gVXdlCj4gCj4gWzFd
IE9uIG15IGxhcHRvcCBpZiBoYXZlOgo+IAo+IAkkIGZpbmQgL3N5cy9kZXZpY2VzIC1uYW1lIGRy
aXZlciB8IHdjIC1sCj4gCTg3Cj4gCj4gICAgIE9uIGEgUmFzcGJlcnJ5cGkgaXQgeWllbGRzIDY2
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
