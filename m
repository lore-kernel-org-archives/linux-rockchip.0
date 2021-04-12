Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922DEC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 22:37:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 09CE961246
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 22:37:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 09CE961246
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NFye4pH8fXHQytABbsgiSaxyNjVj7ylAgRhE5K1/0JA=; b=CnSMZ9h/XNDlQUp1stCsac4vz2
	k/GW+hfK8hUsVz6Y9hqFOeMZwfZJENIpZ3yd8AuQH8D5pKfls27bwOnfHHlHRwNFGbJI1DKUlpZ46
	KVARm+FIj7VDxsEuegyXBAQudlw4R7EEARgwjLF0GoCPtRsGH2RKo9K5zFRR3ODd+8SYPQ22uaSvs
	qp0XwPSXoJL9FB3CHwSbi8dX3lV6HgwnZ0skE4ga8rWpXsbUsBghzF6HrYZICjQfLBtzGfBBQhp/l
	he3GHGd7GZNtvOAxLzMJOOfDB1fpvXhcWXJbgMVEOBIPmXTlKCwI+toB807D4rNy+KKb481iMTRm2
	qmvDQXbQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW5Bc-007oBR-Jj; Mon, 12 Apr 2021 22:37:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW5AV-007naw-PT; Mon, 12 Apr 2021 22:36:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=sHokrbjxUk9CxNu5Bo4VP4hyr5zpK6a3pydEeIAAa54=; b=e5y2oLVLTmFAvVEE+0VYkamWNm
 WeaVdsFF6T4bSLwli4fut1nHznImlZeOY/V5cheNRu0aoo2cDQfum2r6F7W0+TmMzKQoXuJ7al2eK
 TXdT1BPwhIVB+Hk+2bgegAKjBCC/9Avo5ao/SKpKRu0cg+27J+ynQXSmV66EkFRRgByih3yZTx0rh
 Fn79iTaJHoUp8VboFkmuIpSRKR+/7MQFfkj9IFO0qHLa1jLJWlZb6GCMJcDLyd8+3ua2m4s+SDke3
 0qO5jorwliJrmURYM5pcAxCoRzMZwMzYjRxMFyfNJaTmZ30JOROIjt9MhNf9lP0m0vRrzYoQiQGC9
 PU8WfibQ==;
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW5AT-006avh-0l; Mon, 12 Apr 2021 22:36:30 +0000
Received: by mail-ed1-x536.google.com with SMTP id f8so16984112edd.11;
 Mon, 12 Apr 2021 15:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sHokrbjxUk9CxNu5Bo4VP4hyr5zpK6a3pydEeIAAa54=;
 b=p4lbONYRgUNkJpbLpLAGpYQoLZc5D3Ovfx7cQn5XuHlF5BizOnbL116S2dHoSfXCVA
 5qbDfqqGiW5E4OT0KXyaFGbo6UsuYROyC1EuFyKvJ/MI55cizEoCB8dfvKeXhE64lsgK
 zAGSlhMMdDNGUyKNlDQ+RuftsrTvVlUYzf1Tjl/8rDgPn5oS67BmF2YWVbXEYLXg3Cq0
 VkjMAUT3omqHqnt5ZANhQjJzkVSeOJyeA5PW0q8dxX8gctxlk4d7sh3upBEzb8tn6w9s
 dQNA+/OPmm3NaV4ZIpfoCTKf8+nZQaGgLgf0u/nzJ18yAYfgPS6spZTaXyOGi1B65WE1
 mbIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sHokrbjxUk9CxNu5Bo4VP4hyr5zpK6a3pydEeIAAa54=;
 b=Ymoh5tm5pBytclfdLTYFAEZd9J0Z/5s0Ly8m3h22rCn03dBRwwJzXgw2gByXTszcGW
 c/DbgxQ6CyRIsZqW+p3yTbPnP3BXZCKEEMXJm/9m++NBq9rJOkDpNQ8nybH8KFgheFdO
 fxgteU8M6O2MalKoi6VY077+8C25T29lG2zr7fKb2Ujz/+M6RJgOKkAOam5slgVTqrd4
 Xe6LSqDikcoXlETLcNsMfqyeDEj4o0criV6YN6G/WyDM8r702IUp5Rx3HPVw1E+CZgYV
 MjVZb6F3nH6eBKX1zQeE5TT8ofRmARpD1F2xNPGQuzxOJqNzQ340mP287ThcZn3MWgVg
 mpGg==
X-Gm-Message-State: AOAM533nYdfldZGoW2SddxfqnNHBuQbuHtzXQb/t6A/OQtUsix4oG/59
 yx1B0JcYt9xptmeNxXIltPw=
