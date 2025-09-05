Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 280DACA1010
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 14:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ra6BpXiuXriPj8iSU2BNUb80P/0VYbWIsH2/T/J/bvw=; b=m9JijBQjvaqO5x
	/ewv0V9itbjYDL9HgBpecVxin0AKH7hXyiqJ95+OXsJg/Jg/+3kl5Emy7ajHd/bB/tztEZrE7RgEQ
	fGuxQuZhkIbcYT8Fw74tqYXoQskPXb5+hgk5kNFZsoYUwkjc4aA7BiUXV8WNOJHFLFPcdi/Pb8wB5
	4UEzqVBCAeBwE5yZotB5uIALXFqybJmfcypK4od7LjJZ2alWTnrOHXTCNEXtxRZL2E/c9wa7RWrua
	ePhr4o0NZezJ6C5/+oWH7OJADkc7pYNzEke+4LGcxLVWmesa4x2AQKRNWNvkIYwZMwzxPEFFJr5KC
	fPSRMov+AwoyZHFk76fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuXUs-00000002JxJ-3za5;
	Fri, 05 Sep 2025 14:33:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuSbZ-00000000h4U-46S7;
	Fri, 05 Sep 2025 09:19:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nOXqfCWmN5V41agEEtvIimfepPpb3P+Yh9dklxlQJFY=; b=m1PORwTqSEuHSqXJsATOHKvBAf
	6BNrLRhnvLgks1uTdOPcubsBVsYX3Fg3f+rnDxpdVS4QPex38Wyz4AWI/6jxQaQ1wDIU7/0HVNT8q
	jhNUO8rkU5/mayuTVA3DJHnkKxnD0KuzmbH1VlyPNMcJ7feEk6ADkEgMrfP+mbPNi55kfdbHCs6Vi
	2ndkqVFI752kYWgjQC8/ZqcuaQ8DzsTZobFbltiKN1joKNsyIEfBKJxxEw5uTbmr4f1BsxCeDb6GT
	RfyIulMW/oCalJQVZujrpm0IGaW9W09HIZJY6ah3QIygwFhLYvu5FwnHXCa1ZC8eoClIi6kF3Z6q7
	goxFdS7g==;
Received: from i53875bb6.versanet.de ([83.135.91.182] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uuSbO-0005d9-Gg; Fri, 05 Sep 2025 11:19:26 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kaison Deng <dkx@t-chip.com.cn>
Cc: Wayne Chou <zxf@t-chip.com.cn>, Quentin Schulz <quentin.schulz@cherry.de>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 FUKAUMI Naoki <naoki@radxa.com>, Peter Robinson <pbrobinson@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kaison Deng <dkx@t-chip.com.cn>
Subject: Re: [PATCH] arm64: dts: rockchip: Add devicetree for the ROC-RK3588-RT
Date: Fri, 05 Sep 2025 11:19:25 +0200
Message-ID: <2744084.BddDVKsqQX@diego>
In-Reply-To: <20250905090115.718622-1-dkx@t-chip.com.cn>
References: <20250905090115.718622-1-dkx@t-chip.com.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_021938_036841_A937A88A 
X-CRM114-Status: GOOD (  10.05  )
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

SGksCgpBbSBGcmVpdGFnLCA1LiBTZXB0ZW1iZXIgMjAyNSwgMTE6MDE6MTUgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBLYWlzb24gRGVuZzoKPiBUaGUgRmlyZWZseSBST0Mt
UkszNTg4LVJUIGlzIFJLMzU4OCBiYXNlZCBTQkMgZmVhdHVyaW5nOgoKT24gdGhlIHdlYnBhZ2Ug
aXQgaXMgdW5jbGVhciBhYm91dCB0aGUgc29jLCBib3RoIHJrMzU4OCBhbmQgcmszNTg4cyBhcmUK
bWVudGlvbmVkPwoKaHR0cHM6Ly9lbi50LWZpcmVmbHkuY29tL3Byb2R1Y3QvaW5kdXN0cnkvcm9j
cmszNTg4cnQKCj4gCj4gLSBURiBjYXJkIHNsb3QKPiAtIE5WTUUgMjI0MiBzb2NrZXQKPiAtIDF4
IFVTQiAzLjAgUG9ydCwgMXggVVNCIDIuMCBQb3J0LCAxeCBUeXBlYyBQb3J0Cj4gLSAxeCBIRE1J
IDIuMSBvdXQsIDF4IEhETUkgMi4wIG91dAo+IC0gMnggR2lnYWJpdCBFdGhlcm5ldCwgMXggMi41
RyBFdGhlcm5ldAo+IC0gTS4yIEUtS0VZIGZvciBFeHRlbmRlZCBXaUZJIGFuZCBCbHVldG9vbGgK
PiAtIEVTODM4OCBvbi1ib2FyZCBzb3VuZCBjb2RlYyAtIGphY2sgaW4vb3V0Cj4gLSBSVEMKPiAt
IExFRDogV09SSywgRElZCj4gLSBCVEIgY29ubmVjdG9yIGZvciBQQ2llLCBVQVJULCBVU0IsIENB
TiwgU0FSQURDLCBHUElPCj4gCj4gU2lnbmVkLW9mZi1ieTogS2Fpc29uIERlbmcgPGRreEB0LWNo
aXAuY29tLmNuPgoKeW91IGRlZmluaXRseSBuZWVkIGEgMm5kIHBhdGNoIGFkZGluZyBhbiBlbnRy
eSB0bwpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2
YWxkcy9saW51eC5naXQvdHJlZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L3JvY2tjaGlwLnlhbWwKClRoZSByZXN0IGxvb2tlZCBwcmV0dHkgZ29vZCBvbiBhIHNob3J0IGds
YW5jZSA6LSkKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
