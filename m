Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 582EFD5B16E
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 13:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i6OpXcyxtOvgHJZIApepSuOv+dyBTnrvoa2kv46w23o=; b=Q1M+v+OD/h5BDC
	wK5AhobZrtRwGzPsgnzX1TnP6GAdrbW7wJBchF9765mBM06FSOEhCfHZYFb1fszVWhg1RiEPymor4
	4CoEJiS9isczRsixklHZKOqAH6GCCCYdWJhko/8l+KfkfnUA0GpP6WYPFGeJssjnRGaUw2F6uyP2w
	lk9Q15lfEJ8yoRElNYDvaBo8l6vutD2YWUe9zE1dw2+VENDxo00wKrTU2MhTW6IHKA9/F7ZZZiCOc
	uP2ejgV7Zik70mE+7ayNte2gOuWKQc87jBl+par2x5s0oNWxd1OqbrnxMefhrUCK01Qu5qQeK6kj0
	opzUzYgEK7UpzJcQGi6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV8yn-00000003i9k-3HxW;
	Mon, 15 Dec 2025 13:51:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV8yl-00000003i90-0VHH;
	Mon, 15 Dec 2025 13:51:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=7XorD3nH/q0HpxkWe78PdYMmjm7wEoACkmCPuGt4gac=; b=QME2266OSmEsEGF//oyeFLpVIf
	fO2WXs1H2GaSFIyygPuXbzwleO8Z+VthmWfmeqTd7hqZFz2l2mlQU/s7qbPSMCTGYSer7YsLtgKXS
	923jMrmEg4P8WGjyt2e0V6X9xh4u+FN9cngL4kSul96Il97tg9adG1CuPGrguLW/KwFxcmf6Wi4e+
	l1IhdvdLKzPNl46nB6rOPE+X16XI1S37cDC8tMkg6iQlEqyibmaLLDtH42mapyQiR5sRqqP8uDoZk
	trbOiQbdugbdFt3XsT1DrezFtKhDKUHYwUmNqM9NlM96AKAbqfisEoRZzB3GXniJcPXDEmbiGdkDr
	vUnMnLLg==;
Received: from [192.76.154.229] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vV8yf-0001VT-3m; Mon, 15 Dec 2025 14:51:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Martin=20Holovsk=C3=BD=20=28Probably=20Nothing=20s=2Er=2Eo=2E=20=29?= <mh@probably.group>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable dual 2.5GbE on Rock 5T
Date: Mon, 15 Dec 2025 14:51:03 +0100
Message-ID: <176580661874.1441131.12947657582985645446.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
References: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_055111_311228_C8E3FCA8 
X-CRM114-Status: GOOD (  12.02  )
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

Ck9uIEZyaSwgMTIgRGVjIDIwMjUgMTc6MjM6MzUgKzAxMDAsICJNYXJ0aW4gSG9sb3Zza8O9IChQ
cm9iYWJseSBOb3RoaW5nIHMuci5vLiApIiB3cm90ZToKPiBUaGUgUmFkeGEgUm9jayA1VCBib2Fy
ZCBmZWF0dXJlcyB0d28gUlRMODEyNUIgMi41R2JFIEV0aGVybmV0IGNvbnRyb2xsZXJzCj4gY29u
bmVjdGVkIHZpYSBQQ0llIGxhbmVzIHBjaWUyeDFsMCAoZmUxNzAwMDApIGFuZCBwY2llMngxbDIg
KGZlMTkwMDAwKS4KPiBDdXJyZW50bHkgb25seSBvbmUgaW50ZXJmYWNlIGlzIGZ1bmN0aW9uYWwg
YmVjYXVzZSB0aGUgUENJZSBjb250cm9sbGVyCj4gbm9kZXMgbGFjayB0aGUgbmVjZXNzYXJ5IHJl
c2V0IEdQSU8gY29uZmlndXJhdGlvbi4KPiAKPiBXaXRob3V0IHRoZSByZXNldC1ncGlvcyBwcm9w
ZXJ0eSwgdGhlIFJUTDgxMjVCIFBIWXMgcmVtYWluIGluIHJlc2V0IHN0YXRlCj4gYW5kIGFyZSBu
b3QgZW51bWVyYXRlZCBieSB0aGUgUENJZSBidXMuIFRoaXMgcmVzdWx0cyBpbiBvbmx5IG9uZSBF
dGhlcm5ldAo+IGludGVyZmFjZSBiZWluZyBkZXRlY3RlZCwgb3Igbm9uZSBhdCBhbGwgZGVwZW5k
aW5nIG9uIFUtQm9vdCBpbml0aWFsaXphdGlvbi4KPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtz
IQoKWzEvMV0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IGVuYWJsZSBkdWFsIDIuNUdiRSBvbiBSb2Nr
IDVUCiAgICAgIGNvbW1pdDogOTYwMjlmZmVjY2Y2NzdiMWU0YmFhOThmMzA5MDlhODNhNDg1YjZk
NwoKSSd2ZSByZXNvcnRlZCBib3RoIHRoZSBwY2llIHBoYW5kbGVzIGFzIHdlbGwgYXMgdGhlIHBp
bmN0cmwgZW50cmllcwpwY2llMi0wIGNvbWVzIGJlZm9yZSBwY2llMi0xIGV0YyA6LSkgLgoKQmVz
dCByZWdhcmRzLAotLSAKSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
