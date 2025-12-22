Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95551E674B2
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 13:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGrWPbyqBcYPvTZcieRxUD5jiYZQa4kBtclDWmyuQ+U=; b=JiNdpLG227QrR5
	HUJof2OxtGkKOd7bv8ofCVYQEfLuEilnKgI2CLzeZOXR3j2EfkIDh9tP+4UCxcRPjvs2zl3lw+3GW
	TDNOSydEmut0dNPiRo5aRvS7coeFNZP/9B7uM6njX/RPxUpCYDsN4ClQ59NUIi2FJE+OgqaescB0X
	Plmn8kTGbCWuC0ESsl8sMnuhR62EqgWMnSq9Vk9avd2RfSQEmjGfEpAUPQNSvXbgBUk07k7Or3vIX
	2f7FPH8/tmKue41MlSJiOE7q/nlE7LtlZxXyEd5baRtpsUOuUn+4YsdPKjHlZGINsMoycwFZWajS+
	FlHD0hurWatAy79UzI1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXgOw-0000000DqTK-0GYh;
	Mon, 22 Dec 2025 13:56:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXgOs-0000000DqQr-2TCR;
	Mon, 22 Dec 2025 13:56:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=EF9j4Zh6hODxeJEZzwpl1vVN/ET5lq8w58TpeUPzcjU=; b=W7tEVU6gLErw90KYq1AQazMwWA
	9s9tdvm/2q9+qaPtBrb3/SEi7FAczy1LpoKf4AXSt8M3FOLZqCTjsijm8AmE82h23b/29xH0oF7Vp
	TkM4m3pT9MbUhKWTpcskmUi0sjdEDNnkfaViOdN/CSuWl28l5lL2aryR7ymCIG8PxPF2qwicJAi60
	0rfys1AGk4mNW37uJTTXrzGYNOO6N+Qy5n/Pyp6ZhBgWefbhlp+RxZ+11vTOunEYC79+gyIdepm5N
	1i5Jo/2vUBzYBflpJC7lmJZdN7AUEEiTaNWq+Vq3lX7ZbQVjX5SABnBt+yW/D2LfebaS/576Ja5S0
	e6aRyExA==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXgOn-00063E-VY; Mon, 22 Dec 2025 14:56:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	=?UTF-8?q?Rapha=C3=ABl=20Jakse?= <raphael.kernel@jakse.fr>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Bluetooth on the RockPro64 board
Date: Mon, 22 Dec 2025 14:56:30 +0100
Message-ID: <176641178738.1651325.3752551269386396461.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251130161259.9828-1-raphael.kernel@jakse.fr>
References: <20251130161259.9828-1-raphael.kernel@jakse.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_055638_627149_3CC6CF23 
X-CRM114-Status: GOOD (  10.69  )
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

Ck9uIFN1biwgMzAgTm92IDIwMjUgMTc6MTI6NTkgKzAxMDAsIFJhcGhhw6tsIEpha3NlIHdyb3Rl
Ogo+IFRoZSBSb2NrUHJvNjQgYm9hcmQgaGFzIGFuIG9wdGlvbmFsIEJDTTQzNDVDNSBCbHVldG9v
dGggZGV2aWNlIG9uIFVBUlQwLgo+IAo+IFRoaXMgcGF0Y2ggZml4ZXMgYXVkaW8gc3R1dHRlcnMg
Ynkgc2V0dGluZyBpdHMgY29ycmVjdCBtYXgtc3BlZWQgYW5kCj4gY29tcGF0aWJsZSBwcm9wZXJ0
aWVzLgo+IAo+IAoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gYXJtNjQ6IGR0czogcm9ja2NoaXA6
IEZpeCBCbHVldG9vdGggb24gdGhlIFJvY2tQcm82NCBib2FyZAogICAgICBjb21taXQ6IDljNjhh
OTQ4M2UzMWE5YWQyNWM1Mzk5YmI1ZjA2NmIyZTQ5ODBhZDUKCkJlc3QgcmVnYXJkcywKLS0gCkhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
