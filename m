Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3229C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzMLKbh2GidNPyDZ2ydukmxjFWrusJGH+AUQ3LOi8+M=; b=YY5JgYDNA0t3hi
	zrVVpcU5hNpIYK0oHoB4+y2PhUNkKUdHgvuuUHN1WbFmtHKZxzhOYueKavWvzC2dyL1NR8stHmQQS
	8QkGJpTFCwefw3dhsWZF8qaJ4+vG4O56FW9FFfvBtmtM2Y0jMV8sbda8tSiWpoxkHfINa27WbHYPE
	U6q98eMZyVSwmrWwqtRMWpkdJfP11XUICgVzOkw5C/1CwGTBZKnAy30yavcC4yPpNg7oAN/fhjHrm
	75GoURu5tjMCHUWGYcD9HzIBSmTP712hQrwe1jaOcr3deD8tgSitP1ZGyFJV8WgxnelnJjfriQ2uu
	YXRuEWH14xrFu1y93P2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWVe-004JF3-Qx; Wed, 02 Mar 2022 21:27:46 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWFx-004BmO-NX
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:11:43 +0000
Received: by mail-wr1-x430.google.com with SMTP id bk29so4750071wrb.4
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n0XDEkVzi02ucM2UrKM/vf81RC1FXZtbtWIn7AE/m+k=;
 b=rBXJLVQ+DzeFYZA8QhKF2AMXUPBrtWLltHifuRhmlG1JCN0jnAtk/ZA+T1Aj3l9jc9
 f85Ap4pw9ux+2MzuABx5rl8AVBc217FhrlH8mTcV0EATNHcu+KeeS6h0h4fc4Jo8MnEr
 DTL3BEq8My1dbGGyMXK8hOrhqCX0DASswJRp43ti8p5S3G7+kNV60FnN+knWcoNm0CRX
 YM9tfeXAr5smwlBF3XkILda0NE1nU7LpdVJgFYgTzaYSKU9ibEm2kMENfSizNBdcKA5x
 SJI9cahqfrk4vKuK0ZbeZTCVNeG9Pt7v71rHHMZ3H8FlXCh1hJ0q8F6fxNnj1GiKw3Jo
 U/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n0XDEkVzi02ucM2UrKM/vf81RC1FXZtbtWIn7AE/m+k=;
 b=GIM9Y6+t/ciiGdm3dHV+Kbj/MOEDFHBa63KFIE4NBVZa0/XKyMhJboseck9i14H4XZ
 nHsCkwbAXOosyra8MfZV9qvn3w+dn/zkITZcODskUsXnz3PEYX6TtuX4L2u0VTpG59SU
 xbnSu+L9J1J5M8LB8J+31qw7keZfyho+xT7wC6JxA3WOGCy1XCpnBfaseKTofntTyQeE
 Os4LHsjgIcNlG0VQWJYA2f0ri3Q9lofg/vOh97+n73y/2CbVr4eD87MBq7/diESpb3KR
 7aDfGH5x4CN10F9lin+JDOgujHTZeODYgzfPeqv2gnyuZVvTBKdGHDzqXe53tqepvp2s
 M2Rg==
X-Gm-Message-State: AOAM530d/guFFnQcYW35OhCjr95WfIu8XIuNPZ4tofFFV7VwMATab62X
 h+LHTXsdISKNxAepli4PBuMkYXSmBF14Tw==
X-Google-Smtp-Source: ABdhPJw2UkcLaqCfRGtB/0mkc9AHKUIrzibjI0BySUWdgGzJYan1i7squwY2t8DH6S75mqaTK9h5mw==
X-Received: by 2002:adf:f70a:0:b0:1ee:33bf:3864 with SMTP id
 r10-20020adff70a000000b001ee33bf3864mr22502025wrp.4.1646255492259; 
 Wed, 02 Mar 2022 13:11:32 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:11:31 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 12/18] ARM: dts: rk3288: crypto do not need dma clock
Date: Wed,  2 Mar 2022 21:11:07 +0000
Message-Id: <20220302211113.4003816-13-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302211113.4003816-1-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_131133_820021_F47B3880 
X-CRM114-Status: GOOD (  11.31  )
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

The DMA clock is already enabled by DMA and so crypto does not need to
handle it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 26b9bbe310af..64be7d4a2d39 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -976,8 +976,8 @@ crypto: crypto@ff8a0000 {
 		reg = <0x0 0xff8a0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
-			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
-		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "aclk", "hclk", "sclk";
 		resets = <&cru SRST_CRYPTO>;
 		reset-names = "crypto-rst";
 	};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
