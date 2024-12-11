Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 441F0E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 07:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N55bVOtqu75OZOSpGahi0z7lVFVa1v56W0J1PoUu3CE=; b=vM7Vdavshl+A2qux777qxArNus
	+BnaxHuhE8XLdNzAauc0WObN2K1q4YM+Hm+jx2z81/+U/f6N4v8/+6GFHX5iG3I9uA0q+f4C8kXad
	QuCNC8CsTXgdpp8i0MrJaOGNF+aX/0eGru4fc1FneEOqcm8LF2kRBS3wPq6dDXvZnu2iECcz6tQDy
	rrt/olXEWyWacCed0u3wvdTR7DKevd+h0oU83VCZjehZEPDhPh/8Ybs0iKbdwm5J8fZmFeJ1Pe8Wf
	XbzYkiqjcAAqFfXp6NVKN0dKH4YIbiUz8xvs5M5DKGuxJfyhQxJCaCCWDWyNErShx+CcF0pfHXWbK
	QlRG2p4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGwm-0000000E1nH-1DKz;
	Wed, 11 Dec 2024 07:15:48 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGwi-0000000E1mi-48j8
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 07:15:46 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733901343;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2BpPH1yZVswMH1Wf+Y33W6T2e9E3vXeSE18Bj4y0Ye0=;
	b=TJEtEtzUYqQ65e01lVtM681qqNU2jM0jqtJAS7rK7ThybCuRlVT688yGCNBfKjfjhl2sRw
	8BuqvkjWK259jzvkHOOYxp9XERUJxHorLH0TcxZKstcUTyYAlxPwOiGGKn1QJTckJCCBH9
	HEQWOv6Eu6pSfnxtBRL9wcJohWrZkTV1zm3VZSnhy0Pi+04+wwZ4MxvOwxrmmOxI7IE66U
	uc8lIrUUzCmFNVW5FGOjPwD+V+luBLKhOaOFtKPcwHMgOBSDTWWKfhZVHOXyxik2YbUE7t
	ManjtLTHPtzovdeVn+HjHDrP6t3oYkMZxOyWX/5grq3FEiru8LIpdpR1SlKjEA==
Date: Wed, 11 Dec 2024 08:15:42 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
 andyshrk@163.com, liujianfeng1994@gmail.com, tim@feathertop.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
In-Reply-To: <699843916ED096AB+f9c38503-2cd7-4ffb-9832-494f57a21b41@radxa.com>
References: <20241211060936.57452-1-naoki@radxa.com>
 <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
 <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
 <699843916ED096AB+f9c38503-2cd7-4ffb-9832-494f57a21b41@radxa.com>
Message-ID: <63b8a250281548896755cb0496031349@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_231545_169651_FFF8B231 
X-CRM114-Status: GOOD (  11.02  )
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

