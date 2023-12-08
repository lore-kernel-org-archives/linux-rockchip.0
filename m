Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7CD8C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 06:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pCePlo0/6At54bT8Z+SaDmitYWCJEM50ur8HTDMK/V8=; b=wz7ZU1iI4EVZvK
	QZz2oOY58qTWwvxBCs2sh5b1dZK4bA5Csa1gB0oMTLIyuLt4mfQXFy+9yI1aFpZv6bpC9z3kVCQTQ
	rPgXbMdvSNUAzHFeI2KYZUgSjiOu8CviIftDQsDNccRqOgFxZ60jHz+r9Svr2Lv9eAREMSuklA64t
	1WejRanmaHro6vv/wAXUl/Ax99gZ9GskzFahA/VFOm65r3RsQGmYfuBMsU5U6PowfqcM6OLV3rsqp
	Q2rWfq8yLixmMprxk6XTymKzK+IQ/M1Uukk4O9pPewcTAmRDgE0Eo0KlPQSc+J8DJf0nyPXAstkYb
	vqOGqit54hvT2+uI9fYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBUIi-00Erd0-1z;
	Fri, 08 Dec 2023 06:25:28 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBUIf-00ErcO-2M;
	Fri, 08 Dec 2023 06:25:27 +0000
Received: by mail-io1-xd33.google.com with SMTP id ca18e2360f4ac-7b6f19f3af9so55193039f.3;
        Thu, 07 Dec 2023 22:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702016723; x=1702621523; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zFpM3a3kO+H6eKxWi2Fxy+Ey6betIA4rnEu4oUHt5AI=;
        b=I3F/opB49wNnK8NfihJqr5SUwYBLuNI8kdo+dFL/BorEuP4pS8twRmHedbakDpIP/L
         GaYukkJd8CPZwCQNebL8ZHY7R+wwFQYh+85Qef0hXReoyPDc+L+nKLrbDtV3HRS0AHKV
         frDYh389mYBo+d7GcNTBWzdfSbMiKawuUZUIHzfSpPLsz/IxVFUPe57lf5KxCgaRtJ3b
         p2aK+sQeB5qT22+8v6uwrKYs3mG5eJDFoPQBudfilfyGAPITKBlxxwPE78D/1fW6BVTh
         NkEvM5b9lL59HYW4Ksy5ZXNKe7r0VewJe2lfSkqfv2MBj3+Jl6bhSxaUX0NPZ3wx5igS
         2eTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702016723; x=1702621523;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zFpM3a3kO+H6eKxWi2Fxy+Ey6betIA4rnEu4oUHt5AI=;
        b=srflu3nhSukzgkNB3+7sNEuk4CIJI2S8EKTRdMBEzuJowoNf3YU1k+zZPUQCjF4EQm
         0l8vMVbeQb4eTy472UI6lX0ssxowQDPVxBl15wr2xpurt16tpRUM25RLC8z/cPVmbrPE
         O70fvLKkIhGM8tF7tUZeQMj31jom8DCmMdIMpDJZPWOCqkmxoEZiDoM7Aj+v5cZdZICq
         aGtiBtkuMd6+pzrqIR2a2NrRq/1/sEWWFtliN2war9yjr8Et/EEgPjeWi3qRk820BeJS
         shyBgdOsxapiX0ytnWkIpRZzDdfSF92zj/YcPfAXg7CVDd7HpHZkxrQrqYsv5Oi1pPBy
         ZXZw==
X-Gm-Message-State: AOJu0YzInqWwXY4hFzwSctYl4WFvIGqK5EWMKSRv8irOVY+Red2Xl20o
	lepE9hjYDw2AVUaJK04+448=
X-Google-Smtp-Source: AGHT+IHD/PmHnKSx9OZ0b73k8RkKfdGrpVKH95h+DLSuZ8wr3y94tZA8ushXUOt0kbv5NYsMvhtXPA==
X-Received: by 2002:a6b:6a14:0:b0:7b4:28f8:d8 with SMTP id x20-20020a6b6a14000000b007b428f800d8mr4136516iog.33.1702016723587;
        Thu, 07 Dec 2023 22:25:23 -0800 (PST)
Received: from celestia.nettie.lan ([2001:470:42c4:101:de4c:e3ab:ccaa:1887])
        by smtp.gmail.com with ESMTPSA id h25-20020a02cd39000000b0042acf934cbasm301894jaq.72.2023.12.07.22.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 22:25:23 -0800 (PST)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Joshua Riek <jjriek@verizon.net>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: Add PCIe pinctrls to Turing RK1
Date: Thu,  7 Dec 2023 23:25:10 -0700
Message-ID: <20231208062510.893392-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_222525_785484_7A25827D 
X-CRM114-Status: GOOD (  16.69  )
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

The RK3588 PCIe 3.0 controller seems to have unpredictable behavior when
no CLKREQ/PERST/WAKE pins are configured in the pinmux. In particular, it
will sometimes (varying between specific RK3588 chips, not over time) shut
off the DBI block, and reads to this range will instead stall
indefinitely.

When this happens, it will prevent Linux from booting altogether. The
PCIe driver will stall the CPU core once it attempts to read the version
information from the DBI range.

Fix this boot hang by adding the correct pinctrl configuration to the
PCIe 3.0 device node, which is the proper thing to do anyway. While
we're at it, also add the necessary configuration to the PCIe 2.0 node,
which may or may not fix the equivalent problem over there -- but is the
proper thing to do anyway. :)

Fixes: 2806a69f3fef6 ("arm64: dts: rockchip: Add Turing RK1 SoM support")
Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---

Hi list,

Compared to v1, v2 removes the `reset-gpios` properties as well -- this should
give control of the PCIe resets exclusively to the PCIe cores. (And even if the
`reset-gpios` props had no effect in v1, it'd be confusing to have them there.)

Note that it is OK for the pcie2x1l1 node to refer to pcie30x1m1_pins. The
pcie2x1l1 device is *in fact* a PCIe 3.0 controller, and the pcie30x1m1_pins
pinmux setting is so-named to reflect this. The pcie2x1l1 node is so-named
because Linux does not (currently) support routing it to a PCIe 3.0 PHY; so in
practice it is effectively a PCIe 2.0 controller, for the time being.

Cheers and thank you for your time,
Sam

---
 .../boot/dts/rockchip/rk3588-turing-rk1.dtsi     | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 9570b34aca2e..875446fdb67e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -214,8 +214,7 @@ rgmii_phy: ethernet-phy@1 {
 &pcie2x1l1 {
 	linux,pci-domain = <1>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_reset>;
-	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
+	pinctrl-0 = <&pcie30x1m1_pins>;
 	status = "okay";
 };
 
@@ -226,8 +225,7 @@ &pcie30phy {
 &pcie3x4 {
 	linux,pci-domain = <0>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_reset>;
-	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+	pinctrl-0 = <&pcie30x4m1_pins>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
 };
@@ -245,17 +243,7 @@ hym8563_int: hym8563-int {
 		};
 	};
 
-	pcie2 {
-		pcie2_reset: pcie2-reset {
-			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pcie3 {
-		pcie3_reset: pcie3-reset {
-			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
 		vcc3v3_pcie30_en: pcie3-reg {
 			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
