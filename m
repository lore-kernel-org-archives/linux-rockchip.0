Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 316ADC41535
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 14:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwYYNclpmS3xXBJUEnTH+Dk/nf80nn37Z7GwnHH8snc=; b=vgTYaRabVPIwoK
	ON1z8LEpthjyuKW8GgoTfi/6snzhWXalCaVPFxEY2UXH+9C/uqoez/md5cxkOYaIInmM5G1gp64Ir
	HsnoZPJpFiLB8zNWcjxZLu0CmUDZLjP3Vh0P4jadxOwMk3FzIfq7OKT6tmRfBX+Zcd1lRGZGIf+bC
	2fkEKbZMNkttZXdwubKseO7GKwDJ7SLAbfXkTVO7NtjgTdorjlIs5Dd+Tc6f/C0yLwQyeVFXj+mqc
	FpcJdc32kw0kBvfCy02KNIGLnRRdw7no9S+FvNLdTO84xexML2y4+YNwcsxk3kJw3Klc1mbrwixk/
	OIfF6xmVHJeCJZIyG09g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mwr-00DCNV-58; Thu, 22 Dec 2022 14:53:29 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MXO-00Cwpx-75; Thu, 22 Dec 2022 14:27:12 +0000
Received: by mail-ed1-x532.google.com with SMTP id q15so1514530edb.1;
        Thu, 22 Dec 2022 06:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SERN4kEo2CMNf8GF0efdtkAYhp6v4Evj57qnLITu7NU=;
        b=j30RPDKJX9Y7Jpi/c7UHD3cUl/yr3VA+FbvN1cAXTbwd+wo/2UFTbbClQiB11met+x
         rHRI7IdyzN3ZP3aUXrgGgHWfJoD9QmhMldGiCO5QdRhdUoIs3jBCffy+20CfzyKpkMlK
         Db8PhSzEp3jPwJ1oIdS943HWOysd0xRS3l7aBEuz/wd5+NGcRguTB9IGqgvWJvkX+PnG
         eACZB5G5avCbvlRjPaOpRu/RjG+PX5Mtv2M9/YK4LNtbiW7LhwBXAmITFYpSyMjbpsp4
         61L2Y1S+7Rpeqwq0y9l9w1bYfHfhP1/SC40s7q2xYBkjARrxam3xXfX6m8z+Vip5NZlt
         bmiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SERN4kEo2CMNf8GF0efdtkAYhp6v4Evj57qnLITu7NU=;
        b=tdbhTZUyX4QHQdNb9ELWXkAbFk5f0ZnMRj5KyKDVDu4WJso1AAoNkC9ypsmY7F2vE/
         tHc+As9ijWoTYXMUS9qOyHRXEZ8TlK0OqSMcnn9Y6HrVLa1DEOBgkXvD/Vglw/VppjHl
         3sTffDaHJwQn7nxVOUVCKgHC+ee3o+u82hk4liD16fjIiVigPN/TwbKLaicA+s1S90o1
         mz4KGv94Dgm8bK/9U3W1bGOl9sL/9c3aR05+HbMBxsM7qdJcr0Q52MOp6hoXtSG5l47O
         cvKx2D5psyEpA4565Dimiuxxx7JfxcuByib6B9deUEVzsQeTz2jdgeglhcHGva/T6lvG
         osKQ==
X-Gm-Message-State: AFqh2krjuz9+JVYejUfQtgre7Mtdna2wSK8onDig+a7LfUVIENTypH2q
	qmq1zsXzyIyCDFEpLE5fUdQ=
X-Google-Smtp-Source: AMrXdXtZZhvrnCk8MuWsTwTZgIwBm1u//i9hASx1/6SBJ5TzLR5Y6vQpyCLCSUIS7iRuar9RGDl6tg==
X-Received: by 2002:a05:6402:2a04:b0:47a:f54c:1ba4 with SMTP id ey4-20020a0564022a0400b0047af54c1ba4mr5473876edb.25.1671719219471;
        Thu, 22 Dec 2022 06:26:59 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id p14-20020a05640210ce00b0047025bf942bsm426459edu.16.2022.12.22.06.26.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:26:59 -0800 (PST)
