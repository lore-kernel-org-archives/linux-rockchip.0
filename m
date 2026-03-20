Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52140108B8E2
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 09:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ahGWhI+v8q8fZL8I7r+n4I5MbQaXwVWdyuA4dVeRIU=; b=Xt5sTDOtrT+2Lw
	2MMlWDzZh3u7ZKtnVJt0mu84lhVGgike8406ygPzsCf/eBiIb9jNg1qBAZvtTDCEP5WX3wPSJn1Gc
	fvy4KY83QEK/caiu02BUqnrWUHd/Rr6xA/Cw8NxJYv4sNUp/glFY0izhOR2spBXD2WzABmfwHYGKZ
	pyTdB4l6zoN8ZnpI/xLA/to+EokgGFthxZuTHaeNjoVFUFZME89yXi1m1wq8vO4f1rTBbhvwl+I4M
	FTWnQbt0+Bmbz8rlGx/X7r4EVQvgxeaf9PqdId8w1Z2J94ygt7UiUQKJ4wyVkftYt73yn4UMaC865
	7h38VdtBNWl4FXNhybzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3WOB-0000000CVXY-0aDZ;
	Fri, 20 Mar 2026 09:43:31 +0000
Received: from mail-wm1-f45.google.com ([209.85.128.45])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3WO8-0000000CVUy-1FQj
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 09:43:29 +0000
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4870206f73bso950915e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Mar 2026 02:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773999806; x=1774604606; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WGLNtDekxRKXdox7mzxK6y/EsZgDuny9HQCCHc8BUNw=;
        b=mA1tWNhlIg0gYyE5bk11WlZeAp6oa6lPuWoL9s2kPHS2BRzN4X04EUqf/AYXgA+dJJ
         nYgws9crrCiLASaBTJI9XIGt7RVMw5Hp4VhR32h4xvzQ8QuPkwfEcYa/hpZsmNrMOqm/
         Sigkd1jMrrE/Txj57/c3W0m5hlJcNSFZPw45yt6piqBWAskO8r4CRageZRAY6RUsKw3J
         pVy2JzzKPlRO+AjlFzkSpEFKOzHionyKs9HLQtppPBrcgKcGs37DZ0Z620w/ojC1qGQn
         aPq7xzI6HU/q3sVrsZse0YJUiozwrfn4LLUEUoVJcV1lesFNnkiMWnpsqqVJ1ZKg3Fh3
         QdyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773999806; x=1774604606;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WGLNtDekxRKXdox7mzxK6y/EsZgDuny9HQCCHc8BUNw=;
        b=U7Z0RTC29nIuEWnluu8dqLOTvAl+I5Izo+jCv88dII3RWsbB7lGdxw9mRPU0IQNTRi
         Bljg5aHcdHsHdhGqXIprEOp7mTjdUrd+NAIUOqD/z4N3wwXEcqB30D8QepibElctejv5
         Sj6mSDXUxGWGWsBvfBzLjjQugBZD3WBwiKSimBW2NkLWvZTRirixsytnSzqq/igcCKl5
         EKwBvghbfu/l9E1wiinZG2Em8abu/axIiLvezcI8DagywT38eTM0IaV7wvTKkZ5dfhE+
         WL9gQvGszJ4VKvuC5rk6MKjT/VumzHM63dnpPOlNwSsESa3cVYFAws+QuXs6LXNXSzQr
         FVVQ==
X-Gm-Message-State: AOJu0Yw4TI2miuofSJ1XUhMh5v8wxdlWOZLC8TyM1MylDpAcBqjukf2U
	V65/cwFWgNuC9Pt5867Z8FrNS58k1Qu9AQ7E6Ljj4xNPC+QL4z7olpj/hFgfoVQTZ2M=
X-Gm-Gg: ATEYQzzzbsj8cZ0LXa2PlYV9VCLpXgnlxKMYeZjQ/UFdUjKVAEtDwUnwjpgRgo2pU2y
	jRMDTmPcms2wb6PBIUAY1U719BVVsyH84/bwr/JiUvbKcmsPDCJf3r5TzMvazbOZ8mCyEPl48A5
	0/dhgkoT8FoMUQZZJGFZ3IMwYsFvwZvezjQWVl84SN79XR9NEBdCdUY3AWqeMXlVjg38UVk46AZ
	+cJrd1WqUlfCJfJQWxJYH4OFJSRe71Oo4eiA4jvdaoq0J40pUd8/IH2Bb4q/DZ2GsNH27ogwKbG
	0r8MBF4AW6CynAfp57KLVX49lKfalYOrWA7VW4yMMdgyYAkzQ6W8iGC4TDRPPClJ0QwAgfoxE4m
	SuIvyKrB4Hiisq+QUuJfbdE2znEDEcm50Fzd4ZNPYjQQBAYO5GlBvBM0bB1prBh3stqc6f1tWry
	lDRiYnLb+JNhjQonaC04R+AlKXNwjTh9GFK19DfA==
X-Received: by 2002:a05:600c:1c0a:b0:486:fbc8:8dee with SMTP id 5b1f17b1804b1-486fee2dc56mr30563635e9.33.1773999805228;
        Fri, 20 Mar 2026 02:43:25 -0700 (PDT)
Received: from debian.levillagebyca.com ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486fd9845a2sm114372145e9.6.2026.03.20.02.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 02:43:24 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	shawn.lin@rock-chips.com,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Midgy BALON <midgy971@gmail.com>
Subject: [PATCH v5] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
Date: Fri, 20 Mar 2026 10:44:41 +0100
Message-Id: <20260320094441.128263-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <2053182.usQuhbGJ8B@phil>
References: <2053182.usQuhbGJ8B@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_024328_360210_FF56E1D7 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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

The regulator node is kept as-is since it controls the power supply
to the PI6C20100 chip via GPIO0_D4. The new gated-fixed-clock node
references this regulator as its vdd-supply and provides a proper
100MHz clock output. The pcie3x2 node is updated to include the
pipe and reference clocks, matching the approach used in
rk3588-rock-5-itx.dts.

Assisted-by: Claude:claude-3-opus
Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Midgy BALON <midgy971@gmail.com>
---

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

 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index c5f67dd6dfd9..1a2b3c4d5e6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -56,7 +56,16 @@
 		};
 	};

-	/* pi6c pcie clock generator */
+	/* PI6C20100 PCIe reference clock buffer (100MHz) */
+	pcie30_refclk: pcie-clock-generator {
+		compatible = "gated-fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+		clock-output-names = "pcie30_refclk";
+		vdd-supply = <&vcc3v3_pi6c_03>;
+	};
+
+	/* PI6C20100 power supply - active-high GPIO0_D4 */
 	vcc3v3_pi6c_03: regulator-3v3-vcc-pi6c-03 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -553,6 +562,15 @@
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
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
