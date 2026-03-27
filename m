Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D070810BA45B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Mar 2026 09:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tLn+pxfro4BdrgMZlMrxm+uNLgA+HbpPha1NPg78FuY=; b=e45/nnrpsuWMXM
	phrY68OLI4HfjmhmJDJ5TekVk/XtRcx+Oei/seKoEtR4DjQinqXUBHAD0oI/lN9cEFlv8XV+JFKi5
	f+brrpOiNaKsaMpFvX/JqGfybI9ie91W4WhgEdeXrwImqU4MhB7Xod28OxJA/q1u9gq0O+ZcFE7mu
	b++BJYNAu50vlrEERTbQHx1b5cZv5/rqi3oV2WOUGxpGhTt7IqB2cPQORKzLrtCO7ZoAJEuYOwXYM
	QLObAOm6pZcZiMyKq19jcQekAAL3VlkGtiWSYdsXpQU2sgILS09Q82y6x34LoXfyR/jND8QZw/ZHx
	m314jrrVjGobFhgPZ5+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w63Eb-0000000732a-1MeT;
	Fri, 27 Mar 2026 09:12:05 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w63EZ-0000000731S-2E43
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Mar 2026 09:12:04 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-43b95e5b3afso983379f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Mar 2026 02:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774602721; x=1775207521; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NAO6rB0RbVFlGErOM6Fb1ryUWRGmDL5KJlHZYhjSUZg=;
        b=dwTyD/Li0vHNCFXL17dh1qQkESHe3jJNHIsyVt+cqPK09Xo6jj/W2L5Chj0TOpS1Oq
         P6jcOGFs4Z5TS1QFwojfS2Ih90r84jj/h9R7uudUkc7WwieVgU8kDs/xBA7lwmli3JYC
         LDHVhQ2iY5RsF35CYQOxD/WvfbgOPYFBVqiFQ3NFTKy7ibyKngqSUv5CCaPiEIvSd+eF
         9hOXmxEyaq01WprW5sy5NYg0PSgkKM/6ax0dP7EGn5+CMrSD+mB6Ah6H6c+3+k/+VFFq
         yY19EbeN66BynOUqN+iQsOkZj0v/IGKOX8w5m3L589359iXqmReL5uocwYjAHit9RIL3
         jdeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774602721; x=1775207521;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NAO6rB0RbVFlGErOM6Fb1ryUWRGmDL5KJlHZYhjSUZg=;
        b=nR0Bta7yKDHRL10N/T4Hx4rJeOpULxnMX361HoE0uh44YpqCxf1kFiSWl7PPyThaGy
         nLNkbvqslO59YTQfNnvaYIp1+vzBLPG1zLhdUoQz7lOsPJpwxbOv3DJW4HSJTrCFGfTf
         ea//hS5xMXrIlw55MCS4QCBkqgRgFWOx+RsmM0LUXY1AF/n1sVIWnAlUjhF1AwYLW6Yg
         8QLu82vKnsGW8Tlf7ToblHrgu74uS7vDAhDd2EKzt0Efe77NxsoYTCxDmPgua2/4mQXX
         4iXL5Ni+RhAtig8ZqwBD1Uf4GxRPU5Li3JnLfAlsYmjiCLL0DoZ4d6TNIrlkXhxGdOCJ
         bz3w==
X-Gm-Message-State: AOJu0YwJcvfFBH2KY4ZOBVPT1ak2z+QUVI4ak1n0p7rntuDmJ9sv7QC5
	yV7bKnsQKw8XbKckxAkoNs1GL6In3TTyWyBETmVC1LCDyOdZ8US4Roa+i6g2xBUYch8=
X-Gm-Gg: ATEYQzwT7SmlJmkKpT4EgspJ40QsVnVAe6OAhY9rV1UoE2h2vyO1xYuPR7Q/zLg9TZD
	oBYaCdwt5P8/bkDaCaAKnTz2WFojl+o+IadnR9zEf5oW00FUP2rav050ZHGlo8T2VDvvnhEU4Uf
	XzEjoauHF87DdG8yH97xtBpC/R2Rs4LbEufxLfqcA6+Zxi7yOgBz8KD0JQTf6X4isu6F3KOgORO
	Vg5OXXspvE434U1YaCnxyWDLethyPYf554oF7VEFqMAdpDvJ9bXNXfMuF50u7/y8HVmHMI1LtVZ
	7IOdcRWZczoL8P2vfsiq1/2eRc31yNMcQLkwK+FuwHijyHMkvQzXbTydqa8/+4cZX43PBvIe3FN
	uhJuNTvALlsWT7sIvKF7IaqDT2IOFQ+dBXlRAUl2d1c7C0olW76ohTvxy4LCysl3bdb1RdDJQID
	YZZNgStfYFT5b3U8ZZ4tkvI8TYcT6/p1fF4QoHvAw=
