Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BCA6C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Edo5dv6BL//0DP0GnIyG5qHAjw53qTaZ+Ah8PSIsk4I=; b=D4zP2imLoaQ3cZ
	IF7ywI7rzzXaeLusIAJfa3XY7PTyyPb7LyEOee4OzUP3JZf3mHaiA4mAYQPqJOGVHfvfJDFj91ZTH
	ZvdfCUFb4oPYTNE68VI9thy7eJ1dK5PUvJByKdYraScEp0kYulUVS2CL/qUyvOxwoKGX7lhTPY0Ao
	bs0+qbnx3ac7d5/216859bj2GmBMI461Bw94zfSjsj20YQKe1sci03kyRZUPDUVtV6yS5U31I3/Vt
	kiIVH+akK708TtrI14go0U6WMA4CafYhfEtH8G7E9WLTCeDsEhEaZ4ZV2bSatAU43+r0E4Hde2ZIU
	Q6AAprmN5K9FpF4EdiCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRzDK-009R5E-CR; Wed, 09 Mar 2022 16:31:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz4p-009MVb-NF; Wed, 09 Mar 2022 16:22:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 453B46193B;
 Wed,  9 Mar 2022 16:22:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 016E0C340EC;
 Wed,  9 Mar 2022 16:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646842934;
 bh=IO6UVDaLq4MGTBRCBzhs46Izu0yxbl4fllpUsoEd0ho=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=psoA3LJagQJz1qu+p72nsOd2vS9Ep+20VrLmF/9gQqrU9CgM0gaQugDQVAZHx12jN
 xQFDPUNjdRmXbjsiLdMv7AHk75ypBTIy75aORlIGKG2WVF5sVdYTZLo4n7l75KVZCk
 HOwItaNa8oGfpHFnQGWEzJybkyMNCLtqw33AZ1bIWruQqs0cG4hgFBSOjXHQuMoFm0
 hs3jTQwACMyAwHn5m9qgga89kqMxWBoXZ5jeepQmd9ncKc5UK4uTSauWZ16FZwKq1Q
 mEHDnIouoNPQ67m5zFnWXlZ9UaAxzePcHRHgdEnpaq3xARlxnZWMFOCM6ddNEQWujP
 1Z0wHmRPHoqWA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
 Quentin Schulz <foss+kernel@0leil.net>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 03/20] arm64: dts: rockchip: fix rk3399-puma eMMC
 HS400 signal integrity
Date: Wed,  9 Mar 2022 11:21:41 -0500
Message-Id: <20220309162158.136467-3-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309162158.136467-1-sashal@kernel.org>
References: <20220309162158.136467-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_082215_849903_560D4BFD 
X-CRM114-Status: GOOD (  12.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>

[ Upstream commit 62966cbdda8a92f82d966a45aa671e788b2006f7 ]

There are signal integrity issues running the eMMC at 200MHz on Puma
RK3399-Q7.

Similar to the work-around found for RK3399 Gru boards, lowering the
frequency to 100MHz made the eMMC much more stable, so let's lower the
frequency to 100MHz.

It might be possible to run at 150MHz as on RK3399 Gru boards but only
100MHz was extensively tested.

Cc: Quentin Schulz <foss+kernel@0leil.net>
Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Link: https://lore.kernel.org/r/20220119134948.1444965-1-quentin.schulz@theobroma-systems.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 4660416c8f38..544110aaffc5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -472,6 +472,12 @@ vcc5v0_host_en: vcc5v0-host-en {
 };
 
 &sdhci {
+	/*
+	 * Signal integrity isn't great at 200MHz but 100MHz has proven stable
+	 * enough.
+	 */
+	max-frequency = <100000000>;
+
 	bus-width = <8>;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
