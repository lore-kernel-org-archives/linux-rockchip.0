Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38C81CD98DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 14:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GmV6JxhPnwLNuv5hdWgi43gSuO4NLD3u+No3VRtn4Ls=; b=aqzq9MQ7Xtcfuq
	g24YkzPbf1MQ0yn1c5n3Y578oYYff8frtG60TNzlvmQtUCp5UD5CDlBAC/X4lS5wgX/HpURDgCBxN
	2hC/dWCL0LrkSwxKjyQqVsY5MXyBbxtWxMqOEbkyOFEPdwmsqEivWrftbD3THS+UE8ob+XbRcHq8T
	MoTVKW9Bx1mqgY5NeLKuwti/ZL4bjGfcWudaQpRpHuAW6GAgIP5CEdNNKEOCdTgzj0R6GQsYWwUPM
	HwZvlE7eGsPeFbyZa8T6gik2HPvhcEnxSWd251E/aGa6kJbDgnUg+107Y0K5DYYC2rZz0hSzyCTO9
	f6pCVTpl0ssb4CkzTYIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2qL-0000000B3kt-1pLe;
	Fri, 12 Jun 2026 14:26:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2qI-0000000B3jd-35E9
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jun 2026 14:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781274398;
	bh=nqhbl4w0DHWLcyrWk2QyBKWcj55aVfVDCiblKdSoOWQ=;
	h=From:Subject:Date:To:Cc:From;
	b=ebNFjzIwS5EalYroWxun8G7UD0zFRZujG4dxYZi0xjfXfSJHRuo+x359oEu5jGG9m
	 jNBXFJKAR8OodTRwTQyo02lO8z829vqDdrpBjl6yYuOMVybBVQR/3Pl54blOY32zEq
	 fkagXvqbL1MW27NNBHEzA+77RcF/R71w8aihqISAnD+3AIb2txmXWzArUjxkQ0E2VL
	 DqFNz9T/yiov4iLqRU/3OpyV+2Q58/8/121r6tKZD7+pyAw70wtmuQpUE50II0ffDc
	 PJ/dpLk2HvDiptQbQMtV+M5b7Cja2riPYdJOOW2ka5n/M4sKyOT6vjUvD8Rk32iBiA
	 xilS9dApx8LNA==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 78A8B17E040C;
	Fri, 12 Jun 2026 16:26:37 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 0/3] media: Add fdinfo support for v4l2 drivers
Date: Fri, 12 Jun 2026 10:26:21 -0400
Message-Id: <20260612-v4l2-add-fdinfo-v1-0-723211abc861@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQ5AMBBA0avIrE1SJYSriEW1U0akpEUk4u6K5
 Vv8f0EgzxSgSS7wdHDgxUVkaQJ6VG4gZBMNUshSlJnAo5glKmPQGnZ2QVXVwmpSfS5riNXqyfL
 5Hdvud9j7ifT2buC+H2CRriJzAAAA
X-Change-ID: 20260610-v4l2-add-fdinfo-a790fceab329
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, kernel@collabora.com, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Christopher Healy <healych@amazon.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_072642_937819_BB67FFB8 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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

fdinfo is useful to poll information from the driver.
Unlike the ftrace interface, it lets userspace tools get a snapshot of
the state of the driver at their own pace, instead of getting events for
each driver status change.

This works better to get information like HW usage time or clock
frequencies, as well as memory usage.
This patch set focuses on mem2mem drivers that are per-frame based and
an implementation is proposed for the Verisilicon Hantro driver, limited
to clock frequencies and HW usage time.

An example of usage of this from userspace is implemented in v4l2top:

https://github.com/cazou/v4l2top

checkpatch.pl warning: The 2 arguments in the show_fdinfo callback
definition are kept unnamed to match with the rest of the struct
definition.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
Christopher Healy (2):
      docs: media: add documentation for media client usage stats
      media: hantro: add per-context fdinfo usage stats

Detlev Casanova (1):
      media: v4l2: Add callback for show_fdinfo

 .../userspace-api/media/drivers/index.rst          |  1 +
 .../media/drivers/media-usage-stats.rst            | 84 ++++++++++++++++++++++
 drivers/media/platform/verisilicon/hantro.h        |  5 ++
 drivers/media/platform/verisilicon/hantro_drv.c    | 22 ++++++
 drivers/media/v4l2-core/v4l2-dev.c                 | 10 +++
 include/media/v4l2-dev.h                           |  1 +
 6 files changed, 123 insertions(+)
---
base-commit: acb7500801e98639f6d8c2d796ed9f64cba83d3a
change-id: 20260610-v4l2-add-fdinfo-a790fceab329

Best regards,
--  
Detlev Casanova <detlev.casanova@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
