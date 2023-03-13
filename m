Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5058AC6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 16:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WbObAtehB0YL5aIFVKZvBZ+mFU7d3ypGZvTU2uNxW4U=; b=SdLHqZgwjsCcLi
	M5IzGU0Rlbr+WP2ZUKFVNPtijCNIro6Hm2afDGxmPoSS8cAtVDnDIzTTrhVjpMMOkzm/CRuhOaiXF
	JTtY01PhyqzmyHDNI1qnd4pWjiJ9s/tZcw4OZfuZg2RgMLynrjfhLkN4cLh0zdm80MvrUfQeHM+dq
	4mjDMXQib8ReYQT8VhLksysfmBWxrFVvGVTlkegZLtMnyrcCZcCf+3x7fA7I59XyYRf5J1leuDkjK
	91LUvbgDQXcb4moCDfQ97/uuV39irV3wPiDgQzd9FUp7r4CDrHkjA+2xFH2cOFLKE3YvZVCyEUsW8
	LUO9rOkT/cC5Dv3xoS/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pblOJ-006s8w-3H; Mon, 13 Mar 2023 16:51:19 +0000
Received: from m12.mail.163.com ([220.181.12.217])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pblGF-006pWU-N2
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 16:43:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=39Xf9
	ZCAokng5zx5EHKJyi5I1FpmWCObH+80VGR+3Fc=; b=LL9L3M7H5q7z1LfesmT5d
	Jndz0co5jyxSDfOI+ndvIM/i6L40TEpdFpRsSjU8ejx8cwNGjWBhThLin4sWgGm3
	1WWO/gQcro/fPCU/u3xDhdlykezjStMlT5r4b6+X+IxgMi+MTyv+0Iro70ipT8NM
	7OkpwqCRIGd97RIVoFlBdo=
Received: from leanderwang-LC2.localdomain (unknown [111.206.145.21])
	by zwqz-smtp-mta-g3-0 (Coremail) with SMTP id _____wDn7yNtUg9kfkYUAA--.18807S2;
	Tue, 14 Mar 2023 00:42:21 +0800 (CST)
From: Zheng Wang <zyytlz.wz@163.com>
To: ezequiel@vanguardiasur.com.ar
Cc: hverkuil@xs4all.nl,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	hackerzheng666@gmail.com,
	1395428693sheep@gmail.com,
	alex000young@gmail.com,
	Zheng Wang <zyytlz.wz@163.com>
Subject: [PATCH v2] media: rkvdec: fix use after free bug in rkvdec_remove
Date: Tue, 14 Mar 2023 00:42:20 +0800
Message-Id: <20230313164220.3753961-1-zyytlz.wz@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDn7yNtUg9kfkYUAA--.18807S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Cw4kWFWrZF4rKr45ury8Krg_yoW8Gw4Upr
	W3ta45Cay5JF4UKFnrtr4xZa4rGryUKFykKr9rXa43ZryfJFnrJ3sYyF1UCFWxXrZ3Z3y3
	CFyYqw1rXw4qyrDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0ziID73UUUUU=
X-Originating-IP: [111.206.145.21]
X-CM-SenderInfo: h2113zf2oz6qqrwthudrp/1tbiXA8xU1Xl56P-uQAAsD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_094300_154634_7ED6CAD5 
X-CRM114-Status: GOOD (  10.49  )
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

In rkvdec_probe, rkvdec->watchdog_work is bound with
rkvdec_watchdog_func. Then rkvdec_vp9_run may
be called to start the work.

If we remove the module which will call rkvdec_remove
 to make cleanup, there may be a unfinished work.
 The possible sequence is as follows, which will
 cause a typical UAF bug.

Fix it by canceling the work before cleanup in rkvdec_remove.

CPU0                  CPU1

                    |rkvdec_watchdog_func
rkvdec_remove       |
 rkvdec_v4l2_cleanup|
  v4l2_m2m_release  |
    kfree(m2m_dev); |
                    |
                    | v4l2_m2m_get_curr_priv
                    |   m2m_dev->curr_ctx //use

Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
Signed-off-by: Zheng Wang <zyytlz.wz@163.com>
---
v2:
- use cancel_delayed_work_sync instead of cancel_delayed_work suggested Hans Verkuil
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 7bab7586918c..82806f198074 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -1066,6 +1066,8 @@ static int rkvdec_remove(struct platform_device *pdev)
 {
 	struct rkvdec_dev *rkvdec = platform_get_drvdata(pdev);
 
+	cancel_delayed_work_sync(&rkvdec->watchdog_work);
+
 	rkvdec_v4l2_cleanup(rkvdec);
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
