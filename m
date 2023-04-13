Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB16FC77B61
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 14:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dm7ELFNtklZR6XQais/XRFou+OlfdM3vN6PKFUUe154=; b=RPgqsUyfWgy6ZP
	Sgv0ZBFWWDF59Bhintn8ARUR81ZHekwgFdeFV7Kc2uoPqPPrb7O6qwt+5lFattlEiuSzB8QJg84Zf
	o2At3s5J5IpSTJJRH26W0sE1/1mZzTyUBgP3xCq6TLuw4BRpL0s99qzhD5dZ5u1hir9K0s9uEF+Jy
	6BYvzAW/gZIrMZz/3PyDnuZYB1SOgEapqQOnVHOEQyaqtT93AJfKt103JCr8Rf4O/i13dTJQFh/x/
	Q54Mr2An9DNgKcSuj9eobVkVN48fcPpd0RO19gVST3LfzTtOpyWArRSJAQsyL9BT6yeA07PXM3hja
	OesqwPIXU3CXmsMhiy+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmyAv-006QWH-1J;
	Thu, 13 Apr 2023 14:43:49 +0000
Received: from mail-vs1-xe30.google.com ([2607:f8b0:4864:20::e30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmyAs-006QVF-0R;
	Thu, 13 Apr 2023 14:43:47 +0000
Received: by mail-vs1-xe30.google.com with SMTP id bs12so2614315vsb.1;
        Thu, 13 Apr 2023 07:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681397023; x=1683989023;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Eeh91nWUJjVxzujFyKecjRMcqdUP/e5Kpsx1SGaM6Cg=;
        b=kf21yXJX/BSobeW10Mv2MGkr+jeLgLiCNginPFYyQoPGG0QHXGsTDB3W5VVx02sHRP
         Ycj16DbWdWF9JiYzqm+kh4en2OH26VocsjCtUaLLH2siIqu1i0ApWldQ3S377kvOIAoJ
         jM/I3k8/RT38GFYD/eA7gSy3MBuRjqL0pFhXFXMeP1uWFLI1UHPo90aYFXoiz8oSEjLX
         mmOCqQdhZouaMap8NwS7HEdVyUSmFJTVUa1JVJykt/FjGf+L9VjPJilPHE+98xB1Yojs
         uZn88gu7Ec3w5nMiwrdw0qxuIOUqOkc3/1Z/UuFGhT4lLzrGHbj7NS1UCqRNWW9GCnde
         Vsyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681397023; x=1683989023;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Eeh91nWUJjVxzujFyKecjRMcqdUP/e5Kpsx1SGaM6Cg=;
        b=UzHnZBEKMRrNuQPgDfQCJ2SyaWMzWAMbDKnzVrCZWfOY8VW9bljuPUo/2ENdvzFjy+
         faqZw05nDaC4qFaTSncGSpOFgF+o/9ek6jViuRDkjBt24tooB92yN4b2IdEXusqsH/SM
         c+jliJMORsmraJG8XcHdwFhqD/rv8ZMwuGnaVRtWiFk8Bg/dhV/KS8kK7NSTw5xhXRNy
         v/mVeBpTSL9ec5s9CMH7s+WxA6i5qKUX/n8BXBoqC4qH4QhncUKRBfzCcUwx+xP1TqTy
         FwVDJtR9XvGrpAUbDi07TV+AZnaIqHVU0mU0YlIuG+x42s8AQrZahtiNVS4hHpsr3yv0
         F73g==
X-Gm-Message-State: AAQBX9c7LFWAAI4Ycuc6f0MEjUu24cuYrntXoeQcX0NSQeCYe5K3PNIp
	uTnTzqkdkQiOnG5kocIRas4XGWXJbW5i8HBd
X-Google-Smtp-Source: AKy350ZavVP0wGsAyJ9u6DNYBZAMvG5os9XiGqZLvy2/rsOf464i5nwJTV0qpUWGIw0azEkyy8x+5w==
X-Received: by 2002:a05:6102:3a70:b0:412:4816:6cc3 with SMTP id bf16-20020a0561023a7000b0041248166cc3mr932227vsb.17.1681397023495;
        Thu, 13 Apr 2023 07:43:43 -0700 (PDT)
Received: from localhost.localdomain ([98.58.151.237])
        by smtp.googlemail.com with ESMTPSA id w14-20020ab05a8e000000b00771d1670401sm223637uae.35.2023.04.13.07.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 07:43:43 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Peter Geis <pgwipeout@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Clark <inindev@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add pinctrl gpio-ranges for rk356x
Date: Thu, 13 Apr 2023 10:43:16 -0400
Message-Id: <20230413144316.4247-1-inindev@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_074346_173876_7DFD346D 
X-CRM114-Status: GOOD (  11.21  )
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

Add gpio-range properties to the pinctrl gpio nodes in rk356x.dtsi

Signed-off-by: John Clark <inindev@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 802fcc96384e..793dbcb981dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1796,11 +1796,11 @@ usb2phy1_otg: otg-port {
 
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3568-pinctrl";
+		ranges;
 		rockchip,grf = <&grf>;
 		rockchip,pmu = <&pmugrf>;
 		#address-cells = <2>;
 		#size-cells = <2>;
-		ranges;
 
 		gpio0: gpio@fdd60000 {
 			compatible = "rockchip,gpio-bank";
@@ -1808,6 +1808,7 @@ gpio0: gpio@fdd60000 {
 			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&pmucru PCLK_GPIO0>, <&pmucru DBCLK_GPIO0>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -1819,6 +1820,7 @@ gpio1: gpio@fe740000 {
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -1830,6 +1832,7 @@ gpio2: gpio@fe750000 {
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -1841,6 +1844,7 @@ gpio3: gpio@fe760000 {
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -1852,6 +1856,7 @@ gpio4: gpio@fe770000 {
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 128 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