T24gMjAyNC0xMi0xMSAwODowMiwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBqdXN0IEZZSSwKPiAK
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8/cT1lNTJjCgpBRkFJQ1Qs
IGl0IGlzbid0IHRvbyBsYXRlIHRvIGludHJvZHVjZSAicm9ja2NoaXAscmszNTgyIi4gOikKCj4g
T24gMTIvMTEvMjQgMTU6NDQsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+IE9uIDEyLzExLzI0IDE1
OjM2LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+PiBPbiAyMDI0LTEyLTExIDA3OjA5LCBGVUtBVU1J
IE5hb2tpIHdyb3RlOgo+Pj4+IFRoZSBSYWR4YSBST0NLIDVDIExpdGUgdXNlcyBhIGRpZmZlcmVu
dCBTb0MgKFJLMzU4MikgY29tcGFyZWQgdG8gdGhlCj4+Pj4gUmFkeGEgUk9DSyA1QyAoUkszNTg4
UzIpLCBidXQgdGhlIHR3byBhcmUgY29tcGF0aWJsZSBmcm9tIGEgc29mdHdhcmUKPj4+PiBwZXJz
cGVjdGl2ZS4KPj4+PiAKPj4+PiBGaXhlczogZGY0ZTA4YTVlZWQxICgiZHQtYmluZGluZ3M6IGFy
bTogcm9ja2NoaXA6IGFkZCBSYWR4YSBST0NLIAo+Pj4+IDVDIikKPj4+PiBTaWduZWQtb2ZmLWJ5
OiBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+Cj4+Pj4gLS0tCj4+Pj4gwqBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgfCAyICstCj4+Pj4g
wqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+PiAKPj4+
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2Nr
Y2hpcC55YW1sCj4+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jv
Y2tjaGlwLnlhbWwKPj4+PiBpbmRleCA3NTMxOTlhMTI5MjMuLjIyNTRlZTA3OTA5NCAxMDA2NDQK
Pj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlw
LnlhbWwKPj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jv
Y2tjaGlwLnlhbWwKPj4+PiBAQCAtODk1LDcgKzg5NSw3IEBAIHByb3BlcnRpZXM6Cj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcmFkeGEscm9jay01Ygo+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU4OAo+Pj4+IAo+Pj4+IC3CoMKgwqDCoMKg
IC0gZGVzY3JpcHRpb246IFJhZHhhIFJPQ0sgNUMKPj4+PiArwqDCoMKgwqDCoCAtIGRlc2NyaXB0
aW9uOiBSYWR4YSBST0NLIDVDLzVDIExpdGUKPj4+PiDCoMKgwqDCoMKgwqDCoMKgIGl0ZW1zOgo+
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHJhZHhhLHJvY2stNWMKPj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxyazM1ODhzCj4+PiAKPj4+IEkgdGhp
bmsgaXQgd291bGQgYmUgYmV0dGVyIHRvIHVzZSAicm9ja2NoaXAscmszNTgyIiBoZXJlLCB0byBh
bGxvdwo+Pj4gdXMgdG8gcG9zc2libHkgdXNlIHRoYXQgaW5mb3JtYXRpb24gbGF0ZXIuwqAgRm9y
IGV4YW1wbGUsIHdlIG1pZ2h0Cj4+PiB3YW50IHRvIGJlIGFibGUgdG8gcmVjb2duaXplIFJLMzU4
Mi1iYXNlZCBib2FyZHMgaW4gVS1Cb290IHdpdGhvdXQKPj4+IHRoZSBuZWVkIHRvIGxvb2sgaW50
byB0aGUgZS1mdXNlcyBhdCBzb21lIHBvaW50LCBmb3Igd2hpY2ggcHVycG9zZQo+Pj4gaGF2aW5n
IGEgY2xlYXIgZGVzaWduYXRvciBpbiB0aGUgRFQgd291bGQgZml0IHBlcmZlY3RseS4KPj4gCj4+
IEl0IG1heSBiZSBva2F5IHRvIGludHJvZHVjZSAicm9ja2NoaXAscmszNTgyIiwgYnV0IHJlYWRp
bmcgZS1mdXNlCj4+IGlzIHN0aWxsIHJlcXVpcmVkIGluIFUtQm9vdCBiZWNhdXNlIHdoaWNoIHVu
aXQgKGNwdSBjb3JlWCwgZ3B1LCBldGMpCj4+IGlzIGJyb2tlbiBjYW5ub3QgYmUgZGV0ZXJtaW5l
ZCB3aXRob3V0IHJlYWRpbmcgZS1mdXNlIGF0IHJ1bi10aW1lLgo+PiAKPj4+IEFzIGEgcmVtaW5k
ZXIsIHVzaW5nICJyb2NrY2hpcCxyazM1ODIiIHdvdWxkIGFsc28gcmVxdWlyZSBhIHNtYWxsCj4+
PiBhZGRpdGlvbiB0byBkcml2ZXJzL2lycWNoaXAvaXJxLWdpYy12My1pdHMuYy4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
