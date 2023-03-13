Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3AD3C6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 15:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iv2f/Ewxy9tSupyZ8xFOZt/rk14xAeSvt0/IEo/ydxw=; b=F8VsMcba/zd+NV
	qrw8+G/YHtTQEAMIie01MDn4lu1ufo9Xl4OWYqcpYXl9sXWdjBElEa2/hsPW7t+P1103VTnJRWkGz
	8MtmfCnce0eSDTVXqzjewIUrkfgYTAvxaGji1qo7Y2nNs0bPWadmjtZ49B4IlNGCKWZEToKJYh0tJ
	Ypr7P+hLci4HLUkbTmeHd1u6HXNsnmFSeGP5RiyoeLN/lvwA66FU9BomDHtamtpZ+us7INZxWJpzO
	RdikiY2R1wkNrafahcSbSGu69KyZACIPngiK3a67RcD9sEs1lqFQICDuL00+DDi58Fdrf7ix2421R
	43r1XkDcCNMO/CZxOuuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbkJ9-006SWT-2P; Mon, 13 Mar 2023 15:41:55 +0000
Received: from m12.mail.163.com ([123.126.96.234])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbkJ5-006SUA-Fr
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 15:41:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=NMeHq
	c9vEtUERKAOCOKjGmVkf5YkMepOMEfhtaswEhc=; b=em7N6x0m+8FcZgIVUSuhU
	HnWkEZhrTFz+w29FDBYiesKxWe2N5jlOOVn09DuSUMytcqnF4H1qqS7iWTZ5evNM
	OwyRpJDpK7FBbt97Eu24mZFq9vEpchwN3RErZboGOkViLFU8wIG1YCIW6ydh/G1E
	YBdeRU+aC1FoaJB0JglJ9M=
Received: from leanderwang-LC2.localdomain (unknown [111.206.145.21])
	by smtp19 (Coremail) with SMTP id R9xpCgD3_rItRA9kgCPoHQ--.36544S2;
	Mon, 13 Mar 2023 23:41:33 +0800 (CST)
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
Subject: [PATCH v3] media: hantro: fix use after free bug in hantro_remove  due to race condition
Date: Mon, 13 Mar 2023 23:41:32 +0800
Message-Id: <20230313154132.3684181-1-zyytlz.wz@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: R9xpCgD3_rItRA9kgCPoHQ--.36544S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Wry3Xw4kJw47Jr4rWr4kZwb_yoW8Cw1DpF
	W3G3y5KrWjqr47KFn7tay09ayfCasFqF4jgrZruw13JF9xtr9rurySyF48AF98JrZ3ZF4a
	vF4jqrW8Z3y2vFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0ziaZXrUUUUU=
X-Originating-IP: [111.206.145.21]
X-CM-SenderInfo: h2113zf2oz6qqrwthudrp/xtbBzgsxU2I0XntM5AADs-
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_084152_036798_37E390E4 
X-CRM114-Status: GOOD (  12.05  )
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
---
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
