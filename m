Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19F2DC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDeEcI5oiZxsv6EaIlm3sO3tPqdhwd434xYujXYoxkY=; b=NqiVk84ZkWW5WZ
	n/Nm+cKPadOsEbgyARPmFjTaD8rxQfhNdUeTCRODYXN8818gl+wM4jk/8p0Uyv+j9CB9iIUWXyHgS
	pCCnB4UArXscTI7AHDGuyrABaCmSf0qltSDNHm722z36VEz54U0kdHIsbemhJuV0brnd2VCrcvEmE
	XmzGFH+xwbUd0sLJzI9bL1ujxPVs4rgGLQxO1AuVoJ7TuULlzOoUNNTPTUtQn7ZPNM2kSZdDQO2kh
	GYZk9fGO/7L0oR20nUg/v0YYVeagKaEs8Lff6qNpQ9a1JG5Qs9DVvZSHm8hWZ4Gh83slkJD6l+tg6
	crFKyF0TwrN0pKY2o8fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naezz-009NuJ-6i; Sat, 02 Apr 2022 14:45:07 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naesD-009JIU-LO; Sat, 02 Apr 2022 14:37:09 +0000
Received: by mail-ej1-x62c.google.com with SMTP id yy13so11446635ejb.2;
 Sat, 02 Apr 2022 07:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+72+q1Txcd0x+KfNjt3ACd6ZcebuPkaO0L/4gKOj9+0=;
 b=oTJu+xsN8ywcQNmH772d3KN5prhrg21w4+tEM+sA02t5NmTbGwRiJnlFt1GjR41pu7
 DnepmW2CR8HUomcZmq1yHep8leDOECqj7dP3V5ATAhJLi0hypc7MiW8pFECHxM508nyI
 OSQnRw6h+g7LoFln3CjrgkW7S5+RNEf+MnF92OcXYMtrVyyiLlBaYDlRX4ngvBq+DvXz
 Tp1qWLpdQewlKa8wV8qqrQ5Ux4q5XjcFqiQGhIYfvrSTX8jVoMsU4h+TWrBi0yCdM+cs
 Bbg5zzyGgvmYUhFBVaLAjpYklcycSO83CHte7Vit2P+y4qCYaUs46rRwhX627KIqwXZ6
 QnVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+72+q1Txcd0x+KfNjt3ACd6ZcebuPkaO0L/4gKOj9+0=;
 b=Za7pym+v/CIqOVj1GLj/bCw69h6GzMjIXqTEpxxgO5VrV4/bj+h4mOaaU9mszPX//s
 eCxqgvMDNzgGP1uvz8ztnC4w3OSR9uBPxiPhdfcER0qDxUtLicEqm43GFBDwzZA0ANuK
 YeDikWs+l9NyfNDQCF0EIFfg8BzrzB7lsGUXYui6Zjx+BjWVtLGmk9r3o7D0cp1+nB05
 mKqmU7X0CqdVihSrAYXL4OodX++KXPWE5UB4NSLc0T3xRtxLAHzbEUU4mN+oyTQHiyuy
 37P0FUbi2qXgPQzsxUVpDln5f3cnp9t/td84KgpF1RAP9F7sR2G/eTtCNjIpa3pAXBL5
 L/Qg==
X-Gm-Message-State: AOAM532w8muZjRPCdXSAtUGULFDWeGEufbiWow82m7hBsby8s46JQ5S/
 089sEufBNgHTlTcF56V6yh0=
X-Google-Smtp-Source: ABdhPJx/A0xgRJhlO6BICgIqz9WDJ5poFGm4p0UJMsgf1vYVei9jL21VvAup7jxV53a7ohORvW2JLw==
X-Received: by 2002:a17:906:dc90:b0:6e0:1ef7:638f with SMTP id
 cs16-20020a170906dc9000b006e01ef7638fmr4147584ejc.234.1648910212849; 
 Sat, 02 Apr 2022 07:36:52 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:52 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 10/16] ARM: dts: rockchip: add clocks property to Rockchip
 cru nodes
Date: Sat,  2 Apr 2022 16:36:30 +0200
Message-Id: <20220402143636.15222-11-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073705_755114_686ADF31 
X-CRM114-Status: GOOD (  11.70  )
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

Add clocks and clock-names to the Rockchip cru nodes, because
the device has to have at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V4:
  combine patches
---
 arch/arm/boot/dts/rk3036.dtsi  | 2 ++
 arch/arm/boot/dts/rk3066a.dtsi | 3 ++-
 arch/arm/boot/dts/rk3188.dtsi  | 3 ++-
 arch/arm/boot/dts/rk322x.dtsi  | 2 ++
 arch/arm/boot/dts/rk3288.dtsi  | 2 ++
 arch/arm/boot/dts/rv1108.dtsi  | 2 ++
 6 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index ba2b8891b..3894b8d2e 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -330,6 +330,8 @@
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3036-cru";
 		reg = <0x20000000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index c25b9695d..de9915d94 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -202,8 +202,9 @@
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3066a-cru";
 		reg = <0x20000000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
-
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 		assigned-clocks = <&cru PLL_CPLL>, <&cru PLL_GPLL>,
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index a94321e90..cdd4a0bd5 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -195,8 +195,9 @@
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3188-cru";
 		reg = <0x20000000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
-
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 5868eb512..2547f46fe 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -484,6 +484,8 @@
 	cru: clock-controller@110e0000 {
 		compatible = "rockchip,rk3228-cru";
 		reg = <0x110e0000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 26b9bbe31..487b0e03d 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -862,6 +862,8 @@
 	cru: clock-controller@ff760000 {
 		compatible = "rockchip,rk3288-cru";
 		reg = <0x0 0xff760000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 448254906..eceaa940b 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -456,6 +456,8 @@
 	cru: clock-controller@20200000 {
 		compatible = "rockchip,rv1108-cru";
 		reg = <0x20200000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
