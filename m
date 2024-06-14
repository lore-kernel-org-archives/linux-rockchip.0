Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40EA4C27C75
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 09:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Outr4ThcldcG4qlLjY2cMd9xol26cLTQsVeWBjIVvqM=; b=i2LJVd9cXc7rUl
	cZwHORk0oMNzyt25TAoEMlROxNhxOFjd+V1NDGkIizOnBp5gtChZm8bztwXZ/AUZ/ko4baFCvCorF
	P2/RK6v2cO0QuibTA+JuV5K73yf8HsvBYyWpUUs5lScqGplq4zpxUbnJd4aMEeE1ptIBytz8s1/hX
	V0+HxRKvDvMzVlQJc97E9JghEsbgfhNtLTfnVK4tGgrHQd3RFgrA8vUQb5dIktCEh/l0ttY4jxGpJ
	tqmuCivtXrHo8L0J0aiR+jyj0kvla5MyibBS+QgfTsDQj3hmm92QRM3UquwlOkJgbcwOH392WFHM1
	rqDD4hWXCsUf7XPyrZew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3Xz-00000002Gel-1sKM;
	Fri, 14 Jun 2024 09:48:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3Wb-00000002FWD-0ZIZ
	for linux-rockchip@bombadil.infradead.org;
	Fri, 14 Jun 2024 09:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Iwmc7YyUOm4xBDbjnVE/cLl9RXPcTzMFZ8fnvjc/kFM=; b=TNoyBx7T7mnoDTuiPYz3L8i1gP
	vNqO0M/rcPe4oPDqEhwxTu2N/8eYDmQLJlOusKeiniB8h9s8q/2AvlV/5+bjCdEZzQ6V3KWMw3tiJ
	Ogli9eEBuEvTcpyNCGsca2aCfucQCnEAefoNklC53unHvCQdtVrynWkE1fRB5ejY7Iaije6KERh1E
	+zpUBxogvro2gb6/v43aCWkopVAmxqGlk0iO4NpQ9Fd9HXF15+/H7nCn50ENw44P/fchZAvBlpj88
	aPZPuoPRF/yYeoRR//6XgkV5bmy6hnEV/TjZsrFY4N9tc9cPVew2Wp3tl3qHlyvAjejbT5Q9QLrp1
	rMJe+Ueg==;
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3WT-00000004FCA-3sRB
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 09:47:08 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a6f1cf00b3aso309797366b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2024 02:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718358424; x=1718963224; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iwmc7YyUOm4xBDbjnVE/cLl9RXPcTzMFZ8fnvjc/kFM=;
        b=GRtSqkSwLv/SmiYQ44t5F1vCSzdwrI4gIi6Mrv4zAIPGkeXAatmjV8ATuLC7jHtUm6
         dGnSErpVGboHU8jSBMO8ddIu7agX7reaKMhAhoGKckRtuD4YPZiA/+kcLaPuHKQyigCD
         LYAfgPgrfQ2EjYDxnl6xY4+oeDRRkFHnnsCXYX4aQyIgw/1mq64ZHAo11asjPHGvacE3
         HwBayVbUkWdG3jc3MzDVWw9WvdeHZMbh+stq3ei2zYlghseNmrhpUXZzkYm3hDECR6S/
         5KlWUmRQXXYcDOa+keX4+kAqFBhJpF7qUbHmmLwm9LYmN7kr2mh9QoYs85YdNh3M+ZlH
         gTBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718358424; x=1718963224;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iwmc7YyUOm4xBDbjnVE/cLl9RXPcTzMFZ8fnvjc/kFM=;
        b=pKwzjsEK0s4gX4cupniGz/B+cPtXqvzWA2ACWMCNR97xgAIaUJCZrQ0q7M/lJtsMky
         k26RFptd5ahI58UY7AcL8oo+xJjnqBh9a+59BOh/z8/SEnNmxm5LhgFES6aMLEvt79iD
         xRXNZUkijJM43CY0zJIBuNtymddNrP1prPbEqV9yeh0z3+a1sAZ7EpL4IvlCU2yaJR+x
         t2ZHEiie/WxjPtOPjGvP1hDUtB8vVixcb7FsLimej/BwMsc7qsPa/Zdepy1gG2/iKT8b
         4mlQTVL8Axyzv6eUgPD/5sIeSCNDqE9gTcoKAZqbKiqvS3j8J1lgo8DkzlecOPVqHsuB
         D9sg==
