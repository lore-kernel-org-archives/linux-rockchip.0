Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD2D5C678D4
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 17:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2Oso8l1V+FGbEnptm/aKZ/b+EXENAypD/rbvzjamYuM=; b=bK9veiGD5HycAm
	FiU9zZUwZ7BPysEfzlS5M8fJSxRjK+yjNEjBOrGHHq0D/5x6e41gutJAPjdTWUhhSt5HvPNIEPxf8
	ZVbQlZrytyuqCpwrXmDJH4Og8Rx50SCyTjWjt4pLP7PDffpy8Cx09CutyF9Xlut7H4AK+/ie3UuSC
	4LqbnUujEcvY3HBPT3egR/fmHWJbz5vUjabP6sR7L5kT6gHZkPcV39CrRxZCNDPh6kVVNIdVrwoqp
	U/9bFyU1ABLEdrytcOvhnl04nz+VvEgpNbGUWrPlNACo2UE8fuQHhtEXWkUYGua/ga1xYub1zNUFK
	eGpeTbATfG3hucQm3rAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZbI1-001ra4-Kn; Tue, 07 Mar 2023 17:39:53 +0000
Received: from m12.mail.163.com ([220.181.12.196])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZbHy-001rY6-DX
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 17:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=4L/vO
	yAA0sQq/vaIuPvACeaXWgWX0UFxKoUhXSbG0m0=; b=UzIwnVEV5JDj95YxrljJP
	px9MzX/E86TxlvUDOBNHJoO4maH5IvOrEBbtrywVYxF/b3vpNhesxv2YSyImi0lm
	P6QndSMRkTzSHwD/8k9WkqVhMQIjVfLgeIA2vUc05imGf4zoe2KW1f5413exLwNQ
	IkUoC41VPZ5Dp1aBTkwtWw=
Received: from leanderwang-LC2.localdomain (unknown [111.206.145.21])
	by zwqz-smtp-mta-g2-1 (Coremail) with SMTP id _____wCHjdG2dgdkm7_iCQ--.13674S2;
	Wed, 08 Mar 2023 01:39:02 +0800 (CST)
From: Zheng Wang <zyytlz.wz@163.com>
To: ezequiel@vanguardiasur.com.ar
Cc: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	hackerzheng666@gmail.com,
	1395428693sheep@gmail.com,
	alex000young@gmail.com,
	Zheng Wang <zyytlz.wz@163.com>
Subject: [PATCH] media: rkvdec: fix use after free bug in rkvdec_remove
Date: Wed,  8 Mar 2023 01:39:00 +0800
Message-Id: <20230307173900.1299387-1-zyytlz.wz@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wCHjdG2dgdkm7_iCQ--.13674S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7GF4xAFy8uw17XryxtryxXwb_yoW8JF1fpr
	W7ta4UCa15GF4jgF47tw4xZ3WrG345KF95Kr9rXa43ZryfJrnrJ3sYyF1UAFZ7trZ3Z3y3
	CFyYgw1rXw4DtrDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zi-eOJUUUUU=
X-Originating-IP: [111.206.145.21]
X-CM-SenderInfo: h2113zf2oz6qqrwthudrp/1tbiXQArU1WBo1XSVAAAsB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_093950_869221_191D4E80 
X-CRM114-Status: GOOD (  10.13  )
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

Signed-off-by: Zheng Wang <zyytlz.wz@163.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 7bab7586918c..6b14655a8e2c 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -1066,6 +1066,7 @@ static int rkvdec_remove(struct platform_device *pdev)
 {
 	struct rkvdec_dev *rkvdec = platform_get_drvdata(pdev);
 
+	cancel_delayed_work(&rkvdec->watchdog_work);
 	rkvdec_v4l2_cleanup(rkvdec);
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
