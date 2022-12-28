Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A2D0C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Dec 2022 22:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c91viXGYeNbMJkY3iaad93Wk3yZsqHfUCEqxBzIR8yc=; b=3O5sDQ63LXHGd+
	msCtCMjpD10X3Gww+3+RijwfiY8MLUPjLkN1zD2CzVvuStbzDFuwCnmM0iXjq7ZmrQexog+jd88/G
	gK3oCH32SHzNvRBCPzpg/lMScA6Hv7CFLsLVxDrIzIONdTwR8DcyVreNyj+1X7tlF/uITBKMTekhs
	I/0wnYZIwAT3iW7kT6Y5Xz4+0Z/giPlPvI2hAwGiOfYrS8fi9vV7amwKLSyMJRpSyMUniVX2KgX9h
	NYpbHF+n2aUCqm3C5hlrgAUT8EHZqjKrbDCY0lEpCEG5Gd/bLLi4TDGQ4LqISP3n8rAMcn964XBYn
	ggXQ6q0kFobUL532Kc/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAeUU-008ZuI-VM; Wed, 28 Dec 2022 22:01:38 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAeUG-008Zp3-5s; Wed, 28 Dec 2022 22:01:25 +0000
Received: by mail-ej1-x62b.google.com with SMTP id fc4so41061582ejc.12;
        Wed, 28 Dec 2022 14:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LXpwDRhegkKqFBKPdsaD1Z/bgeJAmjFVHZvc5PWsjjE=;
        b=mEV36ZK+fCaMEqG4mCqf7EjZ6FEcrzK2F+Mr106XvI/3vuZEqfb6RA5+2sTYiaoSb1
         jtnM8CSYWdMhkaDFcBFlFg+6WiQAKTPDkHHJ8SJOWim5gNrnoRhV3ju6f9MeQda9uUKE
         IZRFLJPJdHoYBdwYwMFKJIcN1Bd9Po4Wax9bA1m/pZ/YGsHpFmYu27K2dqBefitDeY/b
         idcc4s4+sxWpVZj9/1SoNOKOc75A8AZIZHQcrPQDIX++e3NEWprn+1PHdUgci5wlywtV
         jfeqelvZ/y3sWwyIPDbWKO2ahfxvV3rLd1sBmSTGBHJlmMd4rQrkwWAROxB6Id33RZXZ
         KlgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LXpwDRhegkKqFBKPdsaD1Z/bgeJAmjFVHZvc5PWsjjE=;
        b=RU02ebcOVCuAk3LW1oBQIR7JvgtuP90RIVmAU+FP04ERf1zdOdbQ7Uw3DlcSUHFVWI
         xUEV4YF/bf5G2MziyHt7dZslxDjECB4fpO61SDIJ41EZQKgEeFprsJM1XT7ehEbGNHvn
         8DgPkaxKkTlbPoZiBDSsA4FZtuSCaejitDEnU/s17abHJ5JQ5V8UWjLzWc3LopNK6qTF
         W4PYJVoLmMxNxYXxjIKSpLBRdTYR1j4Tj0cMNP0ERDNbp6mDbsLf1GBoZ0rLpCes2HYr
         KJ696KSPg6ixqGVIS/g5HMASqM76JqUVxjcF5zOTzs+6LXXR02jBgFgh9PpVuv0Oe6J9
         dtDw==
X-Gm-Message-State: AFqh2ko+0yOes5n7sJOgJ6W6dgEO8hdKdnc1wRzk4N7/a+51nqhT1Mri
	HMJvycNkelJazDDgquHw5nY=
X-Google-Smtp-Source: AMrXdXvayKNs2MYNNK3ZiUuIf9BdTvY0mtNtigekQbnGc542UVm7F0Z961eejRZ1qUTItjDYTiwM9Q==
X-Received: by 2002:a17:906:60cb:b0:84b:b481:6188 with SMTP id f11-20020a17090660cb00b0084bb4816188mr12899468ejk.64.1672264881524;
        Wed, 28 Dec 2022 14:01:21 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id a14-20020a1709063a4e00b007e5856d6359sm7781741ejf.66.2022.12.28.14.01.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 14:01:20 -0800 (PST)
Message-ID: <5fa3aaca-4e49-8baa-68c4-2b3981400d3b@gmail.com>
Date: Wed, 28 Dec 2022 23:01:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/2] dt-bindings: phy: rockchip: convert
 rockchip-dp-phy.txt to yaml
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221228_140124_260911_B656D49F 
X-CRM114-Status: GOOD (  13.05  )
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
 .../bindings/phy/rockchip,dp-phy.yaml         | 41 +++++++++++++++++++
 .../bindings/phy/rockchip-dp-phy.txt          | 26 ------------
 2 files changed, 41 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,dp-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/rockchip,dp-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,dp-phy.yaml
new file mode 100644
index 000000000..73f75ab1c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,dp-phy.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,dp-phy.yaml#
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
