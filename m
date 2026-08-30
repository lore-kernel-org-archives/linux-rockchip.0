Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADD61C61DD9
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2026 13:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E7IV1QKrmCNSoAiW1BY6q54qmO05d4fKPSe3REXqzNc=; b=RSBQ7A25rmDYWV
	Jnc355TSkq9WUQ2EtB1JehDoTSSo5HPGqt0C7jSxV7A0OBEBeyDrTR55s9HF3kYnicKQTR7AG5Ngi
	hjquw37fQ+0hDCC4eMbUTchFvztAJnfFjfiC/P9kfuMDk1D3y/z1uBiTndO36ZcuXS6Q/U5c8WDdU
	yXLMc65fDGjSLT0Ok7nQmGW02s2yeke3L5Q4mrWBYTk0vw/CNoZn2bPi/tIwaYlHgkBML2jT7kg07
	s4iDtzFvRTTXVimWhUwAGizL94xNbBgZLqO/kIeZuWDupuZWFoLVYHt2Qm02xRXowJh/O9W/q4SnN
	BlDQEVg4kjGMUsfg/Dlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0fGR-00000007jXE-34w1;
	Sun, 30 Aug 2026 13:07:59 +0000
Received: from smtp81.cstnet.cn ([159.226.251.81] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0fGP-00000007jWM-06qu;
	Sun, 30 Aug 2026 13:07:58 +0000
Received: from localhost.localdomain (unknown [111.196.241.250])
	by APP-03 (Coremail) with SMTP id rQCowABncD4mK5Rqp9aaBg--.48169S2;
	Sun, 30 Aug 2026 21:07:50 +0800 (CST)
From: Pengpeng Hou <pengpeng@iscas.ac.cn>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: Pengpeng Hou <pengpeng@iscas.ac.cn>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] crypto: rockchip: propagate activation errors
Date: Sun, 30 Aug 2026 21:07:48 +0800
Message-ID: <20260830130748.944-1-pengpeng@iscas.ac.cn>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CM-TRANSID: rQCowABncD4mK5Rqp9aaBg--.48169S2
X-Coremail-Antispam: 1UD129KBjvJXoW7Aw1rGw1xuw1UGFy8XF47Arb_yoW8ZFW3pr
	13GrZrArWkCr4xGa95tr1rZF4rX3ySyry3Jr47K3WfAw1aqw1IgrWayFy0vFnxAFy8J3y5
	AFs7Aa48CF1xZFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9214x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Cr
	1j6rxdM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj
	6xIIjxv20xvE14v26r126r1DMcIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr
	0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E
	8cxan2IY04v7MxkF7I0En4kS14v26r1q6r43MxAIw28IcxkI7VAKI48JMxC20s026xCaFV
	Cjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWl
	x4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1I6r
	4UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWxJVW8Jr1lIxAIcVCF04k26cxKx2IYs7xG6r1j
	6r1xMIIF0xvEx4A2jsIE14v26r4j6F4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYx
	BIdaVFxhVjvjDU0xZFpf9x0JUgXocUUUUU=
X-Originating-IP: [111.196.241.250]
X-CM-SenderInfo: pshqw1xhqjqxpvfd2hldfou0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260830_060757_440002_53494952 
X-CRM114-Status: GOOD (  11.11  )
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

The Rockchip crypto driver ignores reset and crypto-engine start failures
in
probe, and ignores a reset deassertion failure during runtime resume. It
can therefore publish or resume the crypto device without a usable engine.

Return reset and engine-start failures, and disable the clocks if a runtime
resume reset deassertion fails.

Fixes: 433cd2c617bf ("crypto: rockchip - add crypto driver for rk3288")
Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 7cb1316b6f189..18ecbec1f101b 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -133,7 +133,12 @@ static int rk_crypto_pm_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	reset_control_deassert(rkdev->rst);
+	ret = reset_control_deassert(rkdev->rst);
+	if (ret) {
+		rk_crypto_disable_clk(rkdev);
+		return ret;
+	}
+
 	return 0;
 
 }
@@ -341,9 +346,14 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	reset_control_assert(crypto_info->rst);
+	err = reset_control_assert(crypto_info->rst);
+	if (err)
+		goto err_crypto;
+
 	usleep_range(10, 20);
-	reset_control_deassert(crypto_info->rst);
+	err = reset_control_deassert(crypto_info->rst);
+	if (err)
+		goto err_crypto;
 
 	crypto_info->reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(crypto_info->reg)) {
@@ -374,7 +384,10 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	crypto_engine_start(crypto_info->engine);
+	err = crypto_engine_start(crypto_info->engine);
+	if (err)
+		goto err_pm;
+
 	init_completion(&crypto_info->complete);
 
 	err = rk_crypto_pm_init(crypto_info);

base-commit: 08dbfad3f5040f5bdb6c529da20d6d4e81fefd72
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
