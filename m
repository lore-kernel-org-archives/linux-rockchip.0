Return-Path: <SRS0=wu9b=P2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B0DBC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Nov 2021 18:59:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7E83661360
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Nov 2021 18:59:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7E83661360
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=megous.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uKKhQxxCRkegOZeq05fUBZg+lqfm559hgR9NZ46d7lM=; b=UQOWnvEEvtG6Iy
	fl4xydhBJAK4LkFcKUbtKvDh17y+8izT7/lHMHObs5YxZPoTpGCuhq6EZVGZA+lPUHy46HrXWz3n1
	DAceGUoKAuSUkYPm6XVx6ytGrvAZn/MCxolx8/nONzMtsFCCiywzH1ijoBC/JFydpbVh+3dXj2MwN
	80cuj7sHvFls91ak9mKDAY3KzEMty7GLPVIgzw6l7gEr1xYzkycBGetQGwjlFIIFz3lrEPRnfaZnC
	2nb++1tTCfvmKzzb36VZ2FgONNwhDv6KbbUSYJing8LebJ6U5xPZtC/p4AlfjNrCxCSi18WjENDuq
	QixibQsIuR3Jl4OtRcZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjnNb-00EjX8-F9; Sun, 07 Nov 2021 18:58:59 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjnNN-00EjUQ-TO; Sun, 07 Nov 2021 18:58:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1636311517; bh=h4BpOOjQtkAykHCWV6tHGyXVrJ4qCZ6b243KtgEe0Kg=;
 h=From:To:Subject:Date:From;
 b=AgrHm1CySmReXI9I5TU3g6AKiUBPH14YllIHhHauS1GksZCqlSuaKw6giQWwfaT+j
 g0oxZa1PFqMruFOBGJQajN4UCg6WJVzp2Iqpwf6BUkKUBxLTe9ZBWnkZY7buAq5QYs
 qVkalonlK5F/nwNJZjd7SciJnRxspYVly/CxOcjI=
From: Ondrej Jirman <megous@megous.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Ondrej Jirman <megous@megous.com>, Julia Lawall <julia.lawall@inria.fr>,
 kernel test robot <lkp@intel.com>, Tobias Schramm <t.schramm@manjaro.org>,
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: phy: rockchip-inno-usb2: Don't print useless error
Date: Sun,  7 Nov 2021 19:58:35 +0100
Message-Id: <20211107185836.2540901-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_105846_301179_264923AC 
X-CRM114-Status: UNSURE (   8.32  )
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

The interrupt is optional, make the dmesg not complain about it
missing.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 428c2313a9cb2..27820bee04eae 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1180,7 +1180,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	phy_cfgs = match->data;
 	rphy->chg_state = USB_CHG_STATE_UNDEFINED;
 	rphy->chg_type = POWER_SUPPLY_TYPE_UNKNOWN;
-	rphy->irq = platform_get_irq(pdev, 0);
+	rphy->irq = platform_get_irq_optional(pdev, 0);
 	platform_set_drvdata(pdev, rphy);
 
 	ret = rockchip_usb2phy_extcon_register(rphy);
-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
