Return-Path: <SRS0=DeNp=JU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAA9C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 08:50:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 197B0613C9
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 08:50:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 197B0613C9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K1QbARdLCLCj4tVhI5ccdLeudohm9YYl7D3K7Ug1Ur0=; b=Zr5NhWW9N4gYkTw6OX3uccsY3M
	ysRb3XjlQOMJf/7XTOerbL6puPPs6iZ2fyti6Rzh717FMDgG/sByI6bjOPxHcjjixfDUt1PD2nwmQ
	UZR6B1ZNisd/NRMmH5oQc/TFNQQkEmkJfLEfK+GfZmkKOLJBQwxrjFvnWbK+texWCJexeMjDqd/Kk
	cmvPbI3Eex0rHSogNF9zWF2MnoeWn8zo+lx/Uu2oUmF7wgggOGzt49do/i8gmtnSkTRcXkWRmazvV
	o/78xHvZgSf3sAAdzKZW15l/RWslfQlU04S3uU+2Nyb5eG1/gqDBA1IJDhSOR9+Ri8qa5jmpXjd3z
	c5DA0QEQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZrW8-0016kT-Hm; Fri, 23 Apr 2021 08:50:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZrTn-0016UH-St; Fri, 23 Apr 2021 08:48:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=CKwA2I8Cpn4Ix3oB15GXsVsJKYje96BG8/yI5OKxQnk=; b=W67KPm2NS2Ojs23pYTw/qFEFQx
 iXynG3MWKisDUDIyZZpnZkAm9+cnGkmXrQWNoHJU0C5shwKAJfHUmoiTNv6kkTVGQPdKz77fBIfLR
 YyJn+ZT74H1XyQpZrN1YhJWk1hJOLo74gCkm6uUbQiYasfogMghyfxhPucwK4NRTG5KxPhwoa85IY
 NAsshEcaVgptma2yrBGLP9crQJ3Pwjmgc3R6XCLhWxb6RClAFwpZ4e+wLfzuFizuHtQR3KT8moeSp
 +imc0c8muvFxGQnG84it79Uasy9i8Lg8e4SvyB7qTindQuXuRwpI4MndYr/qY3OceEIo9Cg2ZQVJY
 /ekE/CWQ==;
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZrTl-00EGYe-DI; Fri, 23 Apr 2021 08:48:02 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 23ECCD1AB7;
 Fri, 23 Apr 2021 16:47:59 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140649173088000S1619167674948451_; 
 Fri, 23 Apr 2021 16:47:56 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <2557a3ff5cf6116de1b31291f3f41ed3>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 8
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@esmil.dk,
 Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH v1 6/8] spi: rockchip: Set rx_fifo interrupt waterline base on
 transfer item
Date: Fri, 23 Apr 2021 16:47:48 +0800
Message-Id: <20210423084750.18533-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210423084155.17439-1-jon.lin@rock-chips.com>
References: <20210423084155.17439-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_014801_645045_179441ED 
X-CRM114-Status: GOOD (  12.47  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The error here is to calculate the width as 8 bits. In fact, 16 bits
should be considered.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---
 drivers/spi/spi-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index cfcbfd6c1be5..c245af1692c7 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -547,8 +547,8 @@ static int rockchip_spi_config(struct rockchip_spi *rs,
 	 * interrupt exactly when the fifo is full doesn't seem to work,
 	 * so we need the strict inequality here
 	 */
-	if (xfer->len < rs->fifo_len)
-		writel_relaxed(xfer->len - 1, rs->regs + ROCKCHIP_SPI_RXFTLR);
+	if ((xfer->len / rs->n_bytes) < rs->fifo_len)
+		writel_relaxed(xfer->len / rs->n_bytes - 1, rs->regs + ROCKCHIP_SPI_RXFTLR);
 	else
 		writel_relaxed(rs->fifo_len / 2 - 1, rs->regs + ROCKCHIP_SPI_RXFTLR);
 
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
