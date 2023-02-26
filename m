Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BC6EC64ED6
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Feb 2023 06:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SjvEQO6NfM59tTaZsAr+8SH5DQKwcPJlNES4H5B4F94=; b=t7cnpyNFLbgCRf
	4nVJMNp2NAMV7uHIGSV1BVLa+zx8/G+CYFbwaMHM6lmlGtB7JbxajQ/8UcV+kUfvewKM6Zx8St7cI
	s1UL9pKqoI0EXDI3NwFhAa7OwyMe+giNiYuDxqah+jQ7j9r4WNAucGPv11vurw/iY9XnNtMBMkF/q
	VvZGrf+uFPqwqx8IgjdzbQadZe+bB/HBXwzufe5DYuDBGoXK94nnRBaIMLctYEe6PBp6237uLbc/k
	NNj8274W6UDHTw9gyVAFLCfhpag5Wzy669tYdYSBYYn9E8vfdrwtmMMQhHHgTtBEKz0331Znlw1HB
	laaG1jpdKU3SCR+AF4nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWArf-006vUa-JZ; Sun, 26 Feb 2023 06:50:31 +0000
Received: from m12.mail.163.com ([220.181.12.196])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWArU-006vSq-D1; Sun, 26 Feb 2023 06:50:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=IvUAk
	44qX53mrmFeOTcMDnglMNl9yyPwVkGy2yi2D1Y=; b=QV4sIn1p8CQDw71lxR4UL
	MbzvVFJveAbBp2CfL97jqs1HH8WI/IbLMukbwXmWnczpJ0bW05bqSvAi/+clBhVn
	YiXzWg9ePy/XA8gYgbiqFELqSbSBvdBvsZ45i6XM6ynDJtfszipgQhqOautKaZFH
	jvPAwC2BNEJPGjiBXXOEOA=
Received: from lizhe.. (unknown [120.245.132.180])
	by zwqz-smtp-mta-g4-2 (Coremail) with SMTP id _____wC3FrdB_fpj1ZL2BA--.35734S4;
	Sun, 26 Feb 2023 14:34:16 +0800 (CST)
From: Lizhe <sensor1010@163.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Lizhe <sensor1010@163.com>
Subject: [PATCH v1] drivers/spi-rockchip.c : Remove redundant variable slave
Date: Sun, 26 Feb 2023 14:33:34 +0800
Message-Id: <20230226063334.7489-1-sensor1010@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wC3FrdB_fpj1ZL2BA--.35734S4
X-Coremail-Antispam: 1Uf129KBjvdXoW7XrWxKr17Ww1DXw4rtr43Wrg_yoW3Grc_ua
	1UuF4xWw48trsaya18K343CrZYvFsagr1v9F4qqFWSg3yDAr18ZwnYvay5J3WUZw4xCr97
	CFyjqw1akF98CjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRM5l8UUUUUU==
X-Originating-IP: [120.245.132.180]
X-CM-SenderInfo: 5vhq20jurqiii6rwjhhfrp/1tbiSAsiq1+FhCf6VQAAsc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230225_225020_821579_A33DE5AF 
X-CRM114-Status: UNSURE (   8.83  )
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

variable slave in spi_alloc_master() or spi_alloc_slave()
has been assigned. it is not necessary to be assigned again

Signed-off-by: Lizhe <sensor1010@163.com>
---
 drivers/spi/spi-rockchip.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 79242dc5272d..a45717eb8890 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -772,7 +772,6 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, ctlr);
 
 	rs = spi_controller_get_devdata(ctlr);
-	ctlr->slave = slave_mode;
 
 	/* Get basic io resource and map it */
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
