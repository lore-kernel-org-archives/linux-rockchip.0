Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8E83C30658
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 09:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HHYZNGOBu/9MbLBLNVBJPuUDu74Uqh6aleFRL41yRrw=; b=HZExl3rx1GIjvq
	SCsN0HvMvDWCAGHNKD45dbjGOvm6fzFaab3p1/SFS9hSYIib0B2YdnRs1y3gqdQTuIRmTiqinxbt2
	w7ZNzIEaHCItZORcDPZPldqdFQAeIAJTndMWj2UK9fFrmAb2KcY2TCkrnE5bLHRHk7na/k77/uk8d
	rtGCHTvHgJPSrGiOWSsvXQhAOtSL2xAjo1bZ8wRDKZGnblFsIclodu2U4TnwM03TLxhUs6zuNyJ/m
	grozOTZtzga3ZA4Ay3eRGi9EMUS1VD+G0YXerjlsrhJntF8Z0BsiqIfBNjYt998GTrzRjQi026hTN
	FYfZem27Ru4EKyBHlyGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfc8-0000000FWJh-1nEx;
	Fri, 05 Jul 2024 09:52:24 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfbg-0000000FVtS-1aBY
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jul 2024 09:51:59 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-36799a67d9cso1239454f8f.0
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jul 2024 02:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720173115; x=1720777915; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kJu1vmWUxTKY4ACFv7SXUQFPNZpjog7M5wGF280T4yg=;
        b=jv/f61uAUqjk8lH57p5yobziGKvAH1CFmOS9VX8zyFpSDlNGyVq3yMKDL3dWsZ45SI
         5SAbL7b5keO3YQmerrMkORKsw6Jix2KQEIDbypnQ+fiTUNuxUkbzotX63mZxKVVmw7cS
         1kCosWh3SE6wjLeyUFNLtWopXIh69GjRxrjRmlSkpQERE0VZYWTYkV4sezGKDAkyc4rG
         Z3LcLXW4v1LJw2FEy3tAJO+6TORiCeNRNETJ1Sqtaw0PneJfIBYEfQotd0MNnladyGYk
         fmmXhxAqW9+8IXZlVdpGnRGHw9rjJwDAzZ5QOsd6yJ15yYil6t9KsSdNzyPK0cYygGVd
         CrVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720173115; x=1720777915;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kJu1vmWUxTKY4ACFv7SXUQFPNZpjog7M5wGF280T4yg=;
        b=eSiRuTq2VmCtT0XOyhaubEi86j8Yqn+RCLOdaVxts/xzWwSCVlbVT5njlKFEKAraJj
         TmKWljSb1wYVS/W+hKtWA3LwT3fS1ArNXrIvrTGgtuPBrCx5iXQ3ddpl9b+rSm6AV96J
         vTTebHpVqd61Xnc+kc555o1feB8URqI54jey3GkJS4uHnBNdnBDCZcVwHNOfKR/OBicU
         FHua0GONfF2SorgXhV81Tl2vI3lV/VoJXWTyRPs8XYLwVOtGcXkH58cxk4m+BeJjUOED
         fD3tmt9e2NEbXzXIY6IJ5+2YiRbOySm2V5WVzmU6NvnueCBv/sDA1NMH15ca8obhFpKn
         Gd4g==
X-Forwarded-Encrypted: i=1; AJvYcCWsIronxw2qAfZHXFjUYFFXDzjjBcH4ie/0/q9UXY5Qh+T8FaWG12sd0roGxRyit0yul9ikcb42IwVmmGDE8Tib9/9Es5sl24t5cORTtAklQ00F
X-Gm-Message-State: AOJu0YwvEsVQsvq5trIfB5rqRaHkPwfhMUZlv5ZsRPa+d+tEOcp9uMVC
	Alsqh/19zjQ6QAzeFeG4eAPwmGd+xJa2SxRIDwE0dHIVG6iT2M4xlm80H/6ROUg=
