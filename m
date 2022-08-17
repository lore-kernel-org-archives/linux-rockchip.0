Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE61CC32772
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 06:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ACg6HiCAA05qfYEvl0lQFO/t0nRjZ/vgFRnRwa1tnXc=; b=qjVzDMmZReNaRD
	kVAEULUU9TVxbKxvA96YM9EfAIXsYtxYSUk/x/R105zxAEtlTFBJWZLB7ssIQnitb0kL4991jfaMA
	ugY4vL0LSYCQCE2mZhEp4O1m5xpPuBzy9bH+jK7NIIkQjF/j0acBDTme6LLrgnPgoYtPnc9J7Zsqi
	yV5wYZmmv2N+GTi9DieWtb5Rld2E18wuHQSUWvbaXQZfhnJ1AzK9EfojBo0AxIdi350xbNwppzQAm
	uIyI2aCxhwG99k66clgL+hvAArovtiJkQAINYJzLLAykNzL1V5lRf3RMYRoglFuyoeCth6tRel+Km
	GjZJOJysq2Mwzm2YCqug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOC6a-00BTcS-RF; Wed, 17 Aug 2022 06:00:40 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOC6N-00BTIc-Ui; Wed, 17 Aug 2022 06:00:30 +0000
X-QQ-mid: bizesmtp82t1660715993tzs4omjz
Received: from localhost.localdomain ( [123.114.60.34])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 17 Aug 2022 13:59:51 +0800 (CST)
X-QQ-SSF: 01400000002000D0T000B00A0000000
X-QQ-FEAT: aBJFcW+uBGYgmAL01Z5YK4fA139v7xj8q5YXUdXTQfe5/gq6ZjqhbWvJspXrS
	DGsosptREEMgLgZlT2veTkCeVQQVY1iX0VGXc1TkKP77zkq63Cu9jg6812chrv7D4InATU0
	//Vur3QoO2W9AohXnC0cxUVK9Ak0TsD1j3VnG6STBa/HpXyFquJ3a801llRzX/spGDlBNyV
	KUYqBVQbZI0VN7J0z0YwXNpi64pO8SxBFAmx0U6UK2AfGGhZ+gSNZZHcSzW826fqZWXQwuU
	wHpaUqmaE8S2yooAa+SDRUVQndHPI1z5wG1S3DGQxGTtx6aJ51ONiFDWyApPFNJ9q29VTJc
	EzET7f1qu0AWJb0cJvNzBFOeocACGjsZnIPZeRZi4gTCD1Ft/M=
X-QQ-GoodBg: 2
From: zhaoxiao <zhaoxiao@uniontech.com>
To: thierry.reding@gmail.com,
	heiko@sntech.de
Cc: u.kleine-koenig@pengutronix.de,
	linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zhaoxiao <zhaoxiao@uniontech.com>
Subject: [PATCH] pwm: rockchip: Convert to use dev_err_probe()
Date: Wed, 17 Aug 2022 13:59:49 +0800
Message-Id: <20220817055949.20497-1-zhaoxiao@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvr:qybglogicsvr1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_230028_418169_1DCD4307 
X-CRM114-Status: UNSURE (   9.04  )
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

It's fine to call dev_err_probe() in ->probe() when error code is known.
Convert the driver to use dev_err_probe().

Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>
---
 drivers/pwm/pwm-rockchip.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index f3647b317152..bd7ab37aaf88 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -331,15 +331,12 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	if (IS_ERR(pc->pclk)) {
 		ret = PTR_ERR(pc->pclk);
 		if (ret != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Can't get APB clk: %d\n", ret);
-		return ret;
+			return dev_err_probe(&pdev->dev, ret, "Can't get APB clk: %d\n");
 	}
 
 	ret = clk_prepare_enable(pc->clk);
-	if (ret) {
-		dev_err(&pdev->dev, "Can't prepare enable PWM clk: %d\n", ret);
-		return ret;
-	}
+	if (ret)
+		dev_err_probe(&pdev->dev, ret, "Can't prepare enable PWM clk: %d\n");
 
 	ret = clk_prepare_enable(pc->pclk);
 	if (ret) {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
