Return-Path: <SRS0=bCYA=EU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F7B6C5519F
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2020 03:56:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A60F2225D
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2020 03:55:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RxkScwQA"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A60F2225D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aJGRepg4RwyRtlbUFOyiJB+v+cBXqXvCHbCvWYnqoM8=; b=RxkScwQAjrJ5wkKfXuLUcDXSQT
	Xuhyc+Q6BqUxU62NVIQXDSFS3JClUoLNTVR2ugSa2xXDIY9vBu96Scng9gzBo9kHm2fxoCQdqUFpE
	QH/u5T2BF42f2QsDPzwx9pXB8pH0SK8FSBqoXN8xpq64cVFboQ6GKTZaDsgc50TzrZ7myFObmHa1i
	raXYVFY12J9WE3qZhBX3F/5wjrrQglqz/64/Di3SFxVTXW/mh5Qr5ZCG1tTM5R8Y10SklIn+aW4Is
	3HgcOW70xdD1V7tM0IbMkBztHwrISrG/LUSFOudPsw23gLwcB+/go57DpLJgdj/hoGJytEBTVldAR
	PalUioGw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdmfF-0006qQ-3i; Sat, 14 Nov 2020 03:55:49 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdmfB-0006pt-NA
 for linux-rockchip@lists.infradead.org; Sat, 14 Nov 2020 03:55:47 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 0B240C49BF;
 Sat, 14 Nov 2020 11:55:32 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P27840T140553139496704S1605326130614637_; 
 Sat, 14 Nov 2020 11:55:31 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6d5c2be54c926e753545094f68123e26>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: vkoul@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: vkoul@kernel.org
Subject: [PATCH] dmaengine: pl330: _prep_dma_memcpy: Fix wrong burst size
Date: Sat, 14 Nov 2020 11:55:06 +0800
Message-Id: <1605326106-55681-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201113_225546_041530_4460271F 
X-CRM114-Status: GOOD (  11.97  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Actually, burst size is equal to '1 << desc->rqcfg.brst_size'.
we should use burst size, not desc->rqcfg.brst_size.

dma memcpy performance on Rockchip RV1126
@ 1512MHz A7, 1056MHz LPDDR3, 200MHz DMA:

dmatest:

/# echo dma0chan0 > /sys/module/dmatest/parameters/channel
/# echo 4194304 > /sys/module/dmatest/parameters/test_buf_size
/# echo 8 > /sys/module/dmatest/parameters/iterations
/# echo y > /sys/module/dmatest/parameters/norandom
/# echo y > /sys/module/dmatest/parameters/verbose
/# echo 1 > /sys/module/dmatest/parameters/run

dmatest: dma0chan0-copy0: result #1: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
dmatest: dma0chan0-copy0: result #2: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
dmatest: dma0chan0-copy0: result #3: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
dmatest: dma0chan0-copy0: result #4: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
dmatest: dma0chan0-copy0: result #5: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
dmatest: dma0chan0-copy0: result #6: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
dmatest: dma0chan0-copy0: result #7: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000
dmatest: dma0chan0-copy0: result #8: 'test passed' with src_off=0x0 dst_off=0x0 len=0x400000

Before:

  dmatest: dma0chan0-copy0: summary 8 tests, 0 failures 48 iops 200338 KB/s (0)

After this patch:

  dmatest: dma0chan0-copy0: summary 8 tests, 0 failures 179 iops 734873 KB/s (0)

After this patch and increase dma clk to 400MHz:

  dmatest: dma0chan0-copy0: summary 8 tests, 0 failures 259 iops 1062929 KB/s (0)

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 drivers/dma/pl330.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index e9f0101..0f5c193 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -2799,7 +2799,7 @@ pl330_prep_dma_memcpy(struct dma_chan *chan, dma_addr_t dst,
 	 * If burst size is smaller than bus width then make sure we only
 	 * transfer one at a time to avoid a burst stradling an MFIFO entry.
 	 */
-	if (desc->rqcfg.brst_size * 8 < pl330->pcfg.data_bus_width)
+	if (burst * 8 < pl330->pcfg.data_bus_width)
 		desc->rqcfg.brst_len = 1;
 
 	desc->bytes_requested = len;
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
