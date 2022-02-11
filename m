Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 960B7C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 03:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5mQRD0IoagQR6C8ItX+Fnf2g+a8yR7Wpgi6DjhEw4HE=; b=edj3j0FMiyUwqq
	NvId2azz9f2YQkWrU+OD2hCnkUp7MmzMOXSXFtVhxJf/c3M5LwoQPlP6VTsUAtv3OQhrpIciJetkv
	hVhhVVSQ/VBR/ybcrTGiwaf5+SfoPVQqWBrvNT3+yqA5nulSOIn8FAq5xNYFcRNscacK9VrGlbvDa
	ENYSkPFS2o2OcMqVbTH5v+QchS3LMMgJ4BtC0NeSqyMX5vH0gp6cUv44tXTPKUA3MOzIdmJK2Bw6K
	V49iFyPzg69OgNCffveyHz9dbaXVBgVUX6DRexvCYj8QkykWZmHTDFPgCaleW5gZqZ985cTKZUHYc
	wi5GpzVSLqNmahxAEhew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIMx0-005edg-9M; Fri, 11 Feb 2022 03:50:26 +0000
Received: from mail-m17664.qiye.163.com ([59.111.176.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIMwH-005eKx-Az; Fri, 11 Feb 2022 03:49:42 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17664.qiye.163.com (Hmail) with ESMTPA id 7C90114019A;
 Fri, 11 Feb 2022 11:49:39 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jon Lin <jon.lin@rock-chips.com>
Subject: [RFC PATCH v1 0/6] New support and problem adjustment of SPI rockchip
Date: Fri, 11 Feb 2022 11:49:32 +0800
Message-Id: <20220211034938.25097-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRlCT01WSBpPSElCH05JGE
 0YVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6K1E6NAw4GD5CFh4XTUk*DkIN
 LkwKCQ9VSlVKTU9PTk5KSExCQkhPVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
 QVlOQ1VJSVVMVUpKT1lXWQgBWUFKT09MNwY+
X-HM-Tid: 0a7ee6e69ad2da2fkuws7c90114019a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_194941_572087_A0ABD526 
X-CRM114-Status: UNSURE (   3.54  )
X-CRM114-Notice: Please train this message.
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




Jon Lin (5):
  spi: rockchip: Stop spi slave dma receiver when cs inactive
  spi: rockchip: Preset cs-high and clk polarity in setup progress
  spi: rockchip: Fix error in getting num-cs property
  spi: rockchip: terminate dma transmission when slave abort
  spi: rockchip: clear interrupt status in error handler

shengfei Xu (1):
  spi: rockchip: Suspend and resume the bus during NOIRQ_SYSTEM_SLEEP_PM
    ops

 drivers/spi/spi-rockchip.c | 133 ++++++++++++++++++++++++++++++++-----
 1 file changed, 116 insertions(+), 17 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
