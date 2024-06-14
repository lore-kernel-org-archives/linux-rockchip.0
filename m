Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC43BC27C6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 09:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi9M1dTUPrgK+gDDeTAAFCvGpaeEZgDcwe/nL7CSwaI=; b=GGMcZMDoHozNsD
	lvcpMONx57aiBHhsWheO49QrH4G9uT0suWNTSTlADm8hTgMDgkYomGa1vGHUInGDZFsclmc1VFKBs
	P0bQIe2rnGai4Jdoa6HD94kNJKvejJdlK384hFxyfTMIbXrWX9OI/t8yOXQLG5VsTFl+fzBY0SqWn
	Rh/faWtLY3gb1SOXDMBTPe707r60Hm10YPFxhIfwm9dc3iXr7lcOLlANCf8dp/Ym3FXdwK3GWNOjf
	RGb6pzBPmuTi9IguGsSRrtnPtRr+Z1mEcVmR4ukLjX9eqvyuOK762G/68btA1trWgX45Z9Y0tN5Dm
	RaF8a2NbPlxgFngU0kTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3YV-00000002H2R-1vG5;
	Fri, 14 Jun 2024 09:49:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3Wl-00000002FjQ-32tx
	for linux-rockchip@bombadil.infradead.org;
	Fri, 14 Jun 2024 09:47:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=H1L1hUKhvb8qMRf1UscQN2W9C1hTFJkKm90Yn4dmB8k=; b=n+rI4cFx453n+RgDMCP1X5BdXK
	RUwkbCjyzm28cFRZ2kwBYuPO4A//G0TEOlQ2XdlD0KCcyokZzbB5/7MTN+g+Fk87esbvfXYLi4AWn
	Rx661qWkPB+nUBcJ2d9oE6AkRrjVaRRbfT2siYJ4+sVXwphFtr6LqedRRAvQoeyaVreM+pq47QJ6E
	vtFtKBByWJ9nBfOAQTx9KI/qztCefW83yH7w2rTYxbQJhfYERsYzMvgPyYpVazsRGH4gDe1RidkQm
	AO8n1us+Tlftm1a27A4s8SmNNCYJnaTe4nKC6h11IWmXmVwx4mrVCprJWpTWreUZ1JXKn2m3k3JeU
	tiAN39Ew==;
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3We-00000004FEd-2PjG
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 09:47:21 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a6e349c0f2bso275225866b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2024 02:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718358434; x=1718963234; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H1L1hUKhvb8qMRf1UscQN2W9C1hTFJkKm90Yn4dmB8k=;
        b=FHbgyejjja29eQDkcXNokGXkoiDOGKedC5zKUOtmnUJZehucr1hRaeq42VeOmgBACz
         PSqDtznC9Ayr8Meq2XXFQ9x2LXNuYJX3qt8EZBUyqMz4LGTrQMqgI4WgOa04u9gDLSm1
         A0fBCHASPqp+Fey+ZnF+s3ExtA81rwxhumD3Jo6CxNuRHZ5oazsNCpYoIhiY72P78VID
         x31pLNvyISZxNpPXA7zus/kffoOMqRUIzFTnJqxLhPG44nb+h7qL1t0dcm/M6myXsPHK
         4FUr1ojQZzJJH9ZGPkCJN5l+XwfFk+VehNWjUb1JuUHJQpO1CuAY5Q9sK9oLi4+duZRU
         qrxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718358434; x=1718963234;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H1L1hUKhvb8qMRf1UscQN2W9C1hTFJkKm90Yn4dmB8k=;
        b=Vkqh1BgLSm8Ix/PH42SaIsL1ja5Z93vcRxqam9aA7Gi86qj4buCXA1q4AqgnVwcnzY
         nx5Dct0oAKjq+67Rr3Y2jD+654D6TpT8Eu8vLhPj9AJNeZs1n4vmeuqAhFr+mOKJm3Kx
         7I/E4xxLNWMr5b01BgnXpacKC+kehKuNPldxuCvJvDpV1AoBbhyw0DEpEtufxA7G++AZ
         pjKwmZBP0Tnc8It9EYwX8glVJqyBWL1f3KWV5JLIKUpA/mt61zTDYd4CGPS86vm+UdG6
         J2/KHxtbIyusAmCIGeDDJZb+VAKWGfwCiHoBWdFexOJ13VUxMOPFcn1TGY96AfU+FutI
         6wxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVv+WibBsg+aESZk4x+Y8Ox09GdL1FxR9EdV7TO0+swPKDUBD45YfrmqMU8i8mEi70s/kACEMdoLcPTOEtCMIyhlM4kT5Muaosao+8QI89cyeWH
