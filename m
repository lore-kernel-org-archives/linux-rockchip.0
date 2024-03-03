Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F7EDC48BF6
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Mar 2024 19:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2c2sLJoaXBapzUk0fZ0tNbFmr4lwJPH6J1avb8pfDS0=; b=GS2BV6wBtjLFtYVSn+gj0U1Ekt
	4AF4Dmv9K9DnqbPXQQxo/4v4A+9Dl+deFCeDv5wTO+XdccG48jKnYACj9oa4/eSbPC22B6tTAk31Y
	s1XBt6kAz3JRhyioUgSPBO5/VKxOfIaS8PHQ+9pF0R1VceisR36ROliGyvtQY+vJF8gCbutSQ+I7f
	pFoZK/KulJeowyp6DKTDQT4pL0he86jn8xNhey+hffAkX9ydoEIdOimiay0WKFygEBdlAaTMQREPY
	iKY2Dcg4lCnwKRRsiLsoFRDS9vHWm0yMSuIum3ujh/AS+8D27fHcbyESlbf4T5OzbUy+lGJQh2x/L
	XbdEJC3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgrEF-00000006XF1-1jDU;
	Sun, 03 Mar 2024 19:10:31 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgrEC-00000006XDp-0OL5;
	Sun, 03 Mar 2024 19:10:29 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709493025;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9zsci0ipfb28kkSEvdT94LtEYGi67KuOJBD6SRMRDTM=;
	b=appIAN0WS0DzsDeQV+CUAHLw6i6dwasbBxNCU8PRK4Kj8YEVBYYqld5SqoF4dV5n6CjwVR
	vSbLLXvjfW+LiGX0BGHvnW0IgTh3fXSm8AVnALEqW727WtnINhQnpPJRdvfphd1J2LMoj0
	4Vt9nBOs7ohcUvI+6kCkWe6J6YVQjGK+v1IRFU+TVtcPHb2C4YjnmJh+D/y+vbQazkbSCl
	w85hZrMZJSeQ2WPh0KLx42+M/KKNxgQuO9OLuzGfmYRw1TrUEyD626VU2Vhb8wtjhSDVNx
	wgDsxS6b9KOkgmzlOboHHMmeE1q+m368Odiw6QCWZiJn8GmbVgWyrVP0gJ1r1A==
Date: Sun, 03 Mar 2024 20:10:25 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, Kyle Copperfield
 <kmcopper@danwin1210.me>, Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3399
In-Reply-To: <7e1d4611079375f92f6ab7d446160200@manjaro.org>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
 <0476656a-6d3d-4662-879a-1caf0efb4d9e@linaro.org>
 <fc03e6046bba49b6a4b0794412e0bac6@manjaro.org> <2157455.yIU609i1g2@diego>
 <7e1d4611079375f92f6ab7d446160200@manjaro.org>
Message-ID: <a9f7d25d3fc89fb5ea1b2c2c72fb2682@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240303_111028_316406_B4C5357B 
X-CRM114-Status: GOOD (  13.97  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTAxLTA0IDEwOjEyLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4g
T24gMjAyNC0wMS0wNCAxMDowNywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+IEFtIERvbm5lcnN0
YWcsIDQuIEphbnVhciAyMDI0LCAwOTo1NTozNSBDRVQgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4+
PiBPbiAyMDI0LTAxLTA0IDA5OjUxLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4gPiBP
biAwNC8wMS8yMDI0IDA5OjUwLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+PiA+PiBKdXN0IGNoZWNr
aW5nLCBpcyB0aGVyZSBzb21ldGhpbmcgcHJldmVudGluZyB0aGlzIHBhdGNoIGZyb20gYmVjb21p
bmcKPj4+ID4+IGFjY2VwdGVkPyAgSSdkIGFwcHJlY2lhdGUgaWYgeW91J2QgcHJvdmlkZSBzb21l
IGZlZWRiYWNrIGFuZCBsZXQgbWUKPj4+ID4+IGtub3cgaWYgdGhlcmUncyBzb21ldGhpbmcgaW4g
dGhlIHBhdGNoIHRoYXQgbmVlZHMgYWRqdXN0aW5nLgo+Pj4gPgo+Pj4gPiBNZXJnZSB3aW5kb3c/
IElzIGl0IGEgZml4PyBJZiBub3QsIHRoZSBjdXRvZmYgaXMgYXJvdW5kIHJjNS1yYzcsCj4+PiA+
IGRlcGVuZGluZyBvbiB5b3VyIFNvQyBtYWludGFpbmVyIHByZWZlcmVuY2VzLgo+Pj4gCj4+PiBB
aCwgSSBzZWUsIHRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24uICBJdCBpc24ndCBhIGJ1Z2Zp
eCwgc28gSSdsbAo+Pj4gc2VuZCB0aGUgcGF0Y2ggYWdhaW4gZHVyaW5nIHRoZSBuZXh0IG1lcmdl
IHdpbmRvdy4KPj4gCj4+IG5vIG5lZWQgdG8gcmVzZW5kLgo+PiAKPj4gVGhlIG1haW4gdGhpbmcg
aG9sZGluZyB0aGUgcGF0Y2ggYmFjayB3YXMgeG1hcyA7LSkgLgo+PiAKPj4gQnV0IGFzIEtyenlz
enRvZiB3cm90ZSwgdGhlIG1lcmdlLXdpbmRvdyBpcyB1cG9uIHVzLCBzbyBJJ2xsIHBpY2sgdGhp
cyAKPj4gdXAKPj4gZm9yIDYuOSAuCj4gCj4gQXdlc29tZSwgdGhhbmsgeW91ISA6KSAgSSdsbCBt
b3ZlIGZvcndhcmQgYW5kIHByZXBhcmUgYSBmZXcgbW9yZQo+IHNpbWlsYXIgcGF0Y2hlcyBmb3Ig
b3RoZXIgUm9ja2NoaXAgU29DcywgYWZ0ZXIgSSByZWNvdmVyIGZyb20gc29tZQo+IG5hc3R5IGZs
dSBJJ3ZlIHVuZm9ydHVuYXRlbHkgY29udHJhY3RlZC4KCkl0IHRvb2sgbWUgYSB3aGlsZSwgYnV0
IHByZXR0eSBtdWNoIHRoZSBzYW1lIHBhdGNoZXMgZm9yIHRoZSBSSzMzMjggWzFdCmFuZCB0aGUg
UkszNTZ4IFsyXSBhcmUgbm93IG9uIHRoZSBtYWlsaW5nIGxpc3QuICBQbGVhc2UsIGhhdmUgYSBs
b29rLgoKWzFdIApodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC9lNjExNzNk
ODdmNWY0MWFmODBlNmY4N2Y4ODIwY2U4ZDA2ZjdjMjBjLjE3MDk0OTExMjcuZ2l0LmRzaW1pY0Bt
YW5qYXJvLm9yZy8KWzJdIApodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8y
Mjg1ZWU0MWUxNjU4MTMwMTEyMjBmOTQ2OWUyODY5NzkyM2FhNmUwLjE3MDk0OTExMDguZ2l0LmRz
aW1pY0BtYW5qYXJvLm9yZy8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
