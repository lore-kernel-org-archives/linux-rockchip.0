Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1C49C27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 20:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jDGaW3iZ/8yXMQh9PAIZ1iUWG8vPwg3zQzcWuQI1OFc=; b=zA44gb0swMk9Xt49eK6zbmZ+L2
	7+SfMjJQzNHvLF9rL+4WgR+O81vjh0eDMzAx+GkKAj5Qa16Ty8413XxPV8qu1bNp6FfxIkjuhXFDB
	ppDrdiwLpS1cIIzZ+vgOeUHw/KSPCG48oKh0N8q7dWcLa1UgVLZzT+84oI2lOtuba6l/lgnu58Iyc
	aRrhKJPV/XkHqZ9l4SbwPExcaolOAdrmNxmxy9Coy6YEAl9bh6m6rSTfktWkZqrJyLD74hbED26Wn
	5v63Gktz30zLOU94Yn3YDnJACj1tquZR0THZwNMvHmqPZSgHQoTotWSMgd+LVSfgWdQHxfnyqnaMN
	H7PK+4vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL7c7-0000000CmEa-1Ry4;
	Sat, 22 Jun 2024 20:45:35 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL7c0-0000000CmBF-1i7T;
	Sat, 22 Jun 2024 20:45:30 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719089125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZAx6xJEcAp2BzU+6jCZ3gQ0T/OrV48S/ARN8pl1rVcw=;
	b=yut8vwcxjmeGy4YmsZGRxYcx0knvQfa1RRPq0L8Y2dElH+KmWFRYK+BC8x9fQp5Dji4FRj
	Rg+/zD5pw1CSr7whGYO4CIuiY/52drtn8tpCZwZVJUYYRFaLggpDMs+NiiNq8EDXW5kHQQ
	6+dEGFaVR8d95EdSohBI2qhlglNr0eeO/m5uas95//jDed91uFLFXxdgWASR2nxcdilWFt
	/EYmo1mcWO2M4wF+a/9ubAUq3MudExsN+bhjEgYXuFwbw4o0/OfTLSZ4pzaxC4/ueysE4X
	IONlh7c2olGV0pHdtZA0ZkrmwGQ7ZkuI1JQcUfmCmXu2W1ofoDs+m7umToCZ+g==
Date: Sat, 22 Jun 2024 22:45:22 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, Krzysztof
 Kozlowski <krzk@kernel.org>, Daniel Golle <daniel@makrotopia.org>, Aurelien
 Jarno <aurelien@aurel32.net>, Olivia Mackall <olivia@selenic.com>, Herbert
 Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Philipp
 Zabel <p.zabel@pengutronix.de>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Anand Moon <linux.amoon@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Martin Kaiser <martin@kaiser.cx>, Ard
 Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] hwrng: add Rockchip SoC hwrng driver
In-Reply-To: <3660160.WbyNdk4fJJ@diego>
References: <cover.1718921174.git.daniel@makrotopia.org>
 <ead26406-dd3b-491c-b6ab-11002a2db11a@kernel.org>
 <07fba45d99e9eabf9bcca71b86651074@manjaro.org> <3660160.WbyNdk4fJJ@diego>
