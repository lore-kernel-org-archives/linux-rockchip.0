Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B41ACC27C6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 09:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fUgrRsAdrvDCGD/cBeAjHXqbVeIyfW7vsZ+zWGbr20=; b=ryJBAGJJHTsySv
	TAdZJmvUcOmmoa2HstLhqbg4aT7X0oLanxg4I6D8+H3Y9hlHBUHyR2u7Ep8tqQ4Hc/UMmRyxWXZJq
	7t8aCNzg1gKgZURTcK6drvOAUYxey1cSofZXyXWaky9yCY7ixgkc9cP0pALlfIZaWv/H5tZPHUnkp
	CBLCan5yFn3AWH8Clmoedmlva6P+35K1lTa9jvMfyA1uAtq4kMdHS8dWyfvsd3Xl8qu2D9JDGiAwy
	V9O9nTQyOin+7oAAskrW48M2WHDrNpdIrFhZDyh+SaMFeBVigIl4wNAzZ6mT4rHYQiRbynDqrJPnS
	RVV/ytZTQ3KPphgxz/Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3Yg-00000002HAO-38PB;
	Fri, 14 Jun 2024 09:49:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3Wo-00000002FmL-2Joi
	for linux-rockchip@bombadil.infradead.org;
	Fri, 14 Jun 2024 09:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=uodfs//bjqrAe2qZ9kd84WsjVyMmGfcvrKfsL+16kuU=; b=N2jiwRD5inL+iHxh3lgO151kjq
	16KEXi61GB91XM4Cbs/FeL5Rei2djNMQJSwtU3PwSj0tmqzxR2xCBMjW4eMdeiyfuyeOJDrIxneX/
	hX+l+zQ4/HRbWsPcOgcRCB2rTDky3ZFxePqTRWkSjvzCS+hfN1W3ZX7GSehCTE1KynkahewftHDoo
	VXI9asreGuS/FlNsmH9Qjio9I6Mr2hJeV1dDpUwF7/kf9eSI649wpabrII49FDsQwqofLzjC8YSRO
	bTiXLnxTJkvAWXXS89/mVI43fWLqz6JRu3pRCAdq1CPp9QLZm5jiQt5ylAReijQT/LOG7/dSsBuq7
	eFVJ29CQ==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3Wk-00000004FIB-2Nsl
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 09:47:24 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-57cc1c00ba6so527671a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2024 02:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718358441; x=1718963241; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uodfs//bjqrAe2qZ9kd84WsjVyMmGfcvrKfsL+16kuU=;
        b=Vkkoooc+8XwWLvqnM8XfVPczD6vT8pMFYYUyCE/AWYAyArwCOXKjgcOXkc4fWB0GT4
         /vADmEQV6rPcbW50tEyA/8/Ymf0TSfFwPP6tOhM9Cg4VRqrJPdsK/AMErU+UgFd0Dqp6
         Ud2882E/W7gCvIW+KSCtMsLobf3QfpG0hGH/s30IeXsBJjMNLtWOEUw/8widvxiH/76I
         2BLckogInLU6DaUugAsfht0QKwlcsHvWFC6VjO2c1JNScV5pGWIzIUKtERuNg7c3lNsU
         8WmDbSzXNLWR7baW/DC/43GVyjLZyt5/T4Ot5CkrBYKPz75CQMCVpHt47q++liA95tpx
         yxWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718358441; x=1718963241;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uodfs//bjqrAe2qZ9kd84WsjVyMmGfcvrKfsL+16kuU=;
        b=sURXWyxnqjYI4P4tCkisFOVkGh6MAdIw+le9Z42NaR/sFM6MYQc5EI/uX0IpJ2HOyy
         izTLHIkoDH4nnX1Aq25jtUviohC+ftgdW9b8OVLXHyQhoHC3aHndbiI7MESA8Fbcl6BJ
         A1vBEu/Ihl4LoKZcVwo/HB+mS6CY4aOt+GDHRZbr5mkK0ysJScDxo1O3lawQwr1Wpv4i
         9uUFijcwjd+jC08EL8813bnhFjLDqMHuIqB3lQ7GJIarzxcCd7dC1tZKvOVbOYPOma61
         fidT/EIFRnwJdByUQrT3O168MELa2b4p5QXs7s0mAL7afkEM7OumkudslOcBkkf2xQxe
         Y1jQ==
