Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E55BC7EE25
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jun 2023 08:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q0xfVJ3Na1UqW0jiCg6g2gA5TeRMU/qCmTgdqgvTrUE=; b=RdqN+Bq8othxkm
	PQO/HTIaTud5lID/0rIf0+BCw/S0RFbG/jy3NJmqxzRgrRbEuqh3TD3Z+CFQ8cIX/KFPt0YLv3cY5
	XbxyDG2A2lO616xxPAIADaICcQZFUVST3aoXIt/4KleAtrJcMjHA/s/sqjjd7J3SlFeLS9mLO7gbd
	ulZmvP5Vl8wb0ABbLVMvpvfRYoxqP8a2syMoutEwNH0q9LWnQAOWTIs85UxFSXxstSvitS0uZUROj
	57B+h4f2f0QQejvtKjYOqzztY5ebVUVGtHBz0wbF2D5l2bkj+j/uvRoOxt+9lmQpcnk0UfJnLrv3s
	jkssr8JK+g1nGC3matLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7AkV-008VPq-29;
	Thu, 08 Jun 2023 08:12:03 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7AkR-008VOX-1o;
	Thu, 08 Jun 2023 08:12:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686211919; x=1717747919;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Mn0Gg2V+MSiQuYOdz9Nz8MYQuLW2HVJinMhyHFMoKbA=;
  b=hqwpofHAzCq/kzun/nt0yg+lelT+w6TUxokUck6RaYY4+640sVeyxyae
   wN1eSdiBz9Qt0FwYbPWhTok5LFEefxo5je+9ocz/ecdLUUGqpb8cTu3Yf
   ZXivilKqLA2S6yaQxSlPCf3ZbUlrfpHLbToN+pjLcQJC3MGqVIuzQIvid
   g5ruJdulRxo0Hqfye8Jy1N2JwwKPOAqRBhdNzaF8s8P05GOJzCCQCDZsH
   3pBgI0PLsAyrJRdAObr4AtnHzzxpWXRGnmkjekum/3jGkRB5QTTshbuBS
   dkYnH7HhcUPnZ+iAn6UVDyBbePeP5yzI03PVIJPQeqHtlG7ljLE+96frW
   g==;
X-IronPort-AV: E=Sophos;i="6.00,226,1681164000"; 
   d="scan'208";a="31343604"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Jun 2023 10:11:57 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 08 Jun 2023 10:11:57 +0200
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Thu, 08 Jun 2023 10:11:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686211917; x=1717747917;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Mn0Gg2V+MSiQuYOdz9Nz8MYQuLW2HVJinMhyHFMoKbA=;
  b=n7vo/AbppOz7ij2TM2sdKp8hiGQu/0jwcRZzBfSOVR7e8AVgL1bzYjWZ
   GCmcJokcrmNxYYxehIVPrbUjxDxRUZWCKHip39qXGpqkaq/AsrifTtt5N
   xQw+OS23jbWQjD0WA/NzKDBDXHLvktOwRiL0c3FFYCR0S2oA7BIwZfJUN
   Y24t9rVieGo45IJOL7WF3Akt82hfCUP5NlcbBjissozsICS5panRWfqG3
   qCDNuu19DRC4jF7kf2TmhA3fNr688V1VmL2GLd2IdgnOdH2QJ8jItCHfF
   a/DPBC4YKH4euZOGkNEeR9VHocc+jcnUd47G4VApSMUYBuIUGQnu8216y
   w==;
X-IronPort-AV: E=Sophos;i="6.00,226,1681164000"; 
   d="scan'208";a="31343603"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Jun 2023 10:11:57 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DAA2B280087;
	Thu,  8 Jun 2023 10:11:56 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: extcon-usb-gpio: convert to DT schema format
Date: Thu,  8 Jun 2023 10:11:51 +0200
Message-Id: <20230608081153.441455-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_011159_944683_11B6C0A9 
X-CRM114-Status: GOOD (  17.71  )
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

Convert the binding to DT schema format. Change the GPIO properties to new
naming convention using -gpios as well.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../bindings/extcon/extcon-usb-gpio.txt       | 21 --------
 .../bindings/extcon/extcon-usb-gpio.yaml      | 52 +++++++++++++++++++
 2 files changed, 52 insertions(+), 21 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml

diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
deleted file mode 100644
index dfc14f71e81fb..0000000000000
--- a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-USB GPIO Extcon device
-
-This is a virtual device used to generate USB cable states from the USB ID pin
-connected to a GPIO pin.
-
-Required properties:
-- compatible: Should be "linux,extcon-usb-gpio"
-
-Either one of id-gpio or vbus-gpio must be present. Both can be present as well.
-- id-gpio: gpio for USB ID pin. See gpio binding.
-- vbus-gpio: gpio for USB VBUS pin.
-
-Example: Examples of extcon-usb-gpio node in dra7-evm.dts as listed below:
-	extcon_usb1 {
-		compatible = "linux,extcon-usb-gpio";
-		id-gpio = <&gpio6 1 GPIO_ACTIVE_HIGH>;
-	}
-
-	&omap_dwc3_1 {
-		extcon = <&extcon_usb1>;
-	};
diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
new file mode 100644
index 0000000000000..3a71d848dc7a8
--- /dev/null
+++ b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/extcon/extcon-usb-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: USB GPIO Extcon device
+
+maintainers:
+  - Alexander Stein <alexander.stein@ew.tq-group.com>
+
+description: |
+  This is a virtual device used to generate USB cable states from the
+  USB ID pin connected to a GPIO pin.
+
+properties:
+  compatible:
+    const: linux,extcon-usb-gpio
+
+  id-gpios:
+    description: An input gpio for USB ID pin.
+    maxItems: 1
+
+  vbus-gpios:
+    description: An input gpio for USB VBus pin, used to detect presence of
+      VBUS 5V.
+    maxItems: 1
+
+required:
+  - compatible
+
+anyOf:
+  - required:
+      - id-gpios
+  - required:
+      - vbus-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    extcon_usb1 {
+      compatible = "linux,extcon-usb-gpio";
+      id-gpios = <&gpio6 1 GPIO_ACTIVE_HIGH>;
+      vbus-gpios = <&gpio6 2 GPIO_ACTIVE_HIGH>;
+    };
+
+    usb-controller {
+      extcon = <&extcon_usb1>;
+    };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
