Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93E53C32771
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 09:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e54iq5kBt9KeNsStmpHdRXMZiuq3EQFmCXNYkowUNXM=; b=LI/CdHARQqORS5
	0QAipij5fYnalshmjbSyniLkxnSmp5/03Sw1vKrPqdWOKBS5k6AebosJ1ro1ixEz6X08W1u3zhQai
	p2PdGuTIxIBWGeeol6x6lMvt3H2zqmCSXfG03OptFb+OSwm+sYc3SlrYCxDNLwiWdME37SwruWcxY
	lp71p0hfrQfWhoIPyyrOJhhh5cyKDq0JNMgGcv+LGNlc3b6h2hn/mb2U051Id5gCIp7ZSmYc8gDMG
	XDhFZ+zQXjrq1xkMf7Hvxz0cMo30zhC0z9dbi/1j4MznskSHepDPbLQKu7Wtlh85haklZofckepSd
	zQfOFpp/fcpjKziAz3bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOyHf-004v5x-Kp; Fri, 19 Aug 2022 09:27:19 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOyHS-004uLL-II; Fri, 19 Aug 2022 09:27:08 +0000
X-QQ-mid: bizesmtp86t1660901192tain063a
Received: from localhost.localdomain ( [123.114.60.34])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 19 Aug 2022 17:26:30 +0800 (CST)
X-QQ-SSF: 01400000002000D0U000B00A0000000
X-QQ-FEAT: KIY2vMteGsnLesbcnYjO65jCSDMXx38WD8izJS76jGYwSKVCwA35iceBJxy+n
	F03JnHqpKpDl+JOk+nQf9fpPVGDczqT2LwpJaRDpuaKdMrWIOQbkfd2OxU+cohX9hNEexS3
	0QI8oLQUxC1chmMtILtdMBfD6DJrW58+4JDLEY1EFgJk9qKpJZKJmPFV+P+ovZFVW2n2P0W
	aGOrQRRRKAJNgbZpeMJJB1lc4dGfZsAzD3jc1oWa3n5DXOY19cPadqY6yg7DTQcC1xyJAV9
	xHjhrlfuWCDw26mSK5de6fiky0axYAm4Pb6xn2tl5DlN6xMoPsyssjLANwekyLIm0bDtKYl
	R9haxOMkA0/1CXf9fjh2bdjE5vcTis+CVqaCbUSD+ZMWOsmOlcP6MSFHUjzNQ==
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
Subject: [PATCH v4] pwm: rockchip: Convert to use dev_err_probe()
Date: Fri, 19 Aug 2022 17:26:27 +0800
Message-Id: <20220819092627.19416-1-zhaoxiao@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvr:qybglogicsvr1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_022707_144440_3DD2E17B 
X-CRM114-Status: UNSURE (   9.45  )
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
 v4: add the missing dev_err function.
 drivers/pwm/pwm-rockchip.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index f3647b317152..e6ee14c6a159 100644
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
+		dev_err_probe(&pdev->dev, ret, "Can't prepare enable APB clk: %d\n", ret);
 		goto err_clk;
 	}
 
@@ -360,7 +354,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 
 	ret = pwmchip_add(&pc->chip);
 	if (ret < 0) {
-		dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
+		dev_err_probe(&pdev->dev, ret, "pwmchip_add() failed: %d\n", ret);
 		goto err_pclk;
 	}
 
-- 
2.20.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
