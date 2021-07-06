Return-Path: <SRS0=gh3A=L6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77F4FC07E96
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jul 2021 11:35:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 506D061D87
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jul 2021 11:35:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 506D061D87
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lP6YwQBShb/ub7YP/bLzJXsk7UFjJ7ORjc5SWgQwFc=; b=qxhrtIIC/1KIiE
	8rqsxRoCSiHF2/wkgXeZG3y1UPWGWElQDhZuwPdN4Q5NKzO89MHMYYxorFgnhyyFk4q+7olLyvMiR
	n9QfCxBVzv6wOvRne/NWwNHp6LkkjtbLzEvld12Mvp4Z+KU7HcqIYn7SQzjMrDZITLYd8K7+i662m
	awO9rOvtNQMrtNf4o6Ke4TEUtg9L56KLHAwCMgqX/eY8SMzl+0DwXe5LYSHKWL/HFOooOMBR+gCVu
	6lG1h0LZNC8zsuDXSduPzk3Jgae584x1+5s5LSDF8sMdzQGbqfU4V17t7hPNwE4Nf3GVXiIgE2LVO
	nmv7uGICh/n5zbgqVDQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0jLz-00BPY6-W6; Tue, 06 Jul 2021 11:35:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0j6s-00BFyW-TP; Tue, 06 Jul 2021 11:19:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B6D3C60FE7;
 Tue,  6 Jul 2021 11:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625570366;
 bh=4Fu4G4b/XGeKu5EbAcyA0kyrm0McafbQWyb4+B87B1E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=U76OZVzuo+yJwXCNmsqiw09NKz4cqf7ZB0K5tlyAZFXHdZjTkbNeS8rRyhaLUSRkV
 Udl/iVvndiZuKV0R/1hn8envcRtvoMrForJMPI42XE37U7fcYou4WY/nthhozGV2gE
 dlCfheErxYuGBcQSqA3aUAWe8CroQ2GRlxw9pSfrJL7DzV4lX3bq0gu6PqsUa76CzW
 tBT2dSSP64sEtRrgvnzDUDZ8ycxZVnGnkCZpm4Kh7Si5llzK7a1h6+vLYlnISAtvtY
 GRbomMKQRaLlOnxTrRAFQ1MWas2jNjJPsMfitxt5XsVFjhoul5UdTf78J4Do55trgj
 2slsIYd224VNg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.12 044/160] drm: rockchip: add missing registers for
 RK3188
Date: Tue,  6 Jul 2021 07:16:30 -0400
Message-Id: <20210706111827.2060499-44-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706111827.2060499-1-sashal@kernel.org>
References: <20210706111827.2060499-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_041927_012046_4B8E44E4 
X-CRM114-Status: GOOD (  10.00  )
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

From: Alex Bee <knaerzche@gmail.com>

[ Upstream commit ab64b448a175b8a5a4bd323b8f74758c2574482c ]

Add dither_up, dsp_lut_en and data_blank registers to enable their
respective functionality for RK3188's VOP.
While at that also fix .dsp_blank register which is (only) set with
BIT24 (same as RK3066)

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Link: https://patchwork.freedesktop.org/patch/msgid/20210528130554.72191-3-knaerzche@gmail.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 80053d91a301..b8dcee64a1f7 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -505,7 +505,10 @@ static const struct vop_common rk3188_common = {
 	.dither_down_sel = VOP_REG(RK3188_DSP_CTRL0, 0x1, 27),
 	.dither_down_en = VOP_REG(RK3188_DSP_CTRL0, 0x1, 11),
 	.dither_down_mode = VOP_REG(RK3188_DSP_CTRL0, 0x1, 10),
-	.dsp_blank = VOP_REG(RK3188_DSP_CTRL1, 0x3, 24),
+	.dsp_blank = VOP_REG(RK3188_DSP_CTRL1, 0x1, 24),
+	.dither_up = VOP_REG(RK3188_DSP_CTRL0, 0x1, 9),
+	.dsp_lut_en = VOP_REG(RK3188_SYS_CTRL, 0x1, 28),
+	.data_blank = VOP_REG(RK3188_DSP_CTRL1, 0x1, 25),
 };
 
 static const struct vop_win_data rk3188_vop_win_data[] = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
