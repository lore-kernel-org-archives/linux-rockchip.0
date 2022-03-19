Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F827C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Mar 2022 16:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qYnshwEb1aUH8/FP5Zbl9kRlzoA+pe/w9fG9Gw73kCI=; b=L9FM58Jjuos/t8
	uCxm9x9jU58amCK+wfaRi2nEL6aWCMsIGu+GYRJahoyBdfQV8dUIDflQbesYXnWVdq+bqDItp4Cqr
	R1WrqmfZZ9GDbKDgu02Ft0zlbF0Sae3UA0Qm5NPHzocOLKxlloH+yApn8h4ojWgIwwzlXR1Z3ajdL
	Nvlv9a2kULLLJye0X7flnmOwH8eDbez5YmMrHAgv+UfId5T5YUfHRRVhTnf53XbadeOrqpmU+PfnQ
	VLDiTkEWbnjMgc2SR5mcxQ6IdU1tcSw9KrQAj48N66kptPFbCl+9yb3tVmwe5YuiCvfnuoq5oEaiA
	6Pea2jeYr9ZqTzYtGHwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVbzN-0042nX-4N; Sat, 19 Mar 2022 16:31:37 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVbzG-0042j3-E7
 for linux-rockchip@lists.infradead.org; Sat, 19 Mar 2022 16:31:33 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id CB140492;
 Sat, 19 Mar 2022 17:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647707484;
 bh=VrYbvqWAe/Eera3DAkZG106SJkZ5L3lb7ZQVsyLAMw8=;
 h=From:To:Cc:Subject:Date:From;
 b=Ng2USORh21nxBdq+K57ykLasTzAQVOVYVE1i8FXZYNiCnIGWXFfgMVsGlIblqvOWz
 R65hX7vYfa2/1zZRAINEavMDCjN0Q4LGF5MmdVPt6pfJ+0dFVjenOVdXR8cZpphnPx
 xAXIjiiFqgbiOxBpHL9GKAZnOF0MNocLtCBuSGkM=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v3 00/17] media: rkisp1: Misc bug fixes and cleanups
Date: Sat, 19 Mar 2022 18:30:43 +0200
Message-Id: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_093130_666615_BFD15986 
X-CRM114-Status: GOOD (  12.02  )
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

Patches 01/17 to 07/17 fix issues in the error paths at probe time that
lead to kernel crashes in case of errors. The .remove() path is also
improved as a result.

Patches 08/17 and 09/17 then clean up register definitions, patch 10/17
swaps the arguments to rkisp1_write(), and patch 11/17 simplifies access
to the resizer registers.

Patches 12/17 to 16/17 move on to improving debugfs support, with code
first moved to a separate file (12/17) that can be conditionally
compiled (13/17), support for collecting statistics on the input
interface (14/17, very useful to check if the ISP actually receives
data) and for dumping core and ISP registers (15/17). Patch 16/17
completes that rework by moving the resizer register dumps support to
debugfs too.

Finally, patch 17/17 simplifies the V4L2 querycap implementation on
video nodes.

More fixes and improvements should follow, so I'd like to merge sooner
than latter if possible, to avoid having to rebase large series.

Laurent Pinchart (16):
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

Paul Elder (1):
  media: rkisp1: capture: Bypass the main device for handling querycap

 .../media/platform/rockchip/rkisp1/Makefile   |  18 +-
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 159 ++--
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  18 +-
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 224 ++++++
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  73 +-
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 156 ++--
 .../platform/rockchip/rkisp1/rkisp1-params.c  | 706 +++++++++---------
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 188 +++--
 .../platform/rockchip/rkisp1/rkisp1-resizer.c | 204 ++---
 .../platform/rockchip/rkisp1/rkisp1-stats.c   |  13 +-
 10 files changed, 934 insertions(+), 825 deletions(-)
 create mode 100644 drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c


base-commit: 71e6d0608e4d1b79069990c7dacb3600ced28a3b
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
