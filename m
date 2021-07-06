Return-Path: <SRS0=gh3A=L6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7817C11F81
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jul 2021 11:44:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 93A3C61EB1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jul 2021 11:44:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 93A3C61EB1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lP6YwQBShb/ub7YP/bLzJXsk7UFjJ7ORjc5SWgQwFc=; b=WL4URTu/i/Phmt
	jTDn9nOkauVj8o4HFF/UjokjjdE+SRY9umoc3XK0hzKOPCBbh2BAukM+gGtlWgCnha6+cE7Zlg5Fw
	H7tyOnYzZGhq2IBIOhl+WzyNQE4QVygX8rMpm4aH7r0CDgJeowLIXZ8Xh05OIA5OhtL1P8cnS1IBS
	CBTviW5h3zkjqSlJhegtK9PjxMzPfFsn7jfe+e+C2zJGcVPXzWQo4fw23aqwtgKMfJEkldoo+2zEF
	k7wWlUhtmLMyYBeDE0B/5YVNbRkYmThEXXQWVq41t31PiUPT6lR+JQLLeGfZBJGZMNxK1aH1wJV1t
	CR7JFFHVFWzPHelL4Zyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0jVV-00BVhj-5c; Tue, 06 Jul 2021 11:44:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0jAF-00BI4a-Q0; Tue, 06 Jul 2021 11:22:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A092C61D21;
 Tue,  6 Jul 2021 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625570574;
 bh=4Fu4G4b/XGeKu5EbAcyA0kyrm0McafbQWyb4+B87B1E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IAxVHfD2ysVvelenL/MLWUg9dub1O17ucF4rPLYS5ZzTfYEdauMSXL0IxUervzcir
 q6YcyRmZfetujCHUAXc2M3r5qo/5NloBYrqr2jAYW5hs9TPTEcUEG76dApSMkJJbIt
 AZ9viOCriSTS4EZHZzzg/AyZXHtY3bLdGi9SRKnXfsL0IMMrPgKmc6mrKqzB20rbh0
 cobnU46ZGIKPxjOPhQ1dZU2L46JqCVgdAMQLQGFmS6Vzhvy+B+1tPzvldEY2vvT2RV
 66Ix1kr6hjGx41bNteWPXiRlGNTpWt4rUI9qvuIixo3At/4tYwdRacZkWDeVPLL3cs
 HyvMh0svStclQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 039/137] drm: rockchip: add missing registers for
 RK3188
Date: Tue,  6 Jul 2021 07:20:25 -0400
Message-Id: <20210706112203.2062605-39-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706112203.2062605-1-sashal@kernel.org>
References: <20210706112203.2062605-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_042255_870388_5B628C3E 
X-CRM114-Status: GOOD (  10.21  )
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
