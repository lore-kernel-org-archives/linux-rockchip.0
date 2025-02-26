Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8EA0C021BC
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 09:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98NfWdDAkROwSGI87tOGEds9SH3pFvIWiSZNyc5xC/Q=; b=FOHe8Hx9lyHFrV
	KSzqiY2ipL1j1N95HPERgf4XRXxyrzTwO3fzQEAixlQ8GTaiFtMYXpxwV+UyP052uCAj1fBGl8hTR
	Md4EptFgRoNauZyjK6lVltIxEJi7KfOs6rpwcNbN3/CIPo2sOgWTEqLrQShyH8utfo3jHhnPayEYZ
	mM/m/ZUX3g9swyvQFmj6Cv5jIqPU5paBAhCZwPCrRJpM/vvnNK63ZYkPUv5sCw2f1NODkjjCuuTYQ
	VHtZErkMQN176kky30Rl8vteUwqYnW8A+ySwzfxI3ki8RHAYRXYZfwqh8ZHHNEfZtzV5AM9y2LWr9
	f8YsIyZxC0560kTxHZcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnE55-00000003A6Z-3SUk;
	Wed, 26 Feb 2025 09:51:55 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnE3j-000000039ln-3Oec
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Feb 2025 09:50:33 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740563419; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RxCKpdNWtWJI6uSIOJwVq0FbJd5CjfxxRtkykTWPTCA78PRLVT7QeEuwvJeKp+rM4LUZyb+DAyHr5BMVxBUw5rZEUDckBCtRybLqNYWj8CFmdYl5afjZrrkMk9OXMDYsODOSQdWrjegBl7POCsPdtdHeuFJeVfsmp2BBgqnBQUc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740563419; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=FAp90OZBq8uFu2M+L9vXUc0FUFCjHQCQSXx6G4QVIok=; 
	b=SBCerRBjch88TVrV88zGrBoRwHKp3Ah1rXRF1aRKuL/AI5p6zwXk8N1ihp68zkrIK+ZHL+sNRcNWyW3vWauX3BdagCCLX4PklAGwud90S+/k1VbVEcZVeIDdr4mknWEGCkHHOFvYKn+nv3Fi9MNlWSsLlvySuts3NDwTQvNDqmU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740563419;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=FAp90OZBq8uFu2M+L9vXUc0FUFCjHQCQSXx6G4QVIok=;
	b=VotmD9H9flFlQrmyfTPx4jeyrSnAnyqJjjETcwgmbf/1hTzGYiVSlBUkR10dUV2c
	xEJt33sl5brXYlXjY15roKbcxyl1c0IxOgI0LyX8lnFYQlD+ygyo48qgVMQisp64tq8
	pfmo0bC1KgY0eWVgFby6zG46ifYH3yigk8Mr/kvo=
Received: by mx.zohomail.com with SMTPS id 1740563417337356.9228125524945;
	Wed, 26 Feb 2025 01:50:17 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Tim Surber <me@timsurber.de>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH v11 2/6] dt-bindings: media: Document bindings for HDMI RX Controller
Date: Wed, 26 Feb 2025 12:49:42 +0300
Message-ID: <20250226094946.665963-3-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250226094946.665963-1-dmitry.osipenko@collabora.com>
References: <20250226094946.665963-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_015031_980517_C1649531 
X-CRM114-Status: GOOD (  11.55  )
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

From: Shreeya Patel <shreeya.patel@collabora.com>

Document bindings for the Synopsys DesignWare HDMI RX Controller.

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 .../bindings/media/snps,dw-hdmi-rx.yaml       | 132 ++++++++++++++++++
 1 file changed, 132 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml

diff --git a/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
new file mode 100644
index 000000000000..510e94e9ca3a
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
@@ -0,0 +1,132 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Device Tree bindings for Synopsys DesignWare HDMI RX Controller
+
+---
+$id: http://devicetree.org/schemas/media/snps,dw-hdmi-rx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys DesignWare HDMI RX Controller
+
+maintainers:
+  - Shreeya Patel <shreeya.patel@collabora.com>
+
+description:
+  Synopsys DesignWare HDMI Input Controller preset on RK3588 SoCs
+  allowing devices to receive and decode high-resolution video streams
+  from external sources like media players, cameras, laptops, etc.
+
+properties:
+  compatible:
+    items:
+      - const: rockchip,rk3588-hdmirx-ctrler
+      - const: snps,dw-hdmi-rx
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 3
+
+  interrupt-names:
+    items:
+      - const: cec
+      - const: hdmi
+      - const: dma
+
+  clocks:
+    maxItems: 7
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: audio
+      - const: cr_para
+      - const: pclk
+      - const: ref
+      - const: hclk_s_hdmirx
+      - const: hclk_vo1
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 4
+
+  reset-names:
+    items:
+      - const: axi
+      - const: apb
+      - const: ref
+      - const: biu
+
+  memory-region:
+    maxItems: 1
+
+  hpd-gpios:
+    description: GPIO specifier for HPD.
+    maxItems: 1
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the general register file
+      containing HDMIRX PHY status bits.
+
+  rockchip,vo1-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the Video Output GRF register
+      to enable EDID transfer through SDAIN and SCLIN.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - power-domains
+  - resets
+  - pinctrl-0
+  - hpd-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/rk3588-power.h>
+    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
+    hdmi_receiver: hdmi-receiver@fdee0000 {
+      compatible = "rockchip,rk3588-hdmirx-ctrler", "snps,dw-hdmi-rx";
+      reg = <0xfdee0000 0x6000>;
+      interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH 0>,
+                   <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH 0>,
+                   <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH 0>;
+      interrupt-names = "cec", "hdmi", "dma";
+      clocks = <&cru ACLK_HDMIRX>,
+               <&cru CLK_HDMIRX_AUD>,
+               <&cru CLK_CR_PARA>,
+               <&cru PCLK_HDMIRX>,
+               <&cru CLK_HDMIRX_REF>,
+               <&cru PCLK_S_HDMIRX>,
+               <&cru HCLK_VO1>;
+      clock-names = "aclk",
+                    "audio",
+                    "cr_para",
+                    "pclk",
+                    "ref",
+                    "hclk_s_hdmirx",
+                    "hclk_vo1";
+      power-domains = <&power RK3588_PD_VO1>;
+      resets = <&cru SRST_A_HDMIRX>, <&cru SRST_P_HDMIRX>,
+               <&cru SRST_HDMIRX_REF>, <&cru SRST_A_HDMIRX_BIU>;
+      reset-names = "axi", "apb", "ref", "biu";
+      memory-region = <&hdmi_receiver_cma>;
+      pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_5v_detection>;
+      pinctrl-names = "default";
+      hpd-gpios = <&gpio1 22 GPIO_ACTIVE_LOW>;
+    };
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
