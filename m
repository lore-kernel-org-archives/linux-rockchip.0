Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6C4BCA5FA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 17:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=komVSB0T/uWI3VuLwDUk6ObZD4P34nmm5xxnoyuFZ3A=; b=uaC22hOUFMxdyV
	rycfkD6fmIgi9XmSNURmK4kXCoKjSW2+mU2oV/5ISIqZ0Ydvh3cXtl0WkWu16wu/bWAXKz1ElZazG
	A9k4251U3PnXc+dTt1php2JwYeQMOVDBKpoDGy8W43SSz+6a7hBWqQM2JfxU6vMtIHuYRk7LVGXHE
	4pGTC3GLWJt8CBTZjqXzFOFYAjFqL5N9WzaHyiUp6Q8I94l+3cydJ9THbPMICLsEz7ufbaMA0Mogs
	uqohK7ewH/qNCZn/KJa7aaFiDcS6anFiPDoiBLKzl4rhysIpznXPOqma49dUxX3kGOAN6u6v5rSQK
	M1StiGmez5RJtoz4NpEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBF0D-000000017xF-23UN;
	Mon, 28 Sep 2026 17:18:57 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBEzs-000000017jN-2mOw
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Sep 2026 17:18:38 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-482f6350f89so2092741f8f.3
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Sep 2026 10:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790615915; x=1791220715; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OeSLEttyfMvpfX1KhFTKCRoBV4HzzJzo8yo9uusQA3w=;
        b=iIczOCfv1t7bCw1iR5YcQxL7tyrN00CVV1deDBfbrNK1r69c5y4qWtiTg64w3zGFJo
         v0QeAcdxexpwsNI4I9mz/X+cDObRieu9SFVz49o4tLzLHeFmff5JlWHx1SyLh3VThpnn
         c/stwJYDhLhLxseY349AmY6DjUWtHANh9p5vQoCbDa7V+mCLnUXl66qBLMt/h48q0LzL
         YimmnDp2OnwJpO2cDZG1RAebwm7tbYsux5Nj10yM0Vp6LhHclhAz1ZSZfWzkd0AcUtyB
         Xc+17WSDCNW70a7/FwveSngQDOX52tWRiuTWymqIsF9LOc1TnK8GVVaDKtVrnpypFhxI
         SHTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790615915; x=1791220715;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OeSLEttyfMvpfX1KhFTKCRoBV4HzzJzo8yo9uusQA3w=;
        b=UJ8zI6RtmuQzZnnWMxais7ugQvysTIhYKXLCAffp63E5/dmYF3jOUpprnQZoHOew57
         sevfiBYXHms3E/Wf/P2ceOHRgPTNdk9ds2A9iYvxqtxAIbnkbmgjXI9v5xw3tN/o+M0/
         HOotfTLylHwA9we1BKMrVuvQeEfbJStm/WeAPugBLSTu5nLDoRbYtRH9YbE60WBxwRlW
         FcLtUE7m+EbWVysyINwkjRNj/0ihX2/gVlrt/r/R7b72pcJJzrTX7kq+z8rYHOx0Ezm/
         XAOSbZ4SyteGKR85bBq5DgPomlazEoK21eKloD5TwJq4gS7+uls6/1vdat18dkUksRAD
         GtMw==
X-Forwarded-Encrypted: i=1; AKwUvBy2jGIB9zU/LXpx5WC3zHfPWMCwJM0vGT+AbmhWl81ihw90pX0vL7MCzgWzD0vP1TMLv471mhDHzG5+yb0PzQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYLjf6pV+96GYHfdYGZjiPL+s3YxXM7h4jN1lujSDlogaDsTMRah
	VSluP8AJTW3xA0C0XUvBsm3s7MS+oGWG+YtZa7svyM81dy8AZJveymlQdVHrgEnxDUxCboicVp/
	J8cUq
X-Gm-Gg: AYBFou3O13Vg/ILQ1DZ2wT9WOp5XP5gKTr9vY7Kfa2/uRJFqAB7vGxnF5PZIVGiA9C9
	up9iXRH7z0k9noraaUsGSQpcMGV+Y2BQP4+3+g6hvPG8d26OyBP3HOiT0yDI1vnIb+edd+7PG3+
	sQEJWbUyoYGCYesfVQkqYQWkzkR8uf+8h3eP/vOsq+Fgq2J/xUFJ3m/Jw4rUKQq6tHIPKxvG3Gt
	Who6E81QZldB50jP4NQtTWm4yI/B0yXPWShDvNPXA1NYF0WTIGN0YZuHa8O6zCehy1/xGbEl1JR
	k2qS2t3RFn5SavM0tp5F3UuQHtuAQVC2Oy1I9cHbjHAaZmr09NRBnO/UUZe82GZX/AXvx0lyYx4
	0lDw35Zb3EXTsaYVxxDLKQxzyr5LBIsdRWO4hhjcmple7T/mF5Cx/urF4tqyQ1o4y1bpk+qRnA5
	q6/zMCyiOAEuf1omwFZ6yyDu/FylFpEFe8QTGe/TjJn4/rEWSShbffPsroZ9+k9hequn4nn3Pem
	rHrn5P3JDXD4Qc7
