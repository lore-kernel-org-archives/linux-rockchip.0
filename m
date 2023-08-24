Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98CEAC6FA8F
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Aug 2023 01:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kSlAqcGuso3KiBIFIn7kPzSE5Jf3xFFG/gpCoDk1GTk=; b=hYS31ojkK+tl6X
	Q55mvTNU0v6el5jSGXdyrrQ4sI+k3I3HqH+j0qeWBwg9z0CXSL49A2OcFSgsXLw1MMKccp5cAzZNZ
	belxmDi4TBaug9tSH8UpQ5vPEZbxUiYCg3rB831VD5p5x6e0GDzoDaEeynrhoye9FsOTFn6T5TR1z
	nthXia0uZDU6cJn1Wx7cVbx1uFqnDBxUCybWd/v+bYw32UoHvv7YH4cxXW3xFU3EOQcmXdTBweL1n
	3g5KP3EY0jC2NBPOwtEK5pXvqZ8GK4vteNNo452aJ7E4vPkYs2Z6IOZ2vOYgMxVcLDWC/oiw4x3M6
	YqDw3SH47D7sSdPIuInA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYzJb-001tMw-2H;
	Thu, 24 Aug 2023 01:39:15 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYzJY-001tM7-33
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Aug 2023 01:39:14 +0000
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 78638807C4;
	Thu, 24 Aug 2023 03:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1692841149;
	bh=66jlWYI6u7UpHycVpxDeaFTO7Z2w8Drh+F3eeYqhcqk=;
	h=From:To:Cc:Subject:Date:From;
	b=t8/Ey5ppHIIVgGvVVTFGdBlSeXtxzhEjZ6+QvYAzTjE36HCs80yxXcdFrlpd0gTYO
	 9sa6WCUaIoNsoKjjE/FEK/kk0EJH1SR/qpGd3o9v1lHs0mzf0bxW7E8nJks+zUDsFk
	 51sklLBAe6pmyetqhJLzj9WwA4p7xC2q5gqnwDXJmtSdN44OmGqNYdHFIEOjFdiYcm
	 7aS5+m3Wi3gi8ZPoCgC1z8tHC4NNXgPR60xqh2dzoJhmHJ5ppPowwnOIJMxzDKrj7T
	 ZW1Siwb0Os44EOmZswgvoaOqwbxfLP6Yn8XKxicd4ZqReV0C2B822d7cSsK3qDkZLu
	 ogmbky8r3rWjA==
From: Marek Vasut <marex@denx.de>
To: linux-media@vger.kernel.org
Cc: Marek Vasut <marex@denx.de>,
	Adam Ford <aford173@gmail.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] media: hantro: Check whether reset op is defined before use
Date: Thu, 24 Aug 2023 03:38:58 +0200
Message-Id: <20230824013858.303105-1-marex@denx.de>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_183913_245767_9587BC0D 
X-CRM114-Status: GOOD (  10.62  )
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

The i.MX8MM/N/P does not define the .reset op since reset of the VPU is
done by genpd. Check whether the .reset op is defined before calling it
to avoid NULL pointer dereference.

Note that the Fixes tag is set to the commit which removed the reset op
from i.MX8M Hantro G2 implementation, this is because before this commit
all the implementations did define the .reset op.

Fixes: 6971efb70ac3 ("media: hantro: Allow i.MX8MQ G1 and G2 to run independently")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Adam Ford <aford173@gmail.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
---
 drivers/media/platform/verisilicon/hantro_drv.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 423fc85d79ee3..50ec24c753e9e 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -125,7 +125,8 @@ void hantro_watchdog(struct work_struct *work)
 	ctx = v4l2_m2m_get_curr_priv(vpu->m2m_dev);
 	if (ctx) {
 		vpu_err("frame processing timed out!\n");
-		ctx->codec_ops->reset(ctx);
+		if (ctx->codec_ops->reset)
+			ctx->codec_ops->reset(ctx);
 		hantro_job_finish(vpu, ctx, VB2_BUF_STATE_ERROR);
 	}
 }
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
