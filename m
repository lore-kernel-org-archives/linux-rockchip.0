Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECD52C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Dec 2022 09:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w0z+E4yCg5AVzXmMYpi9QhLav5MNN4+OZcO/iujxNHc=; b=hpsKTrzK4oQ3P6
	gmxU8C+h/0MV+3Bb0lUPUKmAihGvSMQNIVZNP6acw+sUkv5TuzhhwVTXxPkGFbhda9hwCK2Tsdolk
	a4EpecCpIrjJE5n7X1dfd9VC5G+nHZr12ELA6VE5orNHvV+wn+Qvh0RunINUl9PCMLSC5bc+13ax0
	82r4/0SQ03ivGh7H2fTfFRg9WzAMl6iWmH4Y6xlrMizwHff5ElDl4EYJnaeZ2yxnTE+eI1Fw58cSw
	9Po7C+oNNzNx46Wvnh29Tucezl+90iFDUDnIlQuPD0XP8cyDyrNvvPQzi6UbBkGr20UspnQRKvU9F
	wB/BuZkrRpgg6rNWJfkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pApT9-00EKRT-NM; Thu, 29 Dec 2022 09:44:59 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pApSk-00EKF3-FO; Thu, 29 Dec 2022 09:44:37 +0000
Received: by mail-ej1-x634.google.com with SMTP id u19so43799406ejm.8;
        Thu, 29 Dec 2022 01:44:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iyphewPZOfLnxnaRNTB29uqTkJVQ86RQ4fAds/3h3Vs=;
        b=UILyHAR71jRgy8hhzyaRGBWZA/3j6ZCcj33u4g6LkDlrE7d1URoiSz+mXM6Ou1R8z8
         /uzl0JEIqBlkwRzFwi0//frG6jJ2zCgcvaBCwabhhOLn8extuXQgd53Ky/zuEShcIptW
         1SuMd/WZfftH+qhLMHuaebr8lAvHeaG9RVOQige+q1KYZdFf8FAS6FXljuYvD+B0QqJF
         36tiGKzHUQQ8Q7E3apO9vSfOEMcIRUxXa8Jk67Mvd5yDebFyaN2Vfwrg8q715sMkzPss
         fe+7mSLJxCbleoWaJgnroxnWH3wBvBAdORzAYFjSQlCedmjiV/T5D0AoNV7yfgZ20+oT
         9AAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iyphewPZOfLnxnaRNTB29uqTkJVQ86RQ4fAds/3h3Vs=;
        b=FYHhd9uRm7LyxGxN/9k/f9PVu8GKbqmPa85gfw1bxlUEuHZCliQnWx5KPHZO1GrtMt
         5CjOoWkHLdb+Oii9580wGr8+yDV1kz02p1f8xsg7m9dXz0sgAwDVmQY9XFyRIA5BiB+5
         7Kthq+v8uhw3mOYnhjujyw7TvD3k31eYNoqKXFYryKeMn1PExp6biWIlNL7aK8Vtr8FJ
         +n1gAv1QSywozpYOqFB5jw7FhCOTJldSiekMYaD1NCXU5uO3cH6iGcxVcM1SswVSBX6h
         957fCqDkceDA1H4/yz8L1Hndvb+hXNLElH/Rwb1No7aJjWxSjmeyRg0yjCuimUE7UDFC
         +a5A==
X-Gm-Message-State: AFqh2koaJl5k+lBbVgYUOvkQ/cuHvnxh5XEJ1JgHKFiY+6YPRGaK7h06
	mv9HIFwicVnU1RbnTSINH08=
X-Google-Smtp-Source: AMrXdXsZL1j1TTNvr8CasU6e9oELKnEX7gPztZg2Fjnd1DsSXTPke5G6cc0hnwJgSA2jIWfVe3gKLw==
X-Received: by 2002:a17:907:a782:b0:7c1:6430:e5d0 with SMTP id vx2-20020a170907a78200b007c16430e5d0mr24247352ejc.4.1672307070247;
        Thu, 29 Dec 2022 01:44:30 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id o11-20020a170906768b00b0077b523d309asm8357801ejm.185.2022.12.29.01.44.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 01:44:29 -0800 (PST)
Message-ID: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
Date: Thu, 29 Dec 2022 10:44:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: rockchip: convert
 rockchip-dp-phy.txt to yaml
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_014434_778131_7D96CFA3 
X-CRM114-Status: GOOD (  13.71  )
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

Convert rockchip-dp-phy.txt to yaml.

Changed:
  rename file name

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  Use the compatible as filename.
---
 .../bindings/phy/rockchip,rk3288-dp-phy.yaml  | 41 +++++++++++++++++++
 .../bindings/phy/rockchip-dp-phy.txt          | 26 ------------
 2 files changed, 41 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml
new file mode 100644
index 000000000..2538235c5
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,rk3288-dp-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip specific extensions to the Analogix Display Port PHY
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    const: rockchip,rk3288-dp-phy
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: 24m
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3288-cru.h>
+    edp-phy {
+      compatible = "rockchip,rk3288-dp-phy";
+      clocks = <&cru SCLK_EDP_24M>;
+      clock-names = "24m";
+      #phy-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
deleted file mode 100644
index e3b4809fb..000000000
--- a/Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-Rockchip specific extensions to the Analogix Display Port PHY
-------------------------------------
-
-Required properties:
-- compatible : should be one of the following supported values:
-	 - "rockchip.rk3288-dp-phy"
-- clocks: from common clock binding: handle to dp clock.
-	of memory mapped region.
-- clock-names: from common clock binding:
-	Required elements: "24m"
-- #phy-cells : from the generic PHY bindings, must be 0;
-
-Example:
-
-grf: syscon@ff770000 {
-	compatible = "rockchip,rk3288-grf", "syscon", "simple-mfd";
-
-...
-
-	edp_phy: edp-phy {
-		compatible = "rockchip,rk3288-dp-phy";
-		clocks = <&cru SCLK_EDP_24M>;
-		clock-names = "24m";
-		#phy-cells = <0>;
-	};
-};
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
