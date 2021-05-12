Return-Path: <SRS0=3kgl=KH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F9E7C43460
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:24:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71C23613EE
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:24:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 71C23613EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4fiJ5Ecyfp0YbpOcvoGB0KtnYrpdZ7GQk4YMQAO3mZg=; b=QKE32yVvBy5XEdwNBryAnP431w
	rPWKJ3zf4bqijoRmpaQF9TOfcxTG0PZkRYyNJa3hhTK/rkP2YX8AX7qDOOJ7eU9eX4ObWLEzyl3Tc
	njOjd1jkg40eJRsbyKUctl0QSqXBj2EPx+uEUpaG4d0Wo/ivyQ4Fo2NFVlYAqRLqIa81FyyVAvoDC
	RNwlj1eYfvY5XNBCIDbA6wJPq02756ovHfRYRC+sQYh17POb12djdCqMux8hl85Z2XnDPzLvrVGki
	tcmEPX7JssXkHNNVJUQWcUqn4AoqGY40m6Kt6YaJCmeyvh8NoTEizVipqmC15XAgTkK0EH2hB2LF4
	js+L7QSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgnul-002ia9-MU; Wed, 12 May 2021 12:24:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgnuG-002iTW-VA; Wed, 12 May 2021 12:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=h78YwhN4xMRG81TSgHUiA3WQy47qC8Yog5neAV6Eqi4=; b=TwSlWCdlfW6e1IrNyY2xB1vIoN
 1tphsMwfObvdNZB60R3dSp0FB3u2R1StsI0hPGPEIqjjjiDiqmEKR7Yf8XlPjC4AL32WKhCbOguil
 9eMni5nDrQfkJ393u7OpcoGq4zxOVUZPetyn8TW38A7b+Pb3RvamcuLjGT7NrNdIOZ2Vb9LmqNVkW
 xPCCd50G3J/qgK7iceazVhDzl5Dv/TkG2gMPrzQdN+DOfWWfB3VYDGU/73fWrmAA+wZ7VnPuJYCIV
 1DHEkV3vW8GGGx2S4vIDd1BUZe4+JxQofBr4/fjAaoqOhUyilaPyMgk+dUGRWBWTh/mE1Af/DaMHS
 HhVzfBGg==;
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgnuD-00AL8P-00; Wed, 12 May 2021 12:24:03 +0000
Received: by mail-ed1-x52f.google.com with SMTP id l7so26857734edb.1;
 Wed, 12 May 2021 05:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=h78YwhN4xMRG81TSgHUiA3WQy47qC8Yog5neAV6Eqi4=;
 b=GxpHjo4zgfJUFvMOvgJob7xxbs5RyJSfjQRnHhcgZDqQ1odDqvIoaMWSQk2tS0/Jud
 HXH/xxTwMUTpTNfLrODVSNOZErvIkQsOmJdNwCTsQ7qVO9LKoFXAcYUSMjIJGKT0F68w
 CwjkMhDRKpTQvPokjP7aRqb77qyUj3Ht1kBV53vipzKWVc21wvzMErr7FR9wc3n9qe4L
 OVaeT4dV+WMuG0RMRKweRKpdpI4QHdpB0bDRjkaEzHaqnlwgmER84N93v9S1Ulo1/DOx
 53rpK8qeERsNJN45lGvXqHP/6pdWT2fShNqVsxlcfPeQsJf2ICfx6xT/pUYwXD5vrhtQ
 YrQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=h78YwhN4xMRG81TSgHUiA3WQy47qC8Yog5neAV6Eqi4=;
 b=njFmAkIBHrC/dh5a7TM8V7otgQBkfqhyAfkLxo+SHwIwHGVTvBjmx811LuLEueS+kg
 sqo26IMtXxy7YzRiIswOR8xgLW+W9HmQ65cP4/SJtgPCoKKq5BGgLEnZyHs3XbSFCXnp
 YJ5YvyiOlOwzlM1MdeTLv+jADYUV8Xl8NQ5yOd0HCTloCDy+RWPZVjgjvTBEwOOcgI26
 COXri3Enk9NtaxNfOTJEqw0seUW1wMCF9b8oiCR8wgYL2XzGGmMQo9IPqe/R2hioNImg
 sTo92NuelTEK3+g+Zx/0ZTP1ZqySo+OH93q4C0pAGVFK8XL9UFSCaSm539CT/aiZMd/3
 tLqQ==
