Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61A19C83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ftxJnuXbrI87oUwcOZwJszvetX9UWv9pbUMaKOR1Z0=; b=fBBci6mZeGAwO+
	ldPkdlzPJOl2DwAyhZLy/809KElPN5nVCMRV0+KmVYlQc0sjaurGxcl2GqQSoB4dzBtUAbuZM4pDW
	anFngSwto3VK2rH429Tyi2wbVnvrlK5bafNyi9lcmd7o/wQCYgXbXu92PIBaRvJeJIryOIlpWGi4J
	uHePj8VF35ko28nyVybo1ON0ewfsQmoP08BR0ApE78QjkkOm2wuuB1EV43bxEAKcxomsUUQNUXuxp
	tfM48YD3E1yKj8kwKjzsLkmHVWUP9plavPhej5M3yaSKrg2TxpYeV2NDc96LYVwWTjVR6DLSp2TKA
	8Lg5JKtOprTHpQbQzABg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2NI-00BxN3-2Q;
	Tue, 29 Aug 2023 17:19:32 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LZ-00BvUS-1H;
	Tue, 29 Aug 2023 17:17:49 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-99de884ad25so626893366b.3;
        Tue, 29 Aug 2023 10:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329463; x=1693934263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WnJL5vGCg9h0fxl4SkoWxbvYNcnaANXMeYm5CGs278M=;
        b=N9JLdrwZAq0dUeDJhdp81+fN8VeIO0Za4lbwtH42uBm92k/4rin/At5jq6C6VCFzuO
         dSXTW+vgTl5x177w8ttFILgFZAlILfiKVvRuzS1z4asELiVuC3DYYCdK56ecFfhXCsyd
         TMJJToU0FtApXWJ3U0YLNQv0ynvlUo4zpADs/WWOOxk6gE8E4Ipu6I1bGLe9pTccOEUj
         7XvS8UctPQLlA9g1x7G9W6WX7ZNqYH0Job9qpR5AvtpWnNx8PSFeNHGKSHBmjf6Pg6YW
         IjeAQnYojYVaaKJ9Xb0TJ7NfKlBUu04Z1nTRU6SdpJirzWnObMR9dxl77hx3BRuTkVoP
         C/pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329463; x=1693934263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WnJL5vGCg9h0fxl4SkoWxbvYNcnaANXMeYm5CGs278M=;
        b=gHO87BnzL8FHm/vhExUXjp7j4WXbac4HOuZGi7oPSojnIZSi2p3JfA+CHJiTOB9BJ3
         hTcbP2vyQl7Wls1yS3hEleUydBvPQP0UkO8qDrSxV7fwsR6MYSY1ShnFwiDfS3WxJH3s
         PAsRT3z54lRNXPHvGtNVm7anGcEFJaNnatG5RC92GqA+7WzPzPBZX2wXg+Vt1NDc2h5N
         F5k9JSk5ggqKCQre3zB807CsBATbwFUiwsoSgSnoWxTHL1eeJ8bYTdmBaEPMrl6mXDBa
         ziuzEGX63bPEi1hwxuGx2NaaWKD6jbZU7YUhkn+QuhfLkNfHNynoYhus2UeGFXT3Igzl
         WKKw==
X-Gm-Message-State: AOJu0YzmHrdCLtUoZCxzaUBAieVaLR6EzfxvkE/hVGVF/4iOqc0JwteT
	QaV0VpmZx/GwdKhcraVfT/2GcV+IVw==
X-Google-Smtp-Source: AGHT+IGUtSI+zxI+roO3fQg73Zix5xTmq8cVmyCvEK/LrKo7dzyudGQqYSeW+LtBceKZGkvV/0HzBg==
X-Received: by 2002:a17:906:8a50:b0:9a1:fab3:ee3f with SMTP id gx16-20020a1709068a5000b009a1fab3ee3fmr13114131ejc.40.1693329463292;
        Tue, 29 Aug 2023 10:17:43 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:42 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 19/31] ARM: dts: rockchip: Switch to operating-points-v2 for RK312x's CPU
Date: Tue, 29 Aug 2023 19:16:35 +0200
Message-ID: <20230829171647.187787-20-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101745_514912_642C4669 
X-CRM114-Status: GOOD (  12.44  )
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

This will allow frequency-scaling for the cpu cores.
Operating frequencies and voltages have been taken from Rockchip's
downstream kernel.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk312x.dtsi | 43 +++++++++++++++++++++++---
 1 file changed, 39 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk312x.dtsi b/arch/arm/boot/dts/rockchip/rk312x.dtsi
index 08b953b005ff..93560c4cd16a 100644
--- a/arch/arm/boot/dts/rockchip/rk312x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk312x.dtsi
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
