Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5C3CC8303F
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 07:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnAuOzOGbQ9EsgojC9yVRVF5q9lYiQTdRcVy9bIq9IU=; b=GJpVizy6cAHi56
	VkmuoA07adX/CIa6BreQd8p5ifNsjOwumIW7gkCaC6XsuoyDjCP1NVbIE+wTQ7ELQwY/BaWRZ38eO
	ggPOjBXB0almJUCNzfmfdV2D8uS0D+QwHjLxjWMaxTdd1NCYirN9/wcUpFxHb1XuzcZirFYPoab7X
	dR5cNN+RmX46kpitn0ANVfb8Ld9Fm2WtY8wIkEyyRZNEQ/juFPIjxE+8umlFkgzksZRoK7tYtoA7c
	CatJwbH0Hj6cQ1AwmmspZ2hVaUj7+lrIjClki268reWEe5BruTIk0zIYPiybkkpRYH+rMoxQV1MNy
	MfQpnbE1KR7iG5+fZAzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAa0-0000000EQ7c-37mk;
	Wed, 27 Aug 2025 07:28:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAZz-0000000EQ7A-1FVG;
	Wed, 27 Aug 2025 07:28:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=EZOJWExa5qLVEsPq3j8HydiA2WaZ9eh1caYD7hcSf6o=; b=fh5TvusL9POH0ErYrS85j5qpoP
	f9u3P8OMnJtgwwKv15k83nlAYHT0R0/u19qcixrcQGk4QT3eTK4rBVINw4sPvsaFKJK2OSNlKGZ68
	PGC6RJZhSA+8x/g+UxBx0BTqCaCV2Y/W10/mkjWSy99Miau799seBDI0S7VfQUnoFLP1ydIKPziC4
	bi1wP1uW5lTit4HdLujsPNvP+D0BeZ3ebdH3sSQax3aazKldbelAE8fVkuiqIW8Q1neecLjNNqcno
	VSEd6vylNcoKmV89qB58rYUN2DYGqWEiyMyPvgtSkI1DpWJrVUiSXUX2iu/iQTtFHvazvKGtAcfuD
	iObDV4MA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAZr-00000002NEh-2IHA;
	Wed, 27 Aug 2025 07:28:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=EZOJWExa5qLVEsPq3j8HydiA2WaZ9eh1caYD7hcSf6o=; b=KerKK3pP0fv1hWcFkf5UpwwS+n
	DyQX+x1U4BG5PeUL9KWfsYEO6fuQjo/YxabrfldV/H3A2mt8I4eYKIuyAC4eO0xkUkBGwK0VGv585
	VfJseMvGcO2e0TjLYtji/No56lZU93TOZXLeXSjv8Y++0qW918oMas8lhpPQD0C6XgSVBfexzDiNc
	l6T0oulWEpXVtAplOBjGdeI/zsh+6p/65C4UrnexkWP8Mc8GzNrDa8PD1xre5axw3aDFwjsQA9Y+7
	/KGjGCtsHQtDf3+4RYdeIMp8KrYdqiy6Qj4EC3hgFn8uTgVZLt3JaBYS1DsW9MKByBNdqENelR31X
	kzLC0Vuw==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urAXL-0000X5-Vt; Wed, 27 Aug 2025 09:25:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v3 09/20] phy: rockchip-samsung-dcphy: switch to FIELD_PREP_WM16
 macro
Date: Wed, 27 Aug 2025 09:25:38 +0200
Message-ID: <5502100.jE0xQCEvom@phil>
In-Reply-To: <20250825-byeword-update-v3-9-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-9-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_082819_001380_BFCABC4F 
X-CRM114-Status: GOOD (  13.96  )
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjI5IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBwaHktcm9ja2NoaXAtc2Ftc3Vu
Zy1kY3BoeSBpcyBhY3R1YWxseSBhbiBleGVtcGxhcnkgZXhhbXBsZSwgd2hlcmUgdGhlCj4gc2lt
aWxhcml0aWVzIHRvIEZJRUxEX1BSRVAgd2VyZSBzcG90dGVkIGFuZCB0aGUgZHJpdmVyIGxvY2Fs
IG1hY3JvIGhhcwo+IHRoZSBzYW1lIHNlbWFudGljcyBhcyB0aGUgbmV3IEZJRUxEX1BSRVBfV00x
NiBod19iaXRmaWVsZC5oIG1hY3JvLgo+IAo+IFN0aWxsLCBnZXQgcmlkIG9mIEZJRUxEX1BSRVBf
SElXT1JEIG5vdyB0aGF0IGEgc2hhcmVkIGltcGxlbWVudGF0aW9uCj4gZXhpc3RzLCByZXBsYWNp
bmcgdGhlIHR3byBpbnN0YW5jZXMgb2YgaXQgd2l0aCBGSUVMRF9QUkVQX1dNMTYuIFRoaXMKPiBn
aXZlcyB1cyBzbGlnaHRseSBiZXR0ZXIgZXJyb3IgY2hlY2tpbmc7IHRoZSB2YWx1ZSBpcyBub3cg
Y2hlY2tlZCB0byBmaXQKPiBpbiAxNiBiaXRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMg
RnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1i
eTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
