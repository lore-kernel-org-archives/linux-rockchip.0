Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78D6AC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Dec 2021 23:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKgD/auxD3bCUfqQt776uScIAOeKm4DXL/Repka/87g=; b=FMpp6knv1it0un
	P4cFtrOlJfQXRSLSV2GPcOFHi1ePMjrAKj4mqo7gtCl5qjoJPnXb15JFdZu0o2RSprCdYpJcsXuiW
	j0AwYzZutgdHCoIoUb3vJxVPDJpmT3Dp7M+0w/eA44Qrql34ViDxk4LzmF7UT6eqGT8qA5ts/2w3Y
	3oae+BHHerBU08yRlwse1sab5LADpOiIxCwxzYenVXwfwhF+UIGini+S2oLrrAHCO8zb+QAPCEjeB
	GSPRNPDYbB4Pjiq9yGKrUwzJr7wuDhV311dJlEjri6H/k70kvf/qt02k3HnRN48e1aPSk8mCjr1eN
	OhgzO7cKs1PrX1ek8qsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mu0kA-002AUz-Ig; Sun, 05 Dec 2021 23:16:30 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mu0k7-002ASi-Aa
 for linux-rockchip@lists.infradead.org; Sun, 05 Dec 2021 23:16:29 +0000
Received: by mail-wr1-x42a.google.com with SMTP id c4so18596053wrd.9
 for <linux-rockchip@lists.infradead.org>; Sun, 05 Dec 2021 15:16:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8SDUVe0WxBDs+x5sc5VSRWK56FrB6jL4WHqSjP3zaxg=;
 b=cFxn+LobBn91bijKgZt4wvkEUlRGNJXoHSktLeYNUXT4t9jx/rtJPZNldDLus0razj
 tZgAOLiS+Z5Tb8DdLRtm16Oz2mcI2Y/yoswW+T++FTm57zRXmJieHSGSiW5oh5DZ8YMu
 +qTRIz6a8AjbHVWxcSGm4v6kFwEa+lr3puIuIXphGqYMFCTF7IWmDiRAfutGki64qmMI
 S2/rdQnomZlWQtbApsZPoXSqqwGVF8sY2qdGmGqoSj7XMOr2DicKQzX81Hw2/moENz8A
 LTvkuPKpql4ZWJDbPHXk1kdMSY1SIxO74p20I7TSse6l5pZt2PvJ+IU21Dqapj6GXNuP
 B+Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8SDUVe0WxBDs+x5sc5VSRWK56FrB6jL4WHqSjP3zaxg=;
 b=YdFSfD39CIY2V8sRu34yJjcFCKv9MBPLbNYMiCIL0KlAMQe+6sd3FQhT39NjWw+fK3
 0ka88n0noHYz4WtHAgStChpWJvJoG7Sqqx1Ws8dk4bbsKbNahIhSZnEwcDwcC172dpGL
 0HSSSe6jRJTszo7g/iBND/Lxe1aTajLgMVzlq98n2C9efNrmarsLRXgW9ft/DlfY15O7
 C21zbY5e8GaDhZFWok7NIZrl84JxMzt84UxOvOBX92IX+ETDbfhXUfTmQfToxUZ6Fvgq
 3dHS4/epB1EBwD+rqyQdPGjrCReN4FXeAc0Xn1ODFmMXZnF0u1br/C6FA0PygjKQ0JLu
 rmHg==
X-Gm-Message-State: AOAM532wjDpB7VQNbrEBdiHbse9yGJAGf0Xo7rxFoQPCHYxYxHXFYiph
 1PrLUbMSy3gk+2PwmPLj12dx7w==
X-Google-Smtp-Source: ABdhPJwW/WzVl4850fY0QcNuzEze9AMto83BQfOb4lnMqjG4ZtCnCG4vkv9DnLBn5gb4pwj4Nr/HUg==
X-Received: by 2002:adf:fe8e:: with SMTP id l14mr39797739wrr.177.1638746184732; 
 Sun, 05 Dec 2021 15:16:24 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:1cec:4235:bb04:b944])
 by smtp.gmail.com with ESMTPSA id c10sm10715312wrb.81.2021.12.05.15.16.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Dec 2021 15:16:24 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	robh@kernel.org
Cc: arnd@linaro.org, heiko@sntech.de, ulf.hansson@linaro.org,
 rjw@rjwysocki.net, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 lukasz.luba@arm.com, Robin Murphy <robin.murphy@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Helen Koike <helen.koike@collabora.com>,
 Brian Norris <briannorris@chromium.org>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v4 2/5] arm64: dts: rockchip: Add powerzones definition for
 rock960
Date: Mon,  6 Dec 2021 00:15:54 +0100
Message-Id: <20211205231558.779698-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211205231558.779698-1-daniel.lezcano@linaro.org>
References: <20211205231558.779698-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211205_151627_446225_5A93C8B3 
X-CRM114-Status: GOOD (  10.39  )
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

Add the powerzones description. This first step introduces the big,
the little as powerzone places.

Cc: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
   V4:
     - Added missing powerzone-cells
     - Changed powerzone name to comply with the pattern property
   V3:
     - Remove GPU section as no power is available (yet)
     - Remove '#powerzone-cells' conforming to the bindings change
   V2:
     - Move description in the SoC dtsi specific file
   V1: Initial post
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index d3cdf6f42a30..901515898b5e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -76,6 +76,7 @@ cpu_l0: cpu@0 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l1: cpu@1 {
@@ -88,6 +89,7 @@ cpu_l1: cpu@1 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l2: cpu@2 {
@@ -100,6 +102,7 @@ cpu_l2: cpu@2 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l3: cpu@3 {
@@ -112,6 +115,7 @@ cpu_l3: cpu@3 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_b0: cpu@100 {
@@ -124,6 +128,7 @@ cpu_b0: cpu@100 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 
 			thermal-idle {
 				#cooling-cells = <2>;
@@ -142,6 +147,7 @@ cpu_b1: cpu@101 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 
 			thermal-idle {
 				#cooling-cells = <2>;
@@ -791,6 +797,18 @@ spi5: spi@ff200000 {
 		status = "disabled";
 	};
 
+	powerzones {
+
+		PKG_PZ: powerzone-pkg {
+			#powerzone-cells = <0>;
+                        powerzone = <&SOC_PZ>;
+		};
+
+		SOC_PZ: powerzone-soc {
+			#powerzone-cells = <0>;
+		};
+	};
+
 	thermal_zones: thermal-zones {
 		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <100>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