X-Received: by 2002:a05:6000:2dc3:b0:43b:4489:d456 with SMTP id ffacd0b85a97d-43b9ea10799mr2329230f8f.47.1774602721312;
        Fri, 27 Mar 2026 02:12:01 -0700 (PDT)
Received: from rock-3b.levillagebyca.com ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b919cefd7sm14001409f8f.17.2026.03.27.02.12.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2026 02:12:00 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [PATCH v6] arm64: dts: rockchip: rock-3b: Model PI6C20100 as gated-fixed-clock
Date: Fri, 27 Mar 2026 10:11:28 +0100
Message-Id: <20260327091128.2458-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_021203_584136_081098B7 
X-CRM114-Status: GOOD (  13.49  )
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

From: Midgy BALON <midgy971@gmail.com>

The Radxa ROCK 3B uses a PI6C20100 PCIe reference clock buffer to
provide a 100MHz reference clock to the PCIe 3.0 PHY and controllers.
This chip is currently modeled only as a fixed regulator
(vcc3v3_pi6c_03), with no clock output representation.

The PI6C20100 is a clock generator, not a power supply. Model it
properly as a gated-fixed-clock, following the pattern established
for the Rock 5 ITX and other boards with similar PCIe clock buffer
chips.

The gated-fixed-clock node references the regulator as its vdd-supply,
allowing the regulator to be enabled on demand. Remove the
regulator-always-on and regulator-boot-on properties from vcc3v3_pi6c_03
since the clock framework will manage the regulator lifecycle via
vdd-supply. The pcie3x2 node is updated to include the pipe and
reference clocks, matching the approach used in rk3588-rock-5-itx.dts.

Assisted-by: Claude:claude-3-opus
Signed-off-by: Midgy BALON <midgy971@gmail.com>
---

Changes since v5:
 - Drop "(100MHz)" from clock node comment, already in clock-frequency (Jonas)
 - Drop redundant comment before vcc3v3_pi6c_03 (Jonas)
 - Remove regulator-always-on and regulator-boot-on from vcc3v3_pi6c_03 (Jonas)
 - Drop Reviewed-by (patch has functional changes since v3 review)

Changes since v4:
 - Fix From: line to match Signed-off-by (Heiko)

Changes since v3 [1]:
 - Add Reviewed-by from Shawn Lin

Changes since v2 [2]:
 - Fix AI attribution: use Assisted-by tag instead of Signed-off-by (Shawn)
 - Add missing pipe clock (CLK_PCIE30X2_PIPE_DFT) to pcie3x2 clocks
   override (Shawn, referencing David's patch [3])

Changes since v1 [4]:
 - Drop phy-supply approach entirely (Jonas, Shawn)
 - Model PI6C20100 as gated-fixed-clock instead
 - Wire reference clock to pcie3x2 controller
 - Follow pattern from rk3588-rock-5-itx.dts

[1] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midgy971@gmail.com/
[2] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midgy971@gmail.com/
[3] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee47177829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1
[4] https://lore.kernel.org/linux-rockchip/20260213151452.535527-1-midgy971@gmail.com/

 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 20 ++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 3d0c1ccfa..d7d85b090 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -56,7 +56,15 @@ led-0 {
 		};
 	};

-	/* pi6c pcie clock generator */
+	/* PI6C20100 PCIe reference clock buffer */
+	pcie30_refclk: pcie-clock-generator {
+		compatible = "gated-fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+		clock-output-names = "pcie30_refclk";
+		vdd-supply = <&vcc3v3_pi6c_03>;
+	};
+
 	vcc3v3_pi6c_03: regulator-3v3-vcc-pi6c-03 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -64,8 +72,6 @@ vcc3v3_pi6c_03: regulator-3v3-vcc-pi6c-03 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_pwren_h>;
 		regulator-name = "vcc3v3_pi6c_03";
-		regulator-always-on;
-		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <10000>;
@@ -545,6 +551,14 @@ &pcie30phy {
 };

 &pcie3x2 {
+	clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
+		 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
+		 <&cru CLK_PCIE30X2_AUX_NDFT>,
+		 <&cru CLK_PCIE30X2_PIPE_DFT>,
+		 <&pcie30_refclk>;
+	clock-names = "aclk_mst", "aclk_slv",
+		      "aclk_dbi", "pclk", "aux",
+		      "pipe", "ref";
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie30x2m1_pins>;
 	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
--
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
