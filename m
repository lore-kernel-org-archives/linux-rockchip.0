Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4190BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 May 2022 07:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DDUa35QLj2aNcNf+UkyEX+fAMLLtqQ3/BjPe7NgqoA4=; b=npuMY7gqCYisLc
	bukwCtWdK6rBkpb0PRhukFLTWQyPYiB6li6cXiUC5Q6sEkBvhsUOee4qDw1k/i6ZM++3FKCYsCyyU
	LlDyJk3I+AiF9qqsPL9qmCq9Pf5TFNCNtj0Xg6JwL89prcpyrYPe0wV/AVQENMHmJHNOobjDF+jkW
	sREWuGAs2l9Sj132CuWdFSS2IpTcjwhcDkGTkyXAxYVSrKgAuDiXHat/KvbEas5F7/EhD/wn7YhQ3
	lb8ZURYmSLH1jkBC49S6G4YxolUUl+URMeNKVOp9SGQ5FyvrRv7LTSAN5LuAwzNYZW2PiLZvhwFVF
	2pUF52uf8j6CujtQQQjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvD1t-003QeZ-Fz; Sun, 29 May 2022 07:08:01 +0000
Received: from smtp03.smtpout.orange.fr ([80.12.242.125] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvD1p-003QcW-R0
	for linux-rockchip@lists.infradead.org; Sun, 29 May 2022 07:07:59 +0000
Received: from pop-os.home ([90.11.191.102])
	by smtp.orange.fr with ESMTPA
	id vD1cnY8S35ohRvD1cnA1jP; Sun, 29 May 2022 09:07:47 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Sun, 29 May 2022 09:07:47 +0200
X-ME-IP: 90.11.191.102
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	addy ke <addy.ke@rock-chips.com>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Mark Brown <broonie@linaro.org>,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] spi: rockchip: Fix a resource that is put twice in rockchip_spi_remove()
Date: Sun, 29 May 2022 09:07:43 +0200
Message-Id: <df2f4ae902474574ccdb0a8696ce51db39fbd239.1653808056.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220529_000758_038468_AC643A93 
X-CRM114-Status: GOOD (  10.56  )
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

spi_controller_put() is already called as part of
spi_unregister_controller(). The latter is called automatically because
the controller has been registered with the devm_ function.

Remove the duplicate call.

Fixes: 64e36824b32b ("spi/rockchip: add driver for Rockchip RK3xxx SoCs integrated SPI")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/spi/spi-rockchip.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index a08215eb9e14..70777731b20e 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -963,8 +963,6 @@ static int rockchip_spi_remove(struct platform_device *pdev)
 	if (ctlr->dma_rx)
 		dma_release_channel(ctlr->dma_rx);
 
-	spi_controller_put(ctlr);
-
 	return 0;
 }
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
