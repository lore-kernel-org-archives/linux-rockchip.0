Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 963C2C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 09:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3jhbU4URy89BwcUClRvFnqj4SGFRNZOEVzeGEC/8rw=; b=ruIjOQtaFeoN8a
	5JUfrUbJWGtT3Wnn/17YCIiRXG7MH+VVCTGYaVJzGMfo95Tb44E0S4QsP834MbKI/F8+1dqb8nzi4
	9dmYjIb3Ek8x2BAL6Qk4QKAHOz3Rs6yEq6WWM7vqZcWRx5FRgFxrqs6p505Hcj28OXMfx/jH4QpMs
	XEXMad7px88EsnKnF7lyjFzGXAOhVQrmiA9ZpOFha/e2Yj+FTqV5a6NnxpvRdH3XiW3WwFtvXOlfw
	SWUvdjfKWHrm2Vh/vHuEOULZYItJ1tLBjJv8Pky/1ehyKUsCulz9SCSslSHEE8lEXc2y8zEHzO5fr
	4p+rAL13brWuWy/FLX2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4Qk-00000008JNu-41Wq;
	Mon, 04 Mar 2024 09:16:18 +0000
Received: from stravinsky.debian.org ([2001:41b8:202:deb::311:108])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4Qg-00000008JMY-0xm8;
	Mon, 04 Mar 2024 09:16:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description;
	bh=DJFmoVAm5LdfWQ0RA+KloPzYSISvtVnXmJ1KJ15LOi4=; b=mJjG1n0jLIt68iRlZ7Mdv2USCN
	Ofe4CxIHLsAd/0Aee4aDlhxw7NYQ+IopaHd68BRTkNYrkGrRrafmJc+vrqGBt+9kMxBrxTEmsE7Zm
	+pfkTlM8mMhxqRBG/tRSV4r494KwQ7AjrXUpQJtQ6NI3DFY8/PZVIaUL8o4jd3SnIQeOwap/U/XZ/
	x3k1KwBK4DrKXKr1sFoI/ilXrZSRNdCBuRRHQm980+8ODNa9noE/nNwH8yr369YVaCmPl4LIdM57s
	z47B0l1iWQmQZZaG0jSkA6ycPFH3mQ/jjEOT7tyy0K+q+5qKQLsCFahuGObbk+H0eTOt8/ClYhjVB
	YZ4hLj7Q==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128)
	(Exim 4.94.2)
	(envelope-from <ukleinek@debian.org>)
	id 1rh4QR-002lGq-7z; Mon, 04 Mar 2024 09:15:59 +0000
Message-ID: <0f7d2882-aa4b-424e-a999-45f2e18fc7f0@debian.org>
Date: Mon, 4 Mar 2024 10:15:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240304084612.711678-2-ukleinek@debian.org>
 <3082796.ktpJ11cQ8Q@diego>
Content-Language: en-US, de-DE
From: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Autocrypt: addr=ukleinek@debian.org; keydata=
 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
 MaQkyqbBqIbxBNgANCE5eTk=
In-Reply-To: <3082796.ktpJ11cQ8Q@diego>
X-Debian-User: ukleinek
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_011614_301538_024048E8 
X-CRM114-Status: GOOD (  14.71  )
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

R3V0ZW4gTW9yZ2VuIEhlaWtvLAoKT24gMDQuMDMuMjQgMTA6MDcsIEhlaWtvIFN0w7xibmVyIHdy
b3RlOgo+IEhpIFV3ZSwKPiAKPiBBbSBNb250YWcsIDQuIE3DpHJ6IDIwMjQsIDA5OjQ2OjExIENF
VCBzY2hyaWViIFV3ZSBLbGVpbmUtS8O2bmlnOgo+PiBXaGlsZSBpdCByZXF1aXJlcyB0byBoYXZl
IHRoZSByaWdodCBwaHkgZHJpdmVyIGxvYWRlZCAoaS5lLiBtb3RvcmNvbW0pCj4+IHRvIG1ha2Ug
dGhlIHBoeSBhc3NlcnRpbmcgdGhlIHJpZ2h0IGRlbGF5cywgdGhpcyBpcyBnZW5lcmFsbHkgdGhl
Cj4+IHByZWZlcnJlZCB3YXkgdG8gZGVmaW5lIHRoZSBNQUMgPC0+IFBIWSBjb25uZWN0aW9uLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dWtsZWluZWtAZGViaWFuLm9y
Zz4KPj4gLS0tCj4+IEhlbGxvLAo+Pgo+PiBBbmRyZXcgYWxyZWFkeSBwb2ludGVkIG91dCB3aGVu
IEkgcG9zdGVkIHRoZSBwYXRjaCBpbnRyb2R1Y2luZyB0aGUgZ21hYzAgbm9kZQo+PiB0aGF0IHJn
bWlpLWlkIHdvdWxkIGJlIHRoZSBwcmVmZXJyZWQgd2F5IHRvIHNldHVwIHRoaW5ncy4gQmFjayB0
aGVuIHRoaXMgZGlkbid0Cj4+IGhhcHBlbiBiZWNhdXNlIHRoaXMgY2hhbmdlIGJyb2tlIHJlY2Vw
dGlvbiBvZiBuZXR3b3JrIHBhY2tldHMuIEhvd2V2ZXIgdGhpcwo+PiBvbmx5IGhhcHBlbmQgYmVj
YXVzZSBJIGRpZG4ndCBoYXZlIHRoZSByaWdodCBwaHkgZHJpdmVyIGxvYWRlZC4KPiAKPiB0cnlp
bmcgdG8gdW5kZXJzdGFuZCBob3cgdGhlIChub3QpIGxvYWRlZCBtb2R1bGUgZml0cyBpbnRvIHRo
aXMgOi0pCj4gVGhlIG1kaW8tYnVzIGlzIHN1cHBvc2VkIHRvIHByb2JlIHRoZSBwaHkgYW5kIGxv
YWQgdGhlIGFwcHJvcHJpYXRlIG1vZHVsZS4KPiAKPiAgRnJvbSB5b3VyIGRlc2NyaXB0aW9uIGl0
IHNvdW5kcyBsaWtlIHRoZSBjb3JyZWN0IHBoeSBtb2R1bGUgbmVlZHMgdG8gYmUKPiBhY3R1YWxs
eSBsb2FkZWQ/IE9yIHdhcyB0aGF0IG1lYW50IHRvIGJlIGEgInJlcXVpcmVzIHRvIGhhdmUgdGhl
IHJpZ2h0IHBoeQo+IGRyaXZlciBjb21waWxlZCIgaW5zdGVhZD8KClRoZSBsYXR0ZXIuIGkuZS4g
d2l0aCBNT1RPUkNPTU1fUEhZPW4gaXQncyBicm9rZW4sIGJ1dCB3b3JrcyBmaW5lIHdpdGggCk1P
VE9SQ09NTV9QSFk9eSBvciA9bS4KCkJlc3QgcmVnYXJkcwpVd2UKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
