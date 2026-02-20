Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E126CC54FD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Feb 2026 08:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9DNI5Ba1K08dgqNQWlZ5omK2ux6WJVRwRuRmatw811w=; b=XJEMR2Id+DK52V
	3LNq+Rl0RQpWgWvVjGgx8d+28PHxQCKdal8unJ0sbgYbIVW3bfFkowA3iXX6PlXfDSvXjyJhGNI/L
	i1pp2Hv7SH2CvGUa+RZQ6jE2WdsV1DUHeHeRkb+hizAPej8NPcNqBHWCjqzWZVsr82j1XBvZWR3J7
	vOVpUg/Gddm2Dw8yETdHw0dMVB8u+406R91qMNiwaVLg4LViVNDj3ShiRCok9FkTqQnRnLqGOx0F1
	kx+qEJdiqK7g3SuqEBIIfeYyQAlohLc3mgX2mMZ6ldxf2Db2o5zfgH/NCTN0Z4wRDJ8eou3gx59hr
	6Aq11j9HDrlVZLYfz0nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtLfM-0000000DOaA-3YXk;
	Fri, 20 Feb 2026 08:15:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtLfK-0000000DOZI-3ISS;
	Fri, 20 Feb 2026 08:15:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C43D560054;
	Fri, 20 Feb 2026 08:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 56051C116C6;
	Fri, 20 Feb 2026 08:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771575309;
	bh=QUFyLFVNFD15SkUE8r9Qz2zM/lufvVEda1scMmLZJpw=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=PIsXRLo4YhSPFWchUIhmNY4rNU6gTTT8qnLvScQegiGTGiKhpaLnPCpQRlz59q+UB
	 acDCvFiSke3mFRhY5aN7VK3oWG1ewAUKa70fwbWuD/4NhkLR+1rNepFEhundb9HtjR
	 wCD1V85+XV9tEcrh1Ltl/slBjU9zy5OSMocmR+V64Bj9CgI1w0a73rqL5ljIi5PEm/
	 ZxAl8bMiK4odihAsfATwiYVnWfGZGA3R1DXj2jzsfRbWTFZdD9nSZt/TWFA0dlDUN3
	 MMZ0gn/c/v206ubIpVvmhzO07Jg/csaYmTfNpuCYc7xDdzyxtSi1PmcHczEcC5yQ9q
	 hXUjpjaMUa9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A743C53200;
	Fri, 20 Feb 2026 08:15:09 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Subject: [PATCH v2 0/2] media: rockchip: rkcif: various fixes
Date: Fri, 20 Feb 2026 09:15:06 +0100
Message-Id: <20260216-rkcif-fixes-v2-0-ee40931fe0ff@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAoYmGkC/22Nyw7CIBBFf8XM2jGABh8r/8N0wcDUEhEMaKNp+
 u+OXbs8J/cxQeMaucFpNUHlMbZYsoBZr8APLl8ZYxAGo4xVRlusNx977OObG1IIx7D1e96RAmm
 Qa4xUXfaDdPIrJZGPyktazKUTHmJ7lvpZHkf9s//HR40KSdtARpEN9nD2JSVHpbqNL3fo5nn+A
 pQJiWW/AAAA
To: Dan Carpenter <dan.carpenter@linaro.org>, 
 Paul Elder <paul.elder@ideasonboard.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Hans Verkuil <hverkuil+cisco@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Collabora Kernel Team <kernel@collabora.com>, stable@kernel.org, 
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Chen-Yu Tsai <wens@kernel.org>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771575308; l=1152;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=QUFyLFVNFD15SkUE8r9Qz2zM/lufvVEda1scMmLZJpw=;
 b=Npi/LRz/yYZBkJ3+diYHU47zp2Qqf54Rp4LL44ULFxsTXERqUPwiipVtlCo168v/NtIkaVUl2
 dkhVOUoKy1PCWQO+KwWkFVIYLWqPWDUI9/pqo0y7/sfrMEIJNzajgfD
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
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
Reply-To: michael.riesch@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Habidere,

This series contains

 1) a re-spin of Dan's patch that fixes some more stupid off-by-one issues.
    This patch has been around on the list for some time, but apparently
    has not been applied yet.
 2) a fix that makes the DMA abstraction respect the minimum number of
    buffers requirement

Best regards,
Michael

Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
Changes in v2:
- fixed index of second buffer (Paul)
- fixed cosmetic issues (Laurent)
- Link to v1: https://lore.kernel.org/r/20260216-rkcif-fixes-v1-0-b16db20b6d68@collabora.com

---
Dan Carpenter (1):
      media: rockchip: rkcif: fix off by one bugs

Michael Riesch (1):
      media: rockchip: rkcif: comply with minimum number of buffers requirement

 .../platform/rockchip/rkcif/rkcif-capture-mipi.c   | 10 ++---
 .../media/platform/rockchip/rkcif/rkcif-stream.c   | 44 +++++++++++-----------
 2 files changed, 27 insertions(+), 27 deletions(-)
---
base-commit: c824345288d11e269ce41b36c105715bc2286050
change-id: 20260216-rkcif-fixes-bdd9d3c7e4b0

Best regards,
-- 
Michael Riesch <michael.riesch@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
