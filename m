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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8562AC4320E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:04:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4820160F02
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:04:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4820160F02
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBrh7Vi1X1CuJujU/ip3qF/twIUOwG5eW+CuZJH2lyU=; b=1sxH5vccJsltX/
	4fGhBPjOeiWvYaWI8vAifDlC1yp26iF1XdQWIu8BZMpdI4QMFfQd32R9s8fWF6VNODhIcCkgshYu+
	Hof4ozCmd6BIYT5s96TLwlT8sd4d9M7XCT598wbAD1Htmw2RxQ3C091JHICNHUJrFiDbpDh9FBzTO
	anG2bNw/ckNW7Kv/KsoAhh3KJQ4ba9F2gsF8IRyUUedf7TzyguiMDbDRCnkrlXtpRIpUVGtkyu+ye
	P1oCBlp2xuVsXZJd0osDDQlW7hgXFSLZiyms6ca2GuR3kdCpN1jxNGng2PMK5OZu/iDmlqc+3t+fg
	er49931lVlchYtiIeybw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nuj-001z5k-MI; Wed, 28 Jul 2021 18:04:17 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nrZ-001xom-Ly; Wed, 28 Jul 2021 18:01:06 +0000
Received: by mail-qt1-x82a.google.com with SMTP id l24so1989887qtj.4;
 Wed, 28 Jul 2021 11:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S56htb9vVkDrFmzApk71DTCJizGCv0+IZp82FWSdz/g=;
 b=owtO4XXjj6P6Rjd77xgdGJq/s1cIXPoVSiO7zCI14o5x9HuPAsV6xo+swVDwOS+ZjA
 ztTe4uNIBTc2IaR7dWUrUEv444EXFIJZy6s7fTrzROo+SKHeTIC/APTaUUNqsptqAjQ0
 JUJ7Ied3+YGJjFVtJZFOlQ2mF9N3Aj/vpGoCfzQNunvA4+Ik2Of+hjrHK/9J309xfIjj
 4UZiSMt+4qDj7ULdB+HUEI9y8pczBhA2zLfvQb3AC8H3OjvkXjxnAWA23bVWvT6eJVOv
 qRg+DZQmQ+QZPnN8KEAEs1Fn2ik2CCzzm48pRw9jXBkq0vSSIyR7vvtheY675Yq5MJUB
 OgVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S56htb9vVkDrFmzApk71DTCJizGCv0+IZp82FWSdz/g=;
 b=dVlk+sMdHSH+EXGmScyotFUKQ4APyftEE5sSoPWFiRykvnEPgD2dz5E1SEQB2hifM0
 KO+Z+voYlY6iMXDAhBMDRPlL/h7p/5pXK+wrZIz/6b0nHjXUXXcMXmjKljOHoQC0Uv32
 0HhAxEP9JfNlgvL2kH4G7OFNQCWNc3jNnEs/EyeaZdT6X27lXMJo+EjMVSoNlmN5520F
 Ji1P0NxD9gUGL7wwM+1kKo2+7foOadiBQ/ggcYpIXL+2ijbdJVy9FmiqoLyMxh9i9bXG
 PgUfOZpy7/baVzOfhbnbvZdBCuK6jJp+jWqJasw+LFkNxUDXkJxgNUOYvMhaKcaVa09Q
 eZ5Q==
X-Gm-Message-State: AOAM530MWUgOKjO8YVeioF0xi7S2pEcNfNu2PBJrp2tdVwwY2m5Ft7Um
 8/qpg6ffMT3ZIAltKbdawJ0=
X-Google-Smtp-Source: ABdhPJwXiOweFs0EgI4O/K88VOjku0nSLXkG/t0a1JDtXJczLMHrFHl2a0of4XrY2CunDR50P4P/hg==
X-Received: by 2002:ac8:4d9b:: with SMTP id a27mr688003qtw.351.1627495259053; 
 Wed, 28 Jul 2021 11:00:59 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id r5sm223341qtm.75.2021.07.28.11.00.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 11:00:58 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/8] arm64: dts: rockchip: add rk356x gpio debounce clocks
Date: Wed, 28 Jul 2021 14:00:29 -0400
Message-Id: <20210728180034.717953-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728180034.717953-1-pgwipeout@gmail.com>
References: <20210728180034.717953-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_110104_658010_D948CDA5 
X-CRM114-Status: GOOD (  13.53  )
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
