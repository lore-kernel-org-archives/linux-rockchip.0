Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD486C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:04:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD4A960F59
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:04:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AD4A960F59
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBrh7Vi1X1CuJujU/ip3qF/twIUOwG5eW+CuZJH2lyU=; b=SUvr/4FY59198b
	+NHnGOLub/CfTo/CMW2KcPa3pw+jSR778mNrrYnyGADUppCjrudrZqNOvzKuAQBpm0c5ebn4YCQE8
	++GD1j8vpUGmHfKKif6RWLRJ8i4bSioPYkgzyDd+Jg5+PnHy4mAKYkdemO+sI0F8PfPAEvLJZ8GML
	YD0lBT8aFg2h4S5tXx/uQYS2IKT90A8NYfRomXjwd1+xaA1fWjAI/9zmqRKsvtZmUmruryEK41LVW
	1Zvl9P1fsLiqMPOtjmwi6GqKMJ4XI/ziM1ROlO2II5BiB0/C3J7g1q3iJZihSMo+NmDPQ357yybyX
	WG0gQ7aAgGA7o8++aGpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kA9-000vl6-Dr; Wed, 28 Jul 2021 14:03:57 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8k2O-000rtm-NP; Wed, 28 Jul 2021 13:56:00 +0000
Received: by mail-qk1-x72d.google.com with SMTP id t66so2304623qkb.0;
 Wed, 28 Jul 2021 06:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S56htb9vVkDrFmzApk71DTCJizGCv0+IZp82FWSdz/g=;
 b=E8cuFmXqjHfLllE6yR7g1E34dMT/0iPJZw6DLYh6lm8kZm7xOuai4TWh4DiCAfglld
 OnkhoLtHVQ8XVSiuL/R44vrYuoaW3wS8lMUnEpQvQfKyx7afA/Up7DR5NvctljZKJw4N
 mN2Nzyls+8dn9LasQQcI13VTAcI69c29GUtW8qh9LIHm9ApYX9X541+w8x9wGMFZvhGG
 Z3Ft6wrgHRbdps4jgahEOwTJ9n/BZ6TtaqSV/yy4Rr4TKansQQIKCPGasrLclgIP//tS
 bw5+DddVYToqrUiyuFnSTI1MmbgNgirAUzId+NDL8UazYC3m0YeJ1rIQtq/kIkZNugG1
 JYhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S56htb9vVkDrFmzApk71DTCJizGCv0+IZp82FWSdz/g=;
 b=i75zH91VGhb7hPfZhjxKOPnac/vX8E7bK9VxsB6kxNPdbW6cXUcvr5nO8cGmVPBn3x
 D9VUODa0czC7ZT5I8ienjo1jxszpxSvboxQyIFJbTOwmb3qf4QtPyINqtoviRF6LMxy1
 tXr4boI2a3MteC3tTv0EPaA8sZK6LKUSM8E1C72OyMXS5a/TcI/QmLqolN/+S1y4DAVS
 Z5+QUG4qgl6fuGp9iJKYQkSLQ19Mm1L/Xl3l2bfDzB7HKDWFcZLn4aFI6GMq9Umu/pon
 f4z4n1f7QBZr/B433JF2LSBy2RHnNT/ONPgqbc/qCbTxvIFFkW0JW5LM7RA8tfrSqwMl
 WMtw==
X-Gm-Message-State: AOAM530FuzNjALeyEXEcRf9t7nYFAPzeJRZ3lCP7SHO6MtZA4ONUQCuG
 IYC7iBICuhUANmRN8UXCFTPWTTk/Gw71Xc5u
X-Google-Smtp-Source: ABdhPJwP81NA2r+kZGDYStvsEpwYxM6uFEq0jWx5yFJXsrySE3baKz0WlLBBJ3XVPEOBZmyn58D0XQ==
X-Received: by 2002:a05:620a:537:: with SMTP id
 h23mr7409375qkh.361.1627480554839; 
 Wed, 28 Jul 2021 06:55:54 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id t64sm27202qkd.71.2021.07.28.06.55.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 06:55:54 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 3/9] arm64: dts: rockchip: add rk356x gpio debounce clocks
Date: Wed, 28 Jul 2021 09:55:28 -0400
Message-Id: <20210728135534.703028-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728135534.703028-1-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_065556_867187_6E031C24 
X-CRM114-Status: GOOD (  13.91  )
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

The rk356x added a debounce clock to the gpio devices. This clock is
necessary for the new v2 gpio driver to bind.
Add the clocks to the rk356x device tree.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index f7ecdfd66f86..c2aa7aeec58d 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -750,7 +750,7 @@ gpio0: gpio@fdd60000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xfdd60000 0x0 0x100>;
 			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&pmucru PCLK_GPIO0>;
+			clocks = <&pmucru PCLK_GPIO0>, <&pmucru DBCLK_GPIO0>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			interrupt-controller;
@@ -761,7 +761,7 @@ gpio1: gpio@fe740000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xfe740000 0x0 0x100>;
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cru PCLK_GPIO1>;
+			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			interrupt-controller;
@@ -772,7 +772,7 @@ gpio2: gpio@fe750000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xfe750000 0x0 0x100>;
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cru PCLK_GPIO2>;
+			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			interrupt-controller;
@@ -783,7 +783,7 @@ gpio3: gpio@fe760000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xfe760000 0x0 0x100>;
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cru PCLK_GPIO3>;
+			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			interrupt-controller;
@@ -794,7 +794,7 @@ gpio4: gpio@fe770000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xfe770000 0x0 0x100>;
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cru PCLK_GPIO4>;
+			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			interrupt-controller;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
