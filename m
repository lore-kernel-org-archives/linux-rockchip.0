Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6113FC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 23:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lxe3tm4RRk4SNkNCemfc1aUGvhP28j0xqovHXawRcYo=; b=j7SdVSTmJa+3u/
	QQdATIFqxQrbhv4Aj4E6Q6WsuZgfwyYktLSwj8msUqPYcgHN77lKK2putgMyG/cABcTytwJVcriVZ
	K+lA3Kf4bSDYSIr5bbr3ZENraz9aVSvGoJy49JSSZayOZ6dMAAlg/zwrIoU18gjo7piSdFRQiI9c5
	l1EvtQ8eJZYZvM3wnId+qcandkD4o/Kit1BoLjDqVXffWbjSy/0dyRjZhXTWh1Nso+/mfPhOhgLjz
	u3O5G7Q4kmwzLBy/1N7wgHq4w8FMu6619q6wI2POpL5SZ5kobac3u4Kmm9iQV+wQAVNfkjkMAjMGg
	ZyzF51RAej9sCQwvKfkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhgRo-00FNqE-QW; Thu, 21 Apr 2022 23:42:52 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhgRk-00FNmv-Df
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 23:42:49 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 30C0B492;
 Fri, 22 Apr 2022 01:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650584563;
 bh=pR+vg1LaqxXSnbqazz4jyAJgk6KnrswD0HJPcz8MOFI=;
 h=From:To:Cc:Subject:Date:From;
 b=G4sCTVVchqvwhEYUwpFobIgQJdZe09NaCXyZJ1qJIAe5GOuxcsxlArJ2V65KO4uvE
 4SwD0dW/NqAC5k9xCllXUdzhn3ZUX3F/62G9qwiJiJjErowdTSsA2mTDuTrSLBFa/8
 +FEqDGyBmTGH/yLi1Nknw0wO5Fmz88/TpuR2AgHU=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 00/21] media: rkisp1: Misc bug fixes and cleanups
Date: Fri, 22 Apr 2022 02:42:19 +0300
Message-Id: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_164248_649953_5F8A51F7 
X-CRM114-Status: GOOD (  12.15  )
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

Hello,

This series fixes multiple issues and performs further cleanups for the
rkisp1 driver.

Patches 01/21 to 07/21 fix issues in the error paths at probe time that
lead to kernel crashes in case of errors. The .remove() path is also
improved as a result.

Patches 08/21 and 09/21 then clean up register definitions, patch 10/21
swaps the arguments to rkisp1_write(), and patch 11/21 simplifies access
to the resizer registers.

Patches 12/21 to 18/21 move on to improving debugfs support, with code
first moved to a separate file (12/21) that can be conditionally
compiled (13/21), support for collecting statistics on the input
interface (14/21, very useful to check if the ISP actually receives
data) and for dumping core and ISP registers (15/21). Patch 16/21
continues that rework by moving the resizer register dumps support to
debugfs too, and patch 17/21 consolidates the resizer dumps code with
the core and ISP. Patch 18/21 completes the work by making the register
name length dynamic.

Finally, patch 19/21 simplifies the V4L2 querycap implementation on
video nodes, and patches 20/21 and 21/21 fix alignment and indentation.

More fixes and improvements should follow, so I'd like to merge sooner
than latter if possible, to avoid having to rebase large series.

Laurent Pinchart (20):
  media: rkisp1: capture: Initialize entity before video device
  media: rkisp1: capture: Fix and simplify (un)registration
  media: rkisp1: isp: Fix and simplify (un)registration
  media: rkisp1: resizer: Fix and simplify (un)registration
  media: rkisp1: params: Fix and simplify (un)registration
  media: rkisp1: stats: Simplify (un)registration
  media: rkisp1: Simplify rkisp1_entities_register() error path
  media: rkisp1: regs: Don't use BIT() macro for multi-bit register
    fields
  media: rkisp1: regs: Rename CCL, ICCL and IRCL registers with VI_
    prefix
  media: rkisp1: Swap value and address arguments to rkisp1_write()
  media: rkisp1: resizer: Simplify register access
  media: rkisp1: Move debugfs code to a separate file
  media: rkisp1: Compile debugfs support conditionally
  media: rkisp1: debug: Collect input status by sampling ISP_FLAGS_SHD
  media: rkisp1: debug: Add debugfs files to dump core and ISP registers
  media: rkisp1: debug: Move resizer register dump to debugfs
  media: rkisp1: debug: Consolidate reg dumps for shadow registers
  media: rkisp1: debug: Compute max register length name dynamically
  media: rkisp1: Align macro definitions
  media: rkisp1: Drop parentheses and fix indentation in rkisp1_probe()

Paul Elder (1):
  media: rkisp1: capture: Bypass the main device for handling querycap

 .../media/platform/rockchip/rkisp1/Makefile   |  17 +-
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 159 ++--
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  48 +-
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 225 ++++++
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  79 +-
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 156 ++--
 .../platform/rockchip/rkisp1/rkisp1-params.c  | 705 +++++++++---------
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 190 +++--
 .../platform/rockchip/rkisp1/rkisp1-resizer.c | 204 ++---
 .../platform/rockchip/rkisp1/rkisp1-stats.c   |  13 +-
 10 files changed, 952 insertions(+), 844 deletions(-)
 create mode 100644 drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c

-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
