Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 074B1CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 21:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVtgMhFGfrVZOh2e+ziAKFGMyBFVLZAx9g4IxA8mJpE=; b=lCPeU+HHoYwMLc
	u1qYkXFMkmVZ61pX4dHvt5Mer9CoscMDbRNEbCXuDJ9l281SvFsvFDF61uV+LvuqO456fRwnnXW2f
	/Sa1923GeytsHuVCzRJv40YS37E4DmPmlC3DCrg7BJcoteFosRUPbGT6NGORqxZTJAEk61B6TiMfL
	cEdiFKIwbAQeBGLH1/msgC2KPLZJL17CVmd4HIzfsMqEIB4+Te0SEId2uO7MPc5Y6+zrIpCLZrcMU
	6kMsLkBQ50sHI647NsVHeOa9+4EQ5jDVzVMEH/BUPBhRhhg4csoFCtaW+iA79XU7wO270/Mnpy8wT
	WZje5W8w1jus1cZD+e1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPCQ-0000000HTZC-1aTR;
	Sun, 08 Sep 2024 21:11:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPAM-0000000HSyi-2OjJ;
	Sun, 08 Sep 2024 21:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bN6g5LuUOiaBgVx2RDzw9SfT+Ft8rUzg+cw1TiUo10A=; b=kXpovhT/1PglOGOYSZG1/onakN
	Zgc7SaXzy5UvdMJdX/hUbYm8kOw8xEUq0dzJBy3r/dhLzp642DI0ov87xe3Aj7iDA4S+iieCvb3YR
	6vCT6KEvFh1WReF5eT1Qk12Pzc5ACEDxRbdHoVWa6hh5aTzAk26n/k7qJAOjSm+bAvN4IsoRbwOQ6
	wg1G79xx9nluJE4uzWSS06kFzAFzUHZRHW6l+e8km+SFkwH6AevuFHh5HAWjg3zzlnaEik+YX8n+a
	MNuJyaCD+Sx3kOBOo9/3jXpHeeYBQqIVaJt7C3j0XYoMhUA5fQj8qec5aitc6V3+SSa+vYiNGvotx
	WmPMwaGg==;
Received: from i5e8616cc.versanet.de ([94.134.22.204] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1snPA2-0003s9-Su; Sun, 08 Sep 2024 23:09:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee@kernel.org,
	jikos@kernel.org,
	jic23@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net,
	srinivas.pandruvada@linux.intel.com,
	bentiss@kernel.org,
	dmitry.torokhov@gmail.com,
	pavel@ucw.cz,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-input@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-leds@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v8 3/9] dt-bindings: mfd: add binding for qnap,ts433-mcu devices
Date: Sun,  8 Sep 2024 23:07:57 +0200
Message-ID: <20240908210803.3339919-4-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240908210803.3339919-1-heiko@sntech.de>
References: <20240908210803.3339919-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_140950_654081_5151B95D 
X-CRM114-Status: GOOD (  15.31  )
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

These MCUs can be found in network attached storage devices made by QNAP.
They are connected to a serial port of the host device and provide
functionality like LEDs, power-control and temperature monitoring.

LEDs, buttons, etc are all elements of the MCU firmware itself, so don't
need devicetree input, though the fan gets its cooling settings from
a fan-0 subnode.

A binding for the LEDs for setting the linux-default-trigger may come
later, once all the LEDs are understood and ATA controllers actually
can address individual port-LEDs, but are really optional.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/mfd/qnap,ts433-mcu.yaml          | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml

diff --git a/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml b/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
new file mode 100644
index 000000000000..877078ac172f
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/qnap,ts433-mcu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: QNAP NAS on-board Microcontroller
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+description:
+  QNAP embeds a microcontroller on their NAS devices adding system feature
+  as PWM Fan control, additional LEDs, power button status and more.
+
+properties:
+  compatible:
+    enum:
+      - qnap,ts433-mcu
+
+patternProperties:
+  "^fan-[0-9]+$":
+    $ref: /schemas/hwmon/fan-common.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    uart {
+      mcu {
+        compatible = "qnap,ts433-mcu";
+
+        fan-0 {
+          #cooling-cells = <2>;
+          cooling-levels = <0 64 89 128 166 204 221 238>;
+        };
+      };
+    };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
