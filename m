Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043DC47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 10:59:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5CACC611C0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 10:59:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5CACC611C0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oq0T8l2k+TDgbQSqKzJfTK8QH0nPx8+/XAP7Yyc6p7c=; b=VemTotH9n9pru8
	OexUHykuawOfhfJcboNUs/Gg+rWmqrso8DXE8qGU7c91XIpTZuSkL9KeCQ1syKAatrg7kq1ZsIy0j
	fKap2WF4qkqoVk0MTzAPoruy6RUNGWmDFAuJy2Awtulfs/l7LyRMC/tna0BwBu+oBZRkLLntRy9a4
	eKhBHLyjo9dfNMR2BDkGduapMbW2hegtPJhaXCVK+2Gcvk0D4Zob1m8rxY1bvJ3e2XaAsY/xvdPs8
	voyLrNr+vPJ6ecSu5kEwS7jdAyv69eMmQ3QdRjivFLHwi57j3MtpjXslsunl/cevH+ZTmrI8msdq1
	3mFYG6GmZtA/ayMDOLjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCyx-0037zY-Ay; Mon, 07 Jun 2021 10:59:47 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCxQ-0037Pd-EL; Mon, 07 Jun 2021 10:58:15 +0000
Received: from localhost (unknown [192.168.167.105])
 by lucky1.263xmail.com (Postfix) with ESMTP id 009E9CD662;
 Mon,  7 Jun 2021 18:58:06 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26721T140687081854720S1623063484717111_; 
 Mon, 07 Jun 2021 18:58:06 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <8c7099462556522c4efe0feccf8f4ae2>
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
Subject: [PATCH v5 0/6] Support ROCKCHIP SPI new feature
Date: Mon,  7 Jun 2021 18:57:56 +0800
Message-Id: <20210607105802.23796-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_035812_760947_B1F2EFBD 
X-CRM114-Status: UNSURE (   8.32  )
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



Changes in v5:
- Change to leave one compatible id rv1126, and rk3568 is compatible with rv1126

Changes in v4:
- Adjust the order patches
- Simply commit massage like redundancy "application" content

Changes in v3:
- Fix compile error which is find by Sascha in [v2,2/8]

Jon Lin (6):
  dt-bindings: spi: spi-rockchip: add description for rv1126
  spi: rockchip: add compatible string for rv1126 and rk3568
  spi: rockchip: Set rx_fifo interrupt waterline base on transfer item
  spi: rockchip: Wait for STB status in slave mode tx_xfer
  spi: rockchip: Support cs-gpio
  spi: rockchip: Support SPI_CS_HIGH

 .../devicetree/bindings/spi/spi-rockchip.yaml |  1 +
 drivers/spi/spi-rockchip.c                    | 95 +++++++++++++++----
 2 files changed, 80 insertions(+), 16 deletions(-)

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
