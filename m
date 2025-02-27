Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8F0FC021BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 11:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bt6LaAJsmISpb/CQnrzv/K4mK1rPmbnqWzm8Nz8rLO8=; b=q1joc6sjavarCZ
	0pARwibQE3dNae2jkaw7WoL2q63Dr3gqFC+g2gVa2dDS6f6NaqEtNIo2Nqg7CyrOVuPw68D4I19w6
	MYs2Ny6EVV6moJJNgm9XenD5IKMnT5AE/OM9Fli0prC8oiZzr377EZqOeTAjN/jV22IeAxU9+3vGy
	WnX46+meeIsOasylysQqW+mWlXT0IfuM3MRw72p/RGsBNmKdOMLRBmM7h2oRnk1FEi9o8SQ0sN+Vf
	OGnOEr4KKVNYm5fpNhe/AzLdRFMo7F9jpa5DpeFHNF5tA5I7ZnZ2R2f683UuVwFxk70lM5WhIRWwM
	ZjLjiiEQzg2BsIjhQSSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tncHD-00000007Dhj-06V2;
	Thu, 27 Feb 2025 11:42:03 +0000
Received: from mail-m32121.qiye.163.com ([220.197.32.121])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbvI-000000079CG-3zva;
	Thu, 27 Feb 2025 11:19:26 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c65f97bb;
	Thu, 27 Feb 2025 19:19:17 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v3 00/15] rockchip: Add rk3562 SoC and evb support
Date: Thu, 27 Feb 2025 19:18:58 +0800
Message-Id: <20250227111913.2344207-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR1PTlZMGkxLSB9PSx1JGEtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
X-HM-Tid: 0a954721e05903afkunmc65f97bb
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NVE6Fjo6FzIUDQ00OEwOHgEc
	HTRPCgFVSlVKTE9LTU5OSk1LQkNPVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFISE5NNwY+
DKIM-Signature: a=rsa-sha256;
	b=BdEckSY+wUbbiwIXz/tXIGngsjrJJtvnCGpRhJcumqcHi5a1XPphTYrKpF94mYf7sCVfc6bQU1p5Cmc1EaBUKYWwF0mwJiQPRXlVKuIn9V8U6IxtcGYA6jHfymHzjLQcqsPMufF1tOa4OESA6cy9nsLx1fDpDccQcBS3fazdRyg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=N8gEIfVArZNEctX9d5QVCtuV3cHJHJINt6Qku/Lq5OM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_031925_144690_BC987C5B 
X-CRM114-Status: GOOD (  16.77  )
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
Cc: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>, ulf.hansson@linaro.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, Finley Xiao <finley.xiao@rock-chips.com>, linux-i2c@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Shresth Prasad <shresthprasad7@gmail.com>, Jamie Iles <jamie@jamieiles.com>, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, linux-watchdog@vger.kernel.org, Simona Vetter <simona@ffwll.ch>, Detlev Casanova <detlev.casanova@collabora.com>, =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, Simon Xue <xxm@rock-chips.com>, Jiri Slaby <jirislaby@kernel.org>, Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org, linux-serial@vger.kernel.org, Rob Herring <robh@kernel.org>, Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Frank Wang <frank.wang@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Mark Brown <broonie@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, linux-arm-kernel@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Riesch <michael.riesch@wolfvision.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


This patch set adds rk3562 SoC and its evb support.

I have split out patches need driver change for different subsystem.
And all the modules with dt-binding document update in this patch set
do not need any driver change. I put them together to make it clear we
have a new SoC and board to use the new compatible. Please pick up the
patch for your subsystem, or please let me know if the patch has to
send separate.

Test with GMAC, USB, PCIe, EMMC, SD Card.

This patch set is base on the patch set for rk3576 evb1 support.

V2:
https://lore.kernel.org/linux-rockchip/b4df8a73-58a2-4765-a9e4-3513cb2bc720@rock-chips.com/T/


Changes in v3:
- Rebase the change base on rk3576 pcie patches
- Updae to fix dt_binding_check fail
- update commit msg
- Collect review tag
- Update the commit message,
- remove the change for clock maxItems
- Collect reveiw tag
- Collect review tag
- Update the commit message
- Update commit message and add per device schema for clock name change
- Update the commit message and collect the Acked-by tag.
- Collect the Acked-by tag
- remove i2c/serial/spi alias
- add soc node

Changes in v2:
- Update in sort order
- remove grf in cru
- Update some properties order

Finley Xiao (2):
  arm64: dts: rockchip: add core dtsi for RK3562 Soc
  arm64: dts: rockchip: Add RK3562 evb2 devicetree

Kever Yang (13):
  dt-bindings: PCI: dwc: rockchip: Add rk3562 support
  dt-bindings: mmc: Add support for rk3562 eMMC
  dt-bindings: mmc: rockchip-dw-mshc: Add support for rk3562
  dt-bindings: i2c: i2c-rk3x: Add rk3562 support
  dt-bindings: gpu: Add rockchip,rk3562-mali compatible
  dt-bindings: watchdog: Add rk3562 compatible
  dt-bindings: spi: Add rk3562 support
  dt-bindings: serial: snps-dw-apb-uart: Add support for rk3562
  dt-bindings: usb: dwc3: Add support for rk3562
  dt-bindings: pwm: rockchip: Add rockchip,rk3562-pwm
  dt-bindings: rockchip: pmu: Add rk3562 compatible
  dt-bindings: soc: rockchip: Add rk3562 syscon compatibles
  dt-bindings: arm: rockchip: Add rk3562 evb2 board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |    2 +
 .../bindings/gpu/arm,mali-bifrost.yaml        |    1 +
 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |    1 +
 .../bindings/mmc/rockchip-dw-mshc.yaml        |    1 +
 .../bindings/mmc/snps,dwcmshc-sdhci.yaml      |    4 +-
 .../bindings/pci/rockchip-dw-pcie.yaml        |    9 +-
 .../devicetree/bindings/pwm/pwm-rockchip.yaml |    1 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    7 +
 .../devicetree/bindings/spi/spi-rockchip.yaml |    1 +
 .../bindings/usb/rockchip,dwc3.yaml           |   19 +
 .../bindings/watchdog/snps,dw-wdt.yaml        |    1 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3562-evb2-v10.dts     |  520 ++++
 .../boot/dts/rockchip/rk3562-pinctrl.dtsi     | 2352 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3562.dtsi      | 1374 ++++++++++
 17 files changed, 4297 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3562-evb2-v10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3562-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3562.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
