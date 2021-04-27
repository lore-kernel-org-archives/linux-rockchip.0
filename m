Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B52C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:45:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D86EE613AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:45:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D86EE613AA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Eyk0bRUramFLrXWHYbc2KaCAzk2KrI4Ef1Tsr6BGaCk=; b=VKdoBEp/hRIQfi+JYo6Opmp9Hd
	5cgqW0MWZWqEoOhEijLKPRzphR4OQO7epPP210ZoUoUotgTFHeI3i+tqNPv1FcSXM/ar4o8fPcAnl
	zbuL/I2Taicuv/Fw+ofN3gaIyID06XNDi3ZFIFs7fZf9wm6px2eOfwXA/dk4xeVepKqIvOZYfbkdB
	VqSXBe2tZ4ZG6Etf9sjmXQBaYMjMutDBvIwH8DmYDelExC7Pg6J3H1ZBXspc3WSoGST0i9xCk2atM
	Rq/EsddX7E+VO+aN2rJ7whap1JG+iSWmntB5jspivgra4Mpwn9PyzJaqtWoapARzs/PLxY4hKRduE
	VANxWV6A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbIPG-0010Gh-QD; Tue, 27 Apr 2021 07:45:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbII4-000z9p-Bd; Tue, 27 Apr 2021 07:37:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=ukx7ZfTSUeH5kxFIjKghPbL714R8E0BG+Xo785FPvew=; b=UxIiTU41eOWg4l3yNrq87sqFg6
 WRA4tXsdy/nUpmDGVrQSWPX/HKTs/Lua1aQ2f127SGCFIlrw7Nhx0fnmR4Fa+qpatQe37q1c7sOqw
 CYGn2AlUC1YnC7xUzcyns/4xpeSBtQOAZw63guVRxX+/WSqlvIl4Shcl1h4LQhRmaP4DFZJ3PV8ea
 lSCHwWFH4GJ8iRhV03yzvAWukmPOWhBkOSSKahScXdhw00fqKD+0/6IWVz7XZ2M8cusUxaDBpoaxW
 ch1Pkpy7IKeqBBQB7/RvEeOYg/zR7RxLZG2MkLAio9LWse+2dmY3uXmt1Xk1DXy+W7/T3O2oQ3Yqg
 4JacprcA==;
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbIHw-00GVkf-Kz; Tue, 27 Apr 2021 07:37:47 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id C2753F39DC;
 Tue, 27 Apr 2021 15:37:36 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140648996910848S1619509055243892_; 
 Tue, 27 Apr 2021 15:37:36 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f0a9583a3d3d3cde6d2d70a5018492a6>
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
Subject: [PATCH v2 1/8] spi: rockchip: Set rx_fifo interrupt waterline base on
 transfer item
Date: Tue, 27 Apr 2021 15:37:26 +0800
Message-Id: <20210427073733.31419-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_003744_867639_1D064CD8 
X-CRM114-Status: GOOD (  13.48  )
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
index 52d6259d96ed..406ea3c6abd9 100644
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
