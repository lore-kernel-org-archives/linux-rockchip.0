Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07549C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 16:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qwCOJfKpL81ClXnM3XH5K0JtzXFwN4EVD7FyvlMAw4w=; b=Sww/Y3pVP4y+m2
	Y+isQBw5xXKeMUFt6oc0WBj5Sj4sPBUW0B2ChfO4EUR1QKObHNXvxDH6stVAZgFvOKkpg41EHu/HD
	z7NLnSjKxYe+P92kinFtfjtQBznwD9ga9ZSKVOvHSB9HiPmyVW/iDm+79Fn5wvlHRBJKmJIy0HPGD
	BoTKLVVx5uHp+0NxTBpVMTTKiCZNYuUC1KBa3fvuuqRofETFPIstl7Yt9m+B1gAiENpND6GLkfriq
	o7/LOm07WJPAvwNCo1iAfPxDM1Yy05/YT6nR9HdmeN9TDVScQOulN+oph0b48tZzFhdKJEsXDXHEc
	sH83SvbC09ULrTvLMm4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOLzP-009dA5-JQ; Sun, 27 Feb 2022 16:01:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOLzM-009d7n-KI
 for linux-rockchip@lists.infradead.org; Sun, 27 Feb 2022 16:01:38 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C63DC47C;
 Sun, 27 Feb 2022 17:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1645977691;
 bh=v4T9IOGPNq/bMSxFyn2Excl8+QKXlLWewW+LbrftO1g=;
 h=From:To:Cc:Subject:Date:From;
 b=OfnqGGn5K6CkIejOykcFaYVO4crFA2xEwfPtf1ypu+/UPzd2J1zk+vRbZ41QfgBTm
 yTshE3br1VdkBxng51yaAUVJM3heW+vfXF1d/eD5weO4UZirf+22o7YS13ldTDJZVT
 nyheIaOlXZh8i+AgtqyD6hTS5Omxc+E4hoU7vWI8=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 00/16] media: rkisp1: Misc bug fixes and cleanups
Date: Sun, 27 Feb 2022 18:01:00 +0200
Message-Id: <20220227160116.18556-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_080136_881502_F34021F6 
X-CRM114-Status: GOOD (  11.91  )
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

Patches 01/16 to 07/16 fix issues in the error paths at probe time that
lead to kernel crashes in case of errors. The .remove() path is also
improved as a result.

Patches 08/16 and 09/16 then clean up register definitions, and patch
10/16 simplifies access to the resizer registers.

Patches 11/16 to 15/16 move on to improving debugfs support, with code
first moved to a separate file (11/16) that can be conditionally
compiled (12/16), support for collecting statistics on the input
interface (13/16, very useful to check if the ISP actually receives
data) and for dumping core and ISP registers (14/16). Patch 15/16
completes that rework by moving the resizer register dumps support to
debugfs too.

Finally, patch 16/16 simplifies the V4L2 querycap implementation on
video nodes.

More fixes and improvements should follow, so I'd like to merge sooner
than latter if possible, to avoid having to rebase large series.

Laurent Pinchart (15):
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
  media: rkisp1: resizer: Simplify register access
  media: rkisp1: Move debugfs code to a separate file
  media: rkisp1: Compile debugfs support conditionally
  media: rkisp1: debug: Collect input status by sampling ISP_FLAGS_SHD
  media: rkisp1: debug: Add debugfs files to dump core and ISP registers
  media: rkisp1: debug: Move resizer register dump to debugfs

Paul Elder (1):
  media: rkisp1: capture: Bypass the main device for handling querycap

 .../media/platform/rockchip/rkisp1/Makefile   |  18 +-
 .../platform/rockchip/rkisp1/rkisp1-capture.c |  52 ++---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  16 ++
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 209 ++++++++++++++++++
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  73 ++----
 .../platform/rockchip/rkisp1/rkisp1-isp.c     |  39 ++--
 .../platform/rockchip/rkisp1/rkisp1-params.c  |  23 +-
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 188 ++++++++--------
 .../platform/rockchip/rkisp1/rkisp1-resizer.c | 192 ++++------------
 .../platform/rockchip/rkisp1/rkisp1-stats.c   |  11 +-
 10 files changed, 464 insertions(+), 357 deletions(-)
 create mode 100644 drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c

-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
