Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1604BC25B04
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 18:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kbDQNbxc70mfTyk2iELFMQG4r6Oi4ZQFClP8QLvJFTY=; b=47AUgbUsHycmNi
	zRiGWu5qvWuKFQYPY7ayCKmKPk0hHoEp/QezeVHs8KZOai15kb15EfXELh56g1QLjCjUc6x3jy9rR
	ixEXfvLkpijawbDzoZj+8lu6WeS80gTnrLf6UI7qZJQP8iVCrhpHIaNb7IuBt1b2ZwQwrnAe6WBeD
	52cgeTaYa/VKCf8gpQU4Z4BLeaIzJtjGJ7cAPhISqQ1YiRmp8k8+Tf+gxiyeAmHn1pgkpgmr97ia7
	lVt8yNH/29TESMCOHZ9e5YiutRrpiMArJIZNpfjBLM0OYrC6Eaq23W3sSOCXZRST/Ufa1BtzF9T3V
	AuzHaQrguXx6xEsnhNuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5szj-00App6-Cq; Thu, 15 Dec 2022 18:30:11 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5szf-00ApmG-Tt
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 18:30:09 +0000
Received: from jupiter.universe (dyndsl-095-033-168-084.ewe-ip-backbone.de [95.33.168.84])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 365B56602C74;
	Thu, 15 Dec 2022 18:30:06 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671129006;
	bh=wV+xB70dL/rAr5vw7rOX1NxQMtNjnz1aalkQwKIFdK4=;
	h=From:To:Cc:Subject:Date:From;
	b=W4jtxJkD9DGbxWiK4ww05mPg7dOhutW6O43JRQk7hUqlTEN/SdJF9ZKygwPfF8OcC
	 oGsYWqogKundaqs7OyBheiENCMKwbprdp0jiBVdjyjipHOxKJ6KslWeJMP1W1e1StF
	 lJVvAALzaqIabTQNn8pFr/2nfgudSltmhDKDPaETqiYXvj+U+SOOcqRI/mtoj++Pa9
	 fiJIiIBhukufGXe3DVSHyp38HGU+4QVYAlKYPwiBRLgoPk0JR0kUUb4t5/EnYrz4xs
	 V2ZM1BJ6xqcQJoXHM5JITvxC7nYBZL9HG9r2AKkvGLktGwr62xoUe1yBMfmfh3lepj
	 KOj+9fCvzh5wg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4A427480119; Thu, 15 Dec 2022 19:30:03 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv7 0/7] Initial rk3588 DT
Date: Thu, 15 Dec 2022 19:29:55 +0100
Message-Id: <20221215183002.211081-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_103008_243662_FF9B67D7 
X-CRM114-Status: GOOD (  19.20  )
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

This adds initial rk3588(s) DT including three different board
devicetrees. All required driver changes have been merged into
Linus tree already. To avoid warnings from

$ make CHECK_DTBS=y rockchip/rk3588-evb1-v10.dtb \
  rockchip/rk3588-rock-5b.dtb rockchip/rk3588s-rock-5a.dtb

it is required to have dt-schema 2022.12 (older releases may
generate warnings for the ethernet nodes) and c69bffe199270c
("dt-bindings: rtc: convert hym8563 bindings to json-schema")
from rtc-next.

Changes since PATCHv6:
 * https://lore.kernel.org/all/20221214182247.79824-1-sebastian.reichel@collabora.com/
 * renamed ppi_cluster<x> to ppi_partition<x>
 * updated commit message of the third patch removing the incorrect "(single core)" and
   listing all added IP blocks.
 * removed brightness levels from EVB1 backlight; I kept the backlight node. It's the
   test case for PWM support.
 * rebase to current linus master (041fae9c105a)

