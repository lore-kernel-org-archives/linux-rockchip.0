Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D385AC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Upe1Wijf8yIuX8ozWRIbszwzAzAjon0WBOV1WgkHa4A=; b=nE6HhyWgWusv5F
	fsKGDw5STzR6qjpiP5rJqJ55LrY6e0IlJtxXNietUrAVAXacq2n6RZ5F2PIbB9NsVfrZGXJJ21R/e
	Hc6z/lB0Pliw2O3uv0Zha/nNqJEVEGPN3gLfNP2za2lRbhn3XoTGbpXLCoJQbbl+Aga73qSRBvM2z
	oL2cSPHq96xclnpYa6kAE7oEFJEWYQNwoDAV/4FE4gxM6cbLb/VK96ycoHEYjZfUXRHSRsZBoImju
	pTNJmgpuT3FmcyMe9pT1byGRJecNlqelqM+EYm6izrtQlI00Lv5EamLLHRayMtMVqqYtxYHDmoI0+
	l5BXcsSxkhPJ4u+LJB1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNyD-007Cwv-0S; Fri, 01 Apr 2022 20:34:09 +0000
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNj9-0075Aq-P1
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:38 +0000
Received: by mail-wr1-f43.google.com with SMTP id w4so5742288wrg.12
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qnu62bJemS/jWg8J4I3N48ZBUGfR4KO6Vf9cdKvDqZI=;
 b=8TVf6qwBl0uHvhrV68CLdsiGsrTE4EUegwd1ikdA6z/qhYMFiO6FC/yl0QH0cUg+mS
 7aHD98hPOgUw0yGHMUPePkVSMeX/Pv822pWJN5/Q/nof2wZApIO0w/1YDrGxkXd077Ki
 AGAYeB9kJbKYwOR1ixFoqpKkgH8UEETuZwtA+O14p7ER+XBV84HDnsgNBp+jjokLu4B/
 plJkkZ/pLYKyYhNYSoUWqk6x5x2QOQmI/U5Hg2UjwMSgkWLRHDRhQzXoxa+WkYh3xJ6T
 4cIu8c4NI4pPTDGg9AiHr0lGuN/onYesvoW3VQwf5wnHBsgpUE6VcWNCIZcG4bn5HeIW
 UJ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qnu62bJemS/jWg8J4I3N48ZBUGfR4KO6Vf9cdKvDqZI=;
 b=28uUU6lBxhlx9FFCGYbayc+N/8aYyKXxddt/W1S42TisCUnNfizADu2HI4erxN8yvC
 t7A5Fwzba9Yyly241MlxxHHqMyKNBNF1YsHF3AsEbkIyJLaiO0r7+v5Xt79y4xLFJQk3
 L0qFwTf0BHKmQbW4Lbi3t94kD86+mRpqYzq4z8wLJ4wRlcOLSRP6zsXfXfNp3muiqQdr
 OWiQeEFKkOAiy857RKuWOJ6xxBJ29Ukaur+yYpInAbtw5YusJoejWTQoOpZkOSYe/4Xx
 Ja78gYYGg13OFwU6ps9CL0HNCzQMxcdm7dCUjjV+VZ7bkpq+37c8axpCUzbyjoM5JKFr
 60RQ==
X-Gm-Message-State: AOAM533Zs8yf5S1XYH5YEZQdYZcvsbGJ3zwpMNlzNb8nD24Hx8rKoCH3
 458pZF+/eur/1M4lKqAzm6N1Zw==
X-Google-Smtp-Source: ABdhPJyzMnqRZxBp1VScKUGrqBnHjZLNhiPrB1uY3/f7ItRkGi4AfEMDThcmsWoiphNLREoBcSKQJQ==
X-Received: by 2002:a5d:64e7:0:b0:205:8b74:8db7 with SMTP id
 g7-20020a5d64e7000000b002058b748db7mr8794143wri.34.1648844314215; 
 Fri, 01 Apr 2022 13:18:34 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:33 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 32/33] arm64: dts: rockchip: rk3399: add crypto node
Date: Fri,  1 Apr 2022 20:18:03 +0000
Message-Id: <20220401201804.2867154-33-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131835_889976_D5B0D9C8 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The rk3399 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 88f26d89eea1..2f355de14fce 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -573,6 +573,24 @@ saradc: saradc@ff100000 {
 		status = "disabled";
 	};
 
+	crypto0: crypto@ff8b0000 {
+		compatible = "rockchip,rk3399-crypto0";
+		reg = <0x0 0xff8b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYPTO0>, <&cru SCLK_CRYPTO0>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CRYPTO0_M>;
+	};
+
+	crypto1: crypto@ff8b8000 {
+		compatible = "rockchip,rk3399-crypto1";
+		reg = <0x0 0xff8b8000 0x0 0x4000>;
+		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1>, <&cru SCLK_CRYPTO1>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M>;
+	};
+
 	i2c1: i2c@ff110000 {
 		compatible = "rockchip,rk3399-i2c";
 		reg = <0x0 0xff110000 0x0 0x1000>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
