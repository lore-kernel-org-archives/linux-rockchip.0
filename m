Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB724C54E5D
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Mar 2024 15:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NkroRYzJNtt6GAemrx3zabfLXc5q6uk9yWCjuqlFGDY=; b=qePgMKMkvUAGyi
	9ymJKLvXVIK9gmpuCYAnVJosh+K3AWLae0pPkf15dqQxCi8MmcssNQo2beYi7EafQy3x1jdLetCW4
	kUaAWUZSYaqyK2OAWtY5FSUnw2O+lznAZSYF62yj5rLgo4gsVOCvxVhWLZ1A2XZ9eoFyGNLl6Iw3M
	QypMQjAlMHDdhjhiFKxtOXWPb89T0BxO2uMg302Zp9pI0rp85CYbfudIbbXwq7l6FEL0p+CeMzlzQ
	L5L7S1mzc1u7PWnXvb2OmZv0TtjLlCG+1CkMqwst/+zBt8+7PVn0Mp0YGvmwAOqN5p67muGbp1geV
	HaeSGkCTy2HebSBvf/Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkn4S-0000000ErK9-3qhM;
	Thu, 14 Mar 2024 15:32:40 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkn4P-0000000ErGT-1ubX
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Mar 2024 15:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710430353;
	bh=3jxN6/gz20RUpRFzNpsbUnuOlYvOsZD7I007u9bVKlc=;
	h=From:To:Cc:Subject:Date:From;
	b=Y7qCtJO9CCkvmdjA4z4qZo2OSAdadgDm3lVFwivYN0wjz+v4a6BrzUzBiHhz+jefZ
	 MPQonYWfyo9M+fmlCYNhyKAb1oI6mJndJjUnUqbBElmsWvmOiO/HfViItRL+t7BU1v
	 7/1Gbm86vOUDSeithRgraHRJPvPWQ8bnGP7u9XIDUTh5rSbQk/eV0R9bUU2YcXFRZK
	 O6LWkluQw+BkfS9EaEZ5nI++ZrnKC5F02JxhRzHW4QyTPhPKZjJAaNJR+ZxqFBS7Nc
	 /jzSHXgPt+b+LZY+7W36ewqbyc08v3iFHzYrfXuyd/NkvQs+9g/xhJEeQmZ/ZaeHBi
	 9cOvm7vB7F2/A==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 8AADA378209A;
	Thu, 14 Mar 2024 15:32:32 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	hverkuil-cisco@xs4all.nl,
	nicolas@ndufresne.ca
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v21 0/9] Add REMOVE_BUF ioctl
Date: Thu, 14 Mar 2024 16:32:17 +0100
Message-Id: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_083237_686620_BDE05AE7 
X-CRM114-Status: GOOD (  10.78  )
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

Unlike when resolution change on keyframes, dynamic resolution change
on inter frames doesn't allow to do a stream off/on sequence because
it is need to keep all previous references alive to decode inter frames.
This constraint have two main problems:
- more memory consumption.
- more buffers in use.
To solve these issue this series introduce REMOVE_BUFS ioctl.

VP9 conformance tests using fluster give a score of 210/305.
The 24 of the 24 resize inter tests (vp90-2-21-resize_inter_* files) are ok
but require to use postprocessor.

Kernel branch is available here:
https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/commits/remove_vb2_queue_limit_v21

GStreamer branch to use DELETE_BUF ioctl and testing dynamic resolution
change is here:
https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/commits/VP9_drc

changes in version 21:
- Be more careful about checking remove_bufs type field vs queue type.
- Add documentation about type checking error.
- Always set capabilities flags field.
- Do not set vidioc_remove_bufs for vim2m driver.

changes in version 20:
- Rename DELETE_BUFS into REMOVE_BUFS
- Change documention, structure and variables name to use 'remove'

changes in version 19:
- Fix typo in commit message.
- Fix ioctl domentation
- Rework q->is_busy patch following Hans's comments
- Change where DELETE_BUFS is enabled

Benjamin Gaignard (9):
  media: videobuf2: Update vb2_is_busy() logic
  videobuf2: Add min_reqbufs_allocation field to vb2_queue structure
  media: test-drivers: Set REQBUFS minimum number of buffers
  media: core: Rework how create_buf index returned value is computed
  media: core: Add bitmap manage bufs array entries
  media: core: Free range of buffers
  media: v4l2: Add REMOVE_BUFS ioctl
  media: v4l2: Add mem2mem helpers for REMOVE_BUFS ioctl
  media: verisilicon: Support removing buffers on capture queue

 .../userspace-api/media/v4l/user-func.rst     |   1 +
 .../media/v4l/vidioc-remove-bufs.rst          |  85 +++++++
 .../media/v4l/vidioc-reqbufs.rst              |   1 +
 .../media/common/videobuf2/videobuf2-core.c   | 223 ++++++++++++------
 .../media/common/videobuf2/videobuf2-v4l2.c   |  34 ++-
 .../media/platform/verisilicon/hantro_v4l2.c  |   1 +
 .../media/test-drivers/vicodec/vicodec-core.c |   1 +
 .../media/test-drivers/vimc/vimc-capture.c    |   3 +-
 drivers/media/test-drivers/visl/visl-video.c  |   1 +
 drivers/media/test-drivers/vivid/vivid-core.c |   5 +-
 drivers/media/v4l2-core/v4l2-dev.c            |   3 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |  30 +++
 drivers/media/v4l2-core/v4l2-mem2mem.c        |  15 ++
 include/media/v4l2-ioctl.h                    |   4 +
 include/media/v4l2-mem2mem.h                  |   2 +
 include/media/videobuf2-core.h                |  52 +++-
 include/media/videobuf2-v4l2.h                |   2 +
 include/uapi/linux/videodev2.h                |  17 ++
 18 files changed, 394 insertions(+), 86 deletions(-)
 create mode 100644 Documentation/userspace-api/media/v4l/vidioc-remove-bufs.rst

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
