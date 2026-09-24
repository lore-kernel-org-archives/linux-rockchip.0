Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A65CC98310
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 07:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gdRrhuWnWpZQIQNbv7du+fF4a2Cx4NTH0sUIxv4Euk=; b=HLMp2y1fCUcDSY
	pKOuzwtc63xZVpEw8SLbitpeX4Osef3CC8otiXcjQX1J0ehVU6LoQ6My48fppiLNHjdsREp3GT1hn
	V9DYrMnmHZZzrsxxzQHAp3rXgzw94JPJxJUJ4sHGMCrlLA6395wCt5TvbB4l1SeDudw1WTyoVld0K
	JuBH6LVTs62giwaiz3NiY9V72hD/aYgrjFDLuqQi07aXy+Dt63/y4bbxpZvXPYs3qawGNmjHylnj3
	lgKEJlyZt4OfA/zvy8I1ssKwrjWhmtYP7x3roUB6Mca605U9t8dv5U4IdYTbUyBVpu3Oj2mRHUiCy
	L/2BfJI2vSkfamplTMjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dfd-0000000AFWf-0VFZ;
	Thu, 24 Sep 2026 07:15:05 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dfV-0000000AFRY-0Igk
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 07:14:58 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a98dfb8002so2351122a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 00:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wermuth-pl.20251104.gappssmtp.com; s=20251104; t=1790234095; x=1790838895; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yrjq9fQeRRT3Dkn6ja90PvKLpuXI2Gg2RkQogJKUx6w=;
        b=QXXktA3d0OjjEpmJeO2C0+6dy5jexIGsLeF6E4LAsRL8dnZ5KV3cJpzMpzfCJoiEsH
         TUmMWXnWlg5I1dq+E2WREA9Hd/ZJ8kqruqU3VZjfh9CHkVqXmS28Aoob/g2QuwzmlQKN
         Zy1VdIPuFZ/+drVgL3tEqZofWG+8/LLK7BZJnJruS4z72ATm/7qvWJpgpmhhTKgOdbPy
         6M8Z0ZCs/CDvycXXGa6Td1ZClp0BJHK6zuIdMYDt5GeJfydkPXiEX7HvAP9WfL4R9BE0
         1svypFhjQy/DgZRYptMmDThj7sXSYI84F1FeHIZXF8JGRtVMuMv4jX14cWGqLonk+sYo
         i5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790234095; x=1790838895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yrjq9fQeRRT3Dkn6ja90PvKLpuXI2Gg2RkQogJKUx6w=;
        b=RNGujqZGlsaez5f6pWdsObmWOxBvWBgiQ5Y3WxMxKohXU1Uo/VQ6RIPiilx4zppeMj
         wyOb9qSdpb3oRoHY6ERvcDPvalqTEe41ZqzuRM30dvQxPZur8OaBTLyAI6uxBLhJDHMB
         O43jauX0+MV5931DiWa6Lcg8yzoCWLKM9QU00Ao8FLQuXEUEAGRoRxz2tMPqUrEIuH9+
         QzZxDkMMLcHS1RGim/4t09Kw/7WyB/tdg8qRP3EeoFG1xIf0fIBimyZv2eBXdTrDp8KP
         WDOD77GE7ISJSRVcQ0toQFLWIagVH2Xhg7qaXCWf5YRf2IcL9TJo4Fckko32rhRDTRYJ
         Uw2g==
X-Forwarded-Encrypted: i=1; AKwUvBzFiT3sNshTc94ju9y2yG3IUAMS55NulmrJWxmie+FryBi5Ve+BCg2YlyqyDO9WOx3HmdOeBmAIy7yjaihjmA==@lists.infradead.org
X-Gm-Message-State: AFuF++mk+wfAjzOSNJ1V8dk9JdtwYkFvDJcH9rgu/WiixJBMW95XOkUX
	h40WUNm5LaJqg+GUVQR0YIGPXruBpamCWXIiQ3ucCaGrKsNknXxGLKKdRhQxei50YR4=
