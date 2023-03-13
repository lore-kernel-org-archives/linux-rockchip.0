Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3C04C61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 15:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=upi8rppZ1iofPrVyvQk1G/bCg+vHBFTRzlaeqRItNGI=; b=xq4E56oUdNP/eV
	0H/bwLOUiwGRjLtJaDLLsDBLCHOQZv+13rYxXN/DSPTiIT8MMgW9/quml3inXaVVlOtJGVHL3utjI
	pvIbLw4xRFPI69RtCG/V6pUSdByeLCX1QVHisTL9TAeojNw4qTFyHhTNYKns256UHcGHYjNs2iJSj
	LvnMTw4v6gsAmQCm6DNQkn8IgbGF0oSRnPnOP9HHd4JKGXgpu9wk0uEQIqSo0IrSzJCerTsscFIGA
	OQEwEWIo++W2reVf+wrJX0EcQIBNvg9857NwiBZRJ0u/8fmI9Mcu25SpOLLkx3AmhWPHbby/DxAAv
	DebZmxeAj6aYFBD6an1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbkQP-006UnU-5W; Mon, 13 Mar 2023 15:49:25 +0000
Received: from m12.mail.163.com ([220.181.12.197])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbkQL-006Ulq-BC
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 15:49:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=zZIaX
	bZODM+Wxzq0HHWHcgsRoTtcQ0oqs1PXU9bdNqE=; b=c9O4uZyeymy4ozAsWeZ+9
	tH+ZJXubx0BfuhAl/F2uSdKaNYBIXIo/Y+NHm1pgT3HIJ65McCAiNfYqMPp2Om6h
	7F3oitdwkm4jYc8QdH2ad/zSELs5v12rhY0iJQKy4LCPM/tZJnl5gYQgbQusxA2X
	wIOpKmkTOxgEILYJLiB6ec=
Received: from leanderwang-LC2.localdomain (unknown [111.206.145.21])
	by zwqz-smtp-mta-g3-2 (Coremail) with SMTP id _____wAnHYLqRQ9kDrURAA--.16196S2;
	Mon, 13 Mar 2023 23:48:58 +0800 (CST)
From: Zheng Wang <zyytlz.wz@163.com>
To: ezequiel@vanguardiasur.com.ar
Cc: p.zabel@pengutronix.de,
	mchehab@kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	hackerzheng666@gmail.com,
	1395428693sheep@gmail.com,
	alex000young@gmail.com,
	hverkuil@xs4all.nl,
	Zheng Wang <zyytlz.wz@163.com>
Subject: [PATCH v4] media: hantro: fix use after free bug in hantro_remove  due to race condition
Date: Mon, 13 Mar 2023 23:48:56 +0800
Message-Id: <20230313154856.3691660-1-zyytlz.wz@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wAnHYLqRQ9kDrURAA--.16196S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Wry3Xw4kJw47Jr4rWr4kZwb_yoW8Zw13pF
	W3KrW5KrWjqF47KFn7tay09ayfCasFqF4UXrZruw13AF9xtry7urySya18CF98JrZ3ZF4a
	qF4jqrWrZw42vFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zi-eOJUUUUU=
X-Originating-IP: [111.206.145.21]
X-CM-SenderInfo: h2113zf2oz6qqrwthudrp/1tbiXA4xU1Xl56OqKgABsF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_084921_932016_D88D7B10 
X-CRM114-Status: GOOD (  12.48  )
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

In hantro_probe, vpu->watchdog_work is bound with
hantro_watchdog. Then hantro_end_prepare_run may
be called to start the work.

If we close the file or remove the module which will
call hantro_release and hantro_remove to make cleanup,
there may be an unfinished work. The possible sequence
is as follows, which will cause a typical UAF bug.

The same thing will happen in hantro_release, and use
ctx after freeing it.

Fix it by canceling the work before cleanup in hantro_release.

CPU0                  CPU1

                    |hantro_watchdog
hantro_remove     |
  v4l2_m2m_release  |
    kfree(m2m_dev); |
                    |
                    | v4l2_m2m_get_curr_priv
                    |   m2m_dev->curr_ctx //use

Signed-off-by: Zheng Wang <zyytlz.wz@163.com>
Fixes: 932a9317ac49 ("media: hantro: Add helpers to prepare/finish a run")
---
v4:
- add Fixes label to help with the fix

v3:
- use cancel_delayed_work_sync instead of cancel_delayed_work and add it to
hantro_release suggested by Hans Verkuil

v2:
- move the cancel-work-related code to hantro_remove suggested by Hans Verkuil
---
 drivers/media/platform/verisilicon/hantro_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index b0aeedae7b65..86a4c0fa8c7d 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -597,6 +597,7 @@ static int hantro_release(struct file *filp)
 	struct hantro_ctx *ctx =
 		container_of(filp->private_data, struct hantro_ctx, fh);
 
+	cancel_delayed_work_sync(&ctx->dev->watchdog_work);
 	/*
 	 * No need for extra locking because this was the last reference
 	 * to this file.
@@ -1099,6 +1100,7 @@ static int hantro_remove(struct platform_device *pdev)
 
 	v4l2_info(&vpu->v4l2_dev, "Removing %s\n", pdev->name);
 
+	cancel_delayed_work_sync(&vpu->watchdog_work);
 	media_device_unregister(&vpu->mdev);
 	hantro_remove_dec_func(vpu);
 	hantro_remove_enc_func(vpu);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