X-Gm-Message-State: AOAM530SQpvtfCOQEaKJst4muFWLFIbXhLH9lpxNZRL5KfbZhiaZ6Bfj
 WfR8zJCuhCjkbpidH6+uagU=
X-Google-Smtp-Source: ABdhPJyv1BPiwNYodi/LIFHzMTIBBJHdn9sS3VErz1e4Sg6wt7/zpEhfHZ8CdiROeHiF8qmL1QtVng==
X-Received: by 2002:a05:6402:84b:: with SMTP id
 b11mr43112715edz.289.1620822235889; 
 Wed, 12 May 2021 05:23:55 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g17sm21459665edv.47.2021.05.12.05.23.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 May 2021 05:23:55 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, kishon@ti.com,
 vkoul@kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/4] dt-bindings: phy: convert rockchip-usb-phy.txt to YAML
Date: Wed, 12 May 2021 14:23:43 +0200
Message-Id: <20210512122346.9463-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210512122346.9463-1-jbx6244@gmail.com>
References: <20210512122346.9463-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_052401_073416_950E10E9 
X-CRM114-Status: GOOD (  17.97  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Current dts files with Rockchip 'usbphy' nodes are manually verified.
In order to automate this process rockchip-usb-phy.txt has to be
converted to YAML.

Add "#phy-cells", because it is a required property
by phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/phy/rockchip-usb-phy.txt   | 52 -------------
 .../devicetree/bindings/phy/rockchip-usb-phy.yaml  | 86 ++++++++++++++++++++++
 2 files changed, 86 insertions(+), 52 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
deleted file mode 100644
index 4ed569046..000000000
--- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
+++ /dev/null
@@ -1,52 +0,0 @@
-ROCKCHIP USB2 PHY
-
-Required properties:
- - compatible: matching the soc type, one of
-     "rockchip,rk3066a-usb-phy"
-     "rockchip,rk3188-usb-phy"
-     "rockchip,rk3288-usb-phy"
- - #address-cells: should be 1
- - #size-cells: should be 0
-
-Deprecated properties:
- - rockchip,grf : phandle to the syscon managing the "general
-   register files" - phy should be a child of the GRF instead
-
-Sub-nodes:
-Each PHY should be represented as a sub-node.
-
-Sub-nodes
-required properties:
-- #phy-cells: should be 0
-- reg: PHY configure reg address offset in GRF
-		"0x320" - for PHY attach to OTG controller
-		"0x334" - for PHY attach to HOST0 controller
-		"0x348" - for PHY attach to HOST1 controller
-
-Optional Properties:
-- clocks : phandle + clock specifier for the phy clocks
-- clock-names: string, clock name, must be "phyclk"
-- #clock-cells: for users of the phy-pll, should be 0
-- reset-names: Only allow the following entries:
- - phy-reset
-- resets: Must contain an entry for each entry in reset-names.
-- vbus-supply: power-supply phandle for vbus power source
-
-Example:
-
-grf: syscon@ff770000 {
-	compatible = "rockchip,rk3288-grf", "syscon", "simple-mfd";
-
-...
-
-	usbphy: phy {
-		compatible = "rockchip,rk3288-usb-phy";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		usbphy0: usb-phy0 {
-			#phy-cells = <0>;
-			reg = <0x320>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
new file mode 100644
index 000000000..3b6b39da0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip USB2.0 phy
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3288-usb-phy
+      - items:
+          - enum:
+              - rockchip,rk3066a-usb-phy
+              - rockchip,rk3188-usb-phy
+          - const: rockchip,rk3288-usb-phy
+
+  "#phy-cells":
+    const: 0
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+required:
+  - compatible
+  - "#phy-cells"
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+patternProperties:
+  "usb-phy@[0-9a-f]+$":
+    type: object
+
+    properties:
+      reg:
+        maxItems: 1
+
+      "#phy-cells":
+        const: 0
+
+      clocks:
+        maxItems: 1
+
+      clock-names:
+        const: phyclk
+
+      "#clock-cells":
+        const: 0
+
+      resets:
+        maxItems: 1
+
+      reset-names:
+        const: phy-reset
+
+      vbus-supply:
+        description: phandle for vbus power source
+
+    required:
+      - reg
+      - "#phy-cells"
+
+    additionalProperties: false
+
+examples:
+  - |
+    usbphy: usbphy {
+      compatible = "rockchip,rk3288-usb-phy";
+      #phy-cells = <0>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      usbphy0: usb-phy@320 {
+        reg = <0x320>;
+        #phy-cells = <0>;
+      };
+    };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
