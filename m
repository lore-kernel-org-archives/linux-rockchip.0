Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF0B7C7EE32
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Mar 2023 21:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmEUrBcEm9HFQjFAOYuGOAQPaVBfGf9nw3Y2e+1wokE=; b=RPQnRs//PhnPjq
	IEXru3l4bejPoGTgSd+2eyUNIgLtS9f8tSpf/ZynGbNx9HoBunHWHUuES022DZInLNeOZRqmFPY+J
	3t4+yEYccsBNLQs5pG0EBXZFphkcljFidECeBQ+f0V8WJrmFTZRNHf0ONBUGB7+1GI1aLvJAykZpW
	R/XHrbUaYxznBtRtZXP1SW2ydpH8cV9XyvfPixfCgbEOi7uJbMYQU+EMqYzlI7JNn3neps9KY/73r
	nTdspUa2zAuwrX1pmtUd4Ejndt1Fi5oj+Eu6qHVNjHhhqGcOb6gAud2sNdfigYg8Uf5qPaj42oPYz
	Nv6pK7k4+/lPrhFp6gVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYDHQ-007ZY8-Op; Fri, 03 Mar 2023 21:49:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYDFA-007YAf-UZ; Fri, 03 Mar 2023 21:47:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F1B1F6195C;
	Fri,  3 Mar 2023 21:47:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BECA4C4339E;
	Fri,  3 Mar 2023 21:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677880031;
	bh=SPOHiIBhX/pod9ysqUEzqP1qpZP2i7ADnkDKHl8UUCg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VHrVED7wkLQwdfr6tBS2wWBUQ23m8Q6xU+rqP/HGUUdlaHcPOJKN6CRKJTDzRGUj6
	 SF4WG71G02ILXAd093MW1QjNL240tfRjWNKFF5TMBF1TIhJPv/UK4APTBdH396q+QA
	 rXG9RpLfoVVjLHSiYGiEM7TZmGPVCR2AXR6NUDqGH5lNuYJjFItQ3+X0x6KB2TKZKW
	 9eT8GVidQw0hGQnxJJXweCWj25gJN1A1FZJ8LVHA5j/F0+NnR+QRo7FpE/cw6StJQJ
	 g58XNiIzxWZEBPZgfPtbUgIx8kZl9WMPlj5d13bjSEH2zGQ4pRv0nCfHfJRm/tuPD/
	 j7eaKEGWcMSeg==
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
Subject: [PATCH AUTOSEL 5.15 48/50] phy: rockchip-typec: Fix unsigned comparison with less than zero
Date: Fri,  3 Mar 2023 16:45:29 -0500
Message-Id: <20230303214531.1450154-48-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214531.1450154-1-sashal@kernel.org>
References: <20230303214531.1450154-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_134713_192198_ACD625C4 
X-CRM114-Status: GOOD (  10.93  )
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
index d2bbdc96a1672..bdfb14d1dd68c 100644
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
