Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACBA9C48286
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Feb 2024 11:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDIfqnnR5RoTEp7xDXtYpdyol6A3n5FqZt0JUCzkBvI=; b=Ng+HUqM5ynemct
	NtJRgWwq5jAL9xgDKgoAsVrSqnerLX9Zgok9f1z7zuyp1g+lMjUSHzGJaFN24SDpN4Y4xVZfloxWV
	S+Xp4tyYQIZX0PpA7XJAYyayc3Q5l9tMbqXRpA3rjmpoIoXTNSrzJGCAzjG0wb45UX+Nt+PXNJRRm
	UFjGFgS+HmT4UtZjCawolzOn+co0J5zqHD+LkXaq6FTRgRD7/tROQZVsu0UB7UX9ARGkGRFd5+1qS
	H8YF4ohgdI9U/wfzgMxYYE1+FkoQu3KvbSk2qcgJ99g+hnpzmW8EPFYBkIerIOkEaoBTedAuAx3ly
	cLkKakkf/QZJpinUmWXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaUx-00000000e5G-2jlJ;
	Sun, 04 Feb 2024 11:17:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaUu-00000000e3U-1JT3;
	Sun, 04 Feb 2024 11:17:17 +0000
Received: from [185.175.219.2] (helo=phil.fosdem.net)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rWaUq-00051V-So; Sun, 04 Feb 2024 12:17:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-pwm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: Drop interrupts property from pwm-rockchip nodes
Date: Sun,  4 Feb 2024 12:17:09 +0100
Message-Id: <170704542195.2517832.659994399742833718.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240129113205.2453029-2-u.kleine-koenig@pengutronix.de>
References: <20240129113205.2453029-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_031716_368878_7CF216E2 
X-CRM114-Status: GOOD (  11.05  )
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

T24gTW9uLCAyOSBKYW4gMjAyNCAxMjozMjowMiArMDEwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4gVGhlIGJpbmRpbmcgZG9lc24ndCBkZWZpbmUgaW50ZXJydXB0cyBhbmQgYWRkaW5nIHN1
Y2ggYSBkZWZpbml0aW9uIHdhcwo+IHJlZnVzZWQgYmVjYXVzZSBpdCdzIHVuY2xlYXIgaG93IHRo
ZXkgc2hvdWxkIGV2ZXIgYmUgdXNlZCBhbmQgdGhlCj4gcmVsZXZhbnQgcmVnaXN0ZXJzIGFyZSBv
dXRzaWRlIHRoZSBQV00gcmFuZ2UuIFNvIGRyb3AgdGhlbSBmaXhpbmcKPiBzZXZlcmFsIGR0YnNf
Y2hlY2sgd2FybmluZ3MgbGlrZToKPiAKPiAJYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYx
MTA4LWVsZ2luLXIxLmR0YjogcHdtQDEwMjgwMDMwOiAnaW50ZXJydXB0cycgZG9lcyBub3QgbWF0
Y2ggYW55IG9mIHRoZSByZWdleGVzOiAncGluY3RybC1bMC05XSsnCj4gCWZyb20gc2NoZW1hICRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcHdtL3B3bS1yb2NrY2hpcC55YW1sIwo+
IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8xXSBBUk06IGR0czogcm9ja2NoaXA6IERy
b3AgaW50ZXJydXB0cyBwcm9wZXJ0eSBmcm9tIHB3bS1yb2NrY2hpcCBub2RlcwogICAgICBjb21t
aXQ6IGY5ODY0M2Q4ZGFmMzQ0M2UzYjQxNGE4MmQwY2IzZDc0NWY4YzhiYmMKCkJlc3QgcmVnYXJk
cywKLS0gCkhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
