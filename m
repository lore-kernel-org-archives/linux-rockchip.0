Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 915EDC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyhx7JHaUAyz+sEHp5evrRQnwUlKNPA6sBvzAsSbbAg=; b=PJ7yJ1sBvdPMn7
	kbbWFLpR8/h7rWYzj8fKlgUAGI/Hj7SGn7Ikf53p0t64RjQlsBL7f92ufKZ/cu3GUsTVP0TgDxJAv
	HlYh1zqaXIfJZpQ5ArtcXQl09hh6sJeiw/EDRj2K+2PgOs5X3+N+/p3HjrVX4K9hxP4TjMTpwwx1t
	Fc3rLhcpAnxWVFGFPUt/bWfM1rxRjRqxgzJsCrl8DzsQMqpATJkD2A5KDXP+tU2BXUlZ8+UhvDv2o
	QQv/T1v8UgnTY69uSap9dZATQTyhZ9oW8bah4ec52rsFNUwNA0XMKUHNqeRCfjQ7OZFa7MWyNBST2
	Xt3FmjtATLcLTEFWbqjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neifH-002RXg-Nw; Wed, 13 Apr 2022 19:28:31 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiLJ-002IJO-7K
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:55 +0000
Received: by mail-wr1-x432.google.com with SMTP id t1so3997188wra.4
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X4PiWPA2z+YwiPjwmkViEPpFlveGzLMoVQh4AfeqXKE=;
 b=C/qAk6G4NiYUU7imkWzxTVcy+jWPhtrMBcEY1VpgYiGNTigN76B5hrAraH9OPjkCng
 uvTk1YM8YQYAAOm9cswIf1PZigEi5Qs9c4VbSgt0zJ3Npdp4bWVuJtuJVtkbnozJRHhc
 furNtTN582R6tzoy1Zi6VEOpZcX2UAkjdPLNV10bhyMLcCg27jSnOrXkQRniA5hjJ5ow
 FwZMl2tyx/p3dRk0KhkbG6Wlbe2pQ+xwcJNyJ2EcnY62vGx+zxEaSAqvi0veVtTRXo0v
 hGfR1Oh7y4IzLJsu8o/KPbSqWD60CR2nQsoq1FCWxyuX37f30XxFAb84NVmaKjICKldE
 IIwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X4PiWPA2z+YwiPjwmkViEPpFlveGzLMoVQh4AfeqXKE=;
 b=O188qYDB0doNag9dAs6/PLOSNxM7eqtXPhKT7g5YwxOBzqR6zSU86vzxU1Did7kQfj
 owFdk0fKT4dF9WT2bogQcPdLdDnXK9sjTnuibHVCWa4F8wKaYCfgb6Dj1WazXlwfs10S
 76T8fiZVFMiiQ8G1RLIigpO8Bxt0UzmMB7HDrIoxRYsnklkx/e+huy2UWxoANKm5rG7b
 829h6En1n6UX0FAPkL/FXye7QA3nZs40cGCt0re47l5gcnyIBp5wyJmaseuVMoooPxhp
 xWcIhouHPZif/Z4qFAJI9M2ZmCANUvf/VnIybiWK2uFgVEppSOYSWlEnJUOKVfR3FYkh
 9o+g==
X-Gm-Message-State: AOAM5332vCBKORny4aYOh422tyoZjHprXHtrYmqQXHTdYycxEucRdkso
 GSFsLxYXBOgjJtFaeq+9SynSbA==
X-Google-Smtp-Source: ABdhPJx54Vb7E9c+Pkar02daKFssprFjEyOoa3rUt+CZLrNTNtjjYYLGhb1I73t8K4nwcQ+4ixZSKg==
X-Received: by 2002:adf:f152:0:b0:207:b0fb:b332 with SMTP id
 y18-20020adff152000000b00207b0fbb332mr232332wro.17.1649876871988; 
 Wed, 13 Apr 2022 12:07:51 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:51 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 28/33] arm64: dts: rockchip: rk3399: add crypto node
Date: Wed, 13 Apr 2022 19:07:08 +0000
Message-Id: <20220413190713.1427956-29-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120753_343410_D2A6F672 
X-CRM114-Status: UNSURE (   9.12  )
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
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index a90beec50f6a..b9b16008813e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -582,6 +582,26 @@ saradc: saradc@ff100000 {
 		status = "disabled";
 	};
 
+	crypto0: crypto@ff8b0000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYPTO0>, <&cru SCLK_CRYPTO0>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CRYPTO0_M>;
+		reset-names = "rst_master", "rst_slave", "crypto-rst";
+	};
+
+	crypto1: crypto@ff8b8000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b8000 0x0 0x4000>;
+		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1>, <&cru SCLK_CRYPTO1>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M>;
+		reset-names = "rst_master", "rst_slave", "crypto-rst";
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
