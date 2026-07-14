Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C35C6C44507
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 05:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YTriDP32gVrdugjoKtFmAxibfT80FEV0SiFMuvK01FM=; b=anZ3v/0PyZ4Zn/
	BExugZUFXfk/+OayghZXtUNSeK8JP2ZqhNJ4vuah2AVnRjCHFfkKZG0WpBABqJPIrCIki5ei2gje7
	bHRCpLHKRl4jDF6LOtcgJz5J7Nr69H7VQBzKgDa0MqHoxiPY3P/R3Hca1nlguiVW7hzrHFMKZz1fc
	xlBDCTLnf6HsblVwEByjgRv4Y2j6xcb69bvh/cAZuvGovgM47oW9tgEBvmiv1SbK7sGkBxu5bqfqR
	ZNGYmbR4CGjD5iYsJE0Yzavc36NwMhPuFHLbpNwYNX3qKKKQxoW1aSAo8bu89iCjLohQ3LfnwzQyZ
	TUX4RShXeOOcWzTsyDeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVmu-0000000Ax2h-1n3t;
	Tue, 14 Jul 2026 05:34:36 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVmq-0000000Ax0X-1Hl5
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 05:34:35 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-c999f162c9aso2305701a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 22:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784007270; x=1784612070; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Pql5nZoyx4uigchL2F82l2cIvvuODWlbZIdBTSPz7E8=;
        b=hpQaTFltYj06T/laxELT1Hu7izvfB30a3aGDKKDLT2GRZYhf/aMNDk2G0XU6r+oK/1
         UwP4c4N/QpqKNfs6Lei8AJmQgzfQsbKJd8KF+FB6XAL9td6M0xat5MD4DqBU39N0GRRE
         jQ2jV2Q0iHUc0EWSrrj6WeV/j/JlcoyGV8GZsSfSlUqBxltuAJyxe2o5aprCZV9ssinh
         a45NGrsJJJ7jjxwl1ZOSRKVPonhoCjgViqSW7IpAuIwKO1n3ObM5+Ka4ZsBD/ihNaH4r
         Oo37GXT5HSQApAu39kvhN9DN5R9jaHdNxFOm65qY7R3X5Ab8gXtlLEPryUQNWHwq2+V3
         1qdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784007270; x=1784612070;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Pql5nZoyx4uigchL2F82l2cIvvuODWlbZIdBTSPz7E8=;
        b=rUmOx+wXY9iWKYu7NsycEgUaKLeFylv+d7RsjE2+meFUu+M9TgOTRpNb10iL/yg4uZ
         VUSKHU2qG9/UP/gwYaaI71jPVNFDByGDXIY5qbFl1PRoEdqfSzIkJE7H0ZHZ07+CjTaG
         /U10cZhdkQigIPQ7L2V5+xKRm3Jrl2E8hQi7l2i8sbzhljRU1jTWrDgtHBRb/HPWYADq
         Hn0lFZ4yqJ27gwdpyTfuVEa8snJNPo6k2v/d80mZScgmxHhbfDfP4dqKnvlqapgyatel
         0jTvvqtMiXNFKek4sw1CtpaGwIQzwHB3PknDU3XriQCfGP12meG42z6gKUoMjOt45d3H
         lwtw==
X-Gm-Message-State: AOJu0Yw42csj/lhd9/C26ZI0OnyHXmTTMGdp7K+hjePuC2nSa6uSalRZ
	U506itxvtibnLBVSSY13XUl7FoM5x/TqPyLIwtnA1gB35rJBmm3RVezTfByBDVhI
X-Gm-Gg: AfdE7clcPOaMdaoCUntwOdyiaiOqHqXh+uvs6gAyXAKnmTZhu33mWhVXECuTWQQF7H3
	/yU53gommkrsK+KvZiSxvJHowuA7Lt4xItpRiMCgkcOpZ2xr0ES05TcE24/1rwYtKS1kpww904v
	c2CmziYpmGZ+zU3K7Cur/GPgN4Tou0JMs1Ol2T2SsSN2jYQsmDeUMek5EY1zqs/9G/u6R8Vy6kE
	5eJey1u//VO9P27WBYtqhAHRmdl3tQxwNkTRDWBLVecSTomeS6/TSFib4g1LLtnoiPuZBgcL5DK
	Jfb7X4Gkui1StyC7LpQ2/VE2+S6I1kbOcfI1ZjwB1pHGdLexqYY6KiGvQ9nCv+Nw80Vl+9CwiYy
	lb76umDK58nIq7fl+cwMXf9ooddT2/IU+R7S49SJD2SRy9T1A+GifkWsNNMFUPCpuZO888977/5
	dyCgTKnz1tuZ8djXh9Anzp
X-Received: by 2002:a05:6a21:320b:b0:3c1:d78:6450 with SMTP id adf61e73a8af0-3c34d8bc7ccmr2897757637.66.1784007270055;
        Mon, 13 Jul 2026 22:34:30 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b87b92b27sm33047165c88.6.2026.07.13.22.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 22:34:29 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v8 0/2] arm64: dts: rockchip: add Vicharak Axon board support
Date: Tue, 14 Jul 2026 11:04:17 +0530
Message-ID: <20260714053419.265523-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_223432_375011_0A0764FE 
X-CRM114-Status: UNSURE (   9.95  )
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

This series adds initial device tree support for the Vicharak Axon
single-board computer, which is based on the Rockchip RK3588 SoC.

The Vicharak Axon is a feature-rich SBC targeting developer and embedded
use cases. It ships with:

  - Rockchip RK3588 (4x Cortex-A76 + 4x Cortex-A55)
  - RK806 PMIC providing all SoC power domains
  - eMMC 5.1 (on-board) and microSD slot
  - Gigabit Ethernet via RGMII (RTL8211F)
  - Dual HDMI 2.1 output and one HDMI 2.0 input (receiver)
  - PCIe 3.0 x4 and two PCIe 2.0 slots
  - SATA 3.0
  - USB 2.0 host ports (EHCI/OHCI)
  - NXP PCA9554 I/O expander for status LEDs
  - Haoyu HYM8563 RTC

Note on vendor prefix: the 'vicharak' prefix was submitted separately
[1], and Krzysztof asked us to drop it from our series [2]. 

[1] https://lkml.org/lkml/2026/6/24/929
[2] https://lore.kernel.org/linux-rockchip/96c9b1eb-9f8e-430d-9c38-eb4d489d7d24@kernel.org/

Changes since v7:
- Renamed rk806 DVS pinctrl nodes to have '-pins' suffix to comply
  with the rockchip,rk806.yaml binding (e.g. 'dvs1-null-pins').
  Removed unused DVS pin state nodes (only the three dvs*-null-pins
  states actively used in pinctrl-0 are kept).
- Removed dangling pinctrl-1/pmic-power-off state after removing
  the unused dvs1-pwrdn node.
- Moved 'compatible' before 'reg' in the PMIC node per DT convention.
- Dropped vendor-prefixes.yaml patch (handled separately, see above).
- Verified with dtbs_check: no warnings.

Hrushiraj Gandhi (2):
  dt-bindings: arm: rockchip: add Vicharak Axon board
  arm64: dts: rockchip: add Vicharak Axon board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588-vicharak-axon.dts     | 860 ++++++++++++++++++
 3 files changed, 866 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-vicharak-axon.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