X-Gm-Gg: AYBFou2J9jsv3oqu7tc9h0HnJQ32gtOkZImLJ8AApxJcz1E0Ztv5xmcLJjtUjJvDODI
	LhKLJNVP7217li9HWUZIw52jVqFmVo682uB7TchFbKijGdf2UfpQD4gByUQzN/tYgWtLkBojaj9
	9MRPlq0HtfGQw6aB49vOTy658EezEcy9dZliPiv840pyWvG+sfjxrcjb8mzKO9bUErzlkpdDIrn
	mN6kfbyf6W9elSmssRiDFhx9gbemMpbymKuGByyvqVnRJujHo2dgHYJgaJ0HiHzMWbNpuigLw2W
	ME/AuCz50tU/0QfxsSy9BoJzUsLqegLlHrzy/fl/dqz3rC6uAS0jtvszddHAjKLCG2GldPhqG8S
	f3RPT9mzfIHs7q7lk/9sBagYdh7Gxb6P9iCX3eX7XUfjDD/asbPO8mzE5dtxhTagZ8+VkbmTRAr
	Oewo5H87b52yRVYOwwKKTIzlZTuX3j08BpLHChZftjiGyIagtA0BSst8eqFIxaFxNmfB3hFA9tB
	gBHWwyHuuT4bJezF6W4PCwKXYdXCXZ2YsLkE96pdLDzZSk=
X-Received: by 2002:a05:6402:1599:b0:6aa:936f:5d2c with SMTP id 4fb4d7f45d1cf-6aacc83e324mr889306a12.23.1790234095400;
        Thu, 24 Sep 2026 00:14:55 -0700 (PDT)
Received: from janlin-02.home.wermuth.pl (109-206-198-27.host.skynet.net.pl. [109.206.198.27])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aab38a9756sm3306589a12.25.2026.09.24.00.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 00:14:54 -0700 (PDT)
From: Adam Wermuth <adam@wermuth.pl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Adam Wermuth <adam@wermuth.pl>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add PWM fan to Radxa ROCK 3B
Date: Thu, 24 Sep 2026 09:14:45 +0200
Message-ID: <20260924071445.441822-4-adam@wermuth.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260924071445.441822-1-adam@wermuth.pl>
References: <20260924071445.441822-1-adam@wermuth.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_001457_137967_795CA681 
X-CRM114-Status: GOOD (  11.15  )
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

The ROCK 3B has a 2-pin fan header powered from vcc5v0_sys and
switched by a MOSFET driven from PWM8 (pwm8m0 pins). Enable the PWM
controller, describe the fan as a pwm-fan cooling device and add
active trip points to the CPU thermal zone:

 - 50 C: fan at 25%
 - 60 C: fan at 50-75%
 - 70 C: fan at 100%

each with 5 C hysteresis. The existing passive and critical trip
points are left unchanged.

Signed-off-by: Adam Wermuth <adam@wermuth.pl>
---
 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 908bb4425e81..815f67988ab7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -24,6 +24,14 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	fan: fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 64 128 192 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm8 0 10000 0>;
+		#cooling-cells = <2>;
+	};
+
 	hdmi-con {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -200,6 +208,45 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_fan0: cpu-fan0 {
+			hysteresis = <5000>;
+			temperature = <50000>;
+			type = "active";
+		};
+
+		cpu_fan1: cpu-fan1 {
+			hysteresis = <5000>;
+			temperature = <60000>;
+			type = "active";
+		};
+
+		cpu_fan2: cpu-fan2 {
+			hysteresis = <5000>;
+			temperature = <70000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map1 {
+			trip = <&cpu_fan0>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map2 {
+			trip = <&cpu_fan1>;
+			cooling-device = <&fan 2 3>;
+		};
+
+		map3 {
+			trip = <&cpu_fan2>;
+			cooling-device = <&fan 4 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &gmac0 {
 	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
 	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
@@ -708,6 +755,10 @@ &pmu_io_domains {
 	status = "okay";
 };
 
+&pwm8 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8>;
 	status = "okay";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
