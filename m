Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 096F3C7EE26
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 May 2023 17:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sw1/J5qsW2dVWDEzruH/1YpYpJRmQVFSmaexH3C2cMs=; b=FDrvAd0iNYkneT
	E9Khs08PR3keoO7OUlNjTJ5YdDPLsBQnHWVjAgXiE+lUwo9HMB73jSxgX3dG3prQBRdKsEIIXZ4oO
	3SzXF4jKJxwrwH6nDKqVpEayA1qPcznCYM94a8P6T5RFgTEwzhJ7b7CNYEbPrPvIpONvgRwLt3jwm
	gZvYyjUwwaIS9II9apvKjKfc+D8EOr3cPEyRg3Sp4s22K5cXJw6qU+n/U95dQQ9Gd+BMgCTvw+oFd
	8thPEnwrGmY9PVWE5sOW0xhk8olysqqJXVlVi6oPs0wUqgwPwSS79Hh2dOgU6n7irwoFw30SaVI4w
	vlUdXR5tCvRq8wQWBQ3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q19Qb-007Npu-1z;
	Mon, 22 May 2023 17:34:37 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q19QX-007Nn9-2i;
	Mon, 22 May 2023 17:34:35 +0000
Received: from jupiter.universe (dyndsl-091-248-208-162.ewe-ip-backbone.de [91.248.208.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1A51266058F2;
	Mon, 22 May 2023 18:34:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684776871;
	bh=2crkjF5hGrNF5+uW+vKBwvLEXML84W1Sv3l++t7Q9ZA=;
	h=From:To:Cc:Subject:Date:From;
	b=FredDntETk0AslrVHCX+RH6xREF10lt453u7qYeN4hyQLhYZJw4JMZx0VVkHzdndQ
	 OnrnnyGJu1TFLUTjoYP7nmih2gIzpkZodMYwAaXkEZMpUtwwzKvlmWqglhxh7Rv65J
	 zsXEHrvGl6U3+a/kGpoRjn3Jdgd1rbPAcm28WzKHsx7xzUitbnWmSkmf+1FR2YH9VF
	 ZysJ7OrbLg1Tvnji5swHCthwiKBHYH6ovufwOqbHu0AmUbyALT+IawhGawIUk6Q1s5
	 xPfkNs1fTgk31iaSpbJyErXTFQxtOgzv8Qk6gBqOlrm5KQeueqCb0DdOWEmPa58e1H
	 XBeDgviuGmdlg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8950E4805CC; Mon, 22 May 2023 19:34:29 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 0/6] Add RK3588 SATA support
Date: Mon, 22 May 2023 19:34:17 +0200
Message-Id: <20230522173423.64691-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_103434_060085_E93A114D 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
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

Hi,

This enables SATA support for RK3588.

Changes since PATCHv1:
 * https://lore.kernel.org/all/20230413182345.92557-1-sebastian.reichel@collabora.com/
 * Rebase to v6.4-rc1
 * Collect Acked-by for syscon DT binding update
 * Use ASIC clock description suggested by Serge Semin
 * Also add RBC clock (not used by RK3588)
 * Add extra patch narrowing down the allowed clocks for RK356x and RK3588

-- Sebastian

Sebastian Reichel (6):
  dt-bindings: soc: rockchip: add rk3588 pipe-phy syscon
  dt-bindings: ata: ahci: add RK3588 AHCI controller
  dt-bindings: ata: ahci: dwc: enforce rockchip clocks
  dt-bindings: phy: rockchip: rk3588 has two reset lines
  arm64: dts: rockchip: rk3588: add combo PHYs
  arm64: dts: rockchip: rk3588: add SATA support

 .../bindings/ata/snps,dwc-ahci-common.yaml    |  8 +-
 .../bindings/ata/snps,dwc-ahci.yaml           | 40 +++++++--
 .../phy/phy-rockchip-naneng-combphy.yaml      |  8 +-
 .../devicetree/bindings/soc/rockchip/grf.yaml |  1 +
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      | 44 +++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 90 +++++++++++++++++++
 6 files changed, 183 insertions(+), 8 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
