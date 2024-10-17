Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8243ED2F7DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 01:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+zT85E/JIYy0NeBmTgBshPDhQkj2jm3NXS0E+b9BAc=; b=QUmwNYxUwGBI/H
	RqQtuZkMfM4U9VNv2jH+pg2XkdACT6K7X3TW5R9Zb2RX6oxGYBK9yiEAlTGWv0xYNgJmbzuswq42U
	tER8EmuB+TJOyXxjAGV/RtcMINbubc8AoNqd98++dNHWwcAtlRE3UigkSg+u6DU/P/A3fKhgB2Wna
	KmeLPkmCrcjKvjPY/+PqG3pb7d+oN/8CgBAbxbGhSJmoP5b4Ft/H6q8cgdp/6EujmRxDsAlkpy/Bt
	H+QwlHqsslyAxnG7z1uughiSbecI5ToLI4J92zr7Eg19mQoaE9O5BPXpHZmO68vzrKOLm9HySbiOz
	tQRDZrRko/ZgMd78xK3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1FnS-0000000DV60-1UrV;
	Thu, 17 Oct 2024 01:59:26 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1FnN-0000000DV1X-2VPb
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Oct 2024 01:59:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C6C85A40DED;
	Thu, 17 Oct 2024 01:59:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC6F5C4CECF;
	Thu, 17 Oct 2024 01:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729130360;
	bh=9A4ebH99NqbJvu4o7NsI8CnYt8jbJv19+dSmlm3CaL8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OuGE6ufXFUE0NeStZ4HdNsa491n1fWoJuoK951HoIXZRUIWBGzO2Ny3fRjElgcEds
	 vzJGuaXNQIw/ReQ2rR/sYMpueQhjTM3jEZP4NA7vSWV5aXSEW9CLccXYqkJTre4f9r
	 alB4kDTNFwpgRIM0y20cW9fF3DXah7KZvois+zQUTqaTdxoSm0RPxwzGsRcQ9R09TZ
	 jMqPrPULOO4WUTWMnvPGaUVd1hiOrhYw1hgC1ZMiSWQz0cV5Us/iPq/heQKRt9DOl8
	 V/+WzkpNHSGJuRp2O5ApzAZnHFSDD2r8N4Vz1y8DKDk4oPpFxp5ilI0H9+2KBmLS+u
	 zdm8sRIgXJnrg==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v5 14/14] arm64: dts: rockchip: Add rockpro64 overlay for PCIe endpoint mode
Date: Thu, 17 Oct 2024 10:58:49 +0900
Message-ID: <20241017015849.190271-15-dlemoal@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>
References: <20241017015849.190271-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_185921_995987_E550006F 
X-CRM114-Status: GOOD (  12.06  )
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

Add a DTS overlay file for the rk3399-rockpro64 DT for enabling PCIe
endpoint mode support.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../rockchip/rk3399-rockpro64-pcie-ep.dtso    | 20 +++++++++++++++++++
 2 files changed, 21 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-pcie-ep.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 09423070c992..184131a58704 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -73,6 +73,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-pcie-ep.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-pcie-ep.dtso b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-pcie-ep.dtso
new file mode 100644
index 000000000000..cebfb71bebfc
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-pcie-ep.dtso
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * DT-overlay to run the PCIe Dual Mode controller in Endpoint mode
+ * with the #PERST signal handled with gpio2.
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+/dts-v1/;
+/plugin/;
+
+&pcie0 {
+	status = "disabled";
+};
+
+&pcie0_ep {
+	reset-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
