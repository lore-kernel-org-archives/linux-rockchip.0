Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9F81C87FD2
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Jul 2025 14:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8GxT3mZv2LoV63Fi7UWT6TGjtyXcWQK40gKLMknP50=; b=xzbscuZ1nFd8Cw
	43B/LT5LN677QYPVQdpR2mcF1ejtWPJd9DhRlNaNXwcpJV8eVKve4a1w+TAD03q0wktgRKMH3BxLD
	kRR3PjUl8Ua4krQFI03NpTqrMfHUuKSIoI6A4S0glKZw95qi1yScTMz/gUrEabnND3yw07d6natD2
	Thv8FHZVduoPSurSuusHtsp989IDGqb9pMXWcfXCQGgeNGgDrZeTXcquvEuEM1Ishit0xZAKWmhcD
	2yuq0WogkUUORbuv6BjMeLZTCcJwo4ew+Kpz4LCq0Y7OkGZ4fZmt5rXQyzBCBPde8l317WaJ6dFWY
	ENNQOvVB4z4yw4f2IcFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhUBL-00000003ow7-43Ln;
	Thu, 31 Jul 2025 14:22:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhTbv-00000003jKz-2V8w;
	Thu, 31 Jul 2025 13:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=EdfR3+ghXfvid8Ak9BFhtOhrGJNHg3UqEP+sC26bPJo=; b=s2aPDoKSHYE2kKRj6gIVVD1GOV
	fcyxAWhVigRK5nmd4r39qvJYfsh15mYv+up49sLyMVgmgm7fdKeXj6Tz8jcov+sqW47LaViq+O/08
	FiCKhEKVmsqLmQ0JaxVWMq4ng6kFiYqGXXUx75iOnj6mx4t/NmSeMMj9FH9AsQb12ZZ55EQQgHLnP
	IE0IpOIQkNRTLTp0NQKMuk5DBt+odJ9HJ8FN9vLyk29Z/24LDNtQ4lKOt9lEoGZmmEAHFhbSTLMVC
	b4OYu5XIloViojkcFakmlrrMcioISbGwOtsjg2jyrZ+B2nvw7ptg8weOVx0KeeA2p+xD6aM6MZPfu
	Oz+uHF3w==;
Received: from i53875bde.versanet.de ([83.135.91.222] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uhTbQ-0008Cv-68; Thu, 31 Jul 2025 15:45:48 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v6 0/7] RK3576 thermal sensor support,
 including OTP trim adjustments
Date: Thu, 31 Jul 2025 15:45:47 +0200
Message-ID: <2664626.Lt9SDvczpP@diego>
In-Reply-To: <iafobb7h4nphjcujm34gig6vwlzfveegwewpayehb4h3tayzgv@bxpdfmhf2hfa>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
 <3560770.QJadu78ljV@diego>
 <iafobb7h4nphjcujm34gig6vwlzfveegwewpayehb4h3tayzgv@bxpdfmhf2hfa>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_064619_662315_7D6E066B 
X-CRM114-Status: GOOD (  16.32  )
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
Cc: Ye Zhang <ye.zhang@rock-chips.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>, Alexey Charkov <alchark@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>, kernel@collabora.com, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRG9ubmVyc3RhZywgMzEuIEp1bGkgMjAyNSwgMTU6Mjc6MDMgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBTZWJhc3RpYW4gUmVpY2hlbDoKPiBIaSwKPiAKPiBPbiBUaHUs
IEp1bCAzMSwgMjAyNSBhdCAxMDoxMToyM0FNICswMjAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiA+IFJpZ2h0IG5vdyB3ZSdyZSBpbiB0aGUgbWlkZGxlIG9mIHRoZSBtZXJnZS13aW5kb3cgdGhv
dWdoLCBzbyBldmVyeXRoaW5nCj4gPiBJIGFwcGx5IG5vdywgSSdkIG5lZWQgdG8gcmViYXNlIG9u
dG8gLXJjMSBpbiBzbGlnaHRseSBtb3JlIHRoYW4gYSB3ZWVrLAo+ID4gaW52YWxpZGF0aW5nIGFs
bCB0aG9zZSBuaWNlIGNvbW1pdCBoYXNoZXMgdGhhdCBlbmQgdXAgaW4gdGhlICJhcHBsaWVkIiBt
YWlscy4KPiA+IAo+ID4gU28gSSdtIHN0cnVnZ2xpbmcgd2l0aCBteXNlbGYgb24gZXZlcnkgbWVy
Z2Ugd2luZG93IGFib3V0IHRoYXQuCj4gCj4gWW91ciBhcmUgbm90IHN1cHBvc2VkIHRvIG1lcmdl
IGFueXRoaW5nIHRvIHlvdXIgZm9yLW5leHQgYnJhbmNoCj4gZHVyaW5nIHRoZSBtZXJnZSB3aW5k
b3cgYW55d2F5cy4gU2VlIGZpcnN0IHNlbnRlbmNlIG9mIFN0ZXBoZW4KPiBSb3Rod2VsbCdzIG1h
aWxzIFswXToKPgo+ID4gUGxlYXNlIGRvIG5vdCBhZGQgYW55IHY2LjE4IG1hdGVyaWFsIHRvIHlv
dXIgbGludXgtbmV4dCBpbmNsdWRlZAo+ID4gYnJhbmNoZXMgdW50aWwgYWZ0ZXIgdjYuMTctcmMx
IGhhcyBiZWVuIHJlbGVhc2VkLgoKVGhlIGdlbmVyYWwgaWRlYSBpcyBqdXN0IG1lcmdpbmcgYnV0
IHdpdGhvdXQgdXBkYXRpbmcgdGhlIC1uZXh0IGJyYW5jaCwKdGhlbiBhZnRlciAtcmMxIHJlYmFz
ZSArIGRvIG5ldyAtbmV4dC4KCkJ1dCBhcyB5b3UgcG9pbnRlZCBvdXQsIHRoaXMgaXMgYWxsIGN1
bWJlcnNvbWUgYW5kIGRvZXNuJ3Qgc2hhdmUgb2ZmIG11Y2gKZnJvbSB0aGUgYW1vdW50IG9mIHBh
dGNoZXMgd2FpdGluZywgc28gYXMgbW9zdCBvZiB0aGUgdGltZSwgSSdsbCBqdXN0IHdhaXQKZm9y
IC1yYzEgdG8gc3RhcnQgY2xlYW4gOi0pCgoKPiAKPiBbMF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjUwNzMxMTMzMzExLjFhM2UzODY3QGNhbmIuYXV1Zy5vcmcuYXUvCj4gCj4gR3Jl
ZXRpbmdzLAo+IAo+IC0tIFNlYmFzdGlhbgo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
