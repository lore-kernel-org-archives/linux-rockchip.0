Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 948A6C88CB6
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 17:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MvncN1XNeMMqFtirTfYmQtheGqbf6CwKsIWjOcWUFDg=; b=bAUbtTco4SHY/q
	Dolda/8qdDOi6RAhQP0CN52izfELi1qPfWTsZV8PZMdd3t5o8v+7xn94l7ziFxIjMIGOCTzAgmUyq
	UihrUNLxJBRxRPSa9dVTr43+4KpxxqgCUoW3gzEMDRO1ueV5PQL+E5wKg13UoIhDhWp1NVuSi5cbU
	7KV28ybvKSU9muMhjWlNxy7HV3h5eNTIwHyfnUQBqWz/iMdPF1SgCRMFPFLH9cnW85js0T2ADSzPv
	cgUp8ioo+gmRT7Dn3ZeJn3wwmZhOGMd00rB5vkRj4v+yPbM0h+m1GLEu/mZf43ZqWF8U9z1yf+kIv
	II1wXHrxwW79qLKYZqZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8l70-004idS-2c;
	Mon, 12 Jun 2023 17:13:50 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8l6w-004iZB-1E;
	Mon, 12 Jun 2023 17:13:47 +0000
Received: from jupiter.universe (dyndsl-091-248-210-131.ewe-ip-backbone.de [91.248.210.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0FFA76606ECF;
	Mon, 12 Jun 2023 18:13:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686590021;
	bh=Bf6eekQkfS+tNXR2hhMUzuVzPovEGfpI2wuTSi/+qNc=;
	h=From:To:Cc:Subject:Date:From;
	b=NKDg3R0ad4nTEofp9OPAxRwYSdVaJxwT44lcjFXKI4d7Xi+5x+bUQeGodtmYcg7lZ
	 CihWkGiV4YQGWK0XibuOsYBhPhKvBq5n2q++XkW34XRUU7hjedZvPWK45C6asQeytv
	 7HIznFxvsgFI2iSPYWq2Og73UhKwcKR99m82VmfFF9xtDaK7ErRHrShNnGe3Dv/OLq
	 BxYQbL67gBRVTOiG6Ts2iXwQgF5eUKvIU8/JItn9ZnimR5FsMTOqmWhysOgYFujqvh
	 Erp6KzRT109vU4ITvW+boUVxDRrWiJ9BODaLFbxN2cl7ZFC/CkhdyMdhf/3wftK5xL
	 wqxHgQwAIUznw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id A23304805CC; Mon, 12 Jun 2023 19:13:38 +0200 (CEST)
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
Subject: [PATCH v4 0/5] Add RK3588 SATA support
Date: Mon, 12 Jun 2023 19:13:32 +0200
Message-Id: <20230612171337.74576-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_101346_593190_0E4653A5 
X-CRM114-Status: GOOD (  11.33  )
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

Changes since PATCHv3:
 * https://lore.kernel.org/all/20230608162238.50078-1-sebastian.reichel@collabora.com/
 * Add Reviewed-by from Serge and Krzysztof to patch 1
 * Update patch 2
   - Add maxItems to 'clocks' property; without specifying minItems it's
     implied to be the same
   - Keep allOf above the properties in snps,dwc-ahci.yaml
   - Add 'sata-port@0' to list of allowed properties
   - Replace sata-port pattern property, so that it disallows using any
     sata-port nodes besides @0 to override the pattern property from the
     common binding
 * Add Reviewed-by from Krzysztof to patch 3

Changes since PATCHv2:
 * https://lore.kernel.org/all/20230522173423.64691-1-sebastian.reichel@collabora.com/
 * Drop patch 1 (applied by Heiko)
 * Update SATA DT binding to split Rockchip into its own file
 * Enforce correct resets numbers for the rk3568/rk3588 combo PHY

Changes since PATCHv1:
 * https://lore.kernel.org/all/20230413182345.92557-1-sebastian.reichel@collabora.com/
 * Rebase to v6.4-rc1
 * Collect Acked-by for syscon DT binding update
 * Use ASIC clock description suggested by Serge Semin
 * Also add RBC clock (not used by RK3588)
 * Add extra patch narrowing down the allowed clocks for RK356x and RK3588

-- Sebastian

Sebastian Reichel (5):
  dt-bindings: ata: dwc-ahci: add PHY clocks
  dt-bindings: ata: dwc-ahci: add Rockchip RK3588
  dt-bindings: phy: rockchip: rk3588 has two reset lines
  arm64: dts: rockchip: rk3588: add combo PHYs
  arm64: dts: rockchip: rk3588: add SATA support

 .../bindings/ata/rockchip,dwc-ahci.yaml       | 124 ++++++++++++++++++
 .../bindings/ata/snps,dwc-ahci-common.yaml    |   8 +-
 .../bindings/ata/snps,dwc-ahci.yaml           |  13 +-
 .../phy/phy-rockchip-naneng-combphy.yaml      |  34 ++++-
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  44 +++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  90 +++++++++++++
 6 files changed, 306 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