Message-ID: <b0164e0d05d9e445a844ffdfca7a82d5@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_134528_942142_D3073D75 
X-CRM114-Status: GOOD (  23.98  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTA2LTIyIDIyOjI2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBTYW1zdGFnLCAyMi4gSnVuaSAyMDI0LCAxMjoyOTozMyBDRVNUIHNjaHJpZWIgRHJhZ2Fu
IFNpbWljOgo+PiBPbiAyMDI0LTA2LTIyIDAwOjE2LCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToK
Pj4gPiBPbiA2LzIxLzI0IDIwOjEzLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+ID4+IE9uIDIwMjQt
MDYtMjEgMTE6NTcsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+ID4+PiBPbiAyMS8wNi8y
MDI0IDAzOjI1LCBEYW5pZWwgR29sbGUgd3JvdGU6Cj4+ID4+Pj4gRnJvbTogQXVyZWxpZW4gSmFy
bm8gPGF1cmVsaWVuQGF1cmVsMzIubmV0Pgo+PiA+Pgo+PiA+PiBbc25pcF0KPj4gPj4KPj4gPj4+
PiArICAgIHBtX3J1bnRpbWVfc2V0X2F1dG9zdXNwZW5kX2RlbGF5KGRldiwKPj4gPj4+PiBSS19S
TkdfQVVUT1NVU1BFTkRfREVMQVkpOwo+PiA+Pj4+ICsgICAgcG1fcnVudGltZV91c2VfYXV0b3N1
c3BlbmQoZGV2KTsKPj4gPj4+PiArICAgIHBtX3J1bnRpbWVfZW5hYmxlKGRldik7Cj4+ID4+Pj4g
Kwo+PiA+Pj4+ICsgICAgcmV0ID0gZGV2bV9od3JuZ19yZWdpc3RlcihkZXYsICZya19ybmctPnJu
Zyk7Cj4+ID4+Pj4gKyAgICBpZiAocmV0KQo+PiA+Pj4+ICsgICAgICAgIHJldHVybiBkZXZfZXJy
X3Byb2JlKCZwZGV2LT5kZXYsIHJldCwgIkZhaWxlZCB0byByZWdpc3Rlcgo+PiA+Pj4+IFJvY2tj
aGlwIGh3cm5nXG4iKTsKPj4gPj4+PiArCj4+ID4+Pj4gKyAgICBkZXZfaW5mbygmcGRldi0+ZGV2
LCAiUmVnaXN0ZXJlZCBSb2NrY2hpcCBod3JuZ1xuIik7Cj4+ID4+Pgo+PiA+Pj4gRHJvcCwgZHJp
dmVyIHNob3VsZCBiZSBzaWxlbnQgb24gc3VjY2Vzcy4KPj4gPj4KPj4gPj4gSSByZXNwZWN0ZnVs
bHkgZGlzYWdyZWUuICBNYW55IGRyaXZlcnMgcHJpbnQgYSBzaW5nbGUgbGluZSB1cG9uCj4+ID4+
IHN1Y2Nlc3NmdWwgcHJvYmluZywgd2hpY2ggSSBmaW5kIHZlcnkgdXNlZnVsLiAgSW4gdGhpcyBw
YXJ0aWN1bGFyCj4+ID4+IGNhc2UsIGl0J3MgZXZlbiBtb3JlIHVzZWZ1bCwgYmVjYXVzZSBzb21l
IHBlb3BsZSBtYXkgYmUgY29uY2VybmVkCj4+ID4+IGFib3V0IHRoZSB1c2Ugb2YgaGFyZHdhcmUg
VFJOR3MsIHNvIHdlIHNob3VsZCBhY3R1YWxseSBtYWtlIHN1cmUKPj4gPj4gdG8gYW5ub3VuY2Ug
aXQuCj4+ID4KPj4gPiBJIGFncmVlIHRvIEtyenlzenRvZiBoZXJlLiBGcm9tIHRoZSBQT1Ygb2Yg
YSBkcml2ZXIgYXV0aG9yLCB5b3VyIG93bgo+PiA+IGRyaXZlciBpcyB2ZXJ5IGltcG9ydGFudCBh
bmQgd2hpbGUgeW91IHdyaXRlIGl0LCBpdCByZWFsbHkgaW50ZXJlc3RzCj4+ID4gKnlvdSogaWYg
dGhlIGRyaXZlciBpcyBzdWNjZXNzZnVsbHkgcHJvYmVkLiBIb3dldmVyIGZyb20gYSBzeXN0ZW0K
Pj4gPiBwZXJzcGVjdGl2ZSB0aGVzZSBhcmUgYW5ub3lpbmc6IFRoZXJlIGFyZSBlYXNpbHkgPjUw
IGRldmljZXNbMV0gb24gYQo+PiA+IHN5c3RlbSwgaWYgYWxsIG9mIHRoZXNlIHByaW50IGEgbWVz
c2FnZSBpbiBwcm9iZSwgeW91IGhhdmUgbGl0dGxlCj4+ID4gY2hhbmNlCj4+ID4gdG8gc2VlIHRo
ZSByZWxldmFudCBtZXNzYWdlcy4gRXZlbiBpZiBldmVyeSBkcml2ZXIgYXV0aG9yIHRoaW5rcyB0
aGVpcgo+PiA+IHdvcmsgaXMgYSBzcGVjaWFsIHNub3cgZmxha2UgdGhhdCBpcyB3b3J0aCBhbm5v
dW5jaW5nLCBpbiBwcmFjdGljZQo+PiA+IHVzZXJzCj4+ID4gb25seSBjYXJlIGFib3V0IHlvdXIg
ZHJpdmVyIGlmIHRoZXJlIGlzIGEgcHJvYmxlbS4gQWRkaXRpb25hbGx5IGVhY2gKPj4gPiBtZXNz
YWdlIHRha2VzIHRpbWUgYW5kIHNvIGRlbGF5cyB0aGUgYm9vdCBwcm9jZXNzLiBBZGRpdGlvbmFs
bHkgZWFjaAo+PiA+IG1lc3NhZ2UgdGFrZXMgcGxhY2UgaW4gdGhlIHByaW50ayByaW5nIGJ1ZmZl
ciBhbmQgc28gZWRnZXMgb3V0IGVhcmxpZXIKPj4gPiBtZXNzYWdlcyB0aGF0IG1pZ2h0IGJlIG1v
cmUgaW1wb3J0YW50Lgo+PiAKPj4gV2VsbCwgSSBkb24ndCBmaW5kIHRob3NlIG1lc3NhZ2VzIGFu
bm95aW5nLCBmb3IgdGhlIGRyaXZlcnMgSSd2ZSBoYWQKPj4gbm90aGluZyB0byBkbyB3aXRoLiAg
QWxzbywgaW4gbXkgZXhwZXJpZW5jZSwgOTkuOSUgb2YgdXNlcnMgZG9uJ3QgY2FyZQo+PiBhYm91
dCB0aGUga2VybmVsIG1lc3NhZ2VzIGF0IGFsbCwgYmUgaXQgZXZlcnl0aGluZyBodW5reS1kb3J5
LCBvciBiZQo+PiBpdCBzb21ldGhpbmcgcmVhbGx5IHdyb25nIHNvbWV3aGVyZS4KPj4gCj4+ID4g
U28gKzEgZm9yIGRyb3BwaW5nIHRoZSBkZXZfaW5mbygpIG9yIGF0IGxlYXN0IHVzaW5nIGRldl9k
ZWJ1ZygpIGZvciBpdC4KPiAKPiBKdXN0IGZvciAyY3QgLi4uIEknbSBhbHNvIGluIHRoZSBkb24n
dCBwcmludCB0b28gbXVjaCBjYW1wIDstKSAuCj4gV2hlbiBwYXJzaW5nIGtlcm5lbCBsb2dzIHRv
IHNlZSB3aGVyZSB0aGluZ3MgZmFpbCwgbWVzc2FnZXMganVzdAo+IHRlbGxpbmcgbWUgYWJvdXQg
c3VjZXNzZXMgbWFrZSB0aGluZ3MgbW9yZSBkaWZmaWN1bHQuCj4gCj4gU28gcmVhbGx5IHRoaXMg
bWVzc2FnZSBzaG91bGQgYmUgZHJvcHBlZCBvciBhdCBsZWFzdCBhcyBVd2Ugc3VnZ2VzdHMKPiBt
YWRlIGEgZGV2X2RiZy4KCkFzIGEgbm90ZSwgImRtZXNnIC0tbGV2ZWw9ZXJyLHdhcm4iLCBmb3Ig
ZXhhbXBsZSwgaXMgcmF0aGVyIHVzZWZ1bAp3aGVuIGl0IGNvbWVzIHRvIGZpbHRlcmluZyB0aGUg
a2VybmVsIG1lc3NhZ2VzIHRvIHNlZSBvbmx5IHRob3NlIHRoYXQKYXJlIHNpZ25zIG9mIGEgdHJv
dWJsZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
