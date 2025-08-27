Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D656FCA0FF7
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JM90uTZIn7nhsBzmbRg1kS0GqagRAARXa/BCdiOSLRA=; b=ZmK6NYr7+Bdcbn
	+syb3AKRsJIxdr50yuedRXroK86qnn1vitSeXPthaP77t7mOIaYrD/Qu2qbG2CNeCeeH/TtIkbQaU
	AzVowCKgDsgOlGQwkG3LBN/qg6zpAx6LstzBSAuC6fjC4z9kdcZKk/FFsf5SgfQSbKHRnFcD0Ugls
	YK2k6uI0VfyKHj10fgqbRN1IsMM1E2LsKEv+NdjqzvWlOHZB7zgXGTQ8gAMMJCLOYsokwu6MVXOu0
	a+HiV6xAPUxuq7abce7LcHBTuqGL/tnOOFSX4wS4eep1zYSIHLjL20kOSDpgGqDV0BN1rwQjjS5+W
	y6tbVjt+1R6ukgYKVajw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAIe-0000000ENOD-0QMu;
	Wed, 27 Aug 2025 07:10:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAHw-0000000ENGq-1hvj;
	Wed, 27 Aug 2025 07:09:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OmO05LJBkK0VrGYLqc/MT3KB8ZkvEJ+xP3RyLaJt5iE=; b=by6Re0uTbU4AS3jjeZaVJBwLWw
	yOyntwSn/5Tr1y3ElBygHBgL3YfgUrpqZHKDr2vJhvO6tT0sYoIVz0lKzlBpAWVbaPU8enrdbrwCz
	S9fInrtadiZitoedzjyGxZz9CpEJZpbi9oFSvlsFE2BGrXYg8kWzxg9r6MbubHSvs32wwRPaAHlvI
	Gr8YuS8sfln8I6W2kTbuQ1vzlhd4J3kKSxgL+THbQYOMj41zk6IZFfgBY+aUfTcihKpJdTVPxHR22
	J8g8ZlRWAAEhpQgJFzcVVkcMqmlU3VahRSRtLYMdSy8XBg/hBvLg53F0gr4XcPJdn1QZbuzy1zbr6
	H/aqb7Bw==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urAHR-0007yj-9C; Wed, 27 Aug 2025 09:09:13 +0200
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
Subject: Re: [PATCH v3 05/20] drm/rockchip: lvds: switch to FIELD_PREP_WM16 macro
Date: Wed, 27 Aug 2025 09:09:12 +0200
Message-ID: <5226092.Mh6RI2rZIc@phil>
In-Reply-To: <20250825-byeword-update-v3-5-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-5-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_000944_445686_A4751C87 
X-CRM114-Status: GOOD (  11.72  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjI1IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBSZW1vdmUgcm9ja2NoaXBfbHZk
cy5oJ3Mgb3duIEhJV09SRF9VUERBVEUgbWFjcm8sIGFuZCByZXBsYWNlIGFsbAo+IGluc3RhbmNl
cyBvZiBpdCB3aXRoIGh3X2JpdGZpZWxkLmgncyBGSUVMRF9QUkVQX1dNMTYgbWFjcm8sIHdoaWNo
IGdpdmVzCj4gdXMgbW9yZSBlcnJvciBjaGVja2luZy4KPiAKPiBGb3IgdGhlIHNsaWdodGx5LWxl
c3MtdHJpdmlhbCBjYXNlIG9mIHRoZSAyLWJpdCB3aWR0aCBpbnN0YW5jZSwgdGhlCj4gcmVzdWx0
cyB3ZXJlIGNoZWNrZWQgZHVyaW5nIGRldmVsb3BtZW50IHRvIG1hdGNoIGFsbCBwb3NzaWJsZSBp
bnB1dAo+IHZhbHVlcyAoMCB0byAzLCBpbmNsdXNpdmUpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5p
Y29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+CgpSZXZp
ZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
