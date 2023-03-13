Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A332C6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 15:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vfgZkCYXKor7HA/dW2s18vq87ZhO3D40OCZnFFdU0Rw=; b=OCc2kCuDHebh5O
	4CMMOUZceqBWwsHkE643mmPhaHLn9KS5tZEvMARSMHYhmR/2VC7Ql2g2VXsMZxr9kFqWSKxkBCjOS
	AUFujeURtI2pnsDwNBo0yn8P7ijKnthTPcqJyR8nN0KGa8Neuwj42H1K/EMr0sO5Gs97trz4navOH
	nbtyXfWNCMHG9yB+VExxs+cKgPHCXElX71NHXyRTjfucSoIHwwqi/VnSElmnPKh0OZDluq7TAtZyf
	skCEM1BRBCi2HY7XrQ2ux43jfTsEaq6je2ts9BC9D+S2R2aWchvsElGLYfhSn0VtB5iET5f3YO9CE
	W5majZ481/UNhtSt1WvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjxW-006OpD-QP; Mon, 13 Mar 2023 15:19:34 +0000
Received: from m12.mail.163.com ([220.181.12.198])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjxT-006Onr-W6
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 15:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=jjdVo
	n27HVaeWyXFa+2Rsj/EZI2JFX24oQ2Zjq7vPjQ=; b=eP3bEBdNCsNCFPY0XLrSk
	IHGlJn6GKeRmGFcPM1H1IcOmUYhCT5qoNUeBX0DuNRsESKyAGmG/v1cY3w/lwVBv
	BMN/e0tRqW0l3V+QbLmmgMK+J4OfUgih+VyadGKl4X99Dpw1ExZCIp4O019Op48U
	gn8aocpBtm2Sk8umT0bhIs=
Received: from leanderwang-LC2.localdomain (unknown [111.206.145.21])
	by zwqz-smtp-mta-g4-2 (Coremail) with SMTP id _____wBnXnLvPg9kF8INAA--.4430S2;
	Mon, 13 Mar 2023 23:19:12 +0800 (CST)
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
Subject: [PATCH v2] media: hantro: fix use after free bug in hantro_remove  due to race condition
Date: Mon, 13 Mar 2023 23:19:09 +0800
Message-Id: <20230313151909.3658925-1-zyytlz.wz@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wBnXnLvPg9kF8INAA--.4430S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uFy5uFWUJrWktw17XrWkWFg_yoW8GrWDpF
	W7KFWakrWjqF47KFn7J3y09ayrCa42gF4xWrZruw13ZF9xtr9rWry0y3WUAas8JrZavFW3
	ZF48Jr4rXay2vFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zi-eOJUUUUU=
X-Originating-IP: [111.206.145.21]
X-CM-SenderInfo: h2113zf2oz6qqrwthudrp/1tbiGhQxU1aEEjcWiQAAsE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_081932_448631_99CB8D64 
X-CRM114-Status: GOOD (  10.16  )
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

If we remove the module which will call hantro_remove
to make cleanup, there may be an unfinished work.
The possible sequence is as follows, which will
cause a typical UAF bug.

Fix it by canceling the work before cleanup in hantro_remove.

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
v2:
- move the cancel-work-related code to hantro_remove suggested by Hans Verkuil
---
 drivers/media/platform/verisilicon/hantro_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index b0aeedae7b65..496024b21b51 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -1099,6 +1099,7 @@ static int hantro_remove(struct platform_device *pdev)
 
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
