Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC2AF1090236
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 14:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5PBEgTa6I/uh4F6AuUzM84aYAreuhBZ2csEuArFdNkk=; b=Rb9cON4oWjOPea
	Hb3Y+MShVGsi4MnC8EUNNI2TRIyapR/VrtsXIoULULfQf6C6EN9qBTU7dySE8sg+AaaHSEXG0Hupc
	OJEvSSXuFBfpTeaA5f7o84BBOi70mY86tTTx0umRogCfAs8AlXSnNJYLHJg0uyE1c3EzLHNDa2/03
	F51mbAm+rFX3sjwUXsnYxMXxib+VMqRatDG1roM9a1ViSPD5AYSDhMg8gI9xjuVTdqPtgnu9rB/LI
	J5zxxaQ14MYR1cWQQ8gjOPwe4mdCEmFeYGPwCzwmY4HWYl/ZvRv4e5EsTHHT6xagPcNUz2xLl0oxp
	e/b+00xr2VRvOtR+CsdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Ehl-0000000Apix-3NKe;
	Thu, 19 Mar 2026 14:50:33 +0000
Received: from mail-wm1-f48.google.com ([209.85.128.48])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Ehj-0000000Api0-13uz
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 14:50:32 +0000
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4852fdb36a8so7451375e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 07:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773931828; x=1774536628; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8e2Ktq5sJeaHDP/JJnHCRh3f+LsDBElFuTwB6/IOVF0=;
        b=UZpzs8YYRZVixtbxbonojpJSlKS7IVGIp2nA2XmH8VaLI8XAA/Gcpg7gQ9JvFdKLAA
         4fi1RIifjvLq8AwYmWSrWL3YOHrriHWzBCADZL+BYv3GGoN3E+AVmOEUkHvJFHHUg4dY
         tIqiCo9vOL+UZHFBxMkwT0QTzijPR3GjMSTinHpTg/TOX1XvbRo/Yia/N350JjXSLcng
         t0QAK66GZphrknVAV4qjklLlEvrnXypoua1Oy4JQYVyGe45h/OW2h30ziVgcu14C2Tdg
         ho/LiLeGWUi+Qt0OSArCQJ0ezNORYL+cIS+D/UAl9g5i97IWvqOA+LoPJe58h9XR1j9Z
         FTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773931828; x=1774536628;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8e2Ktq5sJeaHDP/JJnHCRh3f+LsDBElFuTwB6/IOVF0=;
        b=YIWoYIVzxD106Rie20bgsE0DdXrP518X2grnFcPk7xkMeFxbiYXVx5H03e3PcfY87v
         X4mL4Jpurrr9wnsr1P0gUtk281p+m5Y8hy9+VhnhlMa9cjrFN38cUBTs7M5P5bDWMy6D
         xzqPnp4vdKLJtnMKgbZk3c3UBjvkz0VW0LMQikVTk0/EluqJKHyft85NYPTwnn4s3bqn
         9TX051ZyGJX4ycucWG3ZUxNtBg6gxjHl7qeaiLJmT7Kc+Gt7jMYOofn/leqjzQN9TrWc
         RTnXRhcXaaFKfYEwVDUuG8CqNxBgxBwrcnaHwbzAKBf/yvxLgHmSa7Okwj/U643E6/ds
         Al2Q==
X-Gm-Message-State: AOJu0YxxM9EhO7GipUCMwWlWuVPALCvl7xmsmMuthjGsLGOVB9yDdb3a
	QIJfyj597L4G9aVZjWxaxa9HpsdT79cCBnxqzbw2SqIOAca42ejvUaqEYXBDbE2WLtU=
X-Gm-Gg: ATEYQzxFpxtnnTzvyWNEVOpDc2y4sutgSjrwkkrkE/27iylHeUcWMgLZ8ZHSTjvKTyg
	7kQrBKnhFEKnUoskY9n3imqKbvc1NxhFZfzqUvKRkqQIl73mTvCmN9BdwuxhrnxKwK0D/3Qgjuq
	6SGo4MldbZ5frjeVxqWnNvu+nyYaNEXZBWOCp1ei+Oo1FhlcHledKp/iV9swdC1qG97SdcctVc+
	JfVtyEgWmg5FNHwNgDEprXooepnTWTM/vYk+ioEzlxBXi2+5TpNSVWT40ONlk+yvOYTTqqa78H9
	6oXIEFR9WWYz6gDHE/xha5he459tjwSB2lOSA0Y5JUhVXVG7egj0i+nt0YyDCI7DGzr4ozAgMle
	zFf0KLsDMqcwyj9jf57XQILA6KiwIdBZDLbuhqVIgLK6fsT5OjkzAIIq8GCyUnlMyI8jLP4PH2x
	NFynygrUAd4h96sCMcfnVuPV9/Amurw6n1RL/OHg==
X-Received: by 2002:a05:600c:c491:b0:486:d76c:fa57 with SMTP id 5b1f17b1804b1-486f4469363mr125436735e9.17.1773931828190;
        Thu, 19 Mar 2026 07:50:28 -0700 (PDT)
Received: from debian.levillagebyca.com ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8c351f8sm66819755e9.6.2026.03.19.07.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 07:50:27 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: shawn.lin@rock-chips.com,
	heiko@sntech.de,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	MidG971 <midgy971@gmail.com>
Subject: [PATCH v4] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
Date: Thu, 19 Mar 2026 15:51:20 +0100
Message-Id: <20260319145120.99833-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260304132957.684616-1-midgy971@gmail.com>
References: <20260304132957.684616-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_075031_305677_650E4992 
X-CRM114-Status: UNSURE (   9.88  )
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
Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Midgy BALON <midgy971@gmail.com>
---

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
