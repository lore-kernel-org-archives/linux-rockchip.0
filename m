Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55FBBCA0EFF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 06:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzJem5Z2lpbsuQnqzWkqG51R5c5xXGYx5rzxgOX2r78=; b=M2hDf9hrmeCGTA
	szWoT1liyIevDLl8zrMfpq0u+IioE42Frst/uTqs5OZZ5empC5vjpX7ztvWrNKt3kDOkSI+G+Axq7
	6gr2d+Hh3COq0FO8g5b7bBIH2vYdVbnhAMJV91aFF+63gSBkRMIsZqSkZ1XbzC1Fmmmfy3UKFCbWN
	MVppwjsXtXuQHlcEds4uPaVs4TvlZh7JY3pp2RT6wZcnNzCVgaBF0eCYeqyZmgVUpWSHxJMfxctgP
	KFPgOorjIpP/V7gcAW0JS1jzduzNL70ZiNpxbWIj+xtOnz6JgZTQRsCDA6f5aEROOvs5Ih5DPn2sD
	xIyNSSQzXReQN6BOrmyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urA4I-0000000EKSD-0Izq;
	Wed, 27 Aug 2025 06:55:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urA2d-0000000EK0i-2wD0;
	Wed, 27 Aug 2025 06:53:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1qMQE0AACesegxwD6tXbPfTg4SMY0l9zyrdfzQoBDKA=; b=g4xji6wpbNe/TG5eTCWf6MYz1S
	/QMkTOxFom1u0/Ny8jUGeXn4R9YPeXCbz6rEBErq2Pzmz39E2dG31l/n29Ccr+BelAsdFS/Fi1WpK
	X95Qd3LE1C3RHHZAHEy7GqKM47plFruYhf3c9nPgBOjO8vN2/1LDpw6JKFNdmzbxUe2aE05Fe7K/c
	8uT6d63ZGlAMAIVyXcdSApCDlIqpCxhWId3+AHnWLfibcJ7pSQeyjbvocrP1MSLYGWvusKKVazBEP
	5MjGRiO8Ngxe0awqQk/0q2J2G6ApUTzeO+RJLXbOlXOgxxg3eMlPkrYviqKCfwRwfnhFuqCLCrxi9
	AQofBN2A==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urA28-0007N1-BG; Wed, 27 Aug 2025 08:53:24 +0200
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
Subject: Re: [PATCH v3 02/20] mmc: dw_mmc-rockchip: switch to FIELD_PREP_WM16 macro
Date: Wed, 27 Aug 2025 08:53:23 +0200
Message-ID: <11595144.NyiUUSuA9g@phil>
In-Reply-To: <20250825-byeword-update-v3-2-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-2-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_235355_737073_63941E7A 
X-CRM114-Status: GOOD (  12.55  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjIyIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBTd2l0Y2ggdG8gdGhlIG5ldyBG
SUVMRF9QUkVQX1dNMTYgbWFjcm8gaW4gaHdfYml0ZmllbGQuaCwgd2hpY2ggaGFzCj4gZXJyb3Ig
Y2hlY2tpbmcuIEluc3RlYWQgb2YgcmVkZWZpbmluZyB0aGUgZHJpdmVyJ3MgSElXT1JEX1VQREFU
RSBtYWNybwo+IGluIHRoaXMgY2FzZSwgcmVwbGFjZSB0aGUgdHdvIG9ubHkgaW5zdGFuY2VzIG9m
IGl0IHdpdGggdGhlIG5ldyBtYWNybywKPiBhcyBJIGNvdWxkIHRlc3QgdGhhdCB0aGV5IHJlc3Vs
dCBpbiBhbiBlcXVpdmFsZW50IHZhbHVlLgo+IAo+IEFja2VkLWJ5OiBVbGYgSGFuc3NvbiA8dWxm
LmhhbnNzb25AbGluYXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkg
PG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0
dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgphbmQgZ29pbmcgZnJvbSAkcmFuZG9tLWhleC12YWx1
ZSB0byBHRU5NQVNLIGlzIGEgbmljZSBhZGRlZCBiZW5lZml0CgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
