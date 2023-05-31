Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97F5EC7EE23
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 May 2023 16:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDEYHpV5m8EwvUFeNLO9dSS6rNE3asXTShzayelgBW0=; b=GaQastqjw7ogx6
	I+0V3ARNPVdr26KeKOXNSiGETVHQem/WhKzOKy8dUDUF8Cl76iKQD6wKlLEi74JGL1P98KNScX8M1
	g0xYgFyzaCDljsQT7X5NSM/kSEpk8Cbg8UIGtwIg+2ogppsmckBh9ES94UsTV+1n2cPCUITLkieHf
	gaGHAxbza1YEHD0tllBtjc1Ad/fVjvDaFDRoVRP9VlPjDw/vqwpcEw9Csqza5Pyw0FNuOdklVFoEE
	izTMoLLtSy//0wMNPggp9bWBn77pqgiErfeznzIWqd/K74PqP0ZRxQEc6uznR7+qyGFByJcuA3HFk
	9eE+TB93j3REOKl6kKjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ORR-000Qcp-0K;
	Wed, 31 May 2023 16:12:53 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ORO-000QX9-0P
	for linux-rockchip@lists.infradead.org;
	Wed, 31 May 2023 16:12:51 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3980c92d8d6so4334137b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 31 May 2023 09:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685549556; x=1688141556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Mgi1xCWZGOa//ARDGoMV+dgV7iPjlGc+gvDlG8j5pY=;
        b=PZnucp9l3cbOJYNS4ueddqjEEZ8mcfJ6W0Ck4NznYJ3LEwRyWjnQW88S048hfUOv/v
         4aW89ZLe6NY8KKzO+clT1PS3V88icDIWjFnQwkY/AR81uwVvRihKIqvb9LsZVIZoTJW8
         AGSSuuZyxbtEa0sCh7fY8vJ66aohXoiCUbIC/Zuv8GOnvb+p14/G7v0K76+If8Sgch7r
         Dro43qtKqIt/tRf50jhZCprtkOYedvPxh0JpcJwK9R5b6tkjWTv9mWLj/LNcbyiH8mXP
         BiRdbbsWCyJNYN5SSvhD/9eFMK9JiEJ0Js3bDVgdr2u/+i2MYzRoGCmHeURBnF+RTOCf
         j8EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685549556; x=1688141556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Mgi1xCWZGOa//ARDGoMV+dgV7iPjlGc+gvDlG8j5pY=;
        b=Af7oCd1sOUVxURDT3aDFEmgbZV5YrvxL9iwy8TpN5ikjUcYgHxPKMWXGoOQun2tlpn
         CtGDF5Yn98zpTd5p18BQPv5Xi1aJeTsVCi8bjBwraAYXageDzjYF0QlS/GdZl+sYyaPJ
         EFlqQUBc9P/eYoh1agqPbEduv4TfPNaInW2TI7PVuCliP3EDpCwzmmkxYC5ZupiEw6yL
         Y6yOLQBq7bnUDA2JsV+Czb0UEDuA5SxhLHGvfE0uQnOzh/a4/kCGD/q2GNPys/GMFJos
         SylDkk999maqp0uWvkW6vib259RG/Vt70Ul9SyhQtASlmEA9kjzCbEXVRTv3No8AOgYC
         6jYw==
X-Gm-Message-State: AC+VfDyO81ehcFlkyEv5YFtgXTYQc8MckgJj6wF7cIrUm3D8mzf/biRc
	C4gU6i5aVhdkIJbPOacg9Zm3cLhNw4s=
X-Google-Smtp-Source: ACHHUZ7LVp2g0t8qTz5y+O/1IpqRwIgac7m9ArAcTHcTrsSWH/DIvSNEzahZbFLtX1ZxcUEtuQhC5g==
X-Received: by 2002:a05:6808:244a:b0:39a:5ce7:f9e3 with SMTP id bw10-20020a056808244a00b0039a5ce7f9e3mr789621oib.48.1685549555930;
        Wed, 31 May 2023 09:12:35 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c3-20020a544e83000000b0039a21e8c620sm684633oiy.3.2023.05.31.09.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 09:12:35 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	lucas.tanure@collabora.com,
	kever.yang@rock-chips.com,
	yifeng.zhao@rock-chips.com,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@amarulasolutions.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	broonie@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/5] arm64: dts: rockchip: Add sdio node to rk3588
Date: Wed, 31 May 2023 11:12:17 -0500
Message-Id: <20230531161220.280744-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531161220.280744-1-macroalpha82@gmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_091250_169263_E5094792 
X-CRM114-Status: UNSURE (   9.58  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add SDIO node for rk3588/rk3588s.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 571cdec24a66..6335d5648bc3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1176,6 +1176,21 @@ sdmmc: mmc@fe2c0000 {
 		status = "disabled";
 	};
 
+	sdio: mmc@fe2d0000 {
+		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x00 0xfe2d0000 0x00 0x4000>;
+		interrupts = <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_SDIO>, <&cru CCLK_SRC_SDIO>,
+			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <200000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdiom1_pins>;
+		power-domains = <&power RK3588_PD_SDIO>;
+		status = "disabled";
+	};
+
 	sdhci: mmc@fe2e0000 {
 		compatible = "rockchip,rk3588-dwcmshc";
 		reg = <0x0 0xfe2e0000 0x0 0x10000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