Changes since PATCHv5:
 * https://lore.kernel.org/all/20221205172350.75234-1-sebastian.reichel@collabora.com/
 * modified GIC interrupts to use rk3399 style setup with two PPI partitions
 * add interrupt-names to the ARM timer node
 * add hyp-virt IRQ to the ARM timer node
 * re-add the #power-domain-cells for the power-controller sub-nodes and set to 0;
   the DT binding document requires it. I'm not sure why it was not pointed out by
   DTBS_CHECK when sending v4 and v5.

Changes since PATCHv4:
 * https://lore.kernel.org/all/20221124144928.35381-1-sebastian.reichel@collabora.com/
 * update compatible string for the PHY to provide PHY ID. Without the IDs
   provided in the firmware, the kernel tries to identify the correct driver by
   reading the ID. This fails, if the bootloader does not setup the reset GPIO,
   since the kernel only setups the reset GPIO in the PHY driver. Rock 5A with
   the default bootloader runs into this, but I also changed EVB1 since the kernel
   should not depend on bootloader configuration for this.
 * added pinctrl for PHY reset-gpios
 * drop rgmii-rxid from gmac1 node
 * added reviewed-by from Michael Risch for board DTs
 * I kept the order of the trailers (i.e. my SoB being the last), which is the usual
   order in most subsystems

Changes since PATCHv3:
 * https://lore.kernel.org/all/20221121175814.68927-1-sebastian.reichel@collabora.com/
 * update reset gpio + timings in EVB1 and Rock 5A DT to new style
 * change regulator- prefix to -regulator suffix in EVB1 and Rock 5B DTB
 * merge dt-binding update patches for EVB1, Rock 5A and Rock 5B and add Krzysztof's Ack
 * change pinctrl name "active" to "default" for all PWM nodes
 * remove aliases from rk3588s and rk3588 DTSI
 * sort includes in rk3588s.dtsi
 * add dma names for uart
 * some more property order fixes
 * remove #power-domain-cells for the power-controller sub-nodes; only the main node should be referenced
 * add dynamic-power-coefficient and #cooling-cells for all CPU cores

Changes since PATCHv2:
 * https://lore.kernel.org/all/20221115161702.163057-1-sebastian.reichel@collabora.com/
 * add minimal Radxa Rock 5B DT
 * Add aliases for i2c, spi and gpio in rk3588s.dtsi
 * Fix ethernet-phy node name and remove #phy-cells
 * Sort nodes / includes in both boards
 * Sort nodes in rk3588s.dtsi according to register address
 * add missing spi4 node in rk3588s.dtsi
 * split board specific dt-bindings into their own patches
 * add board specific mmc alias following the downstream enumeration

Changes since PATCHv1:
 * https://lore.kernel.org/all/20221108171500.99599-1-sebastian.reichel@collabora.com/
 * Drop Acked-by from Krzysztof
 * Add 'regulator-' prefix to VCC12V VCC5V0 regulators
 * Change 'Radxa Rock 5A' to 'Radxa ROCK 5 Model A' in DT binding
 * Update cover-letter (clock driver and some DT binding fixes got merged)

-- Sebastian

Christopher Obbard (1):
  arm64: dts: rockchip: Add rock-5b board

Jianqun Xu (1):
  arm64: dts: rockchip: Add rk3588 pinctrl data

Kever Yang (2):
  arm64: dts: rockchip: Add base DT for rk3588 SoC
  arm64: dts: rockchip: Add rk3588-evb1 board

Sebastian Reichel (3):
  dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
  dt-bindings: arm: rockchip: add initial rk3588 boards
  arm64: dts: rockchip: Add rock-5a board

 .../devicetree/bindings/arm/rockchip.yaml     |   15 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    3 +
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |  129 +
 .../boot/dts/rockchip/rk3588-pinctrl.dtsi     |  516 +++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   44 +
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |   58 +
 .../boot/dts/rockchip/rk3588s-pinctrl.dtsi    | 3403 +++++++++++++++++
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   73 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 1703 +++++++++
 10 files changed, 5949 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s.dtsi

-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
