Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83570CD1292
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 13:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tslfZ64DFh6SfjLoqpXSiiyH6ja8d+4ngDwKAr1i+E=; b=AXp/yK7ri8KPGY
	5hY1LT6yoPf12fkLpXa1gDZJqt/KwLuTmqwmI/YwlLqgjfbSkiEwc7kEx93wn31YNhvi9i//5/Hno
	/2haaws3l1+Qnz5ap6Wlr8N7kykLsH81nKFirnmuOxoXrxWyKJYi5Zq0MG08W6VB4eK6G3evhz/J7
	X7b4+n8XunbLsysDUGzyoqMqX9Yys9EFLBFp4OQcps1t52gyoVW7DYn7wfpBlqdhyGn1zbmdC7e13
	qhrs9ikcheOrnOWGfLDs9GZubZlkYogSi+z+vdVp4as+G4mOBTXEnGCmm8POcxxpsZAY3cBT4MkB2
	9N1jkypHTgj5Tk8jetBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs0WL-0000000G8Eq-3HLJ;
	Wed, 03 Apr 2024 13:19:17 +0000
Received: from mail-m12742.qiye.163.com ([115.236.127.42])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs0WG-0000000G8AA-2XgO
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 13:19:16 +0000
DKIM-Signature: a=rsa-sha256;
	b=WL9AME1FbN3qwG5Wk/f79Xhi/AskTVfgq4tjVjSPsooez9x8BryWqJeBNcj8nT7Cip+10fOlPiHqsHn8OL6mSsNN5q36mI+y2RXFwcfUM3ELmMp1gzB+DCuJ32O/rK9vlsmI9opkB5wX7NvQcY5vCQd4rypsKVxDSSE7JkQ2MLE=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=hVhk+TI4SRZhbF4gUP3nkD3PWMY3UDprkFnGH1+J064=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id C6D807C03A7;
	Wed,  3 Apr 2024 21:18:44 +0800 (CST)
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: heiko@sntech.de,
	vkoul@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	dmaengine@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dmaengine: Add support for audio interleaved transfer
Date: Wed,  3 Apr 2024 21:18:22 +0800
Message-Id: <20240403211810.v2.1.I502ea9c86c8403dc5b1f38abf40be8b6ee13c1dc@changeid>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1712150304-60832-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1712150304-60832-1-git-send-email-sugar.zhang@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ09IT1ZNHx0aTU8YHksfSh5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSUxOVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8ea41ca76e09d2kunmc6d807c03a7
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NjY6CDo*DTMTATUZNTFJHhdD
	LCoKCR1VSlVKTEpJSk5LSElOT09OVTMWGhIXVQgOHBoJVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSENJTDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_061913_995132_4CB896A3 
X-CRM114-Status: GOOD (  10.10  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch add support for interleaved transfer which used
for interleaved audio or 2d video data transfer.

for audio situation, we add 'nump' for number of period frames.

e.g. combine 2 stream into a union one by 2D dma.

DAI0: 16CH
+-------------------------------------------------------------+
| Frame-1 | Frame-2 | Frame-3 | Frame-4 | ...... Frame-'numf' |
+-------------------------------------------------------------+

DAI1: 16CH
+-------------------------------------------------------------+
| Frame-1 | Frame-2 | Frame-3 | Frame-4 | ...... Frame-'numf' |
+-------------------------------------------------------------+

DAI0 + DAI1: 32CH

+-------------------------------------------------------------+
| DAI0-F1 | DAI1-F1 | DAI0-F2 | DAI1-F2 | ......              |
+-------------------------------------------------------------+
|      Frame-1      |      Frame-2      | ...... Frame-'numf' |

For audio situation, we have buffer_size and period_size,
the 'numf' is the buffer_size. so, we need another one for
period_size, e.g. 'nump'.

| Frame-1 | ~ | Frame-'nump' | ~ | Frame-'nump+1' | ~ |  Frame-'numf' |
|

As the above shown:

each DAI0 transfer 1 Frame, should skip a gap size (DAI1-F1)
each DAI1 transfer 1 Frame, should skip a gap size (DAI0-F1)

So, the interleaved template describe as follows:

DAI0:

struct dma_interleaved_template *xt;

xt->sgl[0].size = DAI0-F1;
xt->sgl[0].icg =  DAI1-F1;
xt->nump = nump; //the period_size in frames
xt->numf = numf; //the buffer_size in frames

DAI1:

struct dma_interleaved_template *xt;

xt->sgl[0].size = DAI1-F1;
xt->sgl[0].icg =  DAI0-F1;
xt->nump = nump; //the period_size in frames
xt->numf = numf; //the buffer_size in frames

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v2:
- Add the pl330 interleaved transfer

 include/linux/dmaengine.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
index 752dbde..5263cde 100644
--- a/include/linux/dmaengine.h
+++ b/include/linux/dmaengine.h
@@ -144,6 +144,7 @@ struct data_chunk {
  *		Otherwise, destination is filled contiguously (icg ignored).
  *		Ignored if dst_inc is false.
  * @numf: Number of frames in this template.
+ * @nump: Number of period frames in this template.
  * @frame_size: Number of chunks in a frame i.e, size of sgl[].
  * @sgl: Array of {chunk,icg} pairs that make up a frame.
  */
@@ -156,6 +157,7 @@ struct dma_interleaved_template {
 	bool src_sgl;
 	bool dst_sgl;
 	size_t numf;
+	size_t nump;
 	size_t frame_size;
 	struct data_chunk sgl[];
 };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
