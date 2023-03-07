Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCE8FC678D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 15:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QqD6AgNtMnm/BIRtvshb9oO5W9sO71fAGhM6W4fXRxo=; b=GKR8MmwlS0HSo1
	uGtDrTfqKXAGb0FqH0ywOh9I2NFOflbWhSJFBeDM9Uhi2qbt3QHG2VE5eq93jXB06FLMhq5OY3wt9
	1rFoyeL4Mil4ZbA1hTOmt5a99NZz0yVAHTSzOfoTL0ttQ+CmqbEYCijL0WvtLlGItzwjAWwlRWg9z
	1LNLOfK49pOIG0aet5/87LAOoOQfKkdg9IP/FmPjF4/jmxyn0G9Sbm8bQ9qrJ9VZFXT7BrIjUCieb
	IsHE3V6/Xuxm8rOalm4OMP/YjecrreEi+cNdVPQsvHC7HKwQgjet2NPo7/OJNJekZ5Ybnhk0zyrYM
	/aT6Bxp89dHNLWkUxgGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZZSA-001I1g-HJ; Tue, 07 Mar 2023 15:42:14 +0000
Received: from m12.mail.163.com ([123.126.96.233])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZZS7-001I0r-Iw
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 15:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=sUgc1
	Ip6cph68cI1VgRBJ11BMagx1vc6BYllZnRAv3w=; b=WyvczoL1xuThhrxy0sLmV
	ggpzJmFx998EVhMmDw2cJPLllv24/k9rLP7GuUMxht55hhronISquD/Y8c6it3Rg
	SKBPLmkQ8XE4ETluHitderHr0BXJ3wTO4y6pJq7tFS/KWvYZDGhn3VXlAfdwX521
	UQGOFWcpxw5ptqZeV4vQDU=
Received: from leanderwang-LC2.localdomain (unknown [111.206.145.21])
	by smtp20 (Coremail) with SMTP id H91pCgDnsbZHWwdkkSMIGw--.40718S2;
	Tue, 07 Mar 2023 23:41:59 +0800 (CST)
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
Subject: [PATCH] media: hantro: fix use after free bug in hantro_remove due to race condition
Date: Tue,  7 Mar 2023 23:41:57 +0800
Message-Id: <20230307154157.1184826-1-zyytlz.wz@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: H91pCgDnsbZHWwdkkSMIGw--.40718S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Wry3Xw4kJw47Jr4rWr4kZwb_yoW8GF4rpF
	W7trW3CrWjqr42gFn7Jw409ayrCa4agF4xWrZruw13AF9xtr9rGry0y3W8AF98JrZ3ZFWa
	qF48Kr48X3y2vFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0ziID73UUUUU=
X-Originating-IP: [111.206.145.21]
X-CM-SenderInfo: h2113zf2oz6qqrwthudrp/1tbiXBErU1Xl52W08AABsC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_074212_126622_E731F14C 
X-CRM114-Status: GOOD (  10.37  )
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
index b0aeedae7b65..80bd856a4da9 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -1099,6 +1099,7 @@ static int hantro_remove(struct platform_device *pdev)
 
 	v4l2_info(&vpu->v4l2_dev, "Removing %s\n", pdev->name);
 
+	cancel_delayed_work(&vpu->watchdog_work);
 	media_device_unregister(&vpu->mdev);
 	hantro_remove_dec_func(vpu);
 	hantro_remove_enc_func(vpu);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
