Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF520C44512
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 06:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Subject:Date:To:From:
	Message-Id:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=buBqmkHuB5Yy/F9u2Lx+LTyTqOxdiRjmIOV86tELZao=; b=ErDAqhORFFa8nA
	K2VZ1NuZleiZgqnnWuWkQGQCmfu0Hu8ukVnAmsEarGtswBM9FoeDQpU3jzvTZLXZi6xf2gnpfwGJF
	7m69t/55IegCXa15HstKKjsq2FS2ZZjDWbtCl9LR+qMj+DPlFE6U0o5ruUCC/HcxWprLJn/RD1MMT
	smBrFgn0yXRgbddid2IJPot5EAed7z/9hVKgvRVUtUBzx98TvxvPlN9u+CJaikZJr54OXA2a/A2i/
	qOpH+22FnJdjjlQgVDercdgBwn975f36llXBu90WpCaU7XXpBQaZiIR3Rbty026xnTaJxocQXsRF2
	oV2RgqcPbnq6vtBcI9Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkG0j-0000000GaTH-46Ff;
	Thu, 16 Jul 2026 06:55:57 +0000
Received: from gz.d.sender-sib.com ([77.32.148.26])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkG0g-0000000GaP1-46Ki
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 06:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
 q=dns/txt; s=brevo2; bh=ZQtPPVGvllEpvHbONqrSqV63ntNhTs4cpIf2KvSgDt4=;
 h=from:subject:date:to:cc:mime-version:content-transfer-encoding:list-unsubscribe:x-csa-complaints:list-unsubscribe-post:message-id:x-sib-id:feedback-id;
        b=b8wOANs1ODKGzEW7l3e3PPv0QWfuxwlGnmdSk59rqLnI4l3P5f4JLn/I6x956bCYws1WoPPCq/ZI
        aKSGS0SJa5z0WkiJsxh1bs3iGNKLXD/6eWZXRxaZezJ3jKfbLUwg8wrVoDIQnO6U5JA6vhLs3zQj
        212FpTGrfOi1tm6Vn9Kk7tTYURJz8N3RAe5mk96eYqWOoE0j+aoDeLBFVkdlHptd+zMo2f2XiewA
        Q9T/LsIpmaWY9rF2yAdAbHKC4ZUuDGVnGT5Wxk+5HbDKht3JKfs8xyeJfvzdu7NHQIdfoF7PU9De
        xLLZ5o774c3XSpNq6aeksTpHd3Oly7NVMTtORw==
Cc: <devicetree@vger.kernel.org>,  <linux-rockchip@lists.infradead.org>,  <linux-arm-kernel@lists.infradead.org>,  <linux-kernel@vger.kernel.org>
Feedback-ID: 77.32.148.26:11677070_-1:11677070:Sendinblue
X-Mailin-EID: NDg1NjE3NDAyfmxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmd%2BPDIwMjYwNzE2MDY1NTQ4LjI0NjYxOTgtMS1nYWhpbmdAZ2FoaW5nd29vLmNvbT5%2BZ3ouZC5zZW5kZXItc2liLmNvbQ%3D%3D
Message-Id: <4d0923a3-97a8-499d-b949-8d5d3443ab1c@smtp-relay.sendinblue.com>
Origin-messageId: <20260716065548.2466198-1-gahing@gahingwoo.com>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
From: "Jiaxing Hu" <gahing@gahingwoo.com>
X-CSA-Complaints: csa-complaints@eco.de
To: <heiko@sntech.de>,<robh@kernel.org>,<krzk+dt@kernel.org>,<conor+dt@kernel.org>
Date: Thu, 16 Jul 2026 18:55:46 +1200
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add ArmSoM CM5 and CM5-IO
X-sib-id: 6-EwQEaKmXScCMy6r-BkhT5jcbAme3rclwv_5U-vbJ3pa2OgEdiLn4gZMBkFE1NScIlDBW4sXMTNiESHcdc9QZxPnS2M7PvXB98LpcQR7Qz7brwCYy3ChxmBZYJTLUxR5z9z3NX1Ow3bsYJUF5wtHkYwd_k1d3T5H5V_f0SdRmvwvGnUhmr5Ow9Pzq-b0T3Flw
X-Mailer: git-send-email 2.43.0
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_235555_237768_E34069B9 
X-CRM114-Status: GOOD (  12.43  )
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


Add mainline support for the ArmSoM CM5, an RK3576 compute module, and
its CM5-IO carrier board.

Patch 1 adds the binding, patch 2 the module dtsi and the carrier dts.

The on-module YT8531 PHY has no crystal and needs the SoC 25 MHz
reference clock (clk_mac_refout). Ungating it for RGMII needs a small
dwmac-rk change sent separately to netdev [1]; the clock is optional so
this DTS applies without it.

Tested on a CM5-IO: the YT8531 is probed by the motorcomm driver and the
link comes up at 1000 Mbit/s; RK806, HYM8563, eMMC, microSD, the USB3
hub and the PCIe root complex all probe. dtbs_check is clean.

I have moved to gahing@gahingwoo.com; v1 was sent from
huhuvmb88@gmail.com. Same person.

Changes in v2 (reported by sashiko-bot on v1, thanks, plus what
dtbs_check found while fixing them):
- Type-C DP alt-mode: name the altmodes child "displayport" and make
  svid a /bits/ 16 value; drop the undocumented svid from &usbdp_phy and
  add the missing mode-switch.
- Move the FUSB302 role-switch endpoint into the connector's ports; the
  fusb302 binding does not allow a port on the device node. Rename the
  node to usb-typec@22.
- Drop the ES8388 node. It was disabled and its compatible was wrong
  (the binding wants everest,es8328). The audio claim is gone from the
  commit message too.
- Drop the unreferenced gmac0_rst, bt_reg_on and wifi_host_wake_irq
  pinctrls, and the WiFi/BT claim that went with them.
- Rename the wifi-poweren-gpio pinctrl node, it collided with
  gpio-consumer.yaml.
- Describe the PHY reset at the MDIO bus level rather than with
  snps,reset-gpios. The snps properties are deprecated, and a per-PHY
  reset-gpios is applied only after the ID scan, which is too late for a
  PHY that boots held in reset. Confirmed on hardware: per-PHY reset
  leaves the PHY dark, the bus level reset brings it up.
- I did not add vmmc-supply/vqmmc-supply to the eMMC as suggested: every
  rk3576 board upstream uses full-pwr-cycle-in-suspend without them, and
  dtbs_check does not ask for them.

[1] net: stmmac: dwmac-rk: enable the reference clock for output mode

Jiaxing Hu (2):
  dt-bindings: arm: rockchip: Add ArmSoM CM5 and CM5-IO
  arm64: dts: rockchip: Add ArmSoM CM5 and CM5-IO

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3576-armsom-cm5-io.dts     | 401 +++++++++++++
 .../boot/dts/rockchip/rk3576-armsom-cm5.dtsi  | 564 ++++++++++++++++++
 4 files changed, 973 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-armsom-cm5-io.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-armsom-cm5.dtsi

-- 
2.43.0




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
