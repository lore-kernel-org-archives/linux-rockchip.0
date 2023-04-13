Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3199BC77B6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 17:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrC/kDnyMGEUg2fWGAX/YZ9KkLFkEmyBDDHsHHTKOFg=; b=0sl+GJK/y5ztxS
	LJ0tu7hM6xev9XyYD+aex5H+Z0+Ccabn3XMJeLciN+hvbpxlOFh6o14kCBVH3R0ydzPBG8mtWHi4n
	MjDx64bpYWEQBCYrE7FdQ8q+ZWXJCrUdZmO9DsrTRXSKGt1HLYaSEFqqcirNMTyDikhGcO6DqeZr3
	IKRZwWYNeFVApftK7RzvwoyvksJ7OeE5sKJcpHIWFQdVmKzr6T2r+57lr17dtuGy9jfVQNTuuTgfw
	ualHSdLrtBc2qBm760EtSHMqF94O1RSj2T8p8UQ+eXa3y6VpEJat6mR3RVC97y+r0CGWlamIX8M7s
	KFSjjDuA2aiD/tgNJYbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pn0N8-006l86-2d;
	Thu, 13 Apr 2023 17:04:34 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pn0N4-006l6K-06;
	Thu, 13 Apr 2023 17:04:32 +0000
Received: by mail-yb1-xb33.google.com with SMTP id h198so22659856ybg.12;
        Thu, 13 Apr 2023 10:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681405467; x=1683997467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KYntzwA2QnPK9xOrgshDrAFUujV3P0eNxGswFpFhQIk=;
        b=sM2sUKt9yEmz9cXYenp9w3rAdPtPDxXn5V00HanFFuNjensfF+Us6VTipZGJBgNVB5
         L+ydky9CuQxAva8RGKpp5QmWSVhgLxHwWy9cF6bGzvFArG1+KpsNI8JRZlH1TIyyjADC
         3YkYHxQwv8urME75tdYyX+pTuXz7C6qjwHzURon2oiUo9zx9HAoXTTyKAN1MkgS8Z+SG
         J9YTiAqLCEKD2s9jduzRpcjsvNhqa6v7vru+zGfmy0Kj+B0tta95TurO4yzG5VpPNsS1
         3A8BYGlILPiizjVPZBqcN14ZBXdClgpg70tYejRqqZ0KozFUUng55C7Z4rouWd/ZOqQS
         rliw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681405467; x=1683997467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KYntzwA2QnPK9xOrgshDrAFUujV3P0eNxGswFpFhQIk=;
        b=kB3lIPIxd97VaSKrcqzzT7EtCrjmah0qd8t0GAOI9Iv7mb/59yEe2uL1ovsBE3YCwA
         p4YOugJBmvYFdtgCFenBsp2ggNMKz8v7Flfy1w+qfChBtA064Qz87aFHdjaXIDGAHZb1
         6hRWqm77qqvdn1IR3dRQCC6bTp2V9dXK4fwFxTrKB6nblLLSDM3CbLFiHawarhsGQMqw
         gDvA4TeOB8VnCdmcBRPvROvL7P5d9BXe/7iDalX7ghooswbQAa2VUuN9JlbJFVsZE9PH
         nu0HBkRYD9oIUfXMCuCLqGNXDl5m7bjzpLkc7oNE6w7LF1Tw8TT+Zr3uoKvjee573X8P
         5IFA==
X-Gm-Message-State: AAQBX9eNCt3GI5wUEIobJS/U2rrHyptprgHdqMVllwdWeDvTnzJdxcO+
	DspSS4pT5+d34Xr1084wzC7uNB7J4oeoIjxK
X-Google-Smtp-Source: AKy350b5fAtiBx82KDTxqb9UUWUZXaxIURJwS64DLKUDnQ189qF+erBNEuCZxSLRT5D8yFzEjrs5LQ==
X-Received: by 2002:a25:2b4a:0:b0:b7d:d397:5c51 with SMTP id r71-20020a252b4a000000b00b7dd3975c51mr2557400ybr.17.1681405467692;
        Thu, 13 Apr 2023 10:04:27 -0700 (PDT)
Received: from localhost.localdomain ([98.58.151.237])
        by smtp.googlemail.com with ESMTPSA id e189-20020a2537c6000000b00b8f46c4b4casm572591yba.20.2023.04.13.10.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 10:04:27 -0700 (PDT)
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
Subject: [v2] arm64: dts: rockchip: Add pinctrl gpio-ranges for rk356x
Date: Thu, 13 Apr 2023 13:03:37 -0400
Message-Id: <20230413170337.6815-1-inindev@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230413144316.4247-1-inindev@gmail.com>
References: <20230413144316.4247-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_100430_070735_A4E2FBA3 
X-CRM114-Status: GOOD (  10.33  )
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
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 802fcc96384e..f62e0fd881a9 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
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