X-Google-Smtp-Source: AGHT+IH8V0hkcfYPUlBscK7rDTKJum3Y/kp1D4wfK5gH6s/Rm3xSZgQUyKRbc81OqnK8GjQSgcWNiw==
X-Received: by 2002:a5d:62c4:0:b0:367:957d:b46d with SMTP id ffacd0b85a97d-3679dd71ef8mr3422417f8f.66.1720173114610;
        Fri, 05 Jul 2024 02:51:54 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d1650sm55528995e9.2.2024.07.05.02.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 02:51:53 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND 00/22] dt-bindings: thermal: few cleanups
Date: Fri, 05 Jul 2024 11:51:19 +0200
Message-Id: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABjCh2YC/42NwQ6CMBBEf4Xs2TVtLRw8eZCrBz0aDgUW2KS2Z
 kuIhvDvNnyBxzeTebNCImFKcC5WEFo4cQwZ9KGAbnJhJOQ+MxhlrKq0xX7GlkPPYUw4TyQv59F
 5Hwe0SnelokrTYCDv30IDf3b3E+71o75docn5xGmO8t0vF723f9gXjQpPqjWlqxwZSxfPwUk8R
 hmh2bbtB1q92lvLAAAA
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
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Vasily Khoruzhick <anarsoul@gmail.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Amit Kucheria <amitk@kernel.org>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
 Heiko Stuebner <heiko@sntech.de>, Biju Das <biju.das.jz@bp.renesas.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3987;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=e0XnXkSS2UbFWN0Enj/RykHQGyKigRvVK0Ae2vPy69Q=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmh8IhQOLA3YgiesM3X3PsNvQ88/UNWP+TTpAnV
 HPEl13fLgmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZofCIQAKCRDBN2bmhouD
 16lHEACAIqQ6rJ+IssE7c+6Byc/DFWCacf2uYgdbCx9SEJkdhTd2FBmqtuIGorS7GWv7sQjWxUw
 s0tkl2uvy1SLpEwSsjDX8jifZyU9Isz2koX+MPKaBiaM/l+shANrL9Ub8nkbK2VdKHVoqlBJ1jx
 CRViJ5HwLCQ+xul2EKAI8qfZdiBhLCvCWXiWyqNVOzGla8SXM2b07zV+Akza3BDZPfw42QEbgVE
 ZCAP2eYkIe0ZJiHNJ6PwjIb94/46R44k0NevaC/FRcinUnaHRNaKcUJ+fkPQ5XZjFH9sg8TCkxV
 vRMnI7NYrYrvYIOgRBa2T0QfbAP2dnxqo1gMdxQy0kJowh61zrLfLKAbYNJvlRh/r0AYziRZHrc
 U8k2+NDtbOPfp0vKsIvEtEC3qnpVHB8LTlfPNK+cpvv8uj0wWe+H0kJ/DCxIhbCjYZk/63YOAl8
 P4xRXaf/fFVZy+HxPYFCNrvf4MYBSg2XOhwvfprdm8AZXX3yR3YyZGVJ3UoGlbYvSkJDxTmP3Ii
 J1lsr1ay4TULQcqQNg3uiC5RLHxzMo/USu2p/M0FBbi2TJ/OlJynDRAO8z0Ox8Ggk1eiruF+q83
 92qWVFjKIhRWyHIkXpUcZhNw7GNERqxdsj6jrNJBa1nRCBdhobA/n7B8PPeqcsgzie6AEOHo9Ji
 h+HUlL/i4jtZxAA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_025156_511309_8B4AB737 
X-CRM114-Status: UNSURE (   7.95  )
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

Hi,

Resending (with added tags) because patchset was still not applied.
Daniel, can you pick it up?

Few cleanups witout practical impact, except maybe the Amlogic schema
(bringing required cells).

Link to v1: https://lore.kernel.org/r/20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org

Best regards,
Krzysztof

