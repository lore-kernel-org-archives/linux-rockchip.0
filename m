Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE4AACCA47A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 06:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dFc5zguomyC393UhsnHbh5lHU9/iZuy+eLOWEpO8JJE=; b=WjsT1cVPr9+ZMh
	1M4/KGkw5E3e0VY8dipwaDWGUzsWYQVunyhxtWDOeQNPvtmcHVEElcxgsqlmVybKmu24T7ohomy1z
	c9p9xYU9muLgvApLAjHF20lh4Ox5uOoFn9Z2mI5AdfLRXfThGrCJJLYQzKmH6PDX8sLrnc1ehTsPj
	GNyIdxkhoPGqBy9ZbhJXLex3M3QTCbISCvdUvuQMx3vuuKjjr/ymRK1fiHgvzicPRcUZRxkRvYxvI
	gY7g3rgtMwpyJkQaI0KBzpCf7C4TE6NsXBUkMUdVKth3HS8rnYBiiy2iKelIVAyWNPVSQnnKqAeEK
	S6LVAqHwRhFoikCYVTJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o10Mi-007MZK-Ga; Tue, 14 Jun 2022 06:49:28 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o10ML-007MIZ-3k; Tue, 14 Jun 2022 06:49:06 +0000
Received: from beast.luon.net (unknown [IPv6:2a10:3781:2531::8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E61526601690;
	Tue, 14 Jun 2022 07:49:00 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655189341;
	bh=6JoH8pVYTDfQZg2qdKnKizfl/wjaRDGVdAibrRD+O28=;
	h=From:To:Cc:Subject:Date:From;
	b=izqkkukWVAY+3n+uXNESHk0uuXaFuw09EUGWp34ISPpwaLPzxQb8+V3DfoThHcGLB
	 jxDiEWcczKQ09txi+Mvszt1qX18hrxUWnQ1jiJCqqEZ/h990OZVo4dTUMzWQJ7vtDf
	 BqyRJba0enWnNqfPc97yoROnfEhqnZGQZjnLoWtxE4RQYW0Q6TKCm6PR/EgUIo9hOE
	 Cl/tadwPJ6YQLKsSVtjXv09a/BEaIndNrehDPPMy/98CDp1eLSHcEsbPJjDpdPDPXJ
	 9EGvItDMhxuAEYmiBY8mtAOLf6NGQi0EBdLf/DBV/JbKoEYg4oaG3gzjkivc4koPYl
	 XZdr/pVKBQrIw==
Received: by beast.luon.net (Postfix, from userid 1000)
	id 6AB894179E40; Tue, 14 Jun 2022 08:48:58 +0200 (CEST)
From: Sjoerd Simons <sjoerd@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Akash Gajjar <akash@openedev.com>,
	Alex Bee <knaerzche@gmail.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Frank Wunderlich <frank-w@public-files.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Levin Du <djw@t-chip.com.cn>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] Add support for Radxa ROCK Pi S
Date: Tue, 14 Jun 2022 08:48:54 +0200
Message-Id: <20220614064858.1445817-1-sjoerd@collabora.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_234905_369172_E3219E29 
X-CRM114-Status: GOOD (  13.11  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


This adds a device-tree for the Radxa Rock Pi S; The first patch was
originally submitted a few years back but seems to have stalled. I've
adjusted it to sort the device nodes and drop duplication of dtsi
properties. The second patch adds support for a bunch of additional
peripherals.

Changes in v2:
- Split binding documentation into its own commit

Akash Gajjar (1):
  arm64: dts: rockchip: add ROCK Pi S DTS support

Sjoerd Simons (2):
  dt-bindings: arm: rockchip: Add Radxa ROCK Pi S
  arm64: dts: rockchip: rock-pi-s add more peripherals

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 256 ++++++++++++++++++
 3 files changed, 262 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts

-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
