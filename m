Return-Path: <SRS0=KmeF=QA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F08C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Nov 2021 06:22:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D188360FE7
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Nov 2021 06:22:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D188360FE7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U/oG9RFsnVToMPHt5UF2p5MUGjdIppB3adJIYnEl2W0=; b=bDako/mIudH2+r
	YeKSFKVRxRwYMEZRDr07P6oOiWZcvnM4uQHyovY78j2tYu5zjSccW++FyebU/taCPOXyVbSnG85T7
	Sbc5T0Y83VoAEmVuUoWw4vwCSxn5evclBGeBxuzreQ5MmXyvuSE785O2X8FVhll7W8Gg2tGEm7+Lh
	c0lJ1xlgGO2PjrXJxoAVunl+4hvQlu4doekefp16TFB5i6X0iCD8CcZCHZtdNRDR82dV5cGju3Fit
	hj1Y+KrLVwZ7lJgeqQH9P6Y4sOlBfCRM83kVcs2P6HE6vzzCawgOXSjyF6SN/C+DBquJ+dYiFaClt
	/UUpXXyG5AsSQfgw+r/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlmQu-00CEwC-3U; Sat, 13 Nov 2021 06:22:36 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlmQr-00CEv8-QY
 for linux-rockchip@lists.infradead.org; Sat, 13 Nov 2021 06:22:35 +0000
Received: from localhost (unknown [192.168.167.130])
 by lucky1.263xmail.com (Postfix) with ESMTP id C7C38B3BB5;
 Sat, 13 Nov 2021 14:22:24 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P7913T140599548167936S1636784543589160_; 
 Sat, 13 Nov 2021 14:22:24 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: sumit.semwal@linaro.org
X-RCPT-COUNT: 11
X-LOCAL-RCPT-COUNT: 1
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <db56d0e485e7f0271e42729d371dca79>
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com
Cc: pekka.paalanen@collabora.com, daniel.vetter@ffwll.ch, jason@jlekstrand.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
Date: Sat, 13 Nov 2021 14:22:22 +0800
Message-Id: <20211113062222.3743909-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211112_222234_119231_782804D2 
X-CRM114-Status: GOOD (  11.56  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add DMA_BUF_IOCTL_SYNC_PARTIAL support for user to sync dma-buf with
offset and len.

Change-Id: I03d2d2e10e48d32aa83c31abade57e0931e1be49
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/dma-buf/dma-buf.c    | 42 ++++++++++++++++++++++++++++++++++++
 include/uapi/linux/dma-buf.h |  8 +++++++
 2 files changed, 50 insertions(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index d9948d58b3f4..78f37f7c3462 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -392,6 +392,7 @@ static long dma_buf_ioctl(struct file *file,
 {
 	struct dma_buf *dmabuf;
 	struct dma_buf_sync sync;
+	struct dma_buf_sync_partial sync_p;
 	enum dma_data_direction direction;
 	int ret;
 
@@ -430,6 +431,47 @@ static long dma_buf_ioctl(struct file *file,
 	case DMA_BUF_SET_NAME_B:
 		return dma_buf_set_name(dmabuf, (const char __user *)arg);
 
+	case DMA_BUF_IOCTL_SYNC_PARTIAL:
+		if (copy_from_user(&sync_p, (void __user *) arg, sizeof(sync_p)))
+			return -EFAULT;
+
+		if (sync_p.len == 0)
+			return 0;
+
+		if ((sync_p.offset % cache_line_size()) || (sync_p.len % cache_line_size()))
+			return -EINVAL;
+
+		if (sync_p.len > dmabuf->size || sync_p.offset > dmabuf->size - sync_p.len)
+			return -EINVAL;
+
+		if (sync_p.flags & ~DMA_BUF_SYNC_VALID_FLAGS_MASK)
+			return -EINVAL;
+
+		switch (sync_p.flags & DMA_BUF_SYNC_RW) {
+		case DMA_BUF_SYNC_READ:
+			direction = DMA_FROM_DEVICE;
+			break;
+		case DMA_BUF_SYNC_WRITE:
+			direction = DMA_TO_DEVICE;
+			break;
+		case DMA_BUF_SYNC_RW:
+			direction = DMA_BIDIRECTIONAL;
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		if (sync_p.flags & DMA_BUF_SYNC_END)
+			ret = dma_buf_end_cpu_access_partial(dmabuf, direction,
+							     sync_p.offset,
+							     sync_p.len);
+		else
+			ret = dma_buf_begin_cpu_access_partial(dmabuf, direction,
+							       sync_p.offset,
+							       sync_p.len);
+
+		return ret;
+
 	default:
 		return -ENOTTY;
 	}
diff --git a/include/uapi/linux/dma-buf.h b/include/uapi/linux/dma-buf.h
index 7f30393b92c3..6236c644624d 100644
--- a/include/uapi/linux/dma-buf.h
+++ b/include/uapi/linux/dma-buf.h
@@ -47,4 +47,12 @@ struct dma_buf_sync {
 #define DMA_BUF_SET_NAME_A	_IOW(DMA_BUF_BASE, 1, u32)
 #define DMA_BUF_SET_NAME_B	_IOW(DMA_BUF_BASE, 1, u64)
 
+struct dma_buf_sync_partial {
+	__u64 flags;
+	__u32 offset;
+	__u32 len;
+};
+
+#define DMA_BUF_IOCTL_SYNC_PARTIAL	_IOW(DMA_BUF_BASE, 2, struct dma_buf_sync_partial)
+
 #endif
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
