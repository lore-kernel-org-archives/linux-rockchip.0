Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 993BFC47073
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 09:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O/ZZ+8yXsci2ahjsXrLOS05AB8grCJ7nrQctj14WLzs=; b=aE9yvYUO/h4bjKJVPGoVZ7QzoQ
	XnoiVly736gIeM4AVKAw1PaVWDQc6iutLNmuvfakPiHZX4YVlmgfXzvE2w9bPuw8fG1ySXaluNSh6
	paZc1yp65oySH2qHwWMoqpwgDXbgB5X5vJQKGVJrDI6Nhrr8M1KlYVw2jtf/+DHe/+Zfk4e56Vu2f
	nnd4LDzP4jA3kGbI6tylSl+T2DEdvY1J8Ixvk22HwFJZ8wp3rZ1688Brhkal3grh6dT2fA4wvfT8k
	DH1M6QyPpH3cN18PP7hXR5s3cukDqw99u+Fl22zKOng7V3A4A4T1LpP6kZBZ2RTxB7TPJLewU2cZA
	V/cew3GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJmV-00DKkg-2a;
	Thu, 04 Jan 2024 09:12:51 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJmS-00DKjW-15;
	Thu, 04 Jan 2024 09:12:49 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704359566;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4SRiCSFjjtpimRPvqsP147KRAIehZL0MOp1p8t19fT8=;
	b=p53t3Y3bE0DAIiVIVG4SJuncMPbf1wwPvq7EuNYUSY+V8nqF3JkXbR8D8fMUgQYKUVsLzd
	CB1aOeNdyQIgB/UoLfWmlKrqB7DFMkCwPd3LwoqHuEvNAaF59MkHXaxUkF+9m/VJ7eHCgN
	99Pbe2Eg6y5l7dFN9JIvj2xQ4shWiqOeUE4kCtfLNcrhBJrPMgYQMmXPJrcAAGBD6o+6rk
	1EubrezEJnNecQHG6QSXFeWL4ks8PU4XEXXZffB8cJE1dEKV/svORuWdhlmSLOv2ZxKzhI
	BL2vFBRH64a2MkQFjD2uvHHL7xqJsTRp6TOcykxJ9U/XiXa4PWvNxws3b5N/vA==
Date: Thu, 04 Jan 2024 10:12:46 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, Kyle Copperfield
 <kmcopper@danwin1210.me>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3399
In-Reply-To: <2157455.yIU609i1g2@diego>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
 <0476656a-6d3d-4662-879a-1caf0efb4d9e@linaro.org>
 <fc03e6046bba49b6a4b0794412e0bac6@manjaro.org> <2157455.yIU609i1g2@diego>
Message-ID: <7e1d4611079375f92f6ab7d446160200@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_011248_529715_15282528 
X-CRM114-Status: GOOD (  14.28  )
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

T24gMjAyNC0wMS0wNCAxMDowNywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRG9ubmVyc3Rh
ZywgNC4gSmFudWFyIDIwMjQsIDA5OjU1OjM1IENFVCBzY2hyaWViIERyYWdhbiBTaW1pYzoKPj4g
T24gMjAyNC0wMS0wNCAwOTo1MSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gPiBPbiAw
NC8wMS8yMDI0IDA5OjUwLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+ID4+IEhlbGxvLAo+PiA+Pgo+
PiA+PiBKdXN0IGNoZWNraW5nLCBpcyB0aGVyZSBzb21ldGhpbmcgcHJldmVudGluZyB0aGlzIHBh
dGNoIGZyb20gYmVjb21pbmcKPj4gPj4gYWNjZXB0ZWQ/ICBJJ2QgYXBwcmVjaWF0ZSBpZiB5b3Un
ZCBwcm92aWRlIHNvbWUgZmVlZGJhY2sgYW5kIGxldCBtZQo+PiA+PiBrbm93Cj4+ID4+IGlmIHRo
ZXJlJ3Mgc29tZXRoaW5nIGluIHRoZSBwYXRjaCB0aGF0IG5lZWRzIGFkanVzdGluZy4KPj4gPgo+
PiA+IE1lcmdlIHdpbmRvdz8gSXMgaXQgYSBmaXg/IElmIG5vdCwgdGhlIGN1dG9mZiBpcyBhcm91
bmQgcmM1LXJjNywKPj4gPiBkZXBlbmRpbmcgb24geW91ciBTb0MgbWFpbnRhaW5lciBwcmVmZXJl
bmNlcy4KPj4gCj4+IEFoLCBJIHNlZSwgdGhhbmtzIGZvciB0aGUgY2xhcmlmaWNhdGlvbi4gIEl0
IGlzbid0IGEgYnVnZml4LCBzbyBJJ2xsCj4+IHNlbmQgdGhlIHBhdGNoIGFnYWluIGR1cmluZyB0
aGUgbmV4dCBtZXJnZSB3aW5kb3cuCj4gCj4gbm8gbmVlZCB0byByZXNlbmQuCj4gCj4gVGhlIG1h
aW4gdGhpbmcgaG9sZGluZyB0aGUgcGF0Y2ggYmFjayB3YXMgeG1hcyA7LSkgLgo+IAo+IEJ1dCBh
cyBLcnp5c3p0b2Ygd3JvdGUsIHRoZSBtZXJnZS13aW5kb3cgaXMgdXBvbiB1cywgc28gSSdsbCBw
aWNrIHRoaXMgCj4gdXAKPiBmb3IgNi45IC4KCkF3ZXNvbWUsIHRoYW5rIHlvdSEgOikgIEknbGwg
bW92ZSBmb3J3YXJkIGFuZCBwcmVwYXJlIGEgZmV3IG1vcmUgc2ltaWxhciAKcGF0Y2hlcyBmb3Ig
b3RoZXIgUm9ja2NoaXAgU29DcywgYWZ0ZXIgSSByZWNvdmVyIGZyb20gc29tZSBuYXN0eSBmbHUg
CkkndmUgdW5mb3J0dW5hdGVseSBjb250cmFjdGVkLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
