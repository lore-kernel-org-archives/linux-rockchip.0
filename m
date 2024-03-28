Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3D71CD11DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Mar 2024 09:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7Jqj4DSObnx6GkJgBVeQ4bUi+W9Gqychm9xeAp+dv0=; b=o04o3ieS5+N06T
	iRNQnvcxSmq0hhW3okTFDnt92xss7UoV+tWcvCn/f0+pmq4jnVRx4AUO4LOVJkFT6YwEeuLUgcJO+
	DSPyPeGG3TUY84gURwZZTCjsiApST1f9mpFYaCrQ3DLPVWYUQJHhRdP0xpWw6rBcEzkc7B/pMDHO2
	feATkjIYzspcgCjgzQkhAcrVc6Va+i6q9+BMtb75qXinqpM5Ee1HiDm48SplT0FwiDbJCikq7TjYG
	s8rmsDgprFLHKnRgg9Kdt5lTJfEqX8ic8nhMsbT6DTkPc0MZSg4pQqDyVck7nQ7l7lOLGNQYeycKd
	IQYl144X55oBQ+A/NJSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpmA6-0000000DMvc-0pJh;
	Thu, 28 Mar 2024 09:35:07 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpm9p-0000000DMmo-0VZ2;
	Thu, 28 Mar 2024 09:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711618486;
	bh=kLtyFp4xpElNNw1K4yeyOMlFT9DpiyV8sV6LRNkBK34=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Pu6dubfdXWeWVQ9ggcqmSJU6ycEO3YZkVSCugE5GWeEIWJIntrNGSHc3gZL6nQYQZ
	 Cslw71C9bW7d3X8F1WkTVKDN4YQ+algt4Gaa9OGAMoR/6EgQcjUWI4mo1Ow5cd3o+3
	 LWLUxKc8Y8zGQbrKxryh/bqWXBvCdwo5MzAeAsxJOi8O/o/nxT6ZcOy59vVUvMMo8L
	 s+9Q7aljhatOWm83RO8Ht4/q7Q2bCxZCYV0sIrTVGHVmhHNAxtb8949qR8AAXeypgO
	 jZ8eKLc8D1LkBE8zGzqaQZwfAMyDV3/gGzncja7uKkEJ1J12fGk2PGBLqxTLx2/A7n
	 ezY6bAHGV5o1w==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 187A6378211A;
	Thu, 28 Mar 2024 09:34:46 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	heiko@sntech.de
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: Fix auxiliary buffers allocation size
Date: Thu, 28 Mar 2024 10:34:39 +0100
Message-Id: <20240328093439.18712-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
References: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_023449_309727_67DB4AC1 
X-CRM114-Status: UNSURE (   9.83  )
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

Use v4l2_av1_tile_info->tile_cols to know the number of colons
in the frame. This made auxiliary buffers meory size computation
more accurate.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Fixes: 727a400686a2 ("media: verisilicon: Add Rockchip AV1 decoder")
---
 .../media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c    | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index cc4483857489..65e8f2d07400 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -257,7 +257,8 @@ static int rockchip_vpu981_av1_dec_tiles_reallocate(struct hantro_ctx *ctx)
 	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_av1_dec_hw_ctx *av1_dec = &ctx->av1_dec;
 	struct hantro_av1_dec_ctrls *ctrls = &av1_dec->ctrls;
-	unsigned int num_tile_cols = 1 << ctrls->tile_group_entry->tile_col;
+	const struct v4l2_av1_tile_info *tile_info = &ctrls->frame->tile_info;
+	unsigned int num_tile_cols = tile_info->tile_cols;
 	unsigned int height = ALIGN(ctrls->frame->frame_height_minus_1 + 1, 64);
 	unsigned int height_in_sb = height / 64;
 	unsigned int stripe_num = ((height + 8) + 63) / 64;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
