Return-Path: <SRS0=br+z=FA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F06E4C63777
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 07:34:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4BF302145D
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 07:34:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="JKc1fMpp";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQ25SNWD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4BF302145D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=18oRd1jOWZ9xW5Npb2Ixp9DzBZ9QI0hMCUS9gXOoeUQ=; b=JKc1fMppXJDfU9uOtqBHmF8nh
	tKMy0BZMuOd7b9Cf38W0xSvDYfQZPrVrSx330nPfSv2SU62aaJ4R4WpBx4Im3y0e/TNgW3uifW4+s
	JeoKbG/z5YPSeDhFwGvK9yKLgsOSiNsTYYFIfS705P1drOQu6Fj+St04U7DZlTpd5keSz2a1E3wG+
	02on/VsyA3Dx2uVQ9QfPMhc1J0xa4LIJLFIuvgp5U3mEi41d1XGe1gMzb90FDASMHZNP73/NVZAoP
	Vr9AM9j1/70T+QwMStj+I9hWyiwDOEHZV+/O5GBsHYdcaDENl9uYsx+f0wdctgVUVc63461Xjjgui
	W06zx5WZA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kiBmt-0002uz-2L; Thu, 26 Nov 2020 07:33:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiBml-0002sv-P1; Thu, 26 Nov 2020 07:33:48 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B384F20DD4;
 Thu, 26 Nov 2020 07:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606376025;
 bh=k//4bcHWV3nCxnjDrzlPndrPPL6OH6Rfq6mk/LsgvYA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nQ25SNWDPvlhULo5y/v3hZxy0D5Y5KnvPzF6ryvoGEEIByVcu4bW1oAsdH3EagQdg
 y3loBePWgef3x4D+CNfLNXR3MC3zq5Il6RFzNlG9Jgx/hbFWeHnkzylSuQe2DiYlR5
 7ZucM2vxRUlABizcyz8aPLTBJlliJY0g517QjgA0=
Received: by wens.tw (Postfix, from userid 1000)
 id F103C5FA9D; Thu, 26 Nov 2020 15:33:42 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 3/3] arm64: dts: rockchip: rk3328-roc-cc: Enable analog audio
Date: Thu, 26 Nov 2020 15:33:36 +0800
Message-Id: <20201126073336.30794-4-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201126073336.30794-1-wens@kernel.org>
References: <20201126073336.30794-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201126_023347_949520_7BEFC5B8 
X-CRM114-Status: GOOD (  12.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Now that driver support for the RK3328's audio codec, and the plumbing
is defined at the SoC level, we can enable analog audio at the board
level.

Enable analog audio by enabling the codec and the I2S interface
connected and the simple-audio-card that binds them together.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 697fce709031..19959bfba451 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -104,6 +104,14 @@ user_led: led-1 {
 	};
 };
 
+&analog_sound {
+	status = "okay";
+};
+
+&codec {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_arm>;
 };
@@ -278,6 +286,10 @@ &i2s0 {
 	status = "okay";
 };
 
+&i2s1 {
+	status = "okay";
+};
+
 &io_domains {
 	status = "okay";
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