---
Krzysztof Kozlowski (22):
      dt-bindings: thermal: samsung,exynos: specify cells
      dt-bindings: thermal: amlogic: reference thermal-sensor schema
      dt-bindings: thermal: allwinner,sun8i-a83t-ths: reference thermal-sensor schema
      dt-bindings: thermal: brcm,avs-ro: reference thermal-sensor schema
      dt-bindings: thermal: generic-adc: reference thermal-sensor schema
      dt-bindings: thermal: imx8mm: reference thermal-sensor schema
      dt-bindings: thermal: nvidia,tegra186-bpmp: reference thermal-sensor schema
      dt-bindings: thermal: nvidia,tegra30-tsensor: reference thermal-sensor schema
      dt-bindings: thermal: qcom-spmi-adc-tm-hc: reference thermal-sensor schema
      dt-bindings: thermal: qcom-spmi-adc-tm5: reference thermal-sensor schema
      dt-bindings: thermal: qcom-tsens: reference thermal-sensor schema
      dt-bindings: thermal: qoriq: reference thermal-sensor schema
      dt-bindings: thermal: rcar-gen3: reference thermal-sensor schema
      dt-bindings: thermal: rockchip: reference thermal-sensor schema
      dt-bindings: thermal: rzg2l: reference thermal-sensor schema
      dt-bindings: thermal: socionext,uniphier: reference thermal-sensor schema
      dt-bindings: thermal: sprd: reference thermal-sensor schema
      dt-bindings: thermal: st,stm32: reference thermal-sensor schema
      dt-bindings: thermal: ti,am654: reference thermal-sensor schema
      dt-bindings: thermal: ti,j72xx: reference thermal-sensor schema
      dt-bindings: thermal: simplify few bindings
      dt-bindings: thermal: cleanup examples indentation

 .../bindings/thermal/allwinner,sun8i-a83t-ths.yaml |  6 +-
 .../bindings/thermal/amlogic,thermal.yaml          | 22 ++---
 .../bindings/thermal/brcm,avs-ro-thermal.yaml      | 22 ++---
 .../devicetree/bindings/thermal/brcm,avs-tmon.yaml | 17 ++--
 .../bindings/thermal/brcm,bcm2835-thermal.yaml     |  1 -
 .../bindings/thermal/fsl,scu-thermal.yaml          |  1 -
 .../bindings/thermal/generic-adc-thermal.yaml      |  5 +-
 .../bindings/thermal/imx8mm-thermal.yaml           |  5 +-
 .../bindings/thermal/loongson,ls2k-thermal.yaml    |  1 -
 .../bindings/thermal/mediatek,lvts-thermal.yaml    |  1 -
 .../bindings/thermal/nvidia,tegra124-soctherm.yaml |  1 -
 .../thermal/nvidia,tegra186-bpmp-thermal.yaml      | 12 +--
 .../bindings/thermal/nvidia,tegra30-tsensor.yaml   |  9 +-
 .../bindings/thermal/qcom,spmi-temp-alarm.yaml     |  1 -
 .../bindings/thermal/qcom-spmi-adc-tm-hc.yaml      |  8 +-
 .../bindings/thermal/qcom-spmi-adc-tm5.yaml        |  8 +-
 .../devicetree/bindings/thermal/qcom-tsens.yaml    | 96 ++++++++++------------
 .../devicetree/bindings/thermal/qoriq-thermal.yaml |  5 +-
 .../bindings/thermal/rcar-gen3-thermal.yaml        | 69 ++++++++--------
 .../devicetree/bindings/thermal/rcar-thermal.yaml  | 60 +++++++-------
 .../bindings/thermal/rockchip-thermal.yaml         |  5 +-
 .../devicetree/bindings/thermal/rzg2l-thermal.yaml | 41 ++++-----
 .../bindings/thermal/samsung,exynos-thermal.yaml   |  3 +-
 .../thermal/socionext,uniphier-thermal.yaml        |  5 +-
 .../devicetree/bindings/thermal/sprd-thermal.yaml  | 47 +++++------
 .../bindings/thermal/st,stm32-thermal.yaml         |  5 +-
 .../bindings/thermal/ti,am654-thermal.yaml         | 15 ++--
 .../bindings/thermal/ti,j72xx-thermal.yaml         |  5 +-
 28 files changed, 230 insertions(+), 246 deletions(-)
---
base-commit: 0b58e108042b0ed28a71cd7edf5175999955b233
change-id: 20240614-dt-bindings-thermal-allof-401c50e61ef2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
