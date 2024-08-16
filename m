Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CF01C52D7D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 12:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+c4LYwqQWtU7AovYNzBTmmFgZuGfycu2+q1vDDZF7d8=; b=a04X1H6gZvWrXA
	rbQAAhz3wNhg+dchITl5YXiRzpoxhFYMUvE6SE16VP6HLdXiYC5kc8MWSpw1kEHGCvcXnuCRIZ6ep
	QotdYtBtFZAoOOgFuDMKelVp/Ur59yWwb+q9glQQKTT3cbE+za+bdWrdOtV68h+linumOxOknCpVS
	AhJRh8+puP2Y/pqQyJMw38/FuaqTScgEG8IAq4voMIf85jl9m+vHijSJwAT91Pw4rblzE23ykkb3M
	oFuIqfw/1ihhtzYYX3cIRxUjX3iI/YqIUQck8nLaFtREg+S0ECr8RxLNRL3ThA86h6Qt2SYxVY47p
	x3wlGQ1RGrdJDtJL2xtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seveA-0000000Coyf-1mUL;
	Fri, 16 Aug 2024 12:01:34 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seve4-0000000CoxT-2HM6
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 12:01:32 +0000
X-QQ-mid: bizesmtp78t1723809642tdd7uda6
X-QQ-Originating-IP: gkhWFiTmuhYG3dBw1hxzXZtT1+l6fd6a3qk7M9nDLN8=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 16 Aug 2024 20:00:39 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17810008856507839528
Message-ID: <C3832E064F1E009C+b8761c4f-030f-49f0-85d0-39e6b38a7aac@radxa.com>
Date: Fri, 16 Aug 2024 21:00:38 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: defconfig: add CONFIG_LEDS_PWM_MULTICOLOR
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240816023243.487-1-naoki@radxa.com>
 <a6cf0764-508d-4929-9252-c9fb7567e3ee@kernel.org>
 <7AA0A63882CF1421+db730266-394c-4823-afa6-8595d40daa18@radxa.com>
 <1894793.tdWV9SEqCh@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <1894793.tdWV9SEqCh@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_050129_208113_DE93B2AC 
X-CRM114-Status: GOOD (  10.61  )
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

SGksCgpPbiA4LzE2LzI0IDIwOjI5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSwKPiAKPiBB
bSBGcmVpdGFnLCAxNi4gQXVndXN0IDIwMjQsIDEzOjA2OjM3IENFU1Qgc2NocmllYiBGVUtBVU1J
IE5hb2tpOgo+PiB0aGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIHJldmlldy4KPj4KPj4gYnV0
LCBJIGRlY2lkZWQgbm90IHRvIHVzZSAicHdtLWxlZHMtbXVsdGljb2xvciIgZm9yIFJhZHhhIEUy
NS4KPj4gcGxlYXNlIGlnbm9yZSB0aGlzIHBhdGNoIHNlcmllcy4KPiAKPiBXaGF0IEtyenlzenRv
ZiBtZWFudCB3YXMgcHJvYmFibHkgbW9yZSBpbiBsaW5lIG9mIHRoYXQgYSBjb21taXQgbWVzc2Fn
ZQo+IHNob3VsZCBub3QgZXhwbGFpbiB3aGF0IHRoZSBjb21taXQgZG9lcywgYmVjYXVzZSB0aGF0
IGNhbiBiZSBzZWVuIGluIHRoZQo+IGNvZGUuCj4gCj4gSW5zdGVhZCB0aGUgY29tbWl0IG1lc3Nh
Z2Ugc2hvdWxkIGV4cGxhaW4gd2h5IHRoYXQgY2hhbmdlIGlzIG5lZWRlZC4KCkkgc2VlLCBidXQg
dGhlcmUgaXMgbm8gcmVhc29uIHRvIHVzZSAicHdtLWxlZHMtbXVsdGljb2xvciIgYW55bW9yZSwg
CnBsZWFzZSBpZ25vcmUgdGhpcyBwYXRjaCBzZXJpZXMuCgpCZXN0IHJlZ2FyZHMsCgotLQpGVUtB
VU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgo+PiByZWFsbHkg
c29ycnkuCj4+Cj4+IEJlc3QgcmVnYXJkcywKPj4KPj4gLS0KPj4gRlVLQVVNSSBOYW9raQo+PiBS
YWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgo+Pgo+PiBPbiA4LzE2LzI0IDE0OjE4
LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4gT24gMTYvMDgvMjAyNCAwNDozMiwgRlVL
QVVNSSBOYW9raSB3cm90ZToKPj4+PiBlbmFibGUgInB3bS1sZWRzLW11bHRpY29sb3IiIGRyaXZl
ci4KPj4+Cj4+PiBXaHk/Cj4+Pgo+Pj4gQmVzdCByZWdhcmRzLAo+Pj4gS3J6eXN6dG9mCj4+Pgo+
Pj4KPj4KPj4KPiAKPiAKPiAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