X-Google-Smtp-Source: ABdhPJzHgjy+ifN0vwI3pJFkvTjmxNibGyGRx51L8DgmJ88HqRvNQViWHduWoQ3jKle/lI/WI8mqWg==
X-Received: by 2002:a50:9fa1:: with SMTP id c30mr22772945edf.66.1618266987566; 
 Mon, 12 Apr 2021 15:36:27 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id d10sm7817209edp.77.2021.04.12.15.36.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Apr 2021 15:36:27 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: rockchip: change gpio nodenames
Date: Tue, 13 Apr 2021 00:36:17 +0200
Message-Id: <20210412223617.8634-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210412223617.8634-1-jbx6244@gmail.com>
References: <20210412223617.8634-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153629_081511_C0AD7D62 
X-CRM114-Status: GOOD (  12.56  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Currently all gpio nodenames are sort of identical to there label.
Nodenames should be of a generic type, so change them all.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 10 +++++-----
 arch/arm64/boot/dts/rockchip/rk3328.dtsi |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3368.dtsi |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 +++++-----
 5 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 939440015..96924e05a 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1247,7 +1247,7 @@
 		#size-cells = <2>;
 		ranges;
 
-		gpio0: gpio0@ff040000 {
+		gpio0: gpio@ff040000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff040000 0x0 0x100>;
 			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
@@ -1259,7 +1259,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@ff250000 {
+		gpio1: gpio@ff250000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff250000 0x0 0x100>;
 			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
@@ -1271,7 +1271,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@ff260000 {
+		gpio2: gpio@ff260000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff260000 0x0 0x100>;
 			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
@@ -1283,7 +1283,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@ff270000 {
+		gpio3: gpio@ff270000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff270000 0x0 0x100>;
 			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 00844a0e0..ba7dee2e8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -688,7 +688,7 @@
 		#size-cells = <2>;
 		ranges;
 
-		gpio0: gpio0@ff220000 {
+		gpio0: gpio@ff220000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff220000 0x0 0x100>;
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
@@ -699,7 +699,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@ff230000 {
+		gpio1: gpio@ff230000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff230000 0x0 0x100>;
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
@@ -710,7 +710,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@ff240000 {
+		gpio2: gpio@ff240000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff240000 0x0 0x100>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
@@ -721,7 +721,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@ff250000 {
+		gpio3: gpio@ff250000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff250000 0x0 0x100>;
 			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
@@ -732,7 +732,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio4: gpio4@ff260000 {
+		gpio4: gpio@ff260000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff260000 0x0 0x100>;
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index c2ca358c7..858d52e2d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1019,7 +1019,7 @@
 		#size-cells = <2>;
 		ranges;
 
-		gpio0: gpio0@ff210000 {
+		gpio0: gpio@ff210000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff210000 0x0 0x100>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
@@ -1032,7 +1032,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio1: gpio1@ff220000 {
+		gpio1: gpio@ff220000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff220000 0x0 0x100>;
 			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
@@ -1045,7 +1045,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio2: gpio2@ff230000 {
+		gpio2: gpio@ff230000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff230000 0x0 0x100>;
 			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
@@ -1058,7 +1058,7 @@
 			#interrupt-cells = <2>;
 		};
 
-		gpio3: gpio3@ff240000 {
+		gpio3: gpio@ff240000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff240000 0x0 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 7832e26a3..8ae10c434 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -803,7 +803,7 @@
 		#size-cells = <0x2>;
 		ranges;
 
-		gpio0: gpio0@ff750000 {
+		gpio0: gpio@ff750000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff750000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO0>;
@@ -816,7 +816,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio1: gpio1@ff780000 {
+		gpio1: gpio@ff780000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff780000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO1>;
@@ -829,7 +829,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio2: gpio2@ff790000 {
+		gpio2: gpio@ff790000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff790000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -842,7 +842,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio3: gpio3@ff7a0000 {
+		gpio3: gpio@ff7a0000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff7a0000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 6221b027e..c97a25c70 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1941,7 +1941,7 @@
 		#size-cells = <2>;
 		ranges;
 
-		gpio0: gpio0@ff720000 {
+		gpio0: gpio@ff720000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff720000 0x0 0x100>;
 			clocks = <&pmucru PCLK_GPIO0_PMU>;
@@ -1954,7 +1954,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio1: gpio1@ff730000 {
+		gpio1: gpio@ff730000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff730000 0x0 0x100>;
 			clocks = <&pmucru PCLK_GPIO1_PMU>;
@@ -1967,7 +1967,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio2: gpio2@ff780000 {
+		gpio2: gpio@ff780000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff780000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO2>;
@@ -1980,7 +1980,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio3: gpio3@ff788000 {
+		gpio3: gpio@ff788000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff788000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO3>;
@@ -1993,7 +1993,7 @@
 			#interrupt-cells = <0x2>;
 		};
 
-		gpio4: gpio4@ff790000 {
+		gpio4: gpio@ff790000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff790000 0x0 0x100>;
 			clocks = <&cru PCLK_GPIO4>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
