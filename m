Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1581C43219
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzMLKbh2GidNPyDZ2ydukmxjFWrusJGH+AUQ3LOi8+M=; b=t10OTmv91F0kRW
	yGEykyLxpKM+FkbqYJ64MgYO/pgaOqRC/79ND3ED5332NhenSOFTnGUni5wgxwPyU0Seb0KIeMQRK
	vHAt8NtBA6ngPLIZ/g6SRmvOvUd5lOyF+nfFsVXnLubwa380s5lDOldVbBxT57TFTQxfPCbUTpU61
	1C+o0vs92qXNrRWyEElbwFF9fOze7cGAzkT1TjjOrzw7CeIEupcDv0HR8z+82017duiuI6SSqPf0i
	0xOUYCaJwMZ81dL6XhN5SWfgj3olJ78rE5ESp+EdBLqibbWR+qf5e5VVixIsYkGQAmLsiHSd7mu/3
	9jilEwgk7fdUPXrR6CkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOlyu-00DqMn-Qk; Mon, 28 Feb 2022 19:46:52 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOlt8-00Dncm-0X
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 19:41:00 +0000
Received: by mail-wm1-x32c.google.com with SMTP id
 c18-20020a7bc852000000b003806ce86c6dso46837wml.5
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 11:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n0XDEkVzi02ucM2UrKM/vf81RC1FXZtbtWIn7AE/m+k=;
 b=Dg/YhTchN/dzit9dPs906M4E2c8W9YbYDdJDkUr+sgVevUcFyxD1MKfKC4NCejyEV3
 4uooanL4NNVwCzcV0SMou47PR33uiMQn0iqzquGP8ILqcc/7MU0lAHcAl7U1qkAr9qpJ
 SlqOFUJLzEBZ9XD28j/6CndjNKuVW422jLD3SbyONOO4fQafuu7NYo9xNXGz/R9HjWmO
 RIEGNQVlAfpbMe8Ak/5lZAMLzj0ddUiKlni1mDB8z6/yvOPsBSuoB+6udugXRuGDm1R3
 kpL7K1PNtOpgxJvF/8DJ4aq7Gkg5MU6NmxkxgaI6OnnZ7TeMU5jFkn7Un7SyZRFwhbSo
 68Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n0XDEkVzi02ucM2UrKM/vf81RC1FXZtbtWIn7AE/m+k=;
 b=t3TxPnupTEqW+qiY/MA4flFOjJHpCjX3j50wksKHItYwKZcTHiTiAuwMaxZAHWzIvK
 u+rnGvMthC1NcYz3kd5GVM0ea1GcH6IqSFuJr7mR1cE+aRBo9VFOLgY6oxZYyB0KzO3M
 6JITl1k3Vehh0cRGtnGD0o5pd+EuiryDBldGGZMTew15/ocaKpD1508704lTQy7ZcXyz
 983OhSxjnP6ciDH8wfdwPxRLWywGTcGQrTWDhbIlUBkKxqIExBf7/vbDffUr7g2qpFPK
 liXuigByHDd4ToXGD3j4tENAcJ7B+U0zwVojROQd7bwkjaf/3gHlVM2ljs0e+C6Xns1J
 3xkg==
X-Gm-Message-State: AOAM5335W/VOUTmCdDC2EDlH4twZzFPdy4gTxILnRfov20GLiHgOg3r3
 cauYI+UaxkXPCV1u9OAITWgJtA==
X-Google-Smtp-Source: ABdhPJwkZpmQZMj24miJa4rIAkZ9zDJCidU+xH/RIv5ZF56eOWbqUySS6AbKxsXIgvWROOl6Z6N/1A==
X-Received: by 2002:a05:600c:198f:b0:380:fa8f:be22 with SMTP id
 t15-20020a05600c198f00b00380fa8fbe22mr14268130wmq.43.1646077252461; 
 Mon, 28 Feb 2022 11:40:52 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 11:40:52 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 12/16] ARM: dts: rk3288: crypto do not need dma clock
Date: Mon, 28 Feb 2022 19:40:33 +0000
Message-Id: <20220228194037.1600509-13-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_114054_109247_F147907F 
X-CRM114-Status: GOOD (  10.72  )
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
