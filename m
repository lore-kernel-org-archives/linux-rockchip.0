Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A768F43826
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Apr 2026 14:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3cbkeMa/BHOEgsLcLlTB4iL1fKCryDr07T2CV8OZoDI=; b=BIe2Rr4Qd6UM38
	6Ph6BTeHWqM1d5wdDK5+o/44t3Jrr7Gfin3JQVVCPfz/yrYd8XBSm9YnkviAyGbvWIGo0RQtOey4p
	IAibF1K4t4Nvk5wQMgtMl2Wpk2JzCJDmW+/rkrB8kMOp2r4tWHs48UsMYa6BxRQwDKER7banBP5v2
	GiR85LrPKXj8uBP4fd3WOatcM7vkMKvJ9xOcOKw6GkFGiy7dIWsI9wHHjMmVGr1wxLvztMRqkwYms
	U0SXPuZkL36DiDDLE7/+zRBBfMSj76P4cp663IjLDnKOk84oaFqqAlW+OJWGD1X4JhHcnZldeF8X1
	pXghyVja43WTfO6XQ5dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD0sH-00000001Ded-1TfS;
	Wed, 15 Apr 2026 14:05:49 +0000
Received: from out162-62-58-211.mail.qq.com ([162.62.58.211])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD0sD-00000001Dd9-2FQE
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Apr 2026 14:05:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1776261933;
	bh=X423UGRy0ZAt+/V3gZHEoyo/x53TY58dVujUIeUwt54=;
	h=From:To:Cc:Subject:Date;
	b=U5K0Sxuk3aURMoa4GUdWYUqjZjdmtTia9c+S1ImF3DyRtTn2ixZZFQ9fbYR6E5yCQ
	 hhhWmrl9w3egpaefiloPMPmp6EthbluNDqeo1Nu7R13MGWnz0nY9Me4iVZOij1xbpk
	 4K/bdtmbgBniBLRjrPeAv/iL83eTqAaEpsVaSofY=
Received: from localhost.localdomain ([171.223.89.103])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 15D1AA0B; Wed, 15 Apr 2026 22:05:29 +0800
X-QQ-mid: xmsmtpt1776261929tv2p75q34
Message-ID: <tencent_516ECD6F12A7B8D859A1752D090236D2AC05@qq.com>
X-QQ-XMAILINFO: NT7uTz3cNku2MZfqQBUSGlXDFAuplL9vYEoRLr0LYx+fxn3ouHGV68HFF2wdVT
	 m7J+hnvPHLVml45ITgD4T89j/dTRInU2lZqoRR5TH16cFBxMUQaGcTZ2mG6dbItLgAj5Kq/QtqLh
	 qoKMUnHPARGvy8jfpIv70vTy0eExf5vd2kqFC9xWc2A/hDOlmVM5pFNpLra9kqOqkFIDOKxCTx5e
	 3ak2z6h9G/lApyWsBsvmBp9TSH13WjReieY1vYwSZVpI7jc78QcEBSSNFakxu4wDheVbxP28vOlx
	 +vnFrHbuItoF+MuSOsw0klP6Jy3ZawoR6zvElDJGnC8+yz13148U9kk1pg39Dyx7kPR4R8VlmsiR
	 boPj0fpnx3Q4dUuFhqol+L8B2eMom22ePMOoOWfDMJenNxBedUT5whsUnHx6zoENkCFS8VcIoi5h
	 eS2lHnoOPsmHduwKJcduWrDrbKRcBlrF7Lx9GeMvtjLkkXYI3toYlmop1+CyQEPKZjprH6NxS+bx
	 qpiZ5n7JmLmOspvcJXkzrAfQN41gCuIxQQfR+MAHRk+IM/2XALi3eKpJUIz69sC1cHPWmisRr6sf
	 q4iu4GhuQjm4WovxNbpP+Wy0yUXjjT/qjg2JEMdSWM1IUsSqPyAwiYSktPypi/5UU6SZsFVY+zlS
	 g8dtbTHxU5ksGkojOpuROlTY1uqLC15+yjJZoVOaeSWEWippE+YUmjKXs4cx+L0gY/valgCsMaYf
	 tIPy0oNX/dcCXh+c6Uz25YpqBgUbTbzN3gs2ixf0qb+P0+iFvppKMiT18vpDJAkSvg+VX3/FoOMI
	 psORiDX25zHTr+tMD2o91XeJcylRrODyyr8Ejtt+lAwwtOm43anRY9azWFuxhhQVYk7SkBfxiXyj
	 x1GaFbsyKZzHCVivJdTE6A68DPOrunFCJ2NPneehxSELANPHoDCYX0gd30b1M05/AViE4uqshrHA
	 BpaUDsCfBAHPdBa5UtMupJgW/XVNHI57QdCRk+otlFz1VyEkGcFhmOP9HoDVyRbB/+GfXNFFQU5V
	 M0ODDXvsI3biGUl5TwzUse2NueQC0xExAjXiIHa4S8u9TmwI2X8HJM1yYb2x9X7qfJGZmt3g==
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
From: Renjun Wang <renjunw0@foxmail.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Renjun Wang <renjunw0@foxmail.com>
Subject: [PATCH] drm/rockchip: dw-mipi-dsi2: add sentinel to rk3588_chip_data table
Date: Wed, 15 Apr 2026 22:05:09 +0800
X-OQ-MSGID: <20260415140509.8325-1-renjunw0@foxmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_070546_317906_02DEF56E 
X-CRM114-Status: UNSURE (   9.47  )
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

The while loop walks rockchip_dw_dsi2_chip_data  entries until reg
is zero in function dw_mipi_dsi2_rockchip_probe(), so rk3588 needs
the same sentinel termination as rk3576 to avoid reading past the
end of the array.

Signed-off-by: Renjun Wang <renjunw0@foxmail.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
index 0aea764e29b2..8fd4653520df 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
@@ -483,7 +483,8 @@ static const struct rockchip_dw_dsi2_chip_data rk3588_chip_data[] = {
 		.reg = 0xfde30000,
 		.grf_regs = rk3588_dsi1_grf_reg_fields,
 		.max_bit_rate_per_lane = 4500000ULL,
-	}
+	},
+	{ /* sentinel */ }
 };
 
 static const struct of_device_id dw_mipi_dsi2_rockchip_dt_ids[] = {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
