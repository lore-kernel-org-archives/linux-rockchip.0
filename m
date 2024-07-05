Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFA44C30658
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 09:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8quqOSLgOwCJr8NSAhbdFzxB7xaZHEBY+ktsQPG414=; b=WebkSI9bUxs5LP
	5Vo5cVoEl3ByZb2T6/ImomepZiMkeGGaeezguD6Gc8uEX4/O6EkJNbaQlF9e2XEJ+mX/u+R4OCoS3
	7PJ47q5uI79IBMWBnep4GYJLMqU3zZXYBAH96uZJQJemfyq6hECovTyVyD4CXlwzeGn5dzQXfjFDn
	iNisFbPithbRWOqAA5PZ41pkhCGzOXkpJAyj3r0/qQvbkPw03BX7pfhhNBIhT/UVvqSSz8K16/8mJ
	2DJt12ZhnKaQKVtYf1+IlJpvm0sJx2p5efOXwexKm7s+C2xRetVoHpoyAGemTfhXR85wu6EoDMlLc
	2kX6fqYT/pQky4KV3+Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfiL-0000000Fa3V-0X4g;
	Fri, 05 Jul 2024 09:58:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfcx-0000000FWqK-3LPj
	for linux-rockchip@bombadil.infradead.org;
	Fri, 05 Jul 2024 09:53:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=3560sIYwPYF1qUJ/9bHKIhK5P6LKddpvgy+hKRw1pU0=; b=NMmAHQM2/e/ukmDxaAODIrWIuX
	Ftuyimzsuj8I4efy2RQOTlwkB4UrkBoUWrQHFNY+ZljxXCE0T20SQVP/xM7d8IAp73US/NYhJkITG
	jzPvsclPTYzYZF3HcB3QXtoN9Rwj5KIZg5UM1BNP9OwlyaCbgdBT6Jj4n9B1H2VAmKq0BAeu1Yqro
	9c5WWynN7tYAY10zqKlKWLhfbND9dOu0FehT2qPXDtVbeBuEMVu1Bt+3J67jFYlMbEFYYC78K0ipY
	1KS9ooBJrae+tbiDr5xncf+SOcS5zF0aTB2drBYZpAmizulNAEIZqjLM1mLM5bfFEYgW6jJI4id3w
	EfbNr9Jg==;
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfcA-0000000AJV4-19ZE
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jul 2024 09:53:14 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-42122ac2f38so9048105e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jul 2024 02:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720173142; x=1720777942; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3560sIYwPYF1qUJ/9bHKIhK5P6LKddpvgy+hKRw1pU0=;
        b=BwUIAkyM5IZ+/7v1rWam3hJsg+0E/m/FwrbxWGvnRSt4mxk286fty0fzyk9R2pSx7Q
         bbJNTDvAxoIj26qtHGs1bTAY5k7ar+2Z1ndDqcG2earJL21b4WcmOzRWa6mKcsKiJIuq
         RWey3ikJFCuLApbMgchU3XYSTBU8D2iMM1ugoUScRXQR6hfHwi1RvxxPpViLrrY9s0YR
         Inguo5+9kI6ZsZHTQqozn0/4ticeOeTwZtQm8csEzwzrX9IuVHLwHZtA8kKw65qY4TpO
         G5XE1vm3QquM/l1DajXNJtiC7lV84PS+PL1ld4rNPdB7u5Wl7DT6hCi6a96j1+bwHQIQ
         cSyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720173142; x=1720777942;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3560sIYwPYF1qUJ/9bHKIhK5P6LKddpvgy+hKRw1pU0=;
        b=r3EpkJwW7iO/INMwsn2jLl5UmAm93Ft2qVUHGOyIwX+E869qUhBgC36xWEP38EEvSN
         ekPlxj+7v8mKmQoyfKw4keQ5UmPonv+4XmCAtvTMyevhYprcvxmK7Opqg9r/2E0KVhZk
         oYIvN5mnG15V/DvJpSMjKJW+HJHlvAfg+5ERzlUT61ld1Wr587hFu8F3QEGBjpMQrGUA
         CWpetKb39F6TqpsTILpTgOA2x8L3ycXf8wpkD4ysmvIFZclhhA7eZ5x38jJbDEzo+juz
         wKqanlfX+c3HGZYa5kWkND1HZsl+M3h/6cDYbI063A6xf6rk/G9mINTg0FgCYJg/F7+I
         f4Gw==
