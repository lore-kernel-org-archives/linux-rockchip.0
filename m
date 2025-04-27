Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2E3FC369D3
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Apr 2025 09:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wTYIR2jIlx6524oNe8IzAhu35J7pCsyIaaQfoJ0eEHk=; b=4xkMXPaJ6wMC1k
	Bm0Ws9hegN0UIysuhyxAon4NTNOkAV/an5JShKH1URkWW0C43QZp3MpsW7sdM29g4p1W+0xh2ExMs
	TBmfwNItRo9fPApVpuEogXRQHHwJyvmX6dSyt+j1M/OK7hnFbkaeKnp0xYfv5p0mhKhYcJTjiOfvZ
	ORfKg5EvlTF6dGP4X2lPTWmJqNuVRDczYpyfsH37BTAaFdgayeSdbV6JwE3PE47N4JnrBRk6UV9ej
	afStaSK+hl9/MPodzFronWgocS3yneqkOFcR+pv3LCJsOlcOmhWS9a+nj0GhUXCJhtmOcD+6qRn82
	aSfqBJHOTLOo4MxWnlTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8yfp-00000003JZk-39ux;
	Sun, 27 Apr 2025 09:51:45 +0000
Received: from mail-m93197.xmail.ntesmail.com ([103.126.93.197])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8yfm-00000003JXk-3SxG;
	Sun, 27 Apr 2025 09:51:44 +0000
Received: from crj-HP.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 13467afd3;
	Sun, 27 Apr 2025 17:51:26 +0800 (GMT+08:00)
From: Algea Cao <algea.cao@rock-chips.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de,
	cristian.ciocaltea@collabora.com,
	andy.yan@rock-chips.com
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Algea Cao <algea.cao@rock-chips.com>
Subject: [PATCH v2] phy: phy-rockchip-samsung-hdptx: Fix PHY PLL output 50.25MHz error
Date: Sun, 27 Apr 2025 17:51:24 +0800
Message-ID: <20250427095124.3354439-1-algea.cao@rock-chips.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhoeHlZCQkoeQh1OGExOHRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9676a8a62a09dakunm13467afd3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ohw6TAw5EDJKNzAjIiEXAg88
	IR4wFE5VSlVKTE9OTE9MT0NMSUNMVTMWGhIXVRoXHB4aVRgaFDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlJSEg3Bg++
DKIM-Signature: a=rsa-sha256;
	b=KrV+/+4CPUARt4u7JXOYH09ZtCg74JjPajJcsbOdnLlHIU6yfpJARmdeDu3KozYLYmuQKiI1t1YmH9sjIf+oQ9Ahi9Jkw9SngZpIOvbLyE4kPq3/jojUMZA82LpTUlQ854nhYhE73BThCJqbG1Am1I2zSLCezAdhfbqs5dkvyq0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=SoYz/XFXV7qWYJpDDDScC20wyuaAqrciDeZizEc1w4E=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_025143_383451_9643ACFA 
X-CRM114-Status: UNSURE (   7.88  )
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

When using HDMI PLL frequency division coefficient at 50.25MHz
that is calculated by rk_hdptx_phy_clk_pll_calc(), it fails to
get PHY LANE lock. Although the calculated values are within the
allowable range of PHY PLL configuration.

In order to fix the PHY LANE lock error and provide the expected
50.25MHz output, manually compute the required PHY PLL frequency
division coefficient and add it to ropll_tmds_cfg configuration
table.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

---

Changes in v2:
- Modify some descriptions in commit message.
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index fe7c05748356..77236f012a1f 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -476,6 +476,8 @@ static const struct ropll_config ropll_tmds_cfg[] = {
 	  1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
 	{ 650000, 162, 162, 1, 1, 11, 1, 1, 1, 1, 1, 1, 1, 54, 0, 16, 4, 1,
 	  1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
+	{ 502500, 84, 84, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 11, 1, 4, 5,
+	  4, 11, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
 	{ 337500, 0x70, 0x70, 1, 1, 0xf, 1, 1, 1, 1, 1, 1, 1, 0x2, 0, 0x01, 5,
 	  1, 1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
 	{ 400000, 100, 100, 1, 1, 11, 1, 1, 0, 1, 0, 1, 1, 0x9, 0, 0x05, 0,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
