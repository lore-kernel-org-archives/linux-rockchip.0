Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7733EC64EC4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Mar 2023 21:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLUMACaDCNbc+buDtjfeiY7P0RYxaJg2IK1SMgGHRVo=; b=ydw7NWTsnce3xE
	rBSoN++cvUTasr77CJ62bqMho72jyygNs7gxqWuhEMRWwvBZ4uPzD5r8Vu0k1pOxoui0vz8K0A4lO
	FbN0GmdtnV4LPl47Ik+HTfqA7bSJV+y/zGa0NiaVKeO1gZ6vqvI7sn5PdpOq4015olwZTeyzVfsaL
	jMc65XtOUR1ngQ3e14Umu97LGMK0MWGgwbSBnolrvJzzvpluIFlXQi66XI140s29+D9wNy1Ery0nX
	DRBpC3SQZktjt29wXBi5jjMkXAbomdXeSuTNDV1gZFHraghf9xLGis962dJk4xtIah6y7eu3nuzi8
	sTxubCnVc/fl8HZRyPjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYDIq-007aLY-KF; Fri, 03 Mar 2023 21:51:00 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYDGl-007Z8E-Hc; Fri, 03 Mar 2023 21:48:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E0F90B81A26;
	Fri,  3 Mar 2023 21:48:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A83F9C433D2;
	Fri,  3 Mar 2023 21:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677880128;
	bh=Q7GN1C1Ku0/LoFstXzIDGUQwzwKCHcF5ZS4mrewWO34=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ssDQ4ucDuJxdJ/7if8hVf+dfyWxhQUAJlnt7TRLG8GA/2GmgUa1vcUcnP9wef039i
	 bIRQiCuWwqR4yWgktr0hQn7NFr+jF2hh/ZyjyhUy/lm0LTsnP4r64LF77WIv7BrBfO
	 MsEbMAbOsR0Jij5VyhPMbh0fPiq5REVl4UcZwmDMPsoVTULBYq9+y+XNj0ZN/aruKw
	 8gMAM2prAPhoJrmsX+XGnWMnC8bDMhaCLJqYbVRFBrkFmtYG6dc5fQbzpVbADMOki6
	 X0BvZgI54ZK29eb0v1iWBIATuvlq0Wn7venkgQHKL8uFQajDZZRZFgU4iJKbsauzaa
	 Tso5sqhB9a6dA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	heiko@sntech.de,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 20/20] phy: rockchip-typec: Fix unsigned comparison with less than zero
Date: Fri,  3 Mar 2023 16:48:06 -0500
Message-Id: <20230303214806.1453287-20-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214806.1453287-1-sashal@kernel.org>
References: <20230303214806.1453287-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_134851_790549_F824985B 
X-CRM114-Status: GOOD (  11.01  )
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

From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

[ Upstream commit f765c59c5a72546a2d74a92ae5d0eb0329d8e247 ]

The dp and ufp are defined as bool type, the return value type of
function extcon_get_state should be int, so the type of dp and ufp
are modified to int.

./drivers/phy/rockchip/phy-rockchip-typec.c:827:12-14: WARNING: Unsigned expression compared with zero: dp > 0.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3962
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Link: https://lore.kernel.org/r/20230213035709.99027-1-jiapeng.chong@linux.alibaba.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/rockchip/phy-rockchip-typec.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index 24563160197f5..ba805f1d4f6a8 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -808,9 +808,8 @@ static int tcphy_get_mode(struct rockchip_typec_phy *tcphy)
 	struct extcon_dev *edev = tcphy->extcon;
 	union extcon_property_value property;
 	unsigned int id;
-	bool ufp, dp;
 	u8 mode;
-	int ret;
+	int ret, ufp, dp;
 
 	if (!edev)
 		return MODE_DFP_USB;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
