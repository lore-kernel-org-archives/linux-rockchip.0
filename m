Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 135F0C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 16:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n+4SiROqIRgaI9769LNsv5yKmOl5bzgTIys+xYLrHB4=; b=OXdEsDaxEQxYvF
	krQYNpnYRXmmmLw1/srLtYg8p2ge69ePIGRIaYNPGwT8LhUIIII6CQzvHCER4PGNZOKBWXJ0kvNsd
	tZHBZHxSOKNhylXDy3IOzFH1PBXqm9CznGXieBMzKA4vUnuDKGyNmd2qioglvgbS/624aW3wNv2tI
	DQk2UWa2QGKOLfM23FV91ibv5aZ/JHM+lRFT8TjrAS2pI8EZxWvxZ56QgGIXvOpSUWTQaMKCRnknR
	SG05bMYP495qBRy+cfsfNBrfSJzq52l4jJJLWkJbGnLO6lUzHs0GhVAZMOysvlaYO66/dqzowyP7G
	8U4SNrETZkVfR3q54ULA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ron2d-00000000idy-2XfX;
	Mon, 25 Mar 2024 16:19:19 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ron2Y-00000000ic2-1vO5;
	Mon, 25 Mar 2024 16:19:17 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711383550;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=eeOca0jbpn3vxiTcP6H4it2Gf901TrwEixbj2YXQxJc=;
	b=usN4vTLw2BTrm1ZtUsYd9bMu8sefjTpAeJQxdnBsko2UADgccF2naLIgLbsHe/sx/pY5Sf
	aFhOhb/fgrWjEiEhhi9d7PdhjtFpWi50o4dmgS5XE8SNwSrkhCdyKs6dLOt/XEYoX7A8CR
	UgyD1T6d3HsvPK9S6eD1KNYNNbDoM6qq3HmN8bG4GHTYukr8aO8YCXScC0bpbqM87D0yCg
	n6QJOqEwGGkcdF92uy8qsQGXw/Tm5590pjAKU/t2FgECrkXxTfTG1FkVPZOGro7sw1kkH6
	SLF3EoI0XnRcTS8CZjkjRCKqUj+hn4YDFKb0gfiYJzwObEejr/q+xitu2sr/xA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	boris.brezillon@collabora.com,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	sebastian.reichel@collabora.com
Subject: [PATCH] arm64: dts: rockchip: quartzpro64: Enable the GPU
Date: Mon, 25 Mar 2024 17:19:04 +0100
Message-Id: <0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_091914_987241_C75339A3 
X-CRM114-Status: GOOD (  10.86  )
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

Following the approach used to enable the Mali GPU on the rk3588-evb1, [1]
do the same for the Pine64 QuartzPro64, which uses nearly identical hardware
design as the RK3588 EVB1.

The slight disadvantage is that the regulator coupling logic requires the
regulators to be always on, which is also noted in the comments.  This is
obviously something to be improved at some point in the future, but should
be fine for now, especially because the QuartzPro64 isn't a battery-powered
board, so low power consumption isn't paramount.

[1] https://lore.kernel.org/linux-rockchip/20240325153850.189128-5-sebastian.reichel@collabora.com/

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 67414d72e2b6..68d432c61ea5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -285,6 +285,12 @@ &gmac0_rgmii_clk
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	sram-supply = <&vdd_gpu_mem_s0>;
+	status = "okay";
+};
+
 &i2c2 {
 	status = "okay";
 
@@ -491,11 +497,15 @@ rk806_dvs3_null: dvs3-null-pins {
 		regulators {
 			vdd_gpu_s0: dcdc-reg1 {
 				regulator-name = "vdd_gpu_s0";
+				/* regulator coupling requires always-on */
+				regulator-always-on;
 				regulator-boot-on;
 				regulator-enable-ramp-delay = <400>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
+				regulator-coupled-with = <&vdd_gpu_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -545,11 +555,15 @@ regulator-state-mem {
 
 			vdd_gpu_mem_s0: dcdc-reg5 {
 				regulator-name = "vdd_gpu_mem_s0";
+				/* regulator coupling requires always-on */
+				regulator-always-on;
 				regulator-boot-on;
 				regulator-enable-ramp-delay = <400>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
+				regulator-coupled-with = <&vdd_gpu_s0>;
+				regulator-coupled-max-spread = <10000>;
 
 				regulator-state-mem {
 					regulator-off-in-suspend;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