X-Forwarded-Encrypted: i=1; AJvYcCVd4VZhfaVTOqAcHAHnI4JcBdYSAe0Eg1ueKNrXE1DETULB4lu6hJviOr3q8Jm2v2wcaTHsi29Q8gpfzCv9hnvh+kfhl3PpRpaqULkCb8/QdePf
X-Gm-Message-State: AOJu0YyhCcZWfDIeKdCEBFniHtziGXKEpCYsV3a7QJJ4ApoC0DWz5eRp
	KwKyyFHoB4/ETjfUtwGOo4+2o/WDItPDSPLkitcgLMcJ6GThDHvAadahFjt2bFA=
X-Google-Smtp-Source: AGHT+IFLXVZv5XBW+iKZMorDGOlMRZlD+plTHxN5ZcGaV4oaBUeSx4OwwCAW6apvsQZglLUiZLZZUA==
X-Received: by 2002:a17:906:4c58:b0:a68:b49e:4745 with SMTP id a640c23a62f3a-a6f60de6279mr130459866b.70.1718358440945;
        Fri, 14 Jun 2024 02:47:20 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.206.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f9c84csm164966366b.222.2024.06.14.02.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 02:47:20 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 14 Jun 2024 11:46:20 +0200
Subject: [PATCH 21/22] dt-bindings: thermal: simplify few bindings
MIME-Version: 1.0
Message-Id: <20240614-dt-bindings-thermal-allof-v1-21-30b25a6ae24e@linaro.org>
References: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org>
In-Reply-To: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Vasily Khoruzhick <anarsoul@gmail.com>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Anson Huang <Anson.Huang@nxp.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Amit Kucheria <amitk@kernel.org>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Heiko Stuebner <heiko@sntech.de>, Biju Das <biju.das.jz@bp.renesas.com>, 
 Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Pascal Paillet <p.paillet@foss.st.com>, Keerthy <j-keerthy@ti.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 zhanghongchen <zhanghongchen@loongson.cn>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4876;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=cnRkmLQXvImOJ6clYhAxknZOfk4WOGw9WYVxljgJNd0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbBFyeLfiWLO3TcJQWHtxyb2jlsrVArsQc5HSM
 Zl8d/bpA9uJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZmwRcgAKCRDBN2bmhouD
 14q/D/wPchU0i1VJXyIyken/BpDy3CFIoxfe1Lx6ww08lDDBl6vxpB0QaflHSCvUb6oJhYLx5XC
 KQWlbHOynfTXswZGltb7vmbxKtQZKkAuceB/+6DHHkHVvJSfygqXTpFwbERstRbVdvrkm0AAxn6
 c6feUiuenfE5zkU/hdbvkKiJcodB6VehCGu6gcWyxCi66DbLYb2tZeACluumArIm7xZqfogg9CZ
 NAg8xL6WQwY+D0V4zDLageaphLcGdZNLe6M704GpS8vvp3MATTujqASLJDPu3+g5syhZR9Th/+4
 ioQj88CRX4dOOOTFbMLjaHgPb9zbFwilrfsCSQFnjKZk3PoB1IPqoIiPE2hYrbONHxgOIRJfnY0
 oYZ3dksGJEjv6eGF5a3+bWnW9RuFzW3l8M7VY6ZDfUQ1eRLSu8ZR2fCN455j6SSC3M/VioNDPi1
 /NqNoR6pA2KvS5eSU5z/weJ1XMQk7n2xgL2nsrA38ni1ljmOC5Q2oS/jZIzbpHE3Tv6Ud1/DMHv
 XEJ4O/YuwHiNNigQ8l5CgZCER+b0tvL4jTWX2XrLXP7uN4zbEBz+fBrrtWY/5sCM++WwlYKpz09
 VUQcTb1inEie1Ek8CxxovMd9HIe2vrwVJr8D4KDpvt2NCCwln+qHv5tRXUiDeHOwyyVMEf/34tB
 BEM3vs6dT6iX0RQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_104723_242046_7B47BC82 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
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

