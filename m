Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84394E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 13:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UbFcVUMkyuxzOWbEgiDNAln6J5J2o5vLhPWvnbt+xso=; b=uVZtnKE1D0mfTujSK+6XtcELk/
	JLfxz4AjlOs/zg8pwb2f4TCdH0X0n6ZJwfIX7ANVIB9WTuQp363/E5TMLrscZ8WTUMSe1p8c+qfCQ
	q1PKnNEsYD+adlZZE7X4e9lYSeZxMX3C3Xh3l1p5a2pTIh9boYEp4ZvVaw7678RMn8hVjAl2C8T6h
	G6nYM00W5hGLVlAcH8idOajsleO6lOIWY84q20/tBwG02s4miEXoFS3WoqW8CZVyrCe9RkQvG/IXf
	Kxj7wuQmbCXfbcmCg9Zy9TzAZCCoRVygx2F60cbB7/CqF1Hy2nwh9HWksvp8LnG+ktZ/QnTZoeNzH
	99Ihd2ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAj5-00000000KB6-1cvG;
	Fri, 27 Dec 2024 13:50:03 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAht-00000000K6F-3IFg;
	Fri, 27 Dec 2024 13:48:51 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735307325;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7oJjYH7bgS+QFow4qMLvNMV6zoSmn6Juy4ntLS2AaGU=;
	b=TPadfI18X03zvThxxk2iB4DyrpTdEaBg8yab/MqORphm0PBfbP5LNbrgwzZq3W9smGa7rf
	RENZKNlbGlu35FjM4t3CBzkKN6+bTW+gblbUdVkWVlZyBzFJPb+r/hO9uMaTrTgNa94KaH
	lRpv/2CK4Maw+gttMyGylXCUngpq30+bgIvek6PjurMmK2MKcsPLD3CtLgb37BTSg+z6UG
	tqRJkpFuLO8JFFcTPs1wMBezdn3n33tu7wLSEVMRgZCeG0DtpklQFtNWiqKCZmDFk9Eebj
	LzmKFFasFoZ6djY8Ciftjq1fL6dQJs1CMlji8ZIE5pRp0EePGN6Pj6Jf1BLsNg==
Date: Fri, 27 Dec 2024 14:48:44 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: Add Rockchip RK3588M
In-Reply-To: <20241227133420.169714-1-jagan@edgeble.ai>
References: <20241227133420.169714-1-jagan@edgeble.ai>
Message-ID: <8f40821508fde291aab01674618c0a2c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_054849_988014_2D3A5EBA 
X-CRM114-Status: GOOD (  16.36  )
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

SGVsbG8gSmFnYW4sCgpQbGVhc2Ugc2VlIGEgY29tbWVudCBiZWxvdy4KCk9uIDIwMjQtMTItMjcg
MTQ6MzQsIEphZ2FuIFRla2kgd3JvdGU6Cj4gUm9ja2NoaXAgUkszNTg4TSBpcyB0aGUgYXV0b21v
dGl2ZS1ncmFkZSB2ZXJzaW9uIG9mIFJLMzU4OCBTb0MgYW5kCj4gaXMgb3BlcmF0ZWQgd2l0aMKg
LTQwIMKwQyB0byArODUgwrBDIHRlbXBhcmF0dXJlLgo+IAo+IEFkZCByazM1ODhtIHNwZWNpZmlj
IGR0c2kgZm9yIGFkZGluZyByazM1ODhtIHNwZWNpZmljIG9wZXJhdGluZyBwb2ludHMKPiBhbmQg
b3RoZXIgY2hhbmdlcyB0byBiZSBhZGQgaW4gZnV0dXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGVkZ2VibGUuYWk+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4bS5kdHNpIHwgNyArKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4bS5kdHNpCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4bS5kdHNpCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OG0uZHRzaQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4w
YmJlZWUzOTlhNjMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODhtLmR0c2kKPiBAQCAtMCwwICsxLDcgQEAKPiArLy8gU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4gKy8qCj4gKyAqIENvcHlyaWdodCAoYykg
MjAyMiBSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZC4KPiArICoKPiArICovCj4gKwo+ICsj
aW5jbHVkZSAicmszNTg4LWV4dHJhLmR0c2kiCgpJIGRvbid0IHRoaW5rIHdlIG5lZWQgb3Igd2Fu
dCBhIHNlcGFyYXRlIHJrMzU4OG0uZHRzaSBmaWxlIGZvciB0aGlzCnB1cnBvc2UsIHVubGVzcyB0
aGUgUkszNTg4TSB2YXJpYW50IGFjdHVhbGx5IGRpZmZlcnMgZnJvbSB0aGUgcmVndWxhcgpSSzM1
ODggdmFyaWFudCBmcm9tIHRoZSBzb2Z0d2FyZSBzdGFuZHBvaW50LiAgVGhlIGxhdHRlciBpcyBh
bHJlYWR5CmRlc2NyaWJlZCBpbiByazM1ODguZHRzaSwgc28gaXQgc2hvdWxkIGp1c3QgYmUgaW5j
bHVkZWQgaW4gdGhlIG5ldwpib2FyZCBkdHMoaSkgZmlsZS4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
