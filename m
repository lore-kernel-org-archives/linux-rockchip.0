Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A7D0C48BE5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 16:47:25 +0000 (UTC)
Received: from bombadil.infradead.org (unknown [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 73651617ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 16:47:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 73651617ED
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adF1jF4AQNr+uLymV+kssCiTyvpVgOX52jZNV4AhDnU=; b=nhq+XXBO0tYvtj
	x6+QMbGYGS8IkVRIRGlXHtSLGI2qIbOddfaYwoBo6MfZykLQ72P0vPwkgmflJbmHAZmLybiFDgWt2
	an4Jem2/r8f3xQUQZeIUaxRwJ+Oru3MDkmWtKcCC5sJQyn4MltW/F8zSNZPHU2jqH0zH9iEjZ6iz1
	+A3Gm3i21ts/4+W0Ei21Yz6kLz+h/q+dhbDtab8KIFyJDUKx4bShNjSX0COaAsHy94BIjkLzRudKp
	4mgmAr3jKPA0ubDW4BuG0YColi3wV7xk5qsUw+Coo0I3iW3HOPndNG5P0E/ItsDmRCoEINDI2D+At
	ImxG58u99c6dRcT26AkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltAh4-000qVC-6M; Tue, 15 Jun 2021 15:09:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Nu-000DwX-0X; Tue, 15 Jun 2021 13:45:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=References:In-Reply-To:Message-Id:Date
 :Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=4D4/MODMTVlWAl//BAlSE1MOjJ7Mh8H3tA+ynyfmZkA=; b=IY1hFHMolyenb14ced15vioR3y
 07mSJxfwVxUM2hlWxjFQDnuylRqKYorKrPFNWsRIsScCcx+lpZO5LvkP/ACt+couzwBVl8biGSIRW
 8qwIkmV/EpZR4RW5QwMzEAOjSLCAzzKvKY6dDJ/3EnPkBVZr+c7+W61GbE/Es5Rc3aIelJre+KR5R
 jK3u7eMByhJ20dQfDkuvqqrQN/wCoP54E/luEC5TZGboClLBtOKyHgKS1wudvjv/X+HcmipyTP/mE
 1xxyaGCW9gYjOwjuj7/5FrwtRIM4fkSm5Yp0p4RpPbaF4rqsLMZ/VwlGEQJEyOqdbNjof3ExdS5Qs
 bZCMzmRg==;
Received: from lucky1.263xmail.com ([211.157.147.134])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lszoE-007IV3-UZ; Tue, 15 Jun 2021 03:32:23 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id BC012C8617;
 Tue, 15 Jun 2021 11:32:19 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P16485T139918414178048S1623727934928454_; 
 Tue, 15 Jun 2021 11:32:19 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <bbe05d2d210aa3f5ab0c13a42aaa9ac2>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: jon.lin@rock-chips.com, heiko@sntech.de, robh+dt@kernel.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v8 3/6] spi: rockchip: Set rx_fifo interrupt waterline base on
 transfer item
Date: Tue, 15 Jun 2021 11:32:10 +0800
Message-Id: <20210615033213.14241-4-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210615033213.14241-1-jon.lin@rock-chips.com>
References: <20210615033213.14241-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_043222_006208_CA9A3CF9 
X-CRM114-Status: GOOD (  13.15  )
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

Changes in v8: None
Changes in v7: None
Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None

 drivers/spi/spi-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index bbeed3ae4ee1..0887b19ef3ad 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -540,8 +540,8 @@ static int rockchip_spi_config(struct rockchip_spi *rs,
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
