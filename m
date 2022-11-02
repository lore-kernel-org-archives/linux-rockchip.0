Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 743BBC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 15:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8/3OKtwSk8ZzUAc7qcOKCFOw1h4OSX36qKwKKl4GGVk=; b=zXaPKjY7ZNapE0
	dcScaMF+pBotlD23l4RigCQIOdLFgr/3BYc1L7Kr5U+TJDnllbd80tCUIOv70oYCAjvAqtAZAqJGY
	3t+hn+JyS7aHMU2cB3UHiaJvDW+XvIVujMqL3945Btnskqr0FaK9g/CpmhGU4akNpA9VWlMjqlX+S
	yYOcKX7Hj3XFkHLFumWe9xrIQGpS1Qfkp1+6u/6sdW6gayTYX2+eisovXZbeavZeFUcYXNCvnVV7q
	+pcMDlzG94srfhz9BtP9HdsS9SMhhRUR5BKe69kZh/IQ54ZEZ529F2pZBf58pwUyV2PY0pVYU2prW
	oSbd7+DhjKo0gkqSLbjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqG1d-00BsZ7-6h; Wed, 02 Nov 2022 15:51:33 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqG1S-00BsQB-Qe; Wed, 02 Nov 2022 15:51:30 +0000
Received: by mail-wr1-x432.google.com with SMTP id l14so25189120wrw.2;
        Wed, 02 Nov 2022 08:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s+b8MGxoMM7dt63fJhCwSK3LN+dkZHgo46dIEwpUZaw=;
        b=pC2K6ewvN//7eO9Ct7Je49ZFsiMM1WDMN9bjl9f3ZOHKERloo4ZAEM8h1myLHMXtg9
         orJsVnQiTV0NfnInGAsb8+Ocw5h3GR9uLpHAXYom0EMENPg8BNze2K0O/zAr/S6kRrss
         Hl5qwRZuf3YnbBx4/8QS5LLOi8fGXc29tWdH13vvfMv0rFUQYwZVm4z20idmdAZwz+P9
         izQ+yVOXyRJ0uQkoII44efV+M/iE6mmtF/rv8iU2FMjIVpMtkjVrdw3tXXos7uu+vnjh
         N4x3yyUYKfmeUsA5knR+tihXsl4L3ZyzTATbT9I1og7ewtdA6ZxeOVr7cLA8XyWvr1O3
         6uBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s+b8MGxoMM7dt63fJhCwSK3LN+dkZHgo46dIEwpUZaw=;
        b=Tvlh4u+lcBhZrHZIRmIIn3DSEh/T3hvNohHiI+ov/EDd09/8F74qbmSiP6SqX0l+O/
         wHFBKAr78i586cMk4GLLl/5DF8YZE7qPHWsKezi34/YvHOYG06jgT3tY7k3beoJxANRp
         JxeOpCecvLjhOdal8vOLexaY4VQ6bF3EDcIgdYV7nukuGbM/Mnr/44LPgLfDZ1P8vAY7
         tQ3s3TGTV3DHwIGuOv+smu/yzeq9fMw3Oaoz2/CAtFp8NSxrUQGMi68CzR5ElJQ3CYAY
         yiQqseJlMxLvzFlGRb7yuDUJP3xg3Ak48+tOfPkRI1nCLlf8X+m1lj/ussC4/Uhvqfqq
         QVfA==
X-Gm-Message-State: ACrzQf0xUfeAv0E2ZIpZnZgo/OqfdOsqOyx7cbL8xOLkMQc0bn5egh4n
	IpM/ScLgR60hoEsKGshs+Ys=
X-Google-Smtp-Source: AMsMyM5Wwlmv2CJWkvj3LxDz4CVi/7lH8tn2cThpiZ+cLNFDmAmmJsj3Cp+SGWp6jkBZmz20okS9Aw==
X-Received: by 2002:adf:fe85:0:b0:236:7cde:a95d with SMTP id l5-20020adffe85000000b002367cdea95dmr15769632wrr.531.1667404278413;
        Wed, 02 Nov 2022 08:51:18 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net. [80.193.200.194])
        by smtp.gmail.com with ESMTPSA id bi19-20020a05600c3d9300b003c6f3e5ba42sm2317093wmb.46.2022.11.02.08.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 08:51:17 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] media: rkisp1: make const arrays ae_wnd_num and hist_wnd_num static
Date: Wed,  2 Nov 2022 15:51:17 +0000
Message-Id: <20221102155117.144570-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_085122_904640_97734A16 
X-CRM114-Status: GOOD (  12.25  )
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

Don't populate the const arrays on the stack, instead make them
static. Also makes the object code smaller.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index d8731ebbf479..3482f7d707b7 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -715,7 +715,7 @@ static void rkisp1_aec_config_v12(struct rkisp1_params *params,
 	u32 exp_ctrl;
 	u32 block_hsize, block_vsize;
 	u32 wnd_num_idx = 1;
-	const u32 ae_wnd_num[] = { 5, 9, 15, 15 };
+	static const u32 ae_wnd_num[] = { 5, 9, 15, 15 };
 
 	/* avoid to override the old enable value */
 	exp_ctrl = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_EXP_CTRL);
@@ -822,7 +822,7 @@ static void rkisp1_hst_config_v12(struct rkisp1_params *params,
 	u32 block_hsize, block_vsize;
 	u32 wnd_num_idx, hist_weight_num, hist_ctrl, value;
 	u8 weight15x15[RKISP1_CIF_ISP_HIST_WEIGHT_REG_SIZE_V12];
-	const u32 hist_wnd_num[] = { 5, 9, 15, 15 };
+	static const u32 hist_wnd_num[] = { 5, 9, 15, 15 };
 
 	/* now we just support 9x9 window */
 	wnd_num_idx = 1;
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