Simplify few bindings which already reference thermal-sensor.yaml schema
by dropping unneeded requiring of '#thermal-sensor-cells' and dropping
assigned-clocks properties (core schema allows it if 'clocks' are
there).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/thermal/brcm,avs-tmon.yaml          | 1 -
 Documentation/devicetree/bindings/thermal/brcm,bcm2835-thermal.yaml   | 1 -
 Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml        | 1 -
 Documentation/devicetree/bindings/thermal/loongson,ls2k-thermal.yaml  | 1 -
 Documentation/devicetree/bindings/thermal/mediatek,lvts-thermal.yaml  | 1 -
 .../devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml         | 1 -
 Documentation/devicetree/bindings/thermal/nvidia,tegra30-tsensor.yaml | 4 ----
 Documentation/devicetree/bindings/thermal/qcom,spmi-temp-alarm.yaml   | 1 -
 8 files changed, 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/brcm,avs-tmon.yaml b/Documentation/devicetree/bindings/thermal/brcm,avs-tmon.yaml
index 267a0f423504..32730211e15b 100644
--- a/Documentation/devicetree/bindings/thermal/brcm,avs-tmon.yaml
+++ b/Documentation/devicetree/bindings/thermal/brcm,avs-tmon.yaml
@@ -42,7 +42,6 @@ additionalProperties: false
 required:
   - compatible
   - reg
-  - "#thermal-sensor-cells"
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/thermal/brcm,bcm2835-thermal.yaml b/Documentation/devicetree/bindings/thermal/brcm,bcm2835-thermal.yaml
index 2b6026d9fbcf..ddf0f20e5285 100644
--- a/Documentation/devicetree/bindings/thermal/brcm,bcm2835-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/brcm,bcm2835-thermal.yaml
@@ -34,7 +34,6 @@ required:
   - compatible
   - reg
   - clocks
-  - '#thermal-sensor-cells'
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml b/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml
index e02d04d4f71e..ceef318668bf 100644
--- a/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/fsl,scu-thermal.yaml
@@ -28,7 +28,6 @@ properties:
 
 required:
   - compatible
-  - '#thermal-sensor-cells'
 
 additionalProperties: false
 
diff --git a/Documentation/devicetree/bindings/thermal/loongson,ls2k-thermal.yaml b/Documentation/devicetree/bindings/thermal/loongson,ls2k-thermal.yaml
index ca81c8afba79..79e691b08341 100644
--- a/Documentation/devicetree/bindings/thermal/loongson,ls2k-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/loongson,ls2k-thermal.yaml
@@ -38,7 +38,6 @@ required:
   - compatible
   - reg
   - interrupts
-  - '#thermal-sensor-cells'
 
 if:
   properties:
diff --git a/Documentation/devicetree/bindings/thermal/mediatek,lvts-thermal.yaml b/Documentation/devicetree/bindings/thermal/mediatek,lvts-thermal.yaml
index 331cf4e662e3..0259cd3ce9c5 100644
--- a/Documentation/devicetree/bindings/thermal/mediatek,lvts-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/mediatek,lvts-thermal.yaml
@@ -99,7 +99,6 @@ required:
   - resets
   - nvmem-cells
   - nvmem-cell-names
-  - "#thermal-sensor-cells"
 
 additionalProperties: false
 
diff --git a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
index b0237d236021..19bb1f324183 100644
--- a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
+++ b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
@@ -197,7 +197,6 @@ required:
   - clock-names
   - resets
   - reset-names
-  - "#thermal-sensor-cells"
 
 allOf:
   - $ref: thermal-sensor.yaml
diff --git a/Documentation/devicetree/bindings/thermal/nvidia,tegra30-tsensor.yaml b/Documentation/devicetree/bindings/thermal/nvidia,tegra30-tsensor.yaml
index 972d608ddf95..63a29a1f7fe6 100644
--- a/Documentation/devicetree/bindings/thermal/nvidia,tegra30-tsensor.yaml
+++ b/Documentation/devicetree/bindings/thermal/nvidia,tegra30-tsensor.yaml
@@ -48,10 +48,6 @@ properties:
   "#thermal-sensor-cells":
     const: 1
 
-  assigned-clock-parents: true
-  assigned-clock-rates: true
-  assigned-clocks: true
-
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/thermal/qcom,spmi-temp-alarm.yaml b/Documentation/devicetree/bindings/thermal/qcom,spmi-temp-alarm.yaml
index 5f08b6e59b8a..30b22151aa82 100644
--- a/Documentation/devicetree/bindings/thermal/qcom,spmi-temp-alarm.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom,spmi-temp-alarm.yaml
@@ -42,7 +42,6 @@ required:
   - compatible
   - reg
   - interrupts
-  - '#thermal-sensor-cells'
 
 additionalProperties: false
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
