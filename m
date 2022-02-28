Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C913C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRz+2x5qy31j5PvHH9FukFW7NrlcxhTWNkeKm3AzIkY=; b=moO822IMaepCIq
	txQBdOHyIXEHfm7ou3o8YrntuGmPItl6hVLv1IxOdpBgfTgrnzEFL5BPunsj/BmB3ZVL53k0craF+
	W9m9GmncZnYf75DrKEh0SjiV4BKjzSttAAn8PHGOF2Xr2TSefE8LiX5MbCW+xgOa9Iulx+MLVswxU
	0Fv2fSbmVk00S9aHmOFOp3E3NM3rGaGm+7R5/7Oo2TzqRPrLE9oEGoHBMJKF05TefDmTzjkVSjlla
	OdYATRnCzGiW+bAtk+dfVzx7Rq6MA/lkMac2FBZwcgvYjFOKvlOO1e00PDdx/vSUE/JaYn0AISHIE
	m7rFjSAPP8DSOQ02XLDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOm0X-00DrFf-DK; Mon, 28 Feb 2022 19:48:33 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOlt9-00Dneo-U5
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 19:41:02 +0000
Received: by mail-wr1-x429.google.com with SMTP id n14so17081292wrq.7
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 11:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fkd5OgGZAYlE36QCfyuNvc5GmV+0MnZ1bSpfiAbg2cw=;
 b=JK0UxR8SULpByCcRzm2G2mLhbOG4xykXXoKOo615/erEm1wh4/Qdb0nI8qoCuj5IOg
 //zF3/xkExio5t4u7h0JGuVVrnPtro4rEjHcpnPlqQ3sb3Wdb5IGn0KY7d36oGFwvC3h
 jDOhMMfRC2DM+2qNxD0QocF8h1l/Iq70da74KrYxQiebHZWyI26VjHggnD8Sxi2o+D3F
 SMqlyIUrP1Hel5wlXVZbUKjj+As3G6ijk0spi8B6Ev/z7gsxhCkBFHetSHY4V9NqZZhd
 HiX6lYxpOua7x+1F1IsBo+kRVRMBXo3hUdq9qumD7B2axdycN6VMATakoOO06PvXb+eW
 1b2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fkd5OgGZAYlE36QCfyuNvc5GmV+0MnZ1bSpfiAbg2cw=;
 b=KbQSTmVatgO7dH7PkASqRCNmGDMgyz0RlALCnKkyc8ckzCTPrucETSBtyzAo2WFtqf
 M/ut661JlqDIAyr0uCPYTJULMF0IcWQ/bviKTO/vlpVhMw3pqRvO6XRTZ+XexmAjJedj
 Gt4IkTpPvRsBMTAkdZJbgMNmS6W13S+QlqFGrHywZmglYPMVmFRC2VmS6Bp+PZc53F0G
 P84pyrLvOFMppEiEKqA6ter6LYuAyokC/W1hKJK3SKWxQt5XfFz0CfJ40EGoFheszg1k
 GDgWDPUCPgfKQWd7xxSgfBfYlBKdbFs8v00/rugguwX2npw76Q3D4d4LA8demXjcgehS
 6tfg==
X-Gm-Message-State: AOAM531TwRfIit9EAbwJr2p2yHC/5MPXs5X3Ycprg/OXa1i5/s3GYIyX
 2+Nj2BQhq4snFSMyZVqzJot4nQ==
X-Google-Smtp-Source: ABdhPJzC8b6GL7WHeAsFebTLadlGbKT2RHM3vC7SGbZuhx23oAACfoFrTCtSq4XVrdzPXpQC6LKoxA==
X-Received: by 2002:a5d:6f0f:0:b0:1ef:f983:3887 with SMTP id
 ay15-20020a5d6f0f000000b001eff9833887mr2058062wrb.526.1646077254609; 
 Mon, 28 Feb 2022 11:40:54 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 11:40:54 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 15/16] arm64: dts: rockchip: add rk3328 crypto node
Date: Mon, 28 Feb 2022 19:40:36 +0000
Message-Id: <20220228194037.1600509-16-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_114056_076091_5EF0B013 
X-CRM114-Status: GOOD (  10.03  )
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

rk3328 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b822533dc7f1..b5b47ddc38f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1007,6 +1007,18 @@ gic: interrupt-controller@ff811000 {
 		      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 	};
 
+	crypto: crypto@ff060000 {
+		compatible = "rockchip,rk3288-crypto";
+		reg = <0x0 0xff060000 0x0 0x4000>;
+		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_CRYPTO>;
+		reset-names = "crypto-rst";
+		status = "okay";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3328-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
