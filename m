Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 983DCC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jY1Z8r586bTfBQuPIeBr71QVmY8Ag8auplvxvx/UuEA=; b=FXISFnOJBUnQGV
	ONu/glRvzgogpWR9KZIpA1z24VDiVco0KaormEacfRnRRCf/nSGPoUFfPrh+F/XlhkJL/XdBp6rAY
	2DqQYwfZQxyaxxEEul805l/DJsuQ0jyyBS/EUtJwRXrgA4i4GBrrgB1ZsLEpz6WNQqNRPB/1ExTQr
	APlACt4b0mOQS0qMVLKHSfOG8j7MGIDymTS+k3GQCvPvTfbONwBMDd8GR6WlegNMvmciAkpq7K56h
	Kh2RVs+Vo8sDTefmCKFR58lNNetaIad5wq8wcIVx7EiFtIipK0Gv5P3P4iDx5u7KKUEPwLmtTYDs9
	g+vlI5AOIW9UC+i33cjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5Yr-00BKzN-Mg; Mon, 25 Apr 2022 20:43:57 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DZ-00BBC1-86
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:22:01 +0000
Received: by mail-wm1-x331.google.com with SMTP id
 u9-20020a05600c00c900b00393e729e655so283365wmm.0
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7MLyGA4WUDMi+Qf8y5tCaEOv26U6HFRODkGLHS/fFC8=;
 b=1DGhKkAlmKMj8VjnV3ep4FYXi7E1a5hXQPg4RCAOuYNXy5SdyEQnKSSbw6+ApsWwBv
 C5cYpKhEabT21nYudVPxZEmxpBPHGcdq4QIFXhS4Oor7QWGDt6WuXmBRzTJWz3jSJfcr
 +xMIrsGPlzHVgEh5KL4hYmmmXn/RGBfaKr98GkiMLXI6MlGTQnsQtnmnBHbPyUOyy1bj
 zdg1f8KDja2Lowt4UoTqs1On1ic1XDcb6B2MarKSebXtATBssNXRMfQNgQ5rNjuACKs0
 UGbF+bxuprQwjv7uPWkVNX5KMg9TQjw0/UZf1GUpPy8QB5ZSSZzDVTPK2Y7twFlr/5F/
 ZYRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7MLyGA4WUDMi+Qf8y5tCaEOv26U6HFRODkGLHS/fFC8=;
 b=yiGNZ1TOZ4lfrPLLbgdzZ+RYr1jTfz0/koA/olMMSJWqEF+MjWYaz68+41h4sn0vvF
 +o3P30kkHq873+NhFU6O0ypi17Z9HDOCSf92gVf5a99OFKYakT12Jn4ztKOnUswcomid
 mWt0v375lP/SpmyWIa/pNk0gsrhYPzdsz/4t81AWxa2GJ6kX/vP6JQ+m9KyL3Dp+b50+
 5HN121iUXXOwPUT8+pPNrYLjvyiXYYFL0XfQpcO8E3HSlkpBHrFsaej/xtG+tCSqQtGo
 NP6cP4DvCUdFu4p/XCd70ujRqA82zxZhVXWeDS60ASuDSylTjVbfBxpL3GtYEPZABpsG
 nPWg==
X-Gm-Message-State: AOAM532BvTMWCEewkdNMs9hk2/DPzBmtdz0tIcmOWEXLTJp1RFGdhCMs
 QyX2lHY2J5xhXrkwVdCHouKdKQ==
X-Google-Smtp-Source: ABdhPJxtGcvDjSJow9NUiLdDEYv7ckDaPYq/azkLYCavmxyFb1xlL8kzUOm+RLN0ln3aPeHhQ7pADA==
X-Received: by 2002:a05:600c:4e4a:b0:392:88e1:74a7 with SMTP id
 e10-20020a05600c4e4a00b0039288e174a7mr27460256wmq.174.1650918113681; 
 Mon, 25 Apr 2022 13:21:53 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:53 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 27/33] arm64: dts: rockchip: add rk3328 crypto node
Date: Mon, 25 Apr 2022 20:21:13 +0000
Message-Id: <20220425202119.3566743-28-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132157_334071_6A28B7AA 
X-CRM114-Status: GOOD (  10.21  )
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
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b822533dc7f1..c23fa985e66d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1007,6 +1007,17 @@ gic: interrupt-controller@ff811000 {
 		      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 	};
 
+	crypto: crypto@ff060000 {
+		compatible = "rockchip,rk3328-crypto";
+		reg = <0x0 0xff060000 0x0 0x4000>;
+		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO>;
+		reset-names = "crypto-rst";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3328-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
