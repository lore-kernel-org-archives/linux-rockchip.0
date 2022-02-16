Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D68D2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Feb 2022 01:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uQ8uDBNLVXm7iZdTnQ0YE4ULNGmbgdE8YBzU6Bog9oo=; b=YHVfOFzA0QlW7m
	BA9CNcotNSPXUj4E/oL35WmUme1eChOH1VA1JmEFCnxXM2hL34g5apSR8qiAqm3NbvsxxlmzvfIoD
	0q+U7CXxZbBKPnKacCWdb+0DzXk6wDtlGAPveLhkhJjKxPcY3QjpE6iJ3UZXq4p6XCTPv8fY6NWP0
	BEy2Jfnnext4UGaRhFwmX9x0l0kwtJJX34J/dN9eo7gkuQVBom4eEIUS+6D+t55HxlNhMuxOuKnNR
	Jm54li3zE0AzmfUMe3ZSiTUlgu4cVSiequ0JOXoqIimqgtuAhmprQ+MH2R2m3f6YL9cwMEAoUVIKo
	HpyacNEg+9SP5i0gnDcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK9JH-005B4Y-EQ; Wed, 16 Feb 2022 01:40:47 +0000
Received: from mail-m17640.qiye.163.com ([59.111.176.40])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK9J3-005Azc-CL; Wed, 16 Feb 2022 01:40:34 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17640.qiye.163.com (Hmail) with ESMTPA id 1B0E154031A;
 Wed, 16 Feb 2022 09:40:31 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH v3 0/6] New support and problem adjustment of SPI rockchip
Date: Wed, 16 Feb 2022 09:40:22 +0800
Message-Id: <20220216014028.8123-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUMdQxhWTksaGUIfSB9OGk
 pIVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODI6Hhw4Nz5RDhYrLgsfEk8B
 QhoKCUJVSlVKTU9PQkxOTUhKTk5DVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
 QVlOQ1VJSVVMVUpKT1lXWQgBWUFKTE9PNwY+
X-HM-Tid: 0a7f00302bb5d995kuws1b0e154031a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_174033_654169_8B14261E 
X-CRM114-Status: UNSURE (   6.55  )
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



Changes in v3:
- Support clear the bits of configure bits filed

Changes in v2:
- Fix patches should be at the start of the series
- Fix patches should be at the start of the series
- Delete useless messages
- Limit cs-high presetting to the chip select n <= 1

Changes in v1:
- The origin patch

Jon Lin (5):
  spi: rockchip: Fix error in getting num-cs property
  spi: rockchip: terminate dma transmission when slave abort
  spi: rockchip: Stop spi slave dma receiver when cs inactive
  spi: rockchip: Preset cs-high and clk polarity in setup progress
  spi: rockchip: clear interrupt status in error handler

shengfei Xu (1):
  spi: rockchip: Suspend and resume the bus during NOIRQ_SYSTEM_SLEEP_PM
    ops

 drivers/spi/spi-rockchip.c | 135 ++++++++++++++++++++++++++++++++-----
 1 file changed, 118 insertions(+), 17 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
