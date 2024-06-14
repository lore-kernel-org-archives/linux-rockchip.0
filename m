Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F26BAC27C75
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 09:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTGV+Id4tW0XtwThqOuN6SSypDJ8m3CcV7HaBZahNoc=; b=b0tqjspJwy4T3+
	rzDFH/7CpXWm//DQZyyYMUMfOPvEZs74yDnaJPZiICTd/P+8BNQqRBvin7MrsrYZlk0GVwASRTqlU
	jy6r/Z2bMjigMAI5PtKU5dJU9fwE/7d5ve0NurJOhbQ1DM55+pK42nNn8XANlNzNAgN96bVHcfXNS
	rzuv1PoX7dJ8qxf3wWhAoD/pic+8pUjp2NGUE+bqCHLSVXpK/vycgdDpolop7irgDtOaydiaE5c/1
	HDiRKg3x4r2G3/PZ/EK6145d/8v1oLda7C/PdbkIUf9aMsZg4cz04ljTyw7QyGPnYBqJPZTpfqvKK
	soXzt8zZzTQkwIIZSkuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3XS-00000002GGd-3hBK;
	Fri, 14 Jun 2024 09:48:06 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3WM-00000002FLc-3Adb
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 09:47:02 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a6ef8bf500dso224487466b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2024 02:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718358417; x=1718963217; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lDonAMNFdjRidSbTzE2VeZbqHbNzDw2rLK+EzxgIQKQ=;
        b=wvHALAu4f5+bjNjIA/xaLrwiMp98QEkQ01smeX5lDccwvnRhLRXn+Gq9OTRoySGjYe
         CZNjJ2m+y1ZAIuzwd+LKE+TppjM6y+cuoYn7kBj5vFfNOS1tX3oBiXawECdxiiIFOG7J
         r7WQ2sqSwbQYhHeD08QJ6ZojYjeW7XXCE08a/2SoGv4fGpCIyavAuFpoW4/yzcgyo/O2
         KvHMiXVKVHK6vg/NI0qPP6i2Pn3fg+0Y6h+dxeq+6nGWj93bMIcVJ97R/WaVOehaRiHU
         SaLe7J21dFKBeHpac6opT/rxwKZZ3PT8tD9t9QLD/1LkRKTl/40BZiAIn7UNLnSKn3Nq
         HxyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718358417; x=1718963217;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lDonAMNFdjRidSbTzE2VeZbqHbNzDw2rLK+EzxgIQKQ=;
        b=lr0s8F84MCbK8Yeu++aHAgju+ZVlwhXx4XVKWy0Hmc/eVdb87A+CK3aP19cv8RlWE5
         WZaOPOB9UrB+jEQhHkzMLva4NIRwnfQN6ChsHFVdfsqEE9LiaafLMY7We7+eJBMy4w4Y
         yJE61zy3DAM8TSXt4axDFro8kqVudKvWJwaGgaKCMZ++AbOfqq7urONpQGC1o/gVwgs6
         oKs/7BXzh6pIosN9X/M5Jh/y9hisAItI2zhbcL2sOv/TfXfpwSmyN1sjU0SIpvgGBK/J
         o0YfouAoZeliy0FgLvPyvCKgCRBb4fBleCQ6SyTfDrS/c0TE1TApcCnjEkFtRfurPYIH
         tycQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQsI41AQh+0Ie6zZtEcmVIfxJ1l45VelWk9E+k5WOkdnTAfqP5QosT6g6/rk5GQqIvh5oUlCiCNjkz3vD3GpEWixLNcOQxecFOv9q7OJfFDIxO
X-Gm-Message-State: AOJu0YzQ+2lWkj6maWII7AboMD4d009YogTvuay5LQ6pI6SRPI5YrtYh
	dUugnecrkJTjFt7FT3R+1gl+r0cq7fhzUF7iJWdpuGZfcoGZAZTtpdtK6gGvk5s=
X-Google-Smtp-Source: AGHT+IHz28IjgUQ7U5ehLpzH5+jUV2U0S/83h2/duO4Fd6lcxl/CpvaW1wx2mz2dI1mqpyUm6hYWvA==
X-Received: by 2002:a17:906:7c9:b0:a68:a800:5f7e with SMTP id a640c23a62f3a-a6f60cefe50mr157252366b.10.1718358417082;
        Fri, 14 Jun 2024 02:46:57 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.206.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f9c84csm164966366b.222.2024.06.14.02.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 02:46:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 14 Jun 2024 11:46:10 +0200
Subject: [PATCH 11/22] dt-bindings: thermal: qcom-tsens: reference
 thermal-sensor schema
MIME-Version: 1.0
Message-Id: <20240614-dt-bindings-thermal-allof-v1-11-30b25a6ae24e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1315;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=/6wWwz3JluzattdX99NimqBlUNVjWbka1UBxHUaruXM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbBFpP5m4FfwjNs38ZYbMHhqa8b7/avK0eZsSE
 kfrR5Jx48mJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZmwRaQAKCRDBN2bmhouD
 18dbD/4xycIH+gJM5EANhxts+rsYJ2zI9Q3VGEKKys+fsHsQHSeDcUq3BjYTf2RtbsGpAvzbLWT
 TgwweXyrov9nVOdYhqpXDijhLPu76W3YTMtfELYYg6LJasi++K7EKhU4hYoWRundI5xdgiFatip
 kED4QhpWKCeiRFkcuBHobLIk1Ej2UHChTV+GgNBG8SMpKieN6czbuPBegI2Z9q53dE7d+I3wInD
 U3y4coWbuqnG3y4fGCyDOxeuABd4r6SAu5xGmxtSdSuFWiwnQTJhJBzUfX1bx7Am2ffyv83isj7
 3FiGkRJcnQ37ef9wwXXi3vSOAFIfdnfBNF0gntZWLyCyYg9bCMqt4NNoIwrJwRG09AptKW0CwvT
 69dQ6XzmAjvsPf2mdotAoEq3PlcTzXNyeWNMAbesz/bQeH9gGijc1a3zJuVg1xRuWj4Kl8A2nqc
 1jeYNmpnE7k5tQPvsj/rxNuqKoTq3UvaYX4Zm1+oRDDENmjLqGZPXbySe8QUY0mSss8CfGujCjL
 ltRXaUg313i9ERx9JL3KLw4RtEsWz6iZneFYg8C8lESgto5sjqiMXnxS8xJhr3DsM1a5gXAgDqg
 TvUZT0ltvHuJRMm0DQQEpAD6P4pePJS8filu+B4c1mAoQWRid5Jbp+CIuFJSw9y/IUhxcxu7Hrw
 avotNFSDZ5f2ALQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_024658_981645_D1592481 
X-CRM114-Status: GOOD (  10.52  )
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

Device is a thermal sensor and it requires '#thermal-sensor-cells', so
reference the thermal-sensor.yaml to simplify it and bring the
common definition of '#thermal-sensor-cells' property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 99d9c526c0b6..cce6624228c7 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -217,18 +217,16 @@ properties:
 
   "#thermal-sensor-cells":
     const: 1
-    description:
-      Number of cells required to uniquely identify the thermal sensors. Since
-      we have multiple sensors this is set to 1
 
 required:
   - compatible
   - interrupts
   - interrupt-names
-  - "#thermal-sensor-cells"
   - "#qcom,sensors"
 
 allOf:
+  - $ref: thermal-sensor.yaml#
+
   - if:
       properties:
         compatible:
@@ -292,7 +290,7 @@ allOf:
       required:
         - reg
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
