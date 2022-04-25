Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA551C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 17:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ds4Qe48KX1RxeA57XdA9+1ya6OAtZIGsomevTaoENWA=; b=tT0GU4ES5QKeWe
	/2scN69U5yttggsAQvTbnrSjE8gaKpZLig1SkGYn2YG9Ox18O2b2WD5cBGx5XCSppiuIRTkyN6zxD
	7j8JSETsdFfDtR6tHI5Gyz15nVw7lSGUGMVL/sqq1ewrifNxl7jgloJbaTb/Z8ndldE8Ezm93xFJz
	1CuCMo3N2MNBsBjWtostZ0NbW2qzdgOZEViu8NWErl2hM6qWvM4+TWHfKbhrZnMkZh/W79ItBoUOp
	wY+jb7YrznKdIywNcdMnwKCkmr1KQpMJcD3uPay16xjlAIfjJO2C5Vtxw34Tv0YwwvxCMpoYRMNfr
	Lh2NaDX/aNp+IgBXXvJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj2IC-00AZDv-Sk; Mon, 25 Apr 2022 17:14:32 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj2HX-00AYsI-7z; Mon, 25 Apr 2022 17:13:53 +0000
Received: by mail-qk1-x730.google.com with SMTP id 204so11265902qkg.5;
 Mon, 25 Apr 2022 10:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zdBkDQmKoIggvVv+9nKr+EG7gevAiBpcUOqfYxzGhEU=;
 b=paxMNbaCwj5l3BgZd9lXV3mk+YDHGTTipw58Fdv/lu3cA8wVeGSVFUT4BcRfYY7TJ8
 KFmWRn8nG2Z29rqjm72k8XN1HnSVkIxfZprfp3gH84s9xECBZ+J26J2jiJxI8WzAeS/P
 9YGQ5pOgxCJC0sL7bhLQuIEN0f/bX+7KXfINO2VPnaVXTr3ByI2AIWkL846sovb6hhhn
 Uz9dP4c4CmE0FsHMmXXrVFIBKV+Wq7/BRbKRbnxie9kBXcoOdERewQkGzBLkUQs4G+E+
 KvdMqn+Gl7HWGDzlC3t2CsoRUyQRIsHlN5dlyJ2nIbI8ri+GwpIpPt8241yPRxtuxDCP
 JxJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zdBkDQmKoIggvVv+9nKr+EG7gevAiBpcUOqfYxzGhEU=;
 b=0b5MAMOSVSw9OH4KEhvxIz1p1dAkfhO2U/m44inDr088xUQTrj+V8l65jcbuY3kTkA
 CnLr8jMynB+LTM3acLD0Z8IbjXMrvepsGFG1nHtMb3kR9ZkWpQLLhs0VeXUWhWPnYu8g
 XCXydVhOlN3aKhFAYN/iEbaARpKJ/4bxRgxYquPVev2NapdM0rUum56PI0qi+fAWNRH4
 mxwGgsOETb3cNgY7aYFnBiAWJjNOu8dudzCeCKYvxVBI9eU4OT89CTvKG3iw9Gag8cCp
 JYBZHqnPD92AZDPu7H1tGOliE0LR1QHnxsKdoVGcWPjcnb5W42b7DtCBPQqd/Qp0bZ5K
 LPqQ==
X-Gm-Message-State: AOAM531Qgn6Liir+1jU1ZoXj5F01/CdcPKETgdsoalAWq6CvH5B9SS7P
 S+Kh3DeZ72QD/0+MJ7hA37wI5dj+lJCclQ==
X-Google-Smtp-Source: ABdhPJxb2SXF9ciMnaHs12z+YBgFKGrTWnGOCo6+3US1a6jJS7uDHVoqaFxdI5yGP+IDlmXKOilTYQ==
X-Received: by 2002:a37:b686:0:b0:69e:99ba:4ce2 with SMTP id
 g128-20020a37b686000000b0069e99ba4ce2mr10728313qkf.721.1650906830113; 
 Mon, 25 Apr 2022 10:13:50 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v3-20020a05622a014300b002e1dcd4cfa9sm7154928qtw.64.2022.04.25.10.13.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 10:13:49 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 4/7] arm64: dts: rockchip: add rk356x sfc support
Date: Mon, 25 Apr 2022 13:13:41 -0400
Message-Id: <20220425171344.1924057-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425171344.1924057-1-pgwipeout@gmail.com>
References: <20220425171344.1924057-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_101351_319812_CB9F97B6 
X-CRM114-Status: GOOD (  11.24  )
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

Add the sfc node to the rk356x device tree. This enables spi flash
support for this soc.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index ca20d7b91fe5..61a6d9d4c8a0 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -750,6 +750,17 @@ sdmmc1: mmc@fe2c0000 {
 		status = "disabled";
 	};
 
+	sfc: spi@fe300000 {
+		compatible = "rockchip,sfc";
+		reg = <0x0 0xfe300000 0x0 0x4000>;
+		interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		pinctrl-0 = <&fspi_pins>;
+		pinctrl-names = "default";
+		status = "disabled";
+	};
+
 	sdhci: mmc@fe310000 {
 		compatible = "rockchip,rk3568-dwcmshc";
 		reg = <0x0 0xfe310000 0x0 0x10000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
