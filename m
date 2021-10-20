Return-Path: <SRS0=Zsw1=PI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D87A5C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 10:08:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AAE2B611C7
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 10:08:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AAE2B611C7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flokli.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEeHv08Xvky2l8qC6we0kJ2tiUlkT0cZV+9RNX1jrIk=; b=bsFAiVHkgWjtw+
	isTxh9qJrv67ACm0prft9E5MwsY+rJJeySqmJ4nh60j9vY5glZL97zY0dAeiNPqYUQYZbJKS7u1Oa
	AGHo0cjAKcgynwKZNClq75ahL6UqVsIlxam4WFgqMv4EDvFqqw7KCzPDDG9lim9X+xhs/8Ucedkvb
	hZN4Tnw7EB3eKHd8/DXkOxVAehZifP+kWcP+jmd3Kl34HJ746GSlxylJ0SE2TbrQQdxSR3DWOBA2W
	gqtWfBu6mWUf6othFJKgizehA5039Ue+P9nFwvwJlR/lPiEHAkimWATeexENxA3zjc8sl+Vxr/Wyh
	xLFpi55f9DT21IFYzGsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md8Wa-0046so-GX; Wed, 20 Oct 2021 10:08:44 +0000
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md8WO-0046pw-A6; Wed, 20 Oct 2021 10:08:33 +0000
Received: from localhost (ip-84-119-226-0.unity-media.net [84.119.226.0])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: flokli@flokli.de)
 by zeus.flokli.de (Postfix) with ESMTPSA id A5DB411D2BDD;
 Wed, 20 Oct 2021 10:00:10 +0000 (UTC)
From: Florian Klink <flokli@flokli.de>
To: Heiko Stuebner <heiko@sntech.de>,
	Aditya Prayoga <aditya@kobol.io>
Cc: Florian Klink <flokli@flokli.de>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: fix poweroff
Date: Wed, 20 Oct 2021 11:59:23 +0200
Message-Id: <20211020095926.735938-2-flokli@flokli.de>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211020095926.735938-1-flokli@flokli.de>
References: <20211020095926.735938-1-flokli@flokli.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_030832_514082_A3A70003 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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

Adding the rockchip,system-power-controller property here will use the
rk808 to power off the system.

Signed-off-by: Florian Klink <flokli@flokli.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 93745dcc2af6..af3bf7800dba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -293,6 +293,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
 		vcc3-supply = <&vcc5v0_sys>;
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
