Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3168DC6FA8E
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Feb 2023 06:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A0Gu0S2czGGGHJqaGgc/yzd2k+pwGZtbWLyM/lgVzgI=; b=2mwz15o9vWdHN+
	g5mwa7xN4iuFF7FaMBXS2cqusTgi9Ixh5uu9yHV5c09D2+G3gAKqfaS4JHjtyyvyxsKX/rCcCpE+e
	AVsYnysI1/cPqDJug+cjMyyUbyzpBvAo8opTqjmXaKspG40kjXPxw4wV27+TvwVLUGq2gnsB9O1VM
	B1OeKmDGLJTt3kzoea5Tki0TOC9P/mNJPMAEQtIq3yw1Wdb8+wfEz8QoCcQ7rQoQn0q+uz/65Tb7O
	CVqZC0eCCr4qYDfAWek8EUOSwp+8cLfAOHIGNInJ2t9GlS2HEE5C9XGDJRteHYiY+Ty+kUeWVCaur
	6C2TVaMDRvKdpo58D0Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWAti-006vin-Tr; Sun, 26 Feb 2023 06:52:38 +0000
Received: from m12.mail.163.com ([220.181.12.198])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWAtX-006vgo-Nd; Sun, 26 Feb 2023 06:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=CgKfI
	DTe7iV4Ey58WdGr3+soXUsjSl47zqi0NmIEK+E=; b=UZTcm52Seih1hSUrqYgeY
	5WR+ajYOaTkT8TkjjZRMcqF2IUgyTwNuHeicuhlDtI74r8dUrcSQbSSoFFenZFus
	SHTeFTBuUuaOJws5nox2AHtJXC+ASJJvGHz8Rh9ZCAzrV7aIscWHfybr59qaXZXe
	y7h/Tn/pPRPZeTacv7h05g=
Received: from lizhe.. (unknown [120.245.132.180])
	by zwqz-smtp-mta-g4-4 (Coremail) with SMTP id _____wAXpb1vAftjDbgABQ--.19532S4;
	Sun, 26 Feb 2023 14:52:10 +0800 (CST)
From: Lizhe <sensor1010@163.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Lizhe <sensor1010@163.com>
Subject: [PATCH v1] drivers/spi-rockchip.c : Use devm_platform_get_and_ioremap_resource makes code better
Date: Sun, 26 Feb 2023 14:51:25 +0800
Message-Id: <20230226065125.14086-1-sensor1010@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wAXpb1vAftjDbgABQ--.19532S4
X-Coremail-Antispam: 1Uf129KBjvdXoW7Xw1UAF1kZF18CFyrXF1DZFb_yoWfGFX_ua
	1Uur4xGr48ArsYya1Ykw13CFWIvanYgr97GF4jqFZxtF4DXr12vrWrurn5JF1UZwsrAr9r
	Gr9Fqr1avF98AjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRM5l8UUUUUU==
X-Originating-IP: [120.245.132.180]
X-CM-SenderInfo: 5vhq20jurqiii6rwjhhfrp/xtbBlwAiq2I0YM1zuQAAsv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230225_225228_947246_29043FBA 
X-CRM114-Status: UNSURE (   8.43  )
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

use devm_platform_get_and_ioremap replace platform_get_resource()
and devm_ioremap_resource()

Signed-off-by: Lizhe <sensor1010@163.com>
---
 drivers/spi/spi-rockchip.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 79242dc5272d..4f69c38d5a67 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -775,8 +775,7 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	ctlr->slave = slave_mode;
 
 	/* Get basic io resource and map it */
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	rs->regs = devm_ioremap_resource(&pdev->dev, mem);
+	rs->regs = devm_platform_get_and_ioremap_resource(pdev, 0, &mem);
 	if (IS_ERR(rs->regs)) {
 		ret =  PTR_ERR(rs->regs);
 		goto err_put_ctlr;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
