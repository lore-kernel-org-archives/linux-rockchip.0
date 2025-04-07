Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66C1CC369A4
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 21:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxrLeYYyGYXsrXe+r85hWIFfZ+Hhfz+o/pg9S49BN2k=; b=j7lBqKPSUQWZhQ
	c34wv4Y3ljPwlZCT9dJxkJ6YCuvkG+0qp/8qm6ir+zhq9s9ufGePMjstrx3YGMQ8OBxqZkCX6kDBX
	Uh+OFwcYCl29LOH3/BhGmizIcL96O5tNJTgsS80bHuafcFTMZjNEu73nJswMgHS2yx8ve2u4wgYg6
	iR5ddxyBlYyx3b+vSirOHkL38g9M97Z7E+dYckey6hO2TbIrVIRfpxVrIxoZLoTRjzJjt1wL37HMZ
	rlxlMwhs0ABqsEeJLFQE2Vk+WIOux5cvrziXl72poSq9dDSrWi5lqgSYH2xrmv8Spu1F5hSm/zq0R
	P0yyVhmB3qcHk4XnbsBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1uIn-0000000242q-1euZ;
	Mon, 07 Apr 2025 21:46:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1qyq-00000001UXy-0Dnf;
	Mon, 07 Apr 2025 18:13:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 226D849FB9;
	Mon,  7 Apr 2025 18:13:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 953F1C4CEE7;
	Mon,  7 Apr 2025 18:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744049635;
	bh=N3tuyanrTtxiKtiQRftQJLpETtDOfLjsVli+Lpax9x8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uR/XuDW2PPtV5U18bb5F1SFI3r+MACZ5F76O3xpKTB8d1Q28HJO4qF+7BKhLMM0A+
	 goouL4GGKCqmHIdQy77GqunjlypiwhhBurB2n62GkFan/GIAUVQ5f87DGmazuOVioN
	 ET5zUFDuQeCbiXxmpV+Wvl9GCt5iY2eDewfSOiTI42gcERVtIDyReAJR0pdVqUgHc7
	 /nuvUpqLoVTFXfLf6HFSMImWd8Hzo2eYbHUgzRSP/EWQOnG2IhCY46o7Nxy5WTFJ0F
	 2OwVt5aOHmKrk+uYsR+Ui5DVOuqL13q54myBNjGnQqTcr5ZUZ2wzr0FZuCJIpQ0Bih
	 L+2cE9vJhr9FA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Andy Yan <andy.yan@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	heiko@sntech.de,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.12 13/22] phy: rockchip: usbdp: Avoid call hpd_event_trigger in dp_phy_init
Date: Mon,  7 Apr 2025 14:13:23 -0400
Message-Id: <20250407181333.3182622-13-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250407181333.3182622-1-sashal@kernel.org>
References: <20250407181333.3182622-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.12.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_111356_108779_E67C1CDB 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
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

From: Andy Yan <andy.yan@rock-chips.com>

[ Upstream commit 28dc672a1a877c77b000c896abd8f15afcdc1b0c ]

Function rk_udphy_dp_hpd_event_trigger will set vogrf let it
trigger HPD interrupt to DP by Type-C. This configuration is only
required when the DP work in Alternate Mode, and called by
typec_mux_set. In standard DP mode, such settings will prevent
the DP from receiving HPD interrupts.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Link: https://lore.kernel.org/r/20250302115257.188774-1-andyshrk@163.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 2c51e5c62d3eb..f5c6d264d89ed 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1045,7 +1045,6 @@ static int rk_udphy_dp_phy_init(struct phy *phy)
 	mutex_lock(&udphy->mutex);
 
 	udphy->dp_in_use = true;
-	rk_udphy_dp_hpd_event_trigger(udphy, udphy->dp_sink_hpd_cfg);
 
 	mutex_unlock(&udphy->mutex);
 
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
