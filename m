Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 827FAC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 13:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZJOeTYZz8XkLO6kZomXXH5VUzVTFQ9ihJwH8TheYUg=; b=qfc/tuiW6jOzO4
	+/B547i3GzYMPiQYu7lhDswCh0Hrc5812tN9Mu/uc8eS+n8oTbq9CSzPMBswnZOCS1wOu5fIjl8kc
	WxVxqAS9ad0lqacqJ0Qfs34zTiO0jgKZfLXgZNWxPu+aDeeVmlpykGROp1Gp6jb+ubA4wmeHUzq49
	PG0orR8jvP0CQ90lqTHrRUeq8/7sBWHH5e5ldlYopqCu5XeHwYoRab/VU37PO2IazYmTAbjwPl2Ut
	9w704TbsuT++p8IBaVeL6V9P26vipCuJ7deSYbIWmGTO5UFp1Sbw9pVzauMtLUO4mhlCO4YOanUFV
	0sWo5w2ez6VqiVGFcBSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8vu-004ZIv-2S;
	Mon, 04 Dec 2023 13:24:23 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8vr-004ZCz-2I
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Dec 2023 13:24:21 +0000
Received: from benjamin-XPS-13-9310.. (ec2-34-240-57-77.eu-west-1.compute.amazonaws.com [34.240.57.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9CA70660711D;
	Mon,  4 Dec 2023 13:24:15 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701696256;
	bh=TyWnSNSrmM8e46vPb9QIHFcmc4e6SFgOyK7FFQxtbXw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LXMQ8D4U/gijOA+nUY9rm3gjiwOc0G6dc8hMd3HlJtRWwSaCNyLJ+aJM3LN4QrieH
	 dRtj3lkOPuToKcN3biJUAeBcxH40CwA7vdpXA8arNS5MDdQAfOnlZfDTW45RWrHDC4
	 74ZeWIiRTkviXGAT+G1Pk3q3hHsxYizqv/TOX9T7KjUeywIRMzex3TTvlNe48J2cJY
	 sO3NE/qODXyrU88wuAu6vlwJyfjujx5M/UDRQL4/f6hPwVH5LWhq4Z2QaXaKRIbZ84
	 UyOzZvkdTRTuN4lAAHwEMPWe8/eGNvGptxbKKjBiy/3sUwnDkRpW2WQ/BNP2RpHLNa
	 EJdQuawBQH2QA==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hverkuil@xs4all.nl,
	mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	matt.ranostay@konsulko.com
Cc: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 24/36] media: rockchip: rkisp1: Fix misuse of min_buffers_needed field
Date: Mon,  4 Dec 2023 14:23:11 +0100
Message-Id: <20231204132323.22811-25-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231204132323.22811-1-benjamin.gaignard@collabora.com>
References: <20231204132323.22811-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_052419_996286_D04ECAE4 
X-CRM114-Status: GOOD (  11.08  )
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

'min_buffers_needed' is suppose to be used to indicate the number
of buffers needed by DMA engine to start streaming.
rkisp1 driver doesn't use DMA engine and just want to specify
the minimum number of buffers to allocate when calling VIDIOC_REQBUFS.
That 'min_reqbufs_allocation' field purpose so use it.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
CC: Dafna Hirschfeld <dafna@fastmail.com> (maintainer:ROCKCHIP ISP V1 DRIVER)
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com> (maintainer:ROCKCHIP ISP V1 DRIVER)
CC: linux-rockchip@lists.infradead.org (open list:ROCKCHIP ISP V1 DRIVER)
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index c6d7e01c8949..de3d89b1fac7 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1431,7 +1431,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
 	q->ops = &rkisp1_vb2_ops;
 	q->mem_ops = &vb2_dma_contig_memops;
 	q->buf_struct_size = sizeof(struct rkisp1_buffer);
-	q->min_buffers_needed = RKISP1_MIN_BUFFERS_NEEDED;
+	q->min_reqbufs_allocation = RKISP1_MIN_BUFFERS_NEEDED;
 	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 	q->lock = &node->vlock;
 	q->dev = cap->rkisp1->dev;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
