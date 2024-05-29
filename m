Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5264C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jlyw8ZHYCBd33cc1QQmast/aOU1JS5GwFT1JU7o6dw4=; b=m8qR1qvj6/wt08
	HoDxAyJCkSan86kQ3S65ebxuBZm3xeVoVmeQnWopJNRoB9uq/BTA+h2HminqnOHmQw9D34+eQP427
	PAnsLkV3NkMWSIJC59QZFFAgp3lnTh6FTjwAfHplnrEVB4sm9boy10tdmBLvr4zBVxL4b3JqTBmca
	sslZn1IDVoNohr94o0yzGkjSJ5yjkgc2bWIzXu2BHxzAAIKiK+NpiohV2w5mc6lIe9Z6iDRzj9WZp
	yUFdbe3GBikIIvo6qSloZeAjUeds8W02j29u7HW3KyrI7iS7cvBdDIENNdn2Qi3pEZclhqzgxwI8x
	ey4OTmzJiiYi9O6iZWOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEhJ-00000003Oxo-1SBQ;
	Wed, 29 May 2024 08:30:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEhF-00000003Ov1-1L2n
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:30:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1A711626FC;
	Wed, 29 May 2024 08:30:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AF23C2BD10;
	Wed, 29 May 2024 08:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971407;
	bh=LO909Qkb49dF2RDbiXWZUtB58HFe23RYE1wbMe1vcLI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=cBw9VvBcV1o5536nQZc+jpLoTRiQB5iWrsAWafOAX/+iRPbfpmCEevODeAijFiVFH
	 is94eFUQkngtapUPj33iBBOa5dG2GDrM1ZYUZhfwcQNC1iNlypwGCDSfba9zyf6v/f
	 VflaC03AdPaIXD5guCFfFF6r4R/lS4SmKBR5K7gDmlAbbFXI0faWNyOlCk5hLjK0ts
	 2Sz1W2GoYhQ5tDvG7HiV5gNSY+eatigFxHD0dymvuXdWxVR5i15ATFCW2GEGJGxYQH
	 bd+jUUuHvqzy997jyv8GBc5ua68u8vZItG87JMaSd76wVBg5lTeY1HqWmj98LFDaeY
	 JtcVMqaAeAirw==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 29 May 2024 10:29:07 +0200
Subject: [PATCH v4 13/13] arm64: dts: rockchip: Add rock5b overlays for
 PCIe endpoint mode
MIME-Version: 1.0
Message-Id: <20240529-rockchip-pcie-ep-v1-v4-13-3dc00fe21a78@kernel.org>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3452; i=cassel@kernel.org;
 h=from:subject:message-id; bh=LO909Qkb49dF2RDbiXWZUtB58HFe23RYE1wbMe1vcLI=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLCnoc2R3GI9XocrK5x5whJLLWw3H6w5YDYHdaFQpxun
 56EfJvWUcrCIMbFICumyOL7w2V/cbf7lOOKd2xg5rAygQxh4OIUgIm4ljEybMjbMmMnU1Hikoyu
 dfqWC2K+fnv3mn8uVwKTp4Og13cZc0aGX7pr+0xiU+/LxKzf6pSs/m/RX28+Dln7dr+yfw6L+K7
 zAgA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_013009_799357_40D3386B 
X-CRM114-Status: GOOD (  16.02  )
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

Add rock5b overlays for PCIe endpoint mode support.

If using the rock5b as an endpoint against a normal PC, only the
rk3588-rock-5b-pcie-ep.dtbo needs to be applied.

If using two rock5b:s, with one board as EP and the other board as RC,
rk3588-rock-5b-pcie-ep.dtbo and rk3588-rock-5b-pcie-srns.dtbo has to
be applied to the respective boards.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  5 +++++
 .../boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso  | 25 ++++++++++++++++++++++
 .../dts/rockchip/rk3588-rock-5b-pcie-srns.dtso     | 16 ++++++++++++++
 3 files changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index f42fa62b4064..df7f5103b018 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -124,6 +124,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtbo
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-toybrick-x0.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-turing-rk1.dtb
@@ -134,3 +136,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
+
+# Enable support for device-tree overlays
+DTC_FLAGS_rk3588-rock-5b += -@
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
new file mode 100644
index 000000000000..672d748fcc67
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * DT-overlay to run the PCIe3_4L Dual Mode controller in Endpoint mode
+ * in the SRNS (Separate Reference Clock No Spread) configuration.
+ *
+ * NOTE: If using a setup with two ROCK 5B:s, with one board running in
+ * RC mode and the other board running in EP mode, see also the device
+ * tree overlay: rk3588-rock-5b-pcie-srns.dtso.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&pcie30phy {
+	rockchip,rx-common-refclk-mode = <0 0 0 0>;
+};
+
+&pcie3x4 {
+	status = "disabled";
+};
+
+&pcie3x4_ep {
+	vpcie3v3-supply = <&vcc3v3_pcie30>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso
new file mode 100644
index 000000000000..1a0f1af65c43
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * DT-overlay to run the PCIe3_4L Dual Mode controller in Root Complex
+ * mode in the SRNS (Separate Reference Clock No Spread) configuration.
+ *
+ * This device tree overlay is only needed (on the RC side) when running
+ * a setup with two ROCK 5B:s, with one board running in RC mode and the
+ * other board running in EP mode.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&pcie30phy {
+	rockchip,rx-common-refclk-mode = <0 0 0 0>;
+};

-- 
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
