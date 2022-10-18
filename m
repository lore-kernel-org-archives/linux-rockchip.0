Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40BBFC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Oct 2022 07:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x2C/MYYlQDAwfSTktenwRoqzefaREGztXAeHh95z78g=; b=ra6CgYhPgUiKKz
	c0fz8kzTtUD8bqy7i0hpkIqNPlCL8++5olL+e2pbnH57neldMDJgYZii42ZBw4wG5VyopctXoTJiw
	kHPV/ovwMt7BEs1oX4PW7H13u8v+DxCO7F1vvKVw5ARCpF64qhJjSUx99KxmSegKm9WeLMpIOc790
	kHZOuYazQmv6QQzONRI2NEl3z+D5i92RKQ/LFeVgdeZcFZlj38hOcMdIW9KoQYv/s9+ndUAvLTAA+
	i7XoEGsYit90OqZI5loxDBq4SROMDKvCZGnOShNqRPPI/F57olIVavLbYdVJ3ESsZc4InVtW4udw0
	fGeIpbW9OfYbib4sKW3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okhJI-0041Xu-Pt; Tue, 18 Oct 2022 07:46:48 +0000
Received: from out199-12.us.a.mail.aliyun.com ([47.90.199.12])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okhJ6-00416W-Fs; Tue, 18 Oct 2022 07:46:39 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R181e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046060;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0VSTvrrn_1666079171;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VSTvrrn_1666079171)
          by smtp.aliyun-inc.com;
          Tue, 18 Oct 2022 15:46:28 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: vkoul@kernel.org
Cc: kishon@kernel.org,
	heiko@sntech.de,
	p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH] phy/rockchip: Remove the unused function hw_to_inno
Date: Tue, 18 Oct 2022 15:45:57 +0800
Message-Id: <20221018074557.91724-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_004636_857479_AEF76F24 
X-CRM114-Status: UNSURE (   5.85  )
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

The function hw_to_inno() is defined in the phy-rockchip-inno-dsidphy.c
file, but not called elsewhere, so delete this unused function.

drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c:203:36: warning: unused function 'hw_to_inno'.

Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=2425
Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index 2c5847faff63..587994353c58 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -281,11 +281,6 @@ struct inno_mipi_dphy_timing inno_mipi_dphy_timing_table_max_2_5ghz[] = {
 	{2500000000, 0x15, 0x54, 0x7f, 0x15, 0x6a},
 };
 
-static inline struct inno_dsidphy *hw_to_inno(struct clk_hw *hw)
-{
-	return container_of(hw, struct inno_dsidphy, pll.hw);
-}
-
 static void phy_update_bits(struct inno_dsidphy *inno,
 			    u8 first, u8 second, u8 mask, u8 val)
 {
-- 
2.20.1.7.g153144c


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
