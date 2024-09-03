Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E010CD342A
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 15:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S97mhoBVzHJkCdpaN6dJ/u5kNrg0IC4ICJU/zQALy/s=; b=u9DjxJlVngupJd
	f/RlA1TzxIEPs6Jj61wEqot6OSf9Mm6l6/0mfP77707TVBPGAgquU9MHGiMenmBb8rWwQ+OVyC0W4
	ORZK0AHISVzdaV5wicv0fE8yHwNp0UXeGi1cTgUAgUNUFj5ghi2s5AKOLGgIYWkc4WOnjjf2iTjxq
	KGA18PbTRaFDpXAJYl0qh87bEtujPcZPDAlBNc5weN0CBd7cWhCc9x47+nVbhMmoYmBzcrureK8pz
	Omx9961RhZafRI0h4oG+YFHulS2d1VYeGODNeoiIVcOeDu6nOkeRkIM1rXqEvocCFT5SZL+y2IYao
	a1X0+IxbdNO1mY72xNgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVOS-00000000peQ-35oe;
	Tue, 03 Sep 2024 15:24:32 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVNK-00000000p9P-2d35;
	Tue, 03 Sep 2024 15:23:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725376999;
	bh=ht0TxaV7iIGaqVBtGW+zPMGOW7/Rm5OY8KYZDEHlOfQ=;
	h=From:To:Cc:Subject:Date:From;
	b=hM/08kyJN5XTH/lzXKNVdvGF+56pAyPaj1sn/VW+n0Pk+gpYjH/jq0g6k0eRcBoSE
	 hlPYf+MLE1OjB9TD+rtb321AvYFx6VNPBCdB/OvpdXxxARVgq2NviinTzfDODysAzB
	 F55VSw1YoMV9HkwSw6PQ6nl4Lzfu4ZgovmE2bkV9QA11ltI7g5XohANEDq0oPlaZOk
	 N0CxHwi9CYe2GA5lf6k4JszZuEp1P67/uM+hg/2/rOj8kiZFs258A5dQ1l5F3Grj+g
	 dfsGKNqf6atTNXQp3kbcjPyS9jb0WFaXdr8tp42TdQOJBSb5ZZqiQAIPGwSnNvTvCC
	 AhEuWDCQOLmrQ==
Received: from bootstrap.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0AD4A17E10BD;
	Tue,  3 Sep 2024 17:23:14 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ondrej Jirman <megi@xff.cz>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Elon Zhang <zhangzj@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Jamie Iles <jamie@jamieiles.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-i2c@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v4 0/9] Add device tree for ArmSoM Sige 5 board
Date: Tue,  3 Sep 2024 11:22:30 -0400
Message-ID: <20240903152308.13565-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_082322_843678_85A12E27 
X-CRM114-Status: GOOD (  15.16  )
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

Add the rk3576-armsom-sige5 device tree as well as its rk3576.dtsi base
and pinctrl information in rk3576-pinctrl.dtsi.

The other commits add DT bindings documentation for the devices that
already work with the current corresponding drivers.

Note that as is, the rockchip gpio driver needs the gpio nodes
to be children of the pinctrl node, even though this is deprecated.

When the driver supports it, they can be moved out of the pinctrl node.

The power-domain@RK3576_PD_USB is a child of power-domain@RK3576_PD_VOP.
That looks strange but it is how the hardware is, and confirmed by
Rockchip: The NOC bus of USB passes through the PD of VOP, so it relies on
VOP PD.

The other bindings have been applied on next.

Changes since v3:
- Dropped mmc dt-bindings (submitted in [2])
- Dropped syscon dt-bindings (applied in [3])
- Fix gpu interrupt names mapping 
- (Fix email headers overwriting)

Changes since v2:
- Fix LEDs in armsom dts
- mmc: Move allOf after the required block
- Remove saradc dt-binding commit (already applied)
- Remove opp-microvolt-L* fields
- Reword mali commit message
- Use rgmii-id and remove delays on gmac nodes

Changes since v1:
- Add eMMC support
- Add gpu node
- Add rtc node
- Add spi compatible dt-bindings
- Add watchdog support
- Dropped timer compatible commit (applied in [0])
- Move ethernet aliases to board dt
- Move mmio nodes to soc node
- Removed cru grf phandle
- Removed gpio aliases
- Removed grf compatibles (applied in [1])
- Removed pinctrl php-grf phandle
- Removed v2-tuning for sdcard
- Renamed clock nodes
- Renamed regulators do match regulator-vcc-<voltage>-<name>
- Renamed the rkvdec_sram node to vdec_sram to match prior generations
- Reorder fields consistently in nodes
- Use correct #power-domain-cells values

[0]: https://lore.kernel.org/all/918bb9e4-02d9-4dca-bed2-28bb123bdc10@linaro.org/
[1]: https://lore.kernel.org/all/172441646605.877570.8075942261050000.b4-ty@sntech.de/
[2]: https://lore.kernel.org/all/20240903145615.9302-1-detlev.casanova@collabora.com/
[3]: https://lore.kernel.org/all/172500660860.97285.13837050366813522297.b4-ty@kernel.org/

Detlev.

Detlev Casanova (9):
  dt-bindings: arm: rockchip: Add ArmSoM Sige 5
  dt-bindings: arm: rockchip: Add rk3576 compatible string to pmu.yaml
  dt-bindings: i2c: i2c-rk3x: Add rk3576 compatible
  dt-bindings: serial: snps-dw-apb-uart: Add Rockchip RK3576
  dt-bindings: gpu: Add rockchip,rk3576-mali compatible
  dt-bindings: watchdog: Add rockchip,rk3576-wdt compatible
  spi: dt-bindings: Add rockchip,rk3576-spi compatible
  arm64: dts: rockchip: Add rk3576 SoC base DT
  arm64: dts: rockchip: Add rk3576-armsom-sige5 board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |    2 +
 .../bindings/gpu/arm,mali-bifrost.yaml        |    1 +
 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |    1 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
 .../devicetree/bindings/spi/spi-rockchip.yaml |    1 +
 .../bindings/watchdog/snps,dw-wdt.yaml        |    1 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3576-armsom-sige5.dts |  659 ++
 .../boot/dts/rockchip/rk3576-pinctrl.dtsi     | 5775 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 1644 +++++
 11 files changed, 8091 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576.dtsi

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