X-Received: by 2002:a05:6000:2010:b0:488:7803:c1ef with SMTP id ffacd0b85a97d-4887db496acmr19598301f8f.48.1790615915014;
        Mon, 28 Sep 2026 10:18:35 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.93.183])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a84221bsm29224973f8f.36.2026.09.28.10.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 10:18:34 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 28 Sep 2026 21:18:19 +0400
Subject: [PATCH 4/5] arm64: dts: rockchip: add reboot-mode node to RK3576
MIME-Version: 1.0
Message-Id: <20260928-b4-rk3576-reboot-mode-v1-4-65486b03bd41@flipper.net>
References: <20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net>
In-Reply-To: <20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2965; i=alchark@flipper.net;
 h=from:subject:message-id; bh=zmMCjORbtJtWDSFmQRFFbUAM5lSo+Rhe75Em9QNmcMI=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTtWhj3YPL0uTO2f9BiZBOvFShcsOx+TPNS04cRlyJ/n
 NhoxZrl3DGRhUGMi8FSTJFl7rcltlON+Gbt8vD4CjOHlQlkiLRIAwMQsDDw5SbmlRrpGOmZahvq
 GRrpGOsYMXBxCsBUP1Zm+GfCGWTwv5jr0yTn6vTWuYubuoonyJqYCTx5oahRz/y19jXDP+P9028
 9SFQJEnud6vLruqLUqsUTilI7+E7pzmyTivQIZAMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_101836_746850_2BD8886A 
X-CRM114-Status: GOOD (  14.12  )
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

The RK3576 boot ROM chooses its boot device order from PMU1_GRF OS_REG0
when that register holds one of its magic values: 0xef08a53c selects USB
download (maskrom) mode, 0xef085a3X selects boot mode X, overriding what
OTP or the SARADC strap would otherwise give.

OS_REG0 cannot be written ahead of a reset, as it is cleared by NPOR.
Instead TF-A takes a request from PMU0_GRF OS_REG16, forwards it to
OS_REG0 and masks the reset outputs so that it reaches the boot ROM.
That register is the one U-Boot uses for its own boot modes as well.

Describe it as a syscon-reboot-mode node, so that a reboot can carry a
request for maskrom or for a particular boot device. Under Linux, for
example:

	systemctl reboot --reboot-argument=maskrom

Requesting anything other than maskrom needs a TF-A containing commit
2a97ba20e901 ("feat(rk3576): forward any boot ROM boot mode request on
reset"); older builds ignore those requests and boot normally.

Link: https://docs.flipper.net/one/hardware/rk3576/boot-rom
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 36 ++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index e87ace5d05e6..c938dbcad712 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -881,6 +881,42 @@ php_grf: syscon@26020000 {
 		pmu0_grf: syscon@26024000 {
 			compatible = "rockchip,rk3576-pmu0-grf", "syscon", "simple-mfd";
 			reg = <0x0 0x26024000 0x0 0x1000>;
+
+			/*
+			 * OS_REG16 carries a boot mode request across a reset.
+			 * TF-A picks it up while resetting the system, forwards
+			 * it to the boot ROM through PMU1_GRF OS_REG0 and masks
+			 * the reset outputs, so that the request survives NPOR.
+			 * The modes below are listed in boot mode order, each
+			 * naming the devices the boot ROM tries in turn.
+			 */
+			reboot_mode: reboot-mode {
+				compatible = "syscon-reboot-mode";
+				offset = <0x40>;
+				mode-normal = <BOOT_NORMAL>;
+				/* 1: USB */
+				mode-maskrom = <BOOT_BROM_DOWNLOAD>;
+				/* 2: SPI NOR, SPI NAND, USB */
+				mode-spi = <0xef085a32>;
+				/* 3: SPI NOR/NAND M1, eMMC, USB */
+				mode-spi-m1 = <0xef085a33>;
+				/* 4: SPI NOR/NAND M2, eMMC, USB */
+				mode-spi-m2 = <0xef085a34>;
+				/* 5: SPI NOR, SPI NAND, UFS, USB */
+				mode-spi-ufs = <0xef085a35>;
+				/* 6: SPI NOR/NAND M1, UFS, USB */
+				mode-spi-m1-ufs = <0xef085a36>;
+				/* 7: UFS, USB */
+				mode-ufs = <0xef085a37>;
+				/* 8: UFS, SD, USB */
+				mode-ufs-sd = <0xef085a38>;
+				/* 9: every SPI iomux, eMMC, SD, USB */
+				mode-spi-all = <0xef085a39>;
+				/* 10: eMMC, SD, USB */
+				mode-emmc-sd = <0xef085a3a>;
+				/* 11: eMMC, USB */
+				mode-emmc = <0xef085a3b>;
+			};
 		};
 
 		pmu1_grf: syscon@26026000 {

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
