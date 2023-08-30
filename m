Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6296EC6FA8F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Aug 2023 13:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4WZCesAAwxxBN5FUaBSxA0Ez8IvoqKD5S+EONSClWY=; b=mmn1eNcX2v2X12
	NEzDFe57UZ3OtQlMA1ueu1vEn4jLyFuqMY9QKaXsON6jiYkAiD4obULJ2nNBi0vpYXWNekzBcI3nv
	oBig08KsSOe1X3dfdjY3oidijZWBICrSMgCSKu3UYn2bnf9+KtaeMW2BsgORxoodIfAp0ndBtclcR
	AP07RXvzPG4TqpKOwG0XEKUvdkEzI5CLY/EUfHG2Itk7FjeWWZmGWRIP+TkCwuM6BCsfWyQlZoC/U
	akC18X8vzJ0UAjgESkGzHFWa44cdupfvAU3EqOFmEMS6/dPWdP12PUEJdmUez3StIDh6WJn5Sg05q
	yPHSm7QThYBdTlnjZFDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLPb-00DamN-1q;
	Wed, 30 Aug 2023 13:39:11 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLPZ-00DakS-19;
	Wed, 30 Aug 2023 13:39:10 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3ff1c397405so54969145e9.3;
        Wed, 30 Aug 2023 06:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693402746; x=1694007546; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jpHx+qT44al35s/p87ISMBhXkrOuDfFp8hT6ok2goWA=;
        b=o7Nsp99clx01gzONdxtZZyAiH+q2G5ABBBsvJBaZkb3uodrNTqvZlnJfXjCT3V9OxC
         u+FqIG1zcThHqFyphKu3T3OtFvVroaRVw2MXgjgzpG5zimUfJ0bqR55LnsYny6mj7ESA
         d4ydnwVMjVdjzrjsiqsYL/45QrmhNObpNR0ihWpqtIP6QJSHcmZFwIxemjNiFlrzcdWA
         LtT3N/v1GA3+CzLGdbSnXPPNY0scXrgRdm7xr94yHddgvTV7xHexYZ5pFoo4Q/YV+8K7
         XQxigGGmtYO/SUOLVTdKvmxZWcRrzdoCs13Jb2mZfvN6z8lfNZgJUTWBfvq1ewru0ijK
         1x+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693402746; x=1694007546;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jpHx+qT44al35s/p87ISMBhXkrOuDfFp8hT6ok2goWA=;
        b=YQunG9wEO1aBNuaWp1j1La2JulVJfUq0IMpoEjHxE4Rzpni85HaDsmEr4oAb9+YXtx
         Xw6CxGXLvERQTcnZaQhdn9m1f5kQNxEZ+NJB2ajqbimcwVmiHO4LbUk5J18KcKXrP3Lx
         GZV45mtRX/wTSHLGlyI3Q3rM44hexxDXs3IeEFeQLsXAN+G1xuusacfu+FtdDqiGDYWx
         vXdL2i+eeRon8FyF2LaoMQ3IzDSV21dzfK4RMYnUr66oH8kp9pyK59raTabSoa7GF3t3
         QHlGmfqEQhPTZx/zU+TGx+sUS25s+gMBZy1NLw5ccg3vxz3eD/JbhtT9nRlIICgH1ckU
         7lmA==
X-Gm-Message-State: AOJu0Yxl6KnzF+IH06A3Oi5xEXredMWxz0cqjVqPj5sA76Lw/JHQlDbO
	KJSUECb7FwxdPMI2E/5S3g==
X-Google-Smtp-Source: AGHT+IHlbgEqDyyYbfZ8/HjulLf6EuL2Xg3HoOLu/KNL1vlY6Ux5XdymCeYFIwfur9uJlNX+2El4AA==
X-Received: by 2002:a05:600c:3651:b0:401:b1c6:97d8 with SMTP id y17-20020a05600c365100b00401b1c697d8mr1981597wmq.35.1693402746347;
        Wed, 30 Aug 2023 06:39:06 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b963:7410:17bb:6f65:50d0:b82b])
        by smtp.gmail.com with ESMTPSA id x14-20020a05600c2a4e00b003fed70fb09dsm2326343wme.26.2023.08.30.06.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 06:39:05 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 4/5] ARM: dts: rockchip: Add dwc2 otg fifo siztes for RK3128
Date: Wed, 30 Aug 2023 15:36:27 +0200
Message-ID: <20230830133623.83075-10-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230830133623.83075-2-knaerzche@gmail.com>
References: <20230830133623.83075-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_063909_398563_CC984DF1 
X-CRM114-Status: GOOD (  10.70  )
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

The driver currently won't probe correctly if those values are missing.
They have been taken from dowstream kernel and match those of other
Rockchip SoCs.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index ffe99db0eeb7..119e89fef2a2 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -100,6 +100,9 @@ usb_otg: usb@10180000 {
 		clocks = <&cru HCLK_OTG>;
 		clock-names = "otg";
 		dr_mode = "otg";
+		g-np-tx-fifo-size = <16>;
+		g-rx-fifo-size = <280>;
+		g-tx-fifo-size = <256 128 128 64 32 16>;
 		phys = <&usb2phy_otg>;
 		phy-names = "usb2-phy";
 		status = "disabled";
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
