Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DCC8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 18:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xFevj9xMl2OPqJDt/az/Rp02MtC8BHrY0iJJVxSzg/A=; b=fLfgDV6ErBa+r9
	wy9C+nNyy4iBrDKVoizph+J2G5K/vmdox1ZJUmDPHgRGutvlQOzbcypbUoCqHdj8UpNMolaEK+O5w
	JmDvhc79ZOOkiE9PP1OVxMNWvYzuPL0GaAsE7iUZWstFPnQMYXBaOHxDmZ83q65E0xbRuGErelapm
	Z03Q6pSNBhN78dyjC5mORYMaOy4MOGxDDVhTeKXzWkfelQX3l3vb0E6kD5azhqc+FjSKE67DSZvbc
	vJh9NlyDyPCEb+MoaUKSkLbm54Wdq1FcZU5LdzhQO9HKjuyM9U1n2qAK/ZtWQ851vibjY2g2tOySI
	iup1B+beHGN7uvdVduIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZGEM-00DApE-Ki; Tue, 29 Mar 2022 18:06:10 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZGEA-00DAjO-9C; Tue, 29 Mar 2022 18:06:00 +0000
Received: by mail-ej1-x62b.google.com with SMTP id o10so36788404ejd.1;
 Tue, 29 Mar 2022 11:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e4m/D5l3KDsPRngzvS7EkoWX9CMsR37lkK4pBdzetSc=;
 b=pt9656q6hUdtbj96D1qtMoWStCNlo95qQx2puqQPY5hoRO9MB9jgAhUkV2Z82MvUqV
 FCU5jda68sBkoh30nVPoCUvlrqU12AEO6xg2EAYSvd0YDRvJ9ws4EAwJ5TTMkcEnUJP8
 OkD0in1ATcmXBgD52BwsIrh9eoRNvt2x1TKELXxrmimAj/eiyJgOLSnxDdWAfIQ6AYv+
 iqiciZuYaMVSgPRcWOV1EsjaOC9k1lLn3XO/ikNWCO0RgERceQQXcKi2XQDD6XjKVGrT
 kOtUU374RthsotLgZmnWg8oynYwSqeloOjzNBfkho+g0oWABerVjG7sodNI5m3+0zOna
 FMHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e4m/D5l3KDsPRngzvS7EkoWX9CMsR37lkK4pBdzetSc=;
 b=3QFlCotbhAH9/XtcLUmHa90TtX1OsUESE03goHmbTRi7wbEGDpizQsCAICyR7xgdW5
 hsnFy5b+v0PDShvcd+qqkqDEift1iXiVHrEGMX25ovFIn4LZ6GXvFSKnZtHuf4cz1jW4
 DaLoIuo1FNjHglcgUQGpnp7iEvTpbF7EETACHw+YGmENjzFrS6XyPNBlG/asqW+Xl0bf
 ZSeD7gcgYwfock/5Gn7ZG/BxD0qluaz0hrMmPvglErnrsq4a2cblyQ/PvF7Kh3PauZO3
 gSZQFwIQ1jbm0val3pBfkTgA1gQsqarIoJGZafsi3Udf6kI7l+F4RHPsj9HOZCOIqsEw
 dFKQ==
X-Gm-Message-State: AOAM531/H3TTN+59NBibRGrDIYU38HoVx0LodpOpVjXpaynowDbNi+H8
 D0r1p6BDei/dO73e2nDdbnU=
X-Google-Smtp-Source: ABdhPJxsIoyAWSdjq/D3fR6BX5MlUInd3wY5rUSex5bsHFuGwqz4q9B8RSkRFY0vtZRNhcfdHjgYFw==
X-Received: by 2002:a17:907:1b15:b0:6d7:13bd:dd62 with SMTP id
 mp21-20020a1709071b1500b006d713bddd62mr35310420ejc.673.1648577156966; 
 Tue, 29 Mar 2022 11:05:56 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 j21-20020a170906255500b006e08c4862ccsm6443616ejb.96.2022.03.29.11.05.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 11:05:56 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: clock: convert rockchip,
 rk3368-cru.txt to YAML
Date: Tue, 29 Mar 2022 20:05:49 +0200
Message-Id: <20220329180550.31043-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_110558_353866_7BDE9A8D 
X-CRM114-Status: GOOD (  19.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Convert rockchip,rk3368-cru.txt to YAML.

Changes against original bindings:
 - Add clocks and clock-names because the device has to have
   at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,rk3368-cru.txt    | 61 ---------------
 .../bindings/clock/rockchip,rk3368-cru.yaml   | 78 +++++++++++++++++++
 2 files changed, 78 insertions(+), 61 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt
deleted file mode 100644
index 7c8bbcfed..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt
+++ /dev/null
@@ -1,61 +0,0 @@
-* Rockchip RK3368 Clock and Reset Unit
-
-The RK3368 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: should be "rockchip,rk3368-cru"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- #clock-cells: should be 1.
-- #reset-cells: should be 1.
-
-Optional Properties:
-
-- rockchip,grf: phandle to the syscon managing the "general register files"
-  If missing, pll rates are not changeable, due to the missing pll lock status.
-
-Each clock is assigned an identifier and client nodes can use this identifier
-to specify the clock which they consume. All available clocks are defined as
-preprocessor macros in the dt-bindings/clock/rk3368-cru.h headers and can be
-used in device tree sources. Similar macros exist for the reset sources in
-these files.
-
-External clocks:
-
-There are several clocks that are generated outside the SoC. It is expected
-that they are defined using standard clock bindings with following
-clock-output-names:
- - "xin24m" - crystal input - required,
- - "xin32k" - rtc clock - optional,
- - "ext_i2s" - external I2S clock - optional,
- - "ext_gmac" - external GMAC clock - optional
- - "ext_hsadc" - external HSADC clock - optional,
- - "ext_isp" - external ISP clock - optional,
- - "ext_jtag" - external JTAG clock - optional
- - "ext_vip" - external VIP clock - optional,
- - "usbotg_out" - output clock of the pll in the otg phy
-
-Example: Clock controller node:
-
-	cru: clock-controller@ff760000 {
-		compatible = "rockchip,rk3368-cru";
-		reg = <0x0 0xff760000 0x0 0x1000>;
-		rockchip,grf = <&grf>;
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-Example: UART controller node that consumes the clock generated by the clock
-  controller:
-
-	uart0: serial@10124000 {
-		compatible = "snps,dw-apb-uart";
-		reg = <0x10124000 0x400>;
-		interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
-		reg-shift = <2>;
-		reg-io-width = <1>;
-		clocks = <&cru SCLK_UART0>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
new file mode 100644
index 000000000..adb678777
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3368-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3368 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3368 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3368-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"     - crystal input                          - required
+    - "xin32k"     - rtc clock                              - optional
+    - "ext_i2s"    - external I2S clock                     - optional
+    - "ext_gmac"   - external GMAC clock                    - optional
+    - "ext_hsadc"  - external HSADC clock                   - optional
+    - "ext_isp"    - external ISP clock                     - optional
+    - "ext_jtag"   - external JTAG clock                    - optional
+    - "ext_vip"    - external VIP clock                     - optional
+    - "usbotg_out" - output clock of the pll in the otg phy
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3368-cru
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: xin24m
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "general register files" (GRF),
+      if missing pll rates are not changeable, due to the missing pll
+      lock status.
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    cru: clock-controller@ff760000 {
+      compatible = "rockchip,rk3368-cru";
+      reg = <0xff760000 0x1000>;
+      rockchip,grf = <&grf>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
