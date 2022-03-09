Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1037AC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvDrC07xp/L/WdPNfzJs7N0hRDZkdzlQcnlC6F6HNO0=; b=DPkQO3BKQnvCNA
	vx4Ia1/6H1VOdWjwG7FpyJ0A0ReiiGCyRpNNyjh4RQH45lpkVnZvXZHx8vDModii0nO7R01YKKHMV
	IxcvXih6TlbrBG5ZbitivnpGLELDitaMXPD1xK/XMyHp9kjz2YJOJEdG+AOzRhlV34sH5s00xrbcd
	wcciiaZTmtY3hzI0WY6l3RuX7+u4cqvuIRVfHUruHnVf4NmFMhDMIxxuzzveK7QAbWteFOBAuuO00
	cggS+rLxkoa5zKgeVmKbak7wgOB47YH8kSl6BIQLXEdJYhaqaP5NYlaP5JPXsgdXQ0A2sci/CzkFt
	ppS7AaE219HRYNJ+4+WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRz1T-009KdQ-PP; Wed, 09 Mar 2022 16:18:47 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz0T-009KCN-2j; Wed, 09 Mar 2022 16:17:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A2B40B821FD;
 Wed,  9 Mar 2022 16:17:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EC95C340F6;
 Wed,  9 Mar 2022 16:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646842662;
 bh=YIErJnc75CCefGBPMKlJGtrhLN04w92UXi9qejAIpu0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pf6B4JVnpnugGVZWwwuUhVWlo2GzNx184mv68AU5/MI/vP0qL+eexfE03wz1nebQJ
 MBO/GB6Vyt/bCvbZtIRVcIPhmCIAkvtHaUs2wgwYb1TdK5EOxavyHdANa+PzH5HOnq
 7yZjWpeg5SNZbreTdpIwlXBVOiStBEt1hionBJbpFb+EgJtbFt5RkIIXmhrJ+VYMDN
 PfPpsolc/DVg5F3jgFihHhOF6aQ/VXVsK0xwth4/mO6X0zW4mg3mGRs6uJzk+cAxQ1
 xZfsXSKOQlPaQHHxtf3ILmy/MLU6Km7a8jLv3iKbXcTIhINyEnO220ONxiD16pYk8M
 SJlXgkPTE7nlA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
 Quentin Schulz <foss+kernel@0leil.net>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.16 05/27] arm64: dts: rockchip: fix rk3399-puma eMMC
 HS400 signal integrity
Date: Wed,  9 Mar 2022 11:16:42 -0500
Message-Id: <20220309161711.135679-5-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309161711.135679-1-sashal@kernel.org>
References: <20220309161711.135679-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_081745_322173_EE6AF38A 
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
index 002ece51c3ba..08fa00364b42 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -439,6 +439,12 @@ usb3_id: usb3-id {
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