Message-ID: <489e7bd3-fa26-885f-4104-8b0b29aa4f2b@gmail.com>
Date: Thu, 22 Dec 2022 15:26:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 06/17] dt-bindings: display: bridge: convert
 analogix_dp.txt to yaml
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
Content-Language: en-US
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_062710_351224_C427830E 
X-CRM114-Status: GOOD (  16.70  )
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

Convert analogix_dp.txt to yaml for use as common document.

Changed:
  Relexed requirements

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/display/bridge/analogix,dp.yaml  | 63 +++++++++++++++++++
 .../bindings/display/bridge/analogix_dp.txt   | 51 ---------------
 .../bindings/display/exynos/exynos_dp.txt     |  2 +-
 3 files changed, 64 insertions(+), 52 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/bridge/analogix_dp.txt

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
new file mode 100644
index 000000000..c9b06885c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/analogix,dp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analogix Display Port bridge
+
+maintainers:
+  - Rob Herring <robh@kernel.org>
+
+properties:
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks: true
+
+  clock-names: true
+
+  phys: true
+
+  phy-names:
+    const: dp
+
+  force-hpd:
+    description:
+      Indicate driver need force hpd when hpd detect failed, this
+      is used for some eDP screen which don not have a hpd signal.
+
+  hpd-gpios:
+    description:
+      Hotplug detect GPIO.
+      Indicates which GPIO should be used for hotplug detection
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Input node to receive pixel data.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Port node with one endpoint connected to a dp-connector node.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - reg
+  - interrupts
+  - clock-names
+  - clocks
+  - ports
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/display/bridge/analogix_dp.txt b/Documentation/devicetree/bindings/display/bridge/analogix_dp.txt
deleted file mode 100644
index 027d76c27..000000000
--- a/Documentation/devicetree/bindings/display/bridge/analogix_dp.txt
+++ /dev/null
@@ -1,51 +0,0 @@
-Analogix Display Port bridge bindings
-
-Required properties for dp-controller:
-	-compatible:
-		platform specific such as:
-		 * "samsung,exynos5-dp"
-		 * "rockchip,rk3288-dp"
-		 * "rockchip,rk3399-edp"
-	-reg:
-		physical base address of the controller and length
-		of memory mapped region.
-	-interrupts:
-		interrupt combiner values.
-	-clocks:
-		from common clock binding: handle to dp clock.
-	-clock-names:
-		from common clock binding: Shall be "dp".
-	-phys:
-		from general PHY binding: the phandle for the PHY device.
-	-phy-names:
-		from general PHY binding: Should be "dp".
-
-Optional properties for dp-controller:
-	-force-hpd:
-		Indicate driver need force hpd when hpd detect failed, this
-		is used for some eDP screen which don't have hpd signal.
-	-hpd-gpios:
-		Hotplug detect GPIO.
-		Indicates which GPIO should be used for hotplug detection
-	-port@[X]: SoC specific port nodes with endpoint definitions as defined
-		in Documentation/devicetree/bindings/media/video-interfaces.txt,
-		please refer to the SoC specific binding document:
-		* Documentation/devicetree/bindings/display/exynos/exynos_dp.txt
-		* Documentation/devicetree/bindings/display/rockchip/analogix_dp-rockchip.txt
-
-[1]: Documentation/devicetree/bindings/media/video-interfaces.txt
--------------------------------------------------------------------------------
-
-Example:
-
-	dp-controller {
-		compatible = "samsung,exynos5-dp";
-		reg = <0x145b0000 0x10000>;
-		interrupts = <10 3>;
-		interrupt-parent = <&combiner>;
-		clocks = <&clock 342>;
-		clock-names = "dp";
-
-		phys = <&dp_phy>;
-		phy-names = "dp";
-	};
diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_dp.txt b/Documentation/devicetree/bindings/display/exynos/exynos_dp.txt
index 9b6cba3f8..3a4015903 100644
--- a/Documentation/devicetree/bindings/display/exynos/exynos_dp.txt
+++ b/Documentation/devicetree/bindings/display/exynos/exynos_dp.txt
@@ -50,7 +50,7 @@ Optional properties for dp-controller:
 		Documentation/devicetree/bindings/display/panel/display-timing.txt

 For the below properties, please refer to Analogix DP binding document:
- * Documentation/devicetree/bindings/display/bridge/analogix_dp.txt
+ * Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
 	-phys (required)
 	-phy-names (required)
 	-hpd-gpios (optional)
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
