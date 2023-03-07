Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFC1DC678D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 15:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wGb3mcEla/avVTbVwob0dSN3Bydqn+KZwrNHQMHsEYM=; b=qQA7Li5rcZR1S/
	wrxFGRPJ3CYsQREu6mLRfAyFAn//Hl1ke355hXDrB1ECHPlcBCE7IZbdcHamfW4zr7uhXYiyTdwKX
	so+5KEPpmpQL18VCfJl83ny78uc7HxaKUfDW44PdZj/C+T13qOFPXIu4x0uXDUkyrsx7hkrC8e7HA
	Q7WjrTC9gQs1rLSzB2hbl9WaBa4o3DuvqKJ/ONYqenKVhiwFKnih96JNizePeNL3YP5sSEg6QMpVU
	iwOJn2WGH3LF1KQbt7+yAGWQ7nXeW7RHWnlTWps0zefOviJ1I98xpTz2QtuZmfJWsKDm0NQL8zs+/
	bhFxOh/L3crDTlW+kruA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZZML-001GIb-7V; Tue, 07 Mar 2023 15:36:13 +0000
Received: from m12.mail.163.com ([220.181.12.215])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZZMH-001GGc-30
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 15:36:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=iL0BA
	0gE4EmKLeYtSSOEBUD0N390Hz2s7HW1XrquUFw=; b=BoNuXBr1Y5eer5pvkhVcA
	LBwFwIfMzogGFEbGCTI3atjdmrC+c8i6c9Tg3NtyRAn03LR/7oYbEcqQmu9OTR1a
	y/gwPpVN+o065CVRdYkm63SH66BpRDmFFzYAbKIY5oFKM036X4cZ8apvSf5rG2KP
	G5xpPkfbuL5wCD1RUNi/t0=
Received: from leanderwang-LC2.localdomain (unknown [111.206.145.21])
	by zwqz-smtp-mta-g2-2 (Coremail) with SMTP id _____wD3LifPWQdkZzrLCQ--.14702S2;
	Tue, 07 Mar 2023 23:35:43 +0800 (CST)
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
	Zheng Wang <zyytlz.wz@163.com>
Subject: [PATCH] media: hantro: fix use after free bug in hantro_release due to race condition
Date: Tue,  7 Mar 2023 23:35:42 +0800
Message-Id: <20230307153542.1178065-1-zyytlz.wz@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3LifPWQdkZzrLCQ--.14702S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Wry3Xw4kJw47Jr4rWr4kZwb_yoW8GF13pF
	W7GrW7CrWjqF42gFnrJw409ayrCa4YgFW3Wrsru343AF9xtrnrGrW0y3W8AF9rtrZ3ZF45
	XF48KrWrX39FvFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zi-eOJUUUUU=
X-Originating-IP: [111.206.145.21]
X-CM-SenderInfo: h2113zf2oz6qqrwthudrp/1tbiXBErU1Xl52W07wAAsc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_073610_033199_E0F3E1E3 
X-CRM114-Status: GOOD (  10.56  )
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
there may be a unfinished work. The possible sequence
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
---
 drivers/media/platform/verisilicon/hantro_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index b0aeedae7b65..cf00ccaa7829 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -601,6 +601,7 @@ static int hantro_release(struct file *filp)
 	 * No need for extra locking because this was the last reference
 	 * to this file.
 	 */
+	cancel_delayed_work(&vpu->watchdog_work);
 	v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 	v4l2_fh_del(&ctx->fh);
 	v4l2_fh_exit(&ctx->fh);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
