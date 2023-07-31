Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4B37C001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGUoZlgk3F/vQQbahiUx09LInhHTlMA8+ZsthtkMar0=; b=btubaFnzb8po2J
	+yh851LLCvTuXZShKVCfHk/Z1Xj+RYJURymC5Aa1opB7HQ/R2X6Jb3CPKwsPvRpI8ML6vTVGhWbXJ
	kmdWxcrDXJJ22QUyUk1h6tp2OXKv40RrrUbv/RA9oWBh75JhMzsOWsCnxrPkJRu/y16rnXj1Ovmu/
	z2FGip5cM64IDZuu7dS1D1wr2DbVy2p8H/3tMdYrT3NOdroAUkrS/Ny/NBk3bEhaUQWt+AwskpZps
	ohhlCStCGJwq6Qhx5teUGOdM2Va9a8m0VAN/YQs5yfsqt+w57rpNSFA4ohX4NPMKNxIblq0KgM9Jx
	sUEqMHuhFaVkbkH+bZmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGV-00F7K6-2G;
	Mon, 31 Jul 2023 10:36:39 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQG2-00F6px-0D
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:36:12 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-686fa3fc860so2623960b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799769; x=1691404569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sPRT5kECbC/GYO7wPZNg3h793p47hsYwG18RkdRFC5s=;
        b=0mZHzneQyOPl4IvidRtx9cb0tl8Am90dF5U/VRSBIInINoctdwgqiwp+sUxbxYA16c
         7C9FF9tc3MFhgVI8NdzJuHnHz/EO1A/Y89whDB8GgIrps4l2sT4a58+kueX9ej6IprN+
         NjOm+NVQ1EZc+d+q6yPu8a6pPML1OhvpuFEzIRZg9tXxjAOhG6TcrMH8MTtFQi70LxMu
         QIdsekQKJs0mNes/n3YhPduOb5W85TRD9zlls4jG1DMvJ8qZS9Nx2/QA9H3IlQpxholn
         5aHTVmw7OZQfcKN2b5AW3SxiiOQXGOf2BPKStoSG9GujevArX8rLJ/iUzlkyEeQM+fy7
         dxnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799769; x=1691404569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sPRT5kECbC/GYO7wPZNg3h793p47hsYwG18RkdRFC5s=;
        b=l599hudYd7KUoafRa5f2SV5bfsSlLy5XsbIyfo1GMMq9g8ZAOfvy6mdFyZsIUYcvRf
         Bj/QIR+WG5ig2hK6qTKZo7kbHeSim2XwQeNY4Svje50qt3ryPJrjbvMv/uhC6/3/RveU
         VKtHFJ0NIIGQgGsETHOXUpAwlZzd7hbfV9zRsJWvHdhPRZOvLs1lKk1qJgpmM8zmRruQ
         DMxJreM3OUj4CU6HD4zTz45FBWfgzPSBh7saa2OSazu914qHMIKcvMTDhwxZnRArFlXQ
         9xtJ+lLfCRGPaG+epnVIFRBcllopBAleU5fcNXC3cSEHsfOKGShTTbu5MCtuLd+AFH+1
         +h1w==
X-Gm-Message-State: ABy/qLYZKseYbsebQYVrPy0uk0CPKXKTi/Onv5FL6bnICYL3BHvpBccA
	aojBVlx+JVqzsA9r0K2aLQJhIg==
X-Google-Smtp-Source: APBJJlEbgSS3pzx245CBih2CuZkilJ9yX1wKWhYaHqSa4Yzn7BPhgI5X++bksUnwET0dxRC/N/9aAQ==
X-Received: by 2002:aa7:88cf:0:b0:687:4277:4060 with SMTP id k15-20020aa788cf000000b0068742774060mr1272707pff.25.1690799768924;
        Mon, 31 Jul 2023 03:36:08 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:08 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 06/13] ARM: dts: rockchip: rv1126: Add SFC node
Date: Mon, 31 Jul 2023 16:05:11 +0530
Message-Id: <20230731103518.2906147-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033610_108037_C3AD8583 
X-CRM114-Status: GOOD (  10.57  )
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

Add Rockchip SFC controller node for rv1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 86b560dc3b64..afa5a68f766f 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -441,6 +441,18 @@ sdio: mmc@ffc70000 {
 		status = "disabled";
 	};
 
+	sfc: spi@ffc90000  {
+		compatible = "rockchip,sfc";
+		reg = <0xffc90000 0x4000>;
+		interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru SCLK_SFC>;
+		assigned-clock-rates = <80000000>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		power-domains = <&power RV1126_PD_NVM>;
+		status = "disabled";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rv1126-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
