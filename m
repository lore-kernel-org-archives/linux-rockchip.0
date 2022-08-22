Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5EB5C28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 08:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DQ8uX3bR761lO8KU+Bq4/ZkezPaMBCPmM7Sp3OgZAvU=; b=ua6HGlIS3Mu3lx
	Posav0pd2yYWvjGE+sXLlT69SZnE34Z32rj8Cm8sWlyIgKsbSviEezpZhSodwI6CNBBs0AndCuWxo
	3c/fHzJCOv2nY8q3cQ+0GpMysjK8StKKSKiCSU3tC64QHSGuXGWDdreYoX8MDnZ0KB31sQ6zO/mus
	7ULm/oGNvvJZUB7GFZz69q2SshlU1AHJk2c/JxyFP/B5zdc3lZNLAdY5kZdcpu4g9lA3w4ZiT8St2
	7bYVvlAtb5+SXRtNjqhnBgKqndZmuH084X0er4IoKKpSlYq+HqfL9+hx+iDG1DiXm6ViZAJZlelkJ
	0fL8ug4S+JoN6oGjgk5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ2t6-006WAo-73; Mon, 22 Aug 2022 08:34:24 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ2em-006O3Y-F4; Mon, 22 Aug 2022 08:19:41 +0000
X-QQ-mid: bizesmtp79t1661156333tn1skwkr
Received: from localhost.localdomain ( [123.114.60.34])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 22 Aug 2022 16:18:52 +0800 (CST)
X-QQ-SSF: 01400000002000D0U000B00A0000000
X-QQ-FEAT: abDNkBO9wxGSSTXraPu2eHWuksMIwlUpD0v3GkNTcQZh7Wdc/Fr0iBTHZKnOE
	NXeDfgC69XIwvzXui9ShjI/mipkDaSqfvKmfaGM4CISezq40clj1tmVOENDzf9j+1mlXo7f
	Qi/ngMCE4t/2piN6qAueBA/fNKLqN1B/wILObQCby95uuG+rs4KL0VBAL6z9urAJCRBP4LZ
	lmD/1RJEDyipWN/5IrJ42lY6+RGmitY1n3M9vd8qTYw5u4LefxeROAmT0GQhi/2qB5th4cp
	XrY4vTzaHSffTYBrJ0LY+1xHef+vQ6p53zD4Vxi71Z5AgnNJwbkVmwW7bvHg63TdaGPiHVd
	QlYaFEJUY78MbAzsygTxNn7+QscQfipg7EqoSO+3klEAD6fB+XR9Vi7CK1VTw==
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
Subject: [PATH v5] pwm: rockchip: Convert to use dev_err_probe()
Date: Mon, 22 Aug 2022 16:18:48 +0800
Message-Id: <20220822081848.5126-1-zhaoxiao@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvr:qybglogicsvr1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_011937_431140_7EAF5177 
X-CRM114-Status: GOOD (  10.08  )
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
 v5: delete the redundant ret and %d.
 drivers/pwm/pwm-rockchip.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index f3647b317152..a5af859217c1 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -328,22 +328,16 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	else
 		pc->pclk = pc->clk;
 
-	if (IS_ERR(pc->pclk)) {
-		ret = PTR_ERR(pc->pclk);
-		if (ret != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Can't get APB clk: %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(pc->pclk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(pc->pclk), "Can't get APB clk\n");
 
 	ret = clk_prepare_enable(pc->clk);
-	if (ret) {
-		dev_err(&pdev->dev, "Can't prepare enable PWM clk: %d\n", ret);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret, "Can't prepare enable PWM clk\n");
 
 	ret = clk_prepare_enable(pc->pclk);
 	if (ret) {
-		dev_err(&pdev->dev, "Can't prepare enable APB clk: %d\n", ret);
+		dev_err_probe(&pdev->dev, ret, "Can't prepare enable APB clk\n");
 		goto err_clk;
 	}
 
@@ -360,7 +354,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 
 	ret = pwmchip_add(&pc->chip);
 	if (ret < 0) {
-		dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
+		dev_err_probe(&pdev->dev, ret, "pwmchip_add() failed\n");
 		goto err_pclk;
 	}
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
