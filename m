Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD676C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 09:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AvbSGuieA1upqqSJ+OLEgB4m5btD3wj+nVZwvjWYqbo=; b=KuGZLNORreRNT0
	Aj9k+gUCOCSx8+Rknla4eGN7L9XniACILaGFhnUw3eEToTd142S9KVeaHTaH4gwrg64F5W4yrcHyZ
	Wpyp0sg0DQsAkmQH8VxwqJtBu066k/5KoWwEP5iqwty4KypdIJzhUzdljcDu0wfVTYe5gMUxm1y0l
	+fgCoXNw68SlDUfNB9AbG7CN0OzRRuU8k66CK5QsUv8lBsRTPZlthEUi0V5F4AtF7yMuosysGlo6+
	eEPDIwcLhnJNYAKTqzn/Zbpp+5IY/ghsTHaFCl5+5KCBZttUdIaItENgc9P83z9o6WsdXlot1FZrI
	d6FUp5U+sBnp12Ghr35A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHMZj-00DB8h-6Z; Tue, 08 Feb 2022 09:14:15 +0000
Received: from mail-m17635.qiye.163.com ([59.111.176.35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHMZA-00DAwb-5A; Tue, 08 Feb 2022 09:13:42 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17635.qiye.163.com (Hmail) with ESMTPA id 6C7A2400393;
 Tue,  8 Feb 2022 17:13:33 +0800 (CST)
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, jbx6244@gmail.com, devicetree@vger.kernel.org,
 vkoul@kernel.org, michael.riesch@wolfvision.net,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, kishon@ti.com,
 p.zabel@pengutronix.de, cl@rock-chips.com, kever.yang@rock-chips.com,
 lee.jones@linaro.org, wulf@rock-chips.com, david.wu@rock-chips.com,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH v8 0/4] Add Naneng combo PHY support for RK3568
Date: Tue,  8 Feb 2022 17:13:22 +0800
Message-Id: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUNLQkhWH0lKTUIfGB9JQ0
 pPVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6My46Ihw*Fz4MLCEQMjlKLwwp
 FAMKFBVVSlVKTU9PSEpKTUpPTk5MVTMWGhIXVQISHR4VHFUBExoUOwkUGBBWGBMSCwhVGBQWRVlX
 WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSE1NTjcG
X-HM-Tid: 0a7ed89c11e5d991kuws6c7a2400393
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_011340_445416_682AB994 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


This phy can be used as pcie-phy, usb3-phy, sata-phy or sgmii-phy.

Changes in v8:
- rename 'mode' to 'type'
- using devm_reset_control_array_get_exclusive
- move rockchip_combphy_set_mode into rockchip_combphy_init

Changes in v7:
- remove u3otg0_port_en, u3otg1_port_en and pipe_sgmii_mac_sel
- rename regs

Changes in v5:
- modify description for ssc and ext-refclk
- remove apb reset
- add rockchip_combphy_updatel()
- restyle

Changes in v4:
- restyle
- remove some minItems
- add more properties
- remove reset-names
- move #phy-cells
- add rockchip,rk3568-pipe-grf
- add rockchip,rk3568-pipe-phy-grf
- add devm_reset_control_array_get()
- remove clk structure
- change refclk DT parse
- change dev_err message
- add dot to phrase
- add ext_refclk variable
- add enable_ssc variable
- rename rockchip_combphy_param_write
- remove param_read
- replace rockchip-naneng-combphy driver name
- rename node name

Changes in v3:
- Using api devm_reset_control_get_optional_exclusive and dev_err_probe.
- Remove apb_rst.
- Redefine registers address.
- Move pipe_phy_grf0 to rk3568.dtsi

Changes in v2:
- Fix dtschema/dtc warnings/errors
- Using api devm_platform_get_and_ioremap_resource.
- Modify rockchip_combphy_set_Mode.
- Add some PHY registers definition.
- Move phy0 to rk3568.dtsi

Johan Jonker (1):
  dt-bindings: soc: grf: add naneng combo phy register compatible

Yifeng Zhao (3):
  dt-bindings: phy: rockchip: Add Naneng combo PHY bindings
  phy: rockchip: add naneng combo phy for RK3568
  arm64: dts: rockchip: add naneng combo phy nodes for rk3568

 .../phy/phy-rockchip-naneng-combphy.yaml      | 109 ++++
 .../devicetree/bindings/soc/rockchip/grf.yaml |   2 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  21 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  47 ++
 drivers/phy/rockchip/Kconfig                  |   8 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../rockchip/phy-rockchip-naneng-combphy.c    | 581 ++++++++++++++++++
 7 files changed, 769 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
