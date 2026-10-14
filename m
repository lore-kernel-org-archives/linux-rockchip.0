Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1069CC6B31
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 16:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0c2uajob4uI+uq4/wvFh2xNjKHaCed1etqRnThYT/Q8=; b=A19iMfe7zRjifU
	7gPLfLmIWTzJBVCfmcmhFe3rrYHF1Dp1cEWtLrFonx7GWQ2ZKjhDP/sLCSdo+MjoCx2Ssh1k5VMkE
	96Gzkdb1L5v1YfqlS0h6+NClPhYjYQUqy+lX5Umv562gb3DBPrBTYaOk7msg4wV3raEKIRQi4Ed2v
	IeqViCDUuspFXUTBkkkkWYeJRPpLPr8/4cYgLdQv/ypjKwfTax3qHWGqqMFrrAeQRRZ/bi+O+fPA8
	0EVfTOYYIUAbXHNSv8EjVTvuEErWD4T0SEYSENmBVDNMdKa3rKbn/vhyHOTaKmNU0AUhAw8h9IWL6
	oNGRKMYxt/roFJzR3eFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH1wK-0000000FzFI-0efD;
	Wed, 14 Oct 2026 16:34:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH1wF-0000000Fz7C-1yM8;
	Wed, 14 Oct 2026 16:34:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0405A43CCB;
	Wed, 14 Oct 2026 16:34:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7DAC32781;
	Wed, 14 Oct 2026 16:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791995686;
	bh=KcLH0FxVAapkgL1Wnemj3DDftG9cNXCHkk3pyZsGg28=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=g7Ay201IC4os8fAnpHozDHFRJqTDFZuIvj16PSbw+OJa7r8AFOq3N2oUt3fnTS4AG
	 gaTQOuVUVJfiXPXUmHFcikMDJOCfgTI3yHFaRLj3seHw8SuCAGTNFm5QBEDj4yFVgB
	 75B3CdVr9DQy/e+k48vx69lPSckrlI2EnvRWkE4DDQCKRGyDPIVr4GqHDJ9Wx7f5P1
	 DLbcnf2NxQLroV5HBcKQZuQ1Mt//j0dIRQfVNo5XU6/3Mc1SfL2wNB64U68dWqENGu
	 D0cgVCeUH+Z2Ituf0+oZfmgiUtYs84J/149eKRjaML9IRUC9i/UI/MCTUzDOt45/m6
	 uFpCKKOScd19A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84C6CC6B2D;
	Wed, 14 Oct 2026 16:34:46 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Wed, 14 Oct 2026 18:33:07 +0200
Subject: [PATCH 7/9] arm64: dts: rockchip: rk3588s-nanopi: rename gmac1
 reset pin
MIME-Version: 1.0
Message-Id: <20261014-nanopi-m6-improvements-v1-7-e713f71eb4d3@gmail.com>
References: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
In-Reply-To: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <diederik@cknow-tech.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791995685; l=1121;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=WtATwbQABKVY4tLFdbXIynQTMB75uVl3gBt3XPQsrKw=;
 b=y5mvhJ2yoRh9AD4k14R+VjYXo4zI6vfesUROGPLsbB5nNirUtfticeo6qcZRum1dT8Lbf9Cps
 X1qZH/93LJRCbvzaavWw3KVxuumgRToZ1bZH5cCVH+lRv2lxvB3h+6I
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
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
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Joachim Eastwood <joachim.eastwood@gmail.com>

gmac1_rstn matches the signal name in the schematics, which simplifies
cross-referencing.

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
index 56264ff3b409..2789c3d9bcc4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
@@ -274,7 +274,7 @@ rgmii_phy1: ethernet-phy@1 {
 		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&rtl8211f_rst>;
+		pinctrl-0 = <&gmac1_rstn>;
 		reset-assert-us = <20000>;
 		reset-deassert-us = <100000>;
 		reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
@@ -346,7 +346,7 @@ usb_host_pwren: usb-host-pwren { /* usb20_host_pwren on M6 */
 	};
 
 	rtl8211f {
-		rtl8211f_rst: rtl8211f-rst {
+		gmac1_rstn: gmac1-rstn {
 			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};

-- 
2.56.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