X-Forwarded-Encrypted: i=1; AJvYcCWpt7/YSsxo7PCNzeDeomnkyn5wLGIf4SWDlgi0Jvq79cukNmqu/w5rR31GL9avSZDDf40iHVQjZz3Xn9CnjIiC+IvPKMik/lmEdGf6Z4AkM4kg
X-Gm-Message-State: AOJu0Ywghayoe8agv1d8JWpP0pDcWAm+/Nk1KrAHFpZiXDFy1BNJiI6A
	giRtrpzppGHiZo882Vr/m7Fg4GqAPC/n8sqI/lSCw5jR1jm+60TIQsrBVkCveNQ=
X-Google-Smtp-Source: AGHT+IFGHX4cF4M1r2y8AHK5kgGVnBSOah5PGU+We1I9mKi7qiDqk6ZzvLWJM+Qwin1N8Vfc/vcJnQ==
X-Received: by 2002:a17:906:c0c5:b0:a6e:f53c:8da0 with SMTP id a640c23a62f3a-a6f6080c781mr154203666b.8.1718358424287;
        Fri, 14 Jun 2024 02:47:04 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.206.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f9c84csm164966366b.222.2024.06.14.02.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 02:47:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 14 Jun 2024 11:46:13 +0200
Subject: [PATCH 14/22] dt-bindings: thermal: rockchip: reference
 thermal-sensor schema
MIME-Version: 1.0
Message-Id: <20240614-dt-bindings-thermal-allof-v1-14-30b25a6ae24e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1131;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=6a1ezUMQBbtM3uBevrHObXqlW1KAkGO0em2HgJT7Ukk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbBFsTvtf1ULZrtH6GWJrZWn/jbBu50Y0K1VTc
 0Wt6oeUybGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZmwRbAAKCRDBN2bmhouD
 1/NwD/9O4ot8cobnhA94V3eGyRXw9zI5iESIUEkI1Mbbo7u21Zss4doBkhIDxJVQPLibQlpPDKs
 vl14uXutFJcltQlm/A30q7/jGYqin8KK+/fxS+lF14J7Fm+3oR2w5nhGXJq/9eptPEvk3xiH1p0
 6sQMjw0nuX+vqvIdVI0HSIGysiYW9eHWrwjfT2H0x2AI4eSjoOjqRw8BCVG1NOXkiOcWojysyie
 6Pe/a65m99arhY72cNG5XsPMldFzUjctBN5RFrE6OKZdohirpSSKFR4ui2PdxAp5GhEkcvlApXu
 JTKC1SMMHbFFDPVGHC4z0FdwyT7hbxBnR4zeVza8HeF7gY1NwvdMte/ICkBOm4nLC9XiXxBh8Ox
 gRb5WbhTZMcA2D/BRpTHEH8cJRx9l++VITdFXDh2DKM1zJBSyTXZLBp2T/nznU4UCoZvGVo8L/6
 SL6E6301KeFidlqEV72QLyq6H/+0idmujB7H/OwDlIz3rWlt8WAbKmtD8gwZWJAconS5R/wzo0q
 qwhIyGQup+u9pvI87775gFYyWIrMSKJUCjFFjCt+azCgzvgFIR1RFwzl+4Um4RPBXjtpfLa8Sv+
 qUC1e3KXvqeGpd2hDPVFEIJxO/3TRP8QqO5N7KwNG1PZSSDA/LKALNPT6of5MqC/u13zepj07zJ
 tHBm3LjcR8x8A1Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_104706_349199_A0127A44 
X-CRM114-Status: GOOD (  10.45  )
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
 Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index 55f8ec0bec01..b717ea8261ca 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -9,6 +9,8 @@ title: Temperature Sensor ADC (TSADC) on Rockchip SoCs
 maintainers:
   - Heiko Stuebner <heiko@sntech.de>
 
+$ref: thermal-sensor.yaml#
+
 properties:
   compatible:
     enum:
@@ -76,9 +78,8 @@ required:
   - clocks
   - clock-names
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
