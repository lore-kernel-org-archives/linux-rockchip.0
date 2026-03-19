Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0F94108E1D6
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 10:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x9cxrX3RVe3rNmE3PN91I2JEQ5sIAIFtmjFRlpqB1eI=; b=cKwlRJoGbVSg4j
	ZNXvVWglWuQWRdlxujVRLl4R5+XBKansPrNbwUKrSSvpCVPHWLonL1gKoaUYCwZ6Fbs0kx1eHPWdT
	fn6AA+Xm/wMI8foRCuarPaPpRBLH50OrFZgacZu2rpRt8oZ7BED9u3wS4hnBl/7/UpNaRjL95JoBQ
	NPMOYqU0+2sb2il8JxtaZlalPsGxQJw/qievvTmieZ5t1Cc1ATEWPpfBo6155W4eF+nkqM3+5dvLi
	Po/CySdH8dDlDQ5r9hJlkkTFRMKJ9pBF6B7j06wPFWAQ8jMTn3FUfpk0mSTjVUZtaqDCk/wYKxuF5
	pCFXrS5/wtloAGmY6SWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3AW5-0000000APIk-0tnD;
	Thu, 19 Mar 2026 10:22:13 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3AW2-0000000APHq-18LU
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 10:22:11 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-439bcec8613so545379f8f.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 03:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773915728; x=1774520528; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fEgrB2T+whJlk9Y05dXgdk6oVsIuY+KNuAhr1hMqks0=;
        b=UMch57GYUbzn7xvd6Slp3HpxWS3No1NH/TpVsGcfIcWClKcsM0ug58rMh1vs3THdz0
         tDWFkMp4YfPqqBTaIw6XiBRQDOR/KWdjZDbig/LVOsiafhs4d0LC54X/gaNuQjKPEdzr
         VaqKkUao5+OwC7NEU1o7C2iOWaFkYyNoAVwFsmtQ8ssuqxfRUXwaCCOrveaLB11/mfpk
         LLHIJAC75+hRUOl0PNXgA+1G/VJxHD2l1T1Y5Qm53qF7Ejvaq16ZXpYzDWsXicb5bM2+
         l7cdd8yunLt72D018r8MxPAAs73MTOQDCDrlfilco0sG6Z33kkH2twyk6aadsAViLlVA
         PMlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773915728; x=1774520528;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fEgrB2T+whJlk9Y05dXgdk6oVsIuY+KNuAhr1hMqks0=;
        b=mtOJOhk8EG3hMWvIG6k2jv3BrAywo3WU4IPWjtE+XZoSK6QgYzO0YxjazWN9BGLrT7
         JuyJN8xrNneBgEDMtDryq1iL9W/bAh/trrSRp6F3v7Pf4v8bruBND/LWaMm8Elc5Jvvm
         QtWARrHT3iC1D5bZQl9sqpjcE1X78nOUYkykjYYQTpN2z0OxG+s4W0Slo0fjFRKKQ/b9
         TThmrNMtHDcKxen1zZ3e0IBEQDYqmj61+No4CsCp8GCMwFy/0u2UBK8sPVxrJFKaUANp
         njTCLQVs8HJ5bU259k5BMgRWSXnyrDhdc6hbn/e4n/y29c1gWWhrO4iDRtIiqGYke38P
         4j/w==
X-Gm-Message-State: AOJu0YyVpTJ3/CT9RPtymc93ROVyyGh5bMCisBTSutT51qluUq8ce6qi
	w6wxknFZlYMdepWv/NFJumlmJCbuSs2Rh+OjDRL29RA4cTqtEuEZC53T2aqPxmjoPN4=
X-Gm-Gg: ATEYQzxUjkwHOjEjdnrBWqexekNcZMHgBz2M+ySdyq6msWMVRpncgsoYUndZarHO4Nc
	xu1GRGv7A1hXagc7nxrK1Mctw6ImhNWvfYkXSUSpixplcx3+mh64/w5LW+C4ju85WbeBM/No+Qe
	XXZidztY31s9npIkBn8Q/PHkNrDMPpWbmcHPESJjFq4G4JsjEb9kqLQAmq2HYFZNZHfTj+Bw6YI
	3hxpYLoPv7PeIpAZDMkD+COrCSYi2d6MI3GfXahWeh3uXmhf0FdDuV+/iyrWfP2oWkmFsea1e9c
	lXZnxaLPA6GtB1aI5hDLhTNTw9jeEpRffivfV3zxazZLdV9i+WQPmdeE/OXGDFfUHHFf3n76gsP
	HpCaHEcfgfB+kclMkffO6Ab5vB+BzF1HQUS+/Cm2opO8trY7mZH+spJ43dpt23IMbblCvFOy7bD
	x4NVzzxdSNvfFaJH0uhGjw106YzBcj/90NC7fnK09vpQJykt3Y
X-Received: by 2002:a05:6000:3104:b0:439:caf7:a5e5 with SMTP id ffacd0b85a97d-43b527c54eemr11777499f8f.31.1773915726959;
        Thu, 19 Mar 2026 03:22:06 -0700 (PDT)
Received: from debian.levillagebyca.com ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51852a64sm15352271f8f.14.2026.03.19.03.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 03:22:06 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	shawn.lin@rock-chips.com,
	MidG971 <midgy971@gmail.com>
Subject: [PATCH v3] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
Date: Thu, 19 Mar 2026 11:22:47 +0100
Message-Id: <20260319102247.32260-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_032210_317689_F7E50B50 
X-CRM114-Status: UNSURE (   8.95  )
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
Signed-off-by: MidG971 <midgy971@gmail.com>
---

Changes since v2 [1]:
 - Fix AI attribution: use Assisted-by tag instead of Signed-off-by (Shawn)
 - Add missing pipe clock (CLK_PCIE30X2_PIPE_DFT) to pcie3x2 clocks
   override (Shawn, referencing David's patch [2])

Changes since v1 [3]:
 - Drop phy-supply approach entirely (Jonas, Shawn)
 - Model PI6C20100 as gated-fixed-clock instead
 - Wire reference clock to pcie3x2 controller
 - Follow pattern from rk3588-rock-5-itx.dts

[1] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midgy971@gmail.com/
[2] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee47177829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1
[3] https://lore.kernel.org/linux-rockchip/20260213151452.535527-1-midgy971@gmail.com/

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