X-Forwarded-Encrypted: i=1; AJvYcCVS0g+U82o/sxoZDysS6HQM+JAUbuNY+8BeRLuanDSm5gZ0jzxjbRS69nwsFg+Fx1WKUsDgFXDmgmT7aBoG4W/8Znpo7iNDXHI9UuNsjzty58Hh
X-Gm-Message-State: AOJu0YwkN6o9DbKyI7AehpdJzdj3vAUmvnCZvrgYqVbo/+ul01qKkdAC
	B5CHCGwB6ob6LcHVdk1MCJOq/2peHni3FgdbgwhbsRIRjDOlySYZvidutvR3Deg=
X-Google-Smtp-Source: AGHT+IGbvLI+7zmqv75BKx3/cT4DQdFw2sCQV0t1yMf1acL+CHxXQXdR9gk09jrAs/6TLJ/GpCm/Gw==
X-Received: by 2002:a05:600c:1f85:b0:424:7871:2e9e with SMTP id 5b1f17b1804b1-4264fc7d970mr15129865e9.6.1720173141847;
        Fri, 05 Jul 2024 02:52:21 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d1650sm55528995e9.2.2024.07.05.02.52.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 02:52:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 05 Jul 2024 11:51:34 +0200
Subject: [PATCH RESEND 15/22] dt-bindings: thermal: rzg2l: reference
 thermal-sensor schema
MIME-Version: 1.0
Message-Id: <20240705-dt-bindings-thermal-allof-v1-15-554061b52fbc@linaro.org>
References: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
In-Reply-To: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Biju Das <biju.das.jz@bp.renesas.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1189;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=/v3DnhzMdOF5SQ9SQNOV6PRSe2c2250eLo+YE94Idow=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmh8IxKgZOJfR0ZXnugjqEGRImqQD3RqxQZVGYU
 QKEwKmPSoiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZofCMQAKCRDBN2bmhouD
 19iiD/wIEJLzOoplNOyUE8vTIb8jypPs3ZtbRPE3IMr1kWyNV4kkUeioMt3Ymjfg6Yz6a6YL9ZD
 UC7vyu7i23X1HGATIOwuRq68m4T8kLZ00e1WhtExcwWdsJ4x1zwLsJSkusJ97W0rRG6DB8cjogD
 RH97NBKW2ofqZwZSxXAn49w0v9M/LpK1PF0OtBGj6ksr0PnHycXJdKzZeIJSrAtTXUzdhgoOphj
 JGawUElpAsy4+1kwbUxHwsfPW/Q0tjJGF8yYMTyDFlz2DBcqnJsD8XB3MExsIYuZctjCKB6DMdO
 K2C25ZMFWos2IaJ71O6XRLLPfNRW9LLdhmVrU5ckOSXGdVrnAKnN51n7wg09rIWwgUsbQw3uguz
 LROpWUsUjWKfjDB8bNWBzqxhW9XSXkh6dSFHJPngXpzOnZpDroqp9hTT5TbSNsfUpsksKeYH/Jr
 t7UXtuKximIUbkSApKE9jtUNPUjNcDOPMpy+hVxGIdvFN4bblQ4J5aRTBV6i/FTZmIvRSxezrom
 IUC1hX6/nhbptXejc7ePmLvnuCvf2CSdP7urMV3EYncRAsGEK+QT7SZT3S4O0z3fdL/1zj2rOPu
 F9Y+eY0sQqQwkm9q+Qv1JsrcTR2VLfjXslTIam3QHLpSHyI8p8NLaFNremlstKYULsDiRdPT49q
 OXOymlqijKt+JdA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_105227_655795_CC889C98 
X-CRM114-Status: UNSURE (   8.99  )
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

Device is a thermal sensor and it requires '#thermal-sensor-cells', so
reference the thermal-sensor.yaml to simplify it and bring the
common definition of '#thermal-sensor-cells' property.

Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/thermal/rzg2l-thermal.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/rzg2l-thermal.yaml b/Documentation/devicetree/bindings/thermal/rzg2l-thermal.yaml
index 03f4b926e53c..2f96c0fe0f75 100644
--- a/Documentation/devicetree/bindings/thermal/rzg2l-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rzg2l-thermal.yaml
@@ -13,6 +13,8 @@ description:
 maintainers:
   - Biju Das <biju.das.jz@bp.renesas.com>
 
+$ref: thermal-sensor.yaml#
+
 properties:
   compatible:
     items:
@@ -43,9 +45,8 @@ required:
   - clocks
   - power-domains
   - resets
-  - "#thermal-sensor-cells"
 
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
