Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EEB8CE7AA5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YTOXPZR0IhvpvrRo95tYMLs9h7Q9ndZOOaBz/l5MW9E=; b=tZcBmLt0nmINsk
	PWDvNk4yPItzHI5QGd+y9gbmcIzVOZ+3m+WDswR5rt9P+xUPz1bhN0IXitqTo50medged4rLMgkUb
	kE0aCeMAn/BuZi4NC3e14BsXyZ7kmvyrCvh0wJQTY+PaLXCAFJyILtE7QLe2f9tj2ZA1oCcto4yJg
	auEmU0TH7G0MjniJtBukPQF5wY9Gq5K9eNKP3oJ4gYshMfocXENddfWX72rjYpXSLZJcw0/wpsouP
	DrNbRTdZfGGTPwXP2IoAA1Tdl9CmJ+C7eCc5CuoQtHyuTvS8Pa1CnoPBh3crEXpbPfiiSA1rSanag
	WhwxMClfekIz3bvYuJfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkp69-00Eiys-15;
	Mon, 25 Sep 2023 17:10:17 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkp66-00EiyJ-1Y
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 17:10:15 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-405361bb949so73508665e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Sep 2023 10:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695661812; x=1696266612; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=rnD5VkeLpML10V6GW3GpGUMCwiyyhkNQ+C9vvzalxIQ=;
        b=JTJiLqwVKZnokD0oTcKKHnKaMcJ6qcFpAjdTnjHUN0gGAbvsdzYaxXJtjYF+7J4M/z
         QilxMnhpTzxBOjyQJRQlLQBv/GaAE/L61OwXhyPfbZldl+HGjxI8Nu0iXTPhv+hDjEJE
         HuZiTcGZT2aCe9MlLjYbkaCZaH2qzjm/+Nxeqjxbx3oyjpI7G8oWPrbDQ/VjQP+CJecY
         eagmSJvbACfEMzaIxPNcXsM9WPMrCj1GlA8e8LPT43tth10TR+RmYu7e27i2TkljNDH+
         FaEtQcOmwPKwfBvaLgNI1Y3MyBi6i593qAUhZo0yU5UxDgmFsITpjUeRT3+4hFZqbht2
         nIMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695661812; x=1696266612;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rnD5VkeLpML10V6GW3GpGUMCwiyyhkNQ+C9vvzalxIQ=;
        b=rgR5lb2kHw2scb3ai5EQGwpQvWJi+rTRMsfT44814LYWBllckCpDjBHU5DLUkO2EGN
         iZbo+9R0PmVnxJiDd7H1N9fuxsTMsztBZcbvaJ/H0EAZI7hNbCgsMQbNJ1rYfNOsWGM9
         SREhdIEqt1tFfIcngKnmGfwDi/Pb5UIhXj6NquqF7vNaAYsKG7bqay5UviAlK9IciXnO
         UfsaszKYfCK8pYk3R6T+6q0X44ma8PyP7EdLyXUxjTNFh9bNgwTP5TGBPgXPfG8zJXeL
         SjH6FqqNdh1KO6NOt2vqS3PFFtI6VHGwJrOFYiHemQhApYVyyWz64Jpz6tMhUdhnjIjs
         DGQQ==
X-Gm-Message-State: AOJu0YzMotAEuVkL4TkDbp34C2OckIJvzilb+CrfJI/Pci/sTj+yioyZ
	BzlM1Q1vTx0Pp0yhdRpdimNEePnFYZI=
X-Google-Smtp-Source: AGHT+IG9j1aa4OEZLABo9SmXg+pU/xpvogCL/KW5pGZRdc7FX3SrNflzh3x/Ql0aRkq3jWoZdNAurw==
X-Received: by 2002:a05:600c:2159:b0:3fe:4548:1892 with SMTP id v25-20020a05600c215900b003fe45481892mr5931545wml.16.1695661811583;
        Mon, 25 Sep 2023 10:10:11 -0700 (PDT)
Received: from LIAS-204.w.ensma.fr ([193.55.163.88])
        by smtp.googlemail.com with ESMTPSA id f17-20020a1c6a11000000b00402f745c5ffsm12835679wmc.8.2023.09.25.10.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 10:10:11 -0700 (PDT)
From: Vincent Belpois <vincent.belpois@gmail.com>
To: linux-rockchip@lists.infradead.org,
	vincent.belpois@gmail.com
Subject: [PATCH] ARM64: dts: rk3399: Add the missing L2 cache information This patch fixes the kernel  warning "cacheinfo: Unable to detect cache hierarchy for CPU 0" for the rk3399.
Date: Mon, 25 Sep 2023 19:08:21 +0200
Message-Id: <20230925170821.3238161-1-vincent.belpois@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_101014_527315_C8FB5F61 
X-CRM114-Status: GOOD (  10.22  )
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

Signed-off-by: Vincent Belpois <vincent.belpois@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 9da0b6d77c8d..4da39f3fa692 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -71,11 +71,16 @@ cpu_l0: cpu@0 {
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
+			next-level-cache = <&l2_0>;
 			capacity-dmips-mhz = <485>;
 			clocks = <&cru ARMCLKL>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+		
+			l2_0: l2-cache {
+				compatible = "cache,arm,arch-cache";
+			};
 		};
 
 		cpu_l1: cpu@1 {
@@ -83,6 +88,7 @@ cpu_l1: cpu@1 {
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x1>;
 			enable-method = "psci";
+			next-level-cache = <&l2_0>;
 			capacity-dmips-mhz = <485>;
 			clocks = <&cru ARMCLKL>;
 			#cooling-cells = <2>; /* min followed by max */
@@ -95,6 +101,7 @@ cpu_l2: cpu@2 {
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x2>;
 			enable-method = "psci";
+			next-level-cache = <&l2_0>;
 			capacity-dmips-mhz = <485>;
 			clocks = <&cru ARMCLKL>;
 			#cooling-cells = <2>; /* min followed by max */
@@ -107,6 +114,7 @@ cpu_l3: cpu@3 {
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x3>;
 			enable-method = "psci";
+			next-level-cache = <&l2_0>;
 			capacity-dmips-mhz = <485>;
 			clocks = <&cru ARMCLKL>;
 			#cooling-cells = <2>; /* min followed by max */
@@ -119,6 +127,7 @@ cpu_b0: cpu@100 {
 			compatible = "arm,cortex-a72";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
+			next-level-cache = <&l2_1>;
 			capacity-dmips-mhz = <1024>;
 			clocks = <&cru ARMCLKB>;
 			#cooling-cells = <2>; /* min followed by max */
@@ -130,6 +139,9 @@ thermal-idle {
 				duration-us = <10000>;
 				exit-latency-us = <500>;
 			};
+			l2_1: l2-cache {
+				compatible = "cache,arm,arch-cache";
+			};
 		};
 
 		cpu_b1: cpu@101 {
@@ -137,6 +149,7 @@ cpu_b1: cpu@101 {
 			compatible = "arm,cortex-a72";
 			reg = <0x0 0x101>;
 			enable-method = "psci";
+			next-level-cache = <&l2_1>;
 			capacity-dmips-mhz = <1024>;
 			clocks = <&cru ARMCLKB>;
 			#cooling-cells = <2>; /* min followed by max */
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