X-Gm-Message-State: AOJu0Yz+6e+O6CLtRQEnagZihwYfTl1jJYvcz5z+ozaCyoF6mnlhpzWx
	eoi7ppMm9wK7NwZPa74P6BMhRE5RsTI578PtlU22Nu0hqYjqtLhgyDROQQcJBvo=
X-Google-Smtp-Source: AGHT+IESUfkXPP4PfG4NWjsxbxp6NlwMJWMU5nP5/by69p2zzzbRxPpfOQIPY19suOJaj0e0fGtyQg==
X-Received: by 2002:a17:906:1c09:b0:a6e:fe97:b33a with SMTP id a640c23a62f3a-a6f60d27c9bmr135962466b.29.1718358433828;
        Fri, 14 Jun 2024 02:47:13 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.206.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f9c84csm164966366b.222.2024.06.14.02.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 02:47:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 14 Jun 2024 11:46:17 +0200
Subject: [PATCH 18/22] dt-bindings: thermal: st,stm32: reference
 thermal-sensor schema
MIME-Version: 1.0
Message-Id: <20240614-dt-bindings-thermal-allof-v1-18-30b25a6ae24e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1226;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=3L8KlXex0s7qoR5YcxPA2jc6XZ2NrZwE3MC+jn02OI0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbBFvVBZGRKV/QP0IvsM9xQ7ICCZWH+Dk9XKXT
 QeAll8jTOyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZmwRbwAKCRDBN2bmhouD
 15jEEACAeCBwooCDdYSgCgknbyYtJysaUKzyYrYH9LKW3iH9vLFvBYECLMzvA/BwOarmAczsVAn
 fTlAGnKMVex9imbHWzOiNhf5ZXJTAyeGmdo63wQlftWI9gXXCb3Xc6Lv4UOwCRCd31OgT7hbyzZ
 wA3bUPn9xpqvEw4ehdlFsQkxanu4ntK1/aFsss1ruH8J6Bwio6yXlukjniaoB4tjPouPwRHLEau
 qnnIw5VWJwicO9aMpZn7cuhafO+WIXlSvQ35WQrlsT0dCdmwWa8ghuHOMX4kCOgVsTlAbsYhZsf
 8TXEFNmKAij2Q0paybkFaDqAUJeLHQ9KpBaZMmCqL2IeRqn8pftQuPiOtLn/g32Nv8ltQ5Wup9B
 FGG02Dke9RBEGHc75ujsQMC6I7TMWUcslAcU0oTczDA1j/7mMe9pym1p1A4OepLhZWuJCOy53kT
 TqXiJ+AGHI7NYE0i1YtdiTME5h5mx4xsV5p4wEgKq83VqZG3f4Um+sQfVhJyPll6dchA1xVh6mn
 UHPg8yItoeRub88Q5cRPGvwDCf9PdtNQIURSCXSK0p8znfBo4uVgVpGj6VLJqFtei3hEw3L/Czi
 WJC6lRFVr4kIKqTKckckW6ov1GA1SzZd+uPLlAWlY1dK7VkzLkh1M3jmGs6xCjm0nsb+xIJ7PKs
 lu9YouNtXcCBKHQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_104717_031281_3FFB2B6A 
X-CRM114-Status: GOOD (  10.10  )
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
 Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml b/Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml
index ab043084f667..1c01a80a0cdd 100644
--- a/Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml
@@ -9,6 +9,8 @@ title: STMicroelectronics STM32 digital thermal sensor (DTS)
 maintainers:
   - Pascal Paillet <p.paillet@foss.st.com>
 
+$ref: thermal-sensor.yaml#
+
 properties:
   compatible:
     const: st,stm32-thermal
@@ -30,14 +32,13 @@ properties:
     const: 0
 
 required:
-  - "#thermal-sensor-cells"
   - compatible
   - reg
   - interrupts
   - clocks
   - clock-names
 
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
