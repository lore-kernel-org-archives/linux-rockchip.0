Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CC2DC10F05
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 20:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z8z0W2P9VRNKu28uu6fFMcjzicuauklxTpJZdhuQGsg=; b=l5Ysil28lLp4RY
	dvkTFVf3jTbnQebmIR4p6lTfVDlfGYsx53YfiPXXKazVm/C15OerOAvlt18Sfu/i9zOzxCTBbsbEw
	vcpUjXQtF5M5dvdkaj5JAbHbMFYr+5I89lo6zhVFTlEhojhMga3b1ti+D6Gm2K8ezOQFn7dwnPnh/
	Bas6bCC7LI6lAPwnY0ppF1V3pWpxLePx1SFuL/2MtS5GkPCU5lhScDGS6RFP2vI0gUuTRg7U/8MDw
	WXdCoRJ7FYXwFlSu4JBKc6lboafS7UGTjb5s1cMOxdSYk6z8P+l2AMJxT8OKPUr7JZw29Q4NqRRLw
	81s7dmB5r12R3uCzgayQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAc2k-008Mzq-2F;
	Tue, 05 Dec 2023 20:29:22 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAc2g-008My4-1p;
	Tue, 05 Dec 2023 20:29:19 +0000
Received: by mail-io1-xd36.google.com with SMTP id ca18e2360f4ac-7b395a9b893so5418939f.0;
        Tue, 05 Dec 2023 12:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701808154; x=1702412954; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LYftztaNvPp9AiycXxFsDD/pusJZO5VD4GKLxnNaenc=;
        b=Ww6qbe9P6PkasvavmIC6yO4KJ9c0TOI//30xMzfoPza4t/ymFEwTkKhih2N2zei4wi
         a1EHTN3h2nVgLcIldI1JwbqyHzJND2UL31MGH+12g+j6tF4p9HxhuVTg1PsgagI2ZwoV
         YH/ILPK9qlyeJwIHm/W9MtVVZWXu7ncgDff7kNAC9sUV+b5MYUn0DhIwR3YNipUzbIPV
         d6bCj5vl90J8+QeiaGLFoT08BJoXQpKMyk6V8jvBA+jE3uuI3Qxnw+W0H+hI/U2871+9
         xsZ9O3WhHfT8DZMcgMctIL9v+ZaUVcpaSzIGdQz8ym2FkHofPzX0aSDngUrmQtc+j93c
         Cs8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701808154; x=1702412954;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LYftztaNvPp9AiycXxFsDD/pusJZO5VD4GKLxnNaenc=;
        b=Hr3AO/bnyYvXCpxL2MvJMsDE8omgyARHYrmOUXCcu3JUadZTbEqS9Nihu6gUfxNThN
         r8LHDnEZGr70OiViRjWtzX1059LugT8UgPzVIivHn90+cLxuvqySxtMTR83L7a4kKNAj
         8NF3vzTbP5tutg1AcFSADlEccsIIhNliMAxemVlqvXuqkImhJr4LZrP+oC4qtMPnCo0z
         89oUZEQ4L/qeULKaXjyn7yLBwMbIcNeu/j8fiuNGG0YnuGL/GoRIZ/73wU83qhrJSa69
         uvoY7Pt82z0KgIP3SgMv87jxBryoBJPHrGaJPk8dy6w324yhS7SMosI/S+CVquQLsTi4
         WF9Q==
X-Gm-Message-State: AOJu0YwtYtnKbhERgTsIKY0nLYEcIOPV/jjTpQa1z9GG9eBfFPjOXMw3
	+fng1olfCFxHsw5Gr+wyGis=
X-Google-Smtp-Source: AGHT+IEzCeN5Z1xrmFs3STXAJXiEKae3F1umsDm8OLaSSwygjahA5YJOSV+Flo2toG/hRrjDYvLSdg==
X-Received: by 2002:a5d:8716:0:b0:7b3:9de6:695c with SMTP id u22-20020a5d8716000000b007b39de6695cmr1889441iom.7.1701808154136;
        Tue, 05 Dec 2023 12:29:14 -0800 (PST)
Received: from celestia.nettie.lan ([2001:470:42c4:101:3fb7:1e39:b284:286f])
        by smtp.gmail.com with ESMTPSA id cw2-20020a05663849c200b004302370a169sm3296320jab.157.2023.12.05.12.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 12:29:13 -0800 (PST)
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
Subject: [RESEND PATCH] arm64: dts: rockchip: Fix eMMC Data Strobe PD
Date: Tue,  5 Dec 2023 12:29:00 -0800
Message-ID: <20231205202900.4617-2-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_122918_603197_EC2ADEE8 
X-CRM114-Status: GOOD (  14.66  )
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

JEDEC standard JESD84-B51 defines the eMMC Data Strobe line, which is
currently used only in HS400 mode, as a device->host clock signal that
"is used only in read operation. The Data Strobe is always High-Z (not
driven by the device and pulled down by RDS) or Driven Low in write
operation, except during CRC status response." RDS is a pull-down
resistor specified in the 10K-100K ohm range. Thus per the standard, the
Data Strobe is always pulled to ground (by the eMMC and/or RDS) during
write operations.

Evidently, the eMMC host controller in the RK3588 considers an active
voltage on the eMMC-DS line during a write to be an error.

The default (i.e. hardware reset, and Rockchip BSP) behavior for the
RK3588 is to activate the eMMC-DS pin's builtin pull-down. As a result,
many RK3588 board designers do not bother adding a dedicated RDS
resistor, instead relying on the RK3588's internal bias. The current
devicetree, however, disables this bias (`pcfg_pull_none`), breaking
HS400-mode writes for boards without a dedicated RDS, but with an eMMC
chip that chooses to High-Z (instead of drive-low) the eMMC-DS line.
(The Turing RK1 is one such board.)

Fix this by changing the bias in the (common) emmc_data_strobe case to
reflect the expected hardware/BSP behavior. This is unlikely to cause
regressions elsewhere: the pull-down is only relevant for High-Z eMMCs,
and if this is redundant with a (dedicated) RDS resistor, the effective
result is only a lower resistance to ground -- where the range of
tolerance is quite high. If it does, it's better fixed in the specific
devicetrees.

Fixes: d85f8a5c798d5 ("arm64: dts: rockchip: Add rk3588 pinctrl data")
Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
index 63151d9d2377..30db12c4fc82 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
@@ -369,7 +369,7 @@ emmc_cmd: emmc-cmd {
 		emmc_data_strobe: emmc-data-strobe {
 			rockchip,pins =
 				/* emmc_data_strobe */
-				<2 RK_PA2 1 &pcfg_pull_none>;
+				<2 RK_PA2 1 &pcfg_pull_down>;
 		};
 	};
 
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
