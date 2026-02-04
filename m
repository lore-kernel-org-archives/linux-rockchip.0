Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9375EEA7949
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 21:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X88oEF0lHJtckeM601qshU8foLcSdRc70PKzMQayZ5M=; b=ryUjsa5a32pOeU
	/iEBivYCGHbmurCoCnU+ncHDESnbiBL+JQdl1K9GwbsticQndp8x+eXJWlLP3NHEMV+Wq0/0Sycv8
	i9VYEykt0/zAvR8d2W7OXLsGtV7vz/JvvPbtcAxcoGe5d5OFfb9gV2GHSaL+RYdU21wHDCF0KV9gv
	6Xmzyh7XFY0xNccAtP8JLi+fTm408P7jbUq4UGgNyEdDjf/8KzcWeqcP3rA83frOO1d5dTFhzKURM
	2cg9fNykTQmHFs2QhtHzoQbOFnPZf+/oQc+whj4k+MEHLbLfdljdw8+92wd4KxFwd+XzJl8jRvxIh
	RBy63II+1pqPVsUk/s2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnkq8-000000097GR-2HAc;
	Wed, 04 Feb 2026 21:55:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnkq5-000000097F3-3phS;
	Wed, 04 Feb 2026 21:55:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=/XFMh8wOGIk8OtS0B2DBDV74jiHs9qoXDPf51DmnW24=; b=keup7KAvGA9+FZiipfKpK5e3Cv
	qINYcuYGtC7GaTnJwqtZ3YIlPw+ASc9VtOCmxEB7ZakuoUmdUO/8yzG3IFwQXrx7HZPuh9BAwnp3m
	Q28m1MM0fGiywdmpeQSnFObnheEV7tXnFkX8Dg6Ackta6bhM4z5BO9Ex1BU979Q3DoQ8kGnQN2w1j
	XNQkOpoItp28C463m4Nfeq+gt6doyWgLH6PmMrxTGTomzlJfXabGkd1/f/mGN3RQeBd+UgLqYPI9A
	Ha/8MXWq47pebtcHvu7vc9lKATwjjueR1Fin0Y9ktKSnn+OPYdfmbTiAIlGjFouJKuv16XTGBA/R7
	HAMmwo8Q==;
Received: from i53875ac7.versanet.de ([83.135.90.199] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vnkpv-0071Uq-7Y; Wed, 04 Feb 2026 22:54:59 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrew Lunn <andrew@lunn.ch>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 6/6] net: stmmac: rk: rk3506,
 rk3528 and rk3588 have rmii_mode in clock register
Date: Wed, 04 Feb 2026 22:54:58 +0100
Message-ID: <3238497.eGJsNajkDb@diego>
In-Reply-To: <E1vnYyB-00000007hpF-1dwK@rmk-PC.armlinux.org.uk>
References: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
 <E1vnYyB-00000007hpF-1dwK@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_135509_974472_0E48CAD0 
X-CRM114-Status: GOOD (  11.36  )
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

QW0gTWl0dHdvY2gsIDQuIEZlYnJ1YXIgMjAyNiwgMTA6MTQ6NDMgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBSdXNzZWxsIEtpbmcgKE9yYWNsZSk6Cj4gcmszNTA2LCByazM1
MjggYW5kIHJrMzU4OCBoYXZlIHRoZSBybWlpX21vZGUgYml0IGluIHRoZSBjbG9jayBHUkYKPiBy
ZWdpc3RlciByYXRoZXIgdGhhbiB0aGUgZ21hYyBHUkYgcmVnaXN0ZXIuIFByb3ZpZGUgYSBtYXNr
IGZvciB0aGlzCj4gZmllbGQgaW4gdGhlIGNsb2NrIHJlZ2lzdGVyLCBhbmQgY29udmVydCB0aGVz
ZSBTb0NzIHRvIHVzZSB0aGlzLgo+IEFkZCB0aGUgbmVjZXNzYXJ5IGNvZGUgaW4gcmtfZ21hY19w
b3dlcnVwKCkgdG8gd3JpdGUgdGhpcyBmaWVsZC4KPiAKPiBUaGlzIGFsbG93cyB1cyB0byBnZXQg
cmlkIG9mIHRoZXNlIFNvQ3Mgc2V0X3RvX3JtaWkoKSBmdW5jdGlvbi4gQXMKPiBzdWNoLCB3ZSBu
ZWVkIHRvIG1hcmsgdGhlc2UgU29DcyBhcyBzdXBwb3J0aW5nIFJNSUkgbW9kZS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBSdXNzZWxsIEtpbmcgKE9yYWNsZSkgPHJtaytrZXJuZWxAYXJtbGludXgub3Jn
LnVrPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+ClRlc3Rl
ZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gI3B4MzAscmszMzI4LHJrMzU2
OCxyazM1ODgKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
