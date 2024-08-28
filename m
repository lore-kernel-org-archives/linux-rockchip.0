Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ACDDC5AE5A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Y33t6ztUWn3pghziXzJY9ApIFw0iAKqlHIt7vgDB6I=; b=M1H0+uRGupIzpL
	76R71feWbexZrSQUTOVyVCoEfdgzlTXCSFtElUNn2IYFjHZe9wKiU+0iPGOQMNgs9cXGG5PSFU5P1
	1Rm5g4aLyIuoJH9PHj0vFrwcpFP0QnvrTvVbViARsr+oR6uRztgBrhnouTAaU8CBgYzc1BP02tXjx
	z+ZIGbE8GAYDhHm/1wYWLDhxOFVQCycGANzZtZ9cTQsF+rYxL+V60l4BMZQmfTZJHO2oomVyh5m5Q
	R3js+C5GiZic13oGGypMyf6Lb/kVRohJaO2VJ0yiaK/JxC3GPc2OIrOCa34J5MCNxBO3c0sNqsWfn
	NB4FLzL5Fz21NVR+qp8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKJp-0000000Ftd6-0e1j;
	Wed, 28 Aug 2024 15:10:45 +0000
Received: from a7-28.smtp-out.eu-west-1.amazonses.com ([54.240.7.28])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKJl-0000000FtbG-1KHc;
	Wed, 28 Aug 2024 15:10:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724857836;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding;
	bh=/6xBr387lHpMiwXE06HG6XGKl2MHb0i9Xw/IsslGxeY=;
	b=So6GTcbvolSMtNsUCWfb8CsMbmN8o1hLN+EU3OGSCp6G6ggakxwJR+tjfj4tuvmO
	2iFphPt4sq3whGtEOFUlDZC0XFG7Ocmp3fzDtoj7lhbs4r7BBNudpIFNMLDJqIq7lFu
	OtHXlEE0J6Tsk6+nt4i25p3SEtO2U7DX6P6MnfnUV/Q38nBG6RNnpIrEVLcj9dSlOEk
	vZAgwDDjqiMUCl6Ziav3Nn/LyL7rdTuhGrwU2twVByj33MCEbtvHfh3piVEMQqcBnl5
	5WhtHmiHN9c+mQ1Yhw5bNkyd5W2pncevISM+uTneW/tx1rFB60tC0uNnFAgzibv2z6V
	C68N1PqD1w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724857836;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=/6xBr387lHpMiwXE06HG6XGKl2MHb0i9Xw/IsslGxeY=;
	b=NGAgRuxDN5KLV7xQPZrLjHKHSu36qmbsagTi0A/Jw//EHQPMd3rky8uzhqSPZjzn
	yW3h6SHcZ11Mi7D0oRMsawVkbWSuPcppzFU7IoxCqmkmivRRZFsS1gsservqYsNPHjE
	cFeO8N7rwF4vkSpAlc2aIvusOfhoxD3Echpx1ZVU=
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, 
	Andi Shyti <andi.shyti@kernel.org>, Lee Jones <lee@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Guenter Roeck <linux@roeck-us.net>, 
	Chris Morgan <macromorgan@hotmail.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, 
	Chukun Pan <amadeus@jmu.edu.cn>, 
	Muhammed Efe Cetin <efectn@protonmail.com>, 
	Andy Yan <andyshrk@163.com>, Jagan Teki <jagan@edgeble.ai>, 
	Dragan Simic <dsimic@manjaro.org>, 
	Detlev Casanova <detlev.casanova@collabora.com>, 
	Ondrej Jirman <megi@xff.cz>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Elon Zhang <zhangzj@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, 
	Liang Chen <cl@rock-chips.com>, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
	Jisheng Zhang <jszhang@kernel.org>, Jamie Iles <jamie@jamieiles.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel@collabora.com
Subject: [PATCH v3 00/11] Add device tree for ArmSoM Sige 5 board
Date: Wed, 28 Aug 2024 15:10:36 +0000
Message-ID: <010201919989e3de-60b56341-85e0-4869-89d1-362407c4f2ec-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.28-54.240.7.28
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_081041_533113_64C44D64 
X-CRM114-Status: GOOD (  15.25  )
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

The other bindings and driver implementations are in other patch sets:
- PMIC: https://lore.kernel.org/all/20240802134736.283851-1-detlev.casanova@collabora.com/ (applied on next)
- CRU: https://lore.kernel.org/all/20240822194956.918527-1-detlev.casanova@collabora.com/
- PINCTRL: https://lore.kernel.org/all/20240822195706.920567-1-detlev.casanova@collabora.com/
- PM DOMAIN: https://lore.kernel.org/all/20240814222824.3170-1-detlev.casanova@collabora.com/ (applied on next)
- DW-MMC: https://lore.kernel.org/all/20240822212418.982927-1-detlev.casanova@collabora.com/
- GMAC: https://lore.kernel.org/all/20240823141318.51201-1-detlev.casanova@collabora.com/

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

Detlev.

Detlev Casanova (11):
  dt-bindings: arm: rockchip: Add ArmSoM Sige 5
  dt-bindings: arm: rockchip: Add rk3576 compatible string to pmu.yaml
  dt-bindings: i2c: i2c-rk3x: Add rk3576 compatible
  dt-bindings: mfd: syscon: Add rk3576 QoS register compatible
  dt-bindings: serial: snps-dw-apb-uart: Add Rockchip RK3576
  dt-bindings: mmc: Add support for rk3576 eMMC
  dt-bindings: gpu: Add rockchip,rk3576-mali compatible
  dt-bindings: watchdog: Add rockchip,rk3576-wdt compatible
  spi: dt-bindings: Add rockchip,rk3576-spi compatible
  arm64: dts: rockchip: Add rk3576 SoC base DT
  arm64: dts: rockchip: Add rk3576-armsom-sige5 board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |    2 +
 .../bindings/gpu/arm,mali-bifrost.yaml        |    1 +
 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |    1 +
 .../devicetree/bindings/mfd/syscon.yaml       |    2 +
 .../bindings/mmc/snps,dwcmshc-sdhci.yaml      |   38 +-
 .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
 .../devicetree/bindings/spi/spi-rockchip.yaml |    1 +
 .../bindings/watchdog/snps,dw-wdt.yaml        |    1 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3576-armsom-sige5.dts |  659 ++
 .../boot/dts/rockchip/rk3576-pinctrl.dtsi     | 5775 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 1644 +++++
 13 files changed, 8119 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576.dtsi

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
