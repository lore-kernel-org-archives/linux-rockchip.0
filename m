Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C394C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 14:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gp1Kb41jcI5Rw4avkd1Xvxbggo0t7iF9X6ZI/VGQKM4=; b=2pb5VbYkqkIAix
	Id2tVNul65mRHEEzdKOKoIYLStAeZ3cUSX3+irLTd445QdLqkEWo08UfToleMkOauU7RXCmZDcDnG
	9lUqVyvtUqO+tmMokWQ8F3TNTLnMxmETn4NbmzWDWhijWuT6fJNephAfBAJe6IU1Sc/07lpUYsvGQ
	Ruresn+In2cIBAZQKEZf5PBkv10+nNq5CoeYgU85yVzho5ytILjVzWEvFmUE9Bazo9WCVwqIWm34H
	VnSy8hHeKZo6hWwz2ZdpufEG1/Af6WKeWaZS3CVq/NSeKhYGfv9Z3tU0zAJ5Oko4FneI3uGk4Sr/x
	Jia+uxir3CEEyWyltMlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1U9w-00EyqX-Qg; Wed, 15 Jun 2022 14:38:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1U9t-00Eyoh-94
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 14:38:14 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 58D0D5A9;
	Wed, 15 Jun 2022 16:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655303886;
	bh=0EpIzqHqqSnkByYS6l8lemBHSW4NPMYxO1kLR5xNbxs=;
	h=Date:From:To:Cc:Subject:From;
	b=j5G0lgYUMd98V83w+JtfxRjGadqmkjxtRln249IPBYkNopHoWBZJeF2QIgVt7HAN6
	 CAM/M5D5vJtV7fDhUJJuSQsdQE29/3gPL1kr8VIxvhcGvVrJS6ReOq2H7zJx5s352g
	 kLcOsK6VcVbsmVitDUwXbrAhH55nKLSmK7iYQN+U=
Date: Wed, 15 Jun 2022 17:37:56 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>, Tomasz Figa <tfiga@google.com>,
	linux-rockchip@lists.infradead.org
Subject: [GIT PULL FOR v5.20] rkisp1 misc fixes and improvements
Message-ID: <YqnuxKlNjA0AaIAR@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_073813_515457_ABB2256B 
X-CRM114-Status: UNSURE (   7.59  )
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

Hi Mauro,

The following changes since commit f2906aa863381afb0015a9eb7fefad885d4e5a56:

  Linux 5.19-rc1 (2022-06-05 17:18:54 -0700)

are available in the Git repository at:

  git://linuxtv.org/pinchartl/media.git tags/imx-next-20220615

for you to fetch changes up to 4d846800b527933a46ffd5ff48b87f5a03ca087a:

  media: rkisp1: Drop parentheses and fix indentation in rkisp1_probe() (2022-06-15 16:51:44 +0300)

----------------------------------------------------------------
rkisp1 misc bug fixes and cleanups

----------------------------------------------------------------
Laurent Pinchart (20):
      media: rkisp1: capture: Initialize entity before video device
      media: rkisp1: capture: Fix and simplify (un)registration
      media: rkisp1: isp: Fix and simplify (un)registration
      media: rkisp1: resizer: Fix and simplify (un)registration
      media: rkisp1: params: Fix and simplify (un)registration
      media: rkisp1: stats: Simplify (un)registration
      media: rkisp1: Simplify rkisp1_entities_register() error path
      media: rkisp1: regs: Don't use BIT() macro for multi-bit register fields
      media: rkisp1: regs: Rename CCL, ICCL and IRCL registers with VI_ prefix
      media: rkisp1: Swap value and address arguments to rkisp1_write()
      media: rkisp1: resizer: Simplify register access
      media: rkisp1: Move debugfs code to a separate file
      media: rkisp1: Compile debugfs support conditionally
      media: rkisp1: debug: Collect input status by sampling ISP_FLAGS_SHD
      media: rkisp1: debug: Add debugfs files to dump core and ISP registers
      media: rkisp1: debug: Move resizer register dump to debugfs
      media: rkisp1: debug: Consolidate reg dumps for shadow registers
      media: rkisp1: debug: Update max register name length
      media: rkisp1: Align macro definitions
      media: rkisp1: Drop parentheses and fix indentation in rkisp1_probe()

Paul Elder (1):
      media: rkisp1: capture: Bypass the main device for handling querycap

 drivers/media/platform/rockchip/rkisp1/Makefile    |  17 +-
 .../platform/rockchip/rkisp1/rkisp1-capture.c      | 159 +++--
 .../media/platform/rockchip/rkisp1/rkisp1-common.h |  48 +-
 .../media/platform/rockchip/rkisp1/rkisp1-debug.c  | 222 +++++++
 .../media/platform/rockchip/rkisp1/rkisp1-dev.c    |  79 +--
 .../media/platform/rockchip/rkisp1/rkisp1-isp.c    | 156 ++---
 .../media/platform/rockchip/rkisp1/rkisp1-params.c | 705 +++++++++++----------
 .../media/platform/rockchip/rkisp1/rkisp1-regs.h   | 190 +++---
 .../platform/rockchip/rkisp1/rkisp1-resizer.c      | 204 ++----
 .../media/platform/rockchip/rkisp1/rkisp1-stats.c  |  13 +-
 10 files changed, 949 insertions(+), 844 deletions(-)
 create mode 100644 drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
