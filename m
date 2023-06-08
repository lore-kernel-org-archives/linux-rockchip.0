Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA31FC7EE2E
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jun 2023 16:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QJs5kdhZx28GEGhe7L3Yul3yRroV5MCUCVRuRpSnqtk=; b=t7bW49sYnkW4i5
	jUsVIxA4DA7HsHPIqAKfWzGc25bW3VivHuTGfAvdxMBIQMwhJhRgjo6tbLkSM3GOfndTcZS8SvAuI
	uQ2oQC8r6Hp7ezduy0pdl7WCDGtWlSJYdaPIDptWxsvcKYAGx47gOlg+pCvPxDxDxXcIv6PE/WdE/
	ncg4U8NHfxc3TuUJLvYPiw2QfZC1fZGxRF12EyYgcx0DRdenFWMfgGElRGA6fWqYxisvl2Iz6TV0T
	crOFHfpZ/zMA/05gip+c9SxP+YTnOVnnbkjsm7GOWYwgrtWoZvZkvTfmUPDfTRdf/xUl0E9q4UWEr
	DfD7pifDgTAAvkP/hjmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7IPS-009rTp-0L;
	Thu, 08 Jun 2023 16:22:50 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7IPO-009rQ9-1H;
	Thu, 08 Jun 2023 16:22:47 +0000
Received: from jupiter.universe (dyndsl-091-248-189-092.ewe-ip-backbone.de [91.248.189.92])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D5F2C6606F20;
	Thu,  8 Jun 2023 17:22:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686241362;
	bh=FUovyx4uZxMWc91RhE6Xo+afuqEOehrwcyAViHLU/HU=;
	h=From:To:Cc:Subject:Date:From;
	b=Yk8lAERkgxCLZNAqSBy1hIwruaRpomWHSkmnjueVD2xRurgWIKlFfR7MklkAJzcql
	 l/ccXmgzN9Ovua+guJXIfaUt9fz9BUw8i8oZF4aXiQyESB5kicYSy3xxwViHRB70iR
	 hVyVyVl4D2fuoWnJpk5THwUNvwWmEkfF5EhIcuy65zcZZBczmxWW8AfTlWcZj6ZYsi
	 emshVIjAMw6ZtlfvRvpQM45eaVaB38Nlbda/0by76tuN1QJDflWDGpK/X5RghUWZ7r
	 3Hm15WPlVce2dtRRxx8tVXorV8KQ1W4r+I2fNfwq0p0DFyqjat51PH69g/5rkz2OfH
	 ZyXjyuX98gWKQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id C848F4805CC; Thu,  8 Jun 2023 18:22:39 +0200 (CEST)
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
Subject: [PATCH v3 0/5] Add RK3588 SATA support
Date: Thu,  8 Jun 2023 18:22:33 +0200
Message-Id: <20230608162238.50078-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_092246_567327_7B592727 
X-CRM114-Status: UNSURE (   9.73  )
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

 .../bindings/ata/rockchip,dwc-ahci.yaml       | 114 ++++++++++++++++++
 .../bindings/ata/snps,dwc-ahci-common.yaml    |   8 +-
 .../bindings/ata/snps,dwc-ahci.yaml           |  17 ++-
 .../phy/phy-rockchip-naneng-combphy.yaml      |  34 +++++-
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  44 +++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  90 ++++++++++++++
 6 files changed, 298 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
