Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE779C83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 21:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fii4a6unAtfgfIlkrIsNGSEMGkjliYGVgCoLPNScz58=; b=G2FEQobN62Pd3l
	7tVLrUrMtBGb/CsrVbXSIdE+Vu7oTzOHWAUw4Zgwj2jjv8/ewRQIbO8n+HnTLd5Pxkrx6w4CPYIe1
	312cJ/EyTc2TxzX/hMPu5tbT+lL5DrrvGXueyIFUauxjIx6eI2B1XJYz/XuTTTsFbF1X3vLJwco2B
	H66pmNgLLKMeZF7gwUUg9XGEpH40fw4alDSDj/qU9lHaPgn6ZePZXy4b5g5T+dXhGQnC1YtKSKOiN
	aEFXQxjJVqXb6VmORHomIS7rlkqaXyepbXeocTM3VH9pDXAvg6fXQcg+Y9s28+DqUBHf1YvYXCDEj
	edZM3p6cxheNpXie7YZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb6Ty-00CJaV-0q;
	Tue, 29 Aug 2023 21:42:42 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb6Tv-00CJXr-0R;
	Tue, 29 Aug 2023 21:42:40 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-52bcd4db4bdso1929078a12.3;
        Tue, 29 Aug 2023 14:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693345355; x=1693950155; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AGClNaEY6gM70Hb3navvOJbzGEwQs35GRI7P9s7Oey0=;
        b=N/NVmGR059OXUkCZ6k8I/oC/2QPiwX/Zv941mCo6uTQw/ySIEWeyuJKIR7QUWaiAtj
         K+Pq8kQ45HqIUaBEnIIPhG34B2AEanaOHhJ6bPQ+WILZf/08iczGFCeYAgybakKKEKlZ
         HnsL2/glU3Z8nbap5PFWXTYIwaeappPbzPaW9svn5a6p9og8mOqIRUzcjnwcDTKaso3l
         i344GfWhBYSlWQjeOL1AUze2q6WT4UUuPqYy4tk4/LaPtSU7YtWsQqgRjq7RxBY5sfWN
         KAmFkUyXYDZ9sN9pDY/rFModuBh47Hj6J2HJJ+XfDrtcdY9S1px8X2daoqF5j0QmDB34
         8Ykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693345355; x=1693950155;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AGClNaEY6gM70Hb3navvOJbzGEwQs35GRI7P9s7Oey0=;
        b=RlT/TmFqaPIkEiJw9OXwMgzbrLyLBl++nktiq8MeszDRQwCKwBKWI/WxI1fcEY1X2H
         bbDi9gqCB7fEadi0PS7rTSHHHAKTYTPONks5ukdQ5a1zS+pj5wYdjlP/f2oCJwF8by9y
         J0GUuHtejSq/HYZmglzp79BHuA72kd9bFMSt518kQrZ4CMU1ZZ8WztDPLQw77dRX6RKs
         0oB7pwLwm8djYVm+0I0oLCALEPP7NWdnx3qSnqYhtuiRGl48IHVKQd8gTIH2jA88G1TC
         QLYBv8MdiYBpRmZtFEdWG7ek6Fk1dyu/aTX7wQWTX5CQ81RbVJGR0kN0F1iBV8bTiKoG
         P1Cw==
X-Gm-Message-State: AOJu0Yy5/vS2ozEBzW5kQ2uUIXM1qFo/mcpYkf2dtJMQymHiqje9+WV4
	j1rFVf/svaZhT60Dk7+CfQ==
X-Google-Smtp-Source: AGHT+IGYuYw4UxD9N/zmzw+MRRW1M3ZFSNH98nsfl52O8isc+O7p9i4jDC25sDDeyeXvvlawKRa1OA==
X-Received: by 2002:aa7:c644:0:b0:52a:841:bc58 with SMTP id z4-20020aa7c644000000b0052a0841bc58mr377767edr.30.1693345355292;
        Tue, 29 Aug 2023 14:42:35 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b963:7410:84d2:f616:9527:dd98])
        by smtp.gmail.com with ESMTPSA id f15-20020aa7d84f000000b0052228721f84sm6113428eds.77.2023.08.29.14.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 14:42:35 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 4/4] ARM: dts: rockchip: Switch to operating-points-v2 for RK3128's CPU
Date: Tue, 29 Aug 2023 23:40:09 +0200
Message-ID: <20230829214004.314932-10-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829214004.314932-2-knaerzche@gmail.com>
References: <20230829214004.314932-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_144239_176414_71899A2F 
X-CRM114-Status: GOOD (  12.52  )
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

This will allow frequency-scaling for the cpu-cores.
Operating frequencies and voltages have been taken from Rockchip's
downstream kernel.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 43 +++++++++++++++++++++++---
 1 file changed, 39 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 877854dd765d..71964262cd5f 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -36,10 +36,7 @@ cpu0: cpu@f00 {
 			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 			resets = <&cru SRST_CORE0>;
-			operating-points = <
-				/* KHz    uV */
-				 816000 1000000
-			>;
+			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
 		};
 
@@ -48,6 +45,7 @@ cpu1: cpu@f01 {
 			compatible = "arm,cortex-a7";
 			reg = <0xf01>;
 			resets = <&cru SRST_CORE1>;
+			operating-points-v2 = <&cpu_opp_table>;
 		};
 
 		cpu2: cpu@f02 {
@@ -55,6 +53,7 @@ cpu2: cpu@f02 {
 			compatible = "arm,cortex-a7";
 			reg = <0xf02>;
 			resets = <&cru SRST_CORE2>;
+			operating-points-v2 = <&cpu_opp_table>;
 		};
 
 		cpu3: cpu@f03 {
@@ -62,6 +61,42 @@ cpu3: cpu@f03 {
 			compatible = "arm,cortex-a7";
 			reg = <0xf03>;
 			resets = <&cru SRST_CORE3>;
+			operating-points-v2 = <&cpu_opp_table>;
+		};
+	};
+
+	cpu_opp_table: opp-table-0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-216000000 {
+			opp-hz = /bits/ 64 <216000000>;
+			opp-microvolt = <950000 950000 1325000>;
+		};
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <950000 950000 1325000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <950000 950000 1325000>;
+		};
+		opp-696000000 {
+			opp-hz = /bits/ 64 <696000000>;
+			opp-microvolt = <975000 975000 1325000>;
+		};
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <1075000 1075000 1325000>;
+			opp-suspend;
+		};
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <1200000 1200000 1325000>;
+		};
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1325000 1325000 1325000>;
 		};
 	};
 
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
