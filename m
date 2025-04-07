Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81CCEC36010
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 19:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSmmIoNeeQY1/Gkca6aMyudstR13Ry+OZZF7hqK8jbE=; b=uTLxUyEdINNIFS
	vO0AY3mpeNjuj5qBCBSIi+cysNoehFNyMCGh3u7QKZn9DazMYdK7pCXRmSstyPHN5GzWJsmHcdWSs
	NBIyjpik3KfkxzneUZQZ87uC2hppSTvZtvCwXwY+HA4vExBkh6TIPYj7axWBleAmJg6erpcR+Ahj3
	XWHoqgXqAFF2U0JojdkN/Hyd3y1u7/623icDRx8KFXqqTcKVbmzEmmbyiUiZp9pwvbtYFX2xhpOQ/
	WDVVERVnOBdCHmivzLSP56Cct++Fs4gNShPgsJu+31MzO6n21RVsNLgzon/S4/n+h8lguhuB0zPPr
	PIziQZ0jbAnGZw+2HRoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rj7-00000001jat-2UU2;
	Mon, 07 Apr 2025 19:01:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1qwe-00000001U1z-0AAg;
	Mon, 07 Apr 2025 18:11:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1F08649CF3;
	Mon,  7 Apr 2025 18:11:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F522C4CEE7;
	Mon,  7 Apr 2025 18:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744049499;
	bh=lUqZd0rd4XtM1OpzBOVReCueFe1OJ6zFjC6Bpun+2DE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=V9WXpPuh0rvIGgmWpoF+Zv+blrrrBv5PFJQsH1wZOAtudP/GulL8/Az4H6J7GutWj
	 CZjexWQCTW3ZMVbI3bzcPgNP9Ni7pUlOPguUuST1qX4gjp/4CWRCHilfirQlFf1EjQ
	 RkSLnfAzJC6ugzqafG+nqPUTGhAwHMfbqUliw5kESkcF/pojsi0PxvMCasEwPwPXE7
	 uvWCpW+IoVrKgWKEM/4OOusHxgpqyZioYr03qs2CqSvvinANjsP0egZyEDhXz7uSXo
	 GU12hArDgvbI7PwIPd/KHmSA1YOTmW2TUtYiOrv4xJeUKw6/jPOcmSL1nZ7rqnD+vw
	 kbvcA9ZjdDYIw==
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
Subject: [PATCH AUTOSEL 6.14 19/31] phy: rockchip: usbdp: Avoid call hpd_event_trigger in dp_phy_init
Date: Mon,  7 Apr 2025 14:10:35 -0400
Message-Id: <20250407181054.3177479-19-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250407181054.3177479-1-sashal@kernel.org>
References: <20250407181054.3177479-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_111140_095464_FE4510C3 
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
index 5b1e8a3806ed4..c04cf64f8a35d 100644
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
