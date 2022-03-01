Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB245C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 20:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GCxZS9S7oWJ+yLtmQEch7R75KM+1psGl/r8oHcMkXkw=; b=1MS2rXqWB9zr/7
	jA7xiE9Fb3qVbVPapq5+VY77Qim0iUDmLxLVD1uXTFcesuD5xWva4rhsKIgb/SouwhY8Ts4UQN/Kw
	hHuC1pbtaXYo5VEuFzdrjPk1vo11g+X7uIpbsjUsBJVFGGtX9wzf3Q941HjFLdwQiZrzNRyk1hsXC
	4Df+HrYgw1bTVxHX611Y0UO6b3oUuFGHb5DTl7qxRGJVzTShqLBKAn48gqaNu6pZsXkGgM8BiiVcA
	vf1VfI7w3JfNu0aYtmixjjzvailINsMJEWgL2DGJN6GZMr4WidMwH9CsosMq8MMcFgWmixdDgPcoZ
	xhS6Y8CAdeuhMh9sicSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP8y6-000QT5-0C; Tue, 01 Mar 2022 20:19:34 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP8xR-000Q9M-3w; Tue, 01 Mar 2022 20:18:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BFFBDB81D3F;
 Tue,  1 Mar 2022 20:18:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9499CC340EF;
 Tue,  1 Mar 2022 20:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646165930;
 bh=FTy4iMlhuHS/L/W/z6cl/6cZ3QZspAbdvD8Y7KiVPIk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=flNa+q88rrzFEwK9IsdcwxpJ7nlcoD+CwI3fKPDDE1WV5CifxJp6uUP2RLbe0N4lU
 f2GbhM0tKu61HDL3zWWXEoQcukK+hxgteAlW0jefdDwM8A6dIRg4abMH+YfNRqdxrZ
 DqVNaeikv0pu4OKcLdtZZgamFJUblofBfx4VX17/2tuPuJWIotFevg4YwUrky6aDip
 67nRq8xwlZS4uvxrlg9lrid9Wi8XmMi7iXercMZkXdsqWmZa8Am9kVNTCIpwnk95y9
 w4eD4cdZ2dCfLFYaNarVK/wc1R7YVe5dZ8PcBceWS8xYxU8nkNKT4xvMe8Pgiy8K/e
 26mEy/Pm/23Eg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jon Lin <jon.lin@rock-chips.com>, Mark Brown <broonie@kernel.org>,
 Sasha Levin <sashal@kernel.org>, heiko@sntech.de,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 03/14] spi: rockchip: Fix error in getting num-cs
 property
Date: Tue,  1 Mar 2022 15:18:15 -0500
Message-Id: <20220301201833.18841-3-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301201833.18841-1-sashal@kernel.org>
References: <20220301201833.18841-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_121853_361056_412C90A4 
X-CRM114-Status: GOOD (  13.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Jon Lin <jon.lin@rock-chips.com>

[ Upstream commit 9382df0a98aad5bbcd4d634790305a1d786ad224 ]

Get num-cs u32 from dts of_node property rather than u16.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Link: https://lore.kernel.org/r/20220216014028.8123-2-jon.lin@rock-chips.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/spi/spi-rockchip.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 624273d0e727f..a594310754111 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -636,7 +636,7 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	struct spi_controller *ctlr;
 	struct resource *mem;
 	struct device_node *np = pdev->dev.of_node;
-	u32 rsd_nsecs;
+	u32 rsd_nsecs, num_cs;
 	bool slave_mode;
 
 	slave_mode = of_property_read_bool(np, "spi-slave");
@@ -744,8 +744,9 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 		 * rk spi0 has two native cs, spi1..5 one cs only
 		 * if num-cs is missing in the dts, default to 1
 		 */
-		if (of_property_read_u16(np, "num-cs", &ctlr->num_chipselect))
-			ctlr->num_chipselect = 1;
+		if (of_property_read_u32(np, "num-cs", &num_cs))
+			num_cs = 1;
+		ctlr->num_chipselect = num_cs;
 		ctlr->use_gpio_descriptors = true;
 	}
 	ctlr->dev.of_node = pdev->dev.of_node;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
