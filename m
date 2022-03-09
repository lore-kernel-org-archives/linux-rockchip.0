Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3967C43217
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKchLRrNPRjf7gdngEuWicbiFZvHxRx5Riu+cRroFoo=; b=JsfDV/le30i7FX
	mKFr8hIQsITyJUYWeYqzda4xVg3cMH+AKCUs1Eg3zepKycNQXM7ZaniXb9V817EVCDAYA/JCERVUt
	vmPNIoitPY27rzNizu7Ql9o1YqGoW+XTUBNzyflPZz41d9HtwNlWMV2Ls+1HXqiwQRq7TicUoMsQ4
	pptEdlIlGc9D5me8osFrWF/ojNdBaaGUFey2wdejriw5sIGEo18/5Xo5eqQWrSDfr+wAkPv6SKglC
	vTWIm/5Qq9SDlhLEvs9HjEawtbQeUeWjh95pjzAdF/WhwOp4c92jOOnZ9zFYjtyDV8lMSgMnDdxrv
	0+DYVa1WE37/CkqK8f6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRzHR-009TAh-I8; Wed, 09 Mar 2022 16:35:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz6Q-009NSB-Uf; Wed, 09 Mar 2022 16:23:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 77D4C619D3;
 Wed,  9 Mar 2022 16:23:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72D72C340F7;
 Wed,  9 Mar 2022 16:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646843033;
 bh=iW0d5jYTr5uhwSlZKDqadiIGanQlhVOoTlRuLUDGIHM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=s4suJoNiTIXn7waYRQ+3EW62ptc9x2v0ouE1zCNtCakzf/NSD4u0vo6HAI9R2oABF
 81kHMNrxt0U/egSAZ1S5YG4rq2WjfGBtjK2ul5pa5UV2j1rT9d6qZmcsOznIefLs5e
 cDiwvwISWHbhK/GPOlGNLnUnr10Cbp0g7GjkyZSsIOuVLXrpdrrjmgIQUd7mVDSzvO
 aOT/FvRLhnYBV9OvG7E4gVXA9Go/WwOcrrsMnYaP0FvmMuxJaYNKjF6cq2PDpeIYZ5
 TI9+Wcum0PJH7BSO9B3RBLYEsxjknWtQvly9u0minRB5ZyjRQNroFLwJNECndnO2KD
 +0wsoLa8EEsmQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
 Quentin Schulz <foss+kernel@0leil.net>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 03/19] arm64: dts: rockchip: fix rk3399-puma eMMC
 HS400 signal integrity
Date: Wed,  9 Mar 2022 11:23:20 -0500
Message-Id: <20220309162337.136773-3-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309162337.136773-1-sashal@kernel.org>
References: <20220309162337.136773-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_082355_061463_AE338425 
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
index 45b86933c6ea..390b86ec6538 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -467,6 +467,12 @@ vcc5v0_host_en: vcc5v0-host-en {
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
