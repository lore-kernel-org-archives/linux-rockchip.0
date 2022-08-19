Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7EAEC25B0E
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 07:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KDy99DcvqFWMbXIUMRzpBC2ZGrF8bgvBN+MgbUB3zaw=; b=QDIADFeEPm9X7V
	k9ns9CP2bunX7CFS9/wSiugsQ0S54BzdItjldFR6OdmxGOzBVxswxCI6lXpeF68kuWwhjoGJwdeoz
	krN+lcquO5XSxgWbbX1n5yut8bveM7qqpFeeAyYmO+2UDvFPqQHud8a/nOpt8/E+DBdPnTyuKXuVo
	9EJE8h5qDkRSzZfbj6AEN3gsMdbdN+NXFEd8CCah+PlEWc2J0Udod1qRc+ewAjo9iAbt+88ZNTi23
	uxAvUhXjlCp3qNg7B8fKyCMCARlXPnKzM7J8RzhHFGdLoDD00gPHp2zSGs+R8xQwKy0VZRGKB0NsS
	7ZZe6679TzpZ4orV1Bug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOw7c-0034Zv-14; Fri, 19 Aug 2022 07:08:48 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOw7O-00344t-7M; Fri, 19 Aug 2022 07:08:36 +0000
X-QQ-mid: bizesmtp70t1660892882t7gg8drd
Received: from localhost.localdomain ( [123.114.60.34])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 19 Aug 2022 15:08:00 +0800 (CST)
X-QQ-SSF: 01400000002000D0U000B00A0000000
X-QQ-FEAT: QityeSR92A0+yWSjjTB+IV8pKbCs/7cP9P/foXuOyx46FWXJK6UkeN9TfHSeh
	k2nb5FbStNEBg6w+wZB3rQFMQ63eo8yZVOFmJZ/8T2vCfABNU/b/5u0/8VUA2wP3SE6Gxo/
	T7S8cIG+y+raPFt2oUZmcL2175HQVTt7+/r6zq/kyat7ArX6Unm/vwDAFUD1UWnIJ3biMeX
	fiLk8i+2b6fKngOnmaN9bt7dF++F3GyhSL0xnvsdNuBLWXntJEmhoHddaryH0+fIHhDoM4Z
	GxYH+ToyEnFO6skNCVqeeEmZVbK/sMygxrQojN3Da855Pbea7sbPF/QcNpB8FoLH7p2dIga
	escZsEpTwPMh1uXBgfig67RP8fzIWPIWEdf0l9hlL5iH5Gw4kUCTbK8IuQMnQ==
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
Subject: [PATCH v3] pwm: rockchip: Convert to use dev_err_probe()
Date: Fri, 19 Aug 2022 15:07:56 +0800
Message-Id: <20220819070756.14895-1-zhaoxiao@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvr:qybglogicsvr1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_000834_576050_12D425B6 
X-CRM114-Status: UNSURE (   9.34  )
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
 v3: 1.There is no need to assign it to 'ret', and use PTR_ERR(pc->pclk) directly.
     2.add the return before dev_err_probe().
 drivers/pwm/pwm-rockchip.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index f3647b317152..eda1bd49d260 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -328,18 +328,12 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
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
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
