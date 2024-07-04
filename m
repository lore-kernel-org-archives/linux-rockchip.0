Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A5FAC3271E
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 15:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kaz8un3TC8HMyVfeika8K6mBv7Zopqrm0/a2b9xs//E=; b=lGBqCC3hi30msm
	YWlmTooAR9oCjSXHLO+JvBUqsHdx1oJ2RGRYvv45M6CTdxiiHnbtl+CBy2TnRPdYdXbRiBl19etu3
	D8Zjlm/VfQFPkKbDtDeH9yMvveMa4tHf/+Z5TDDxtJldq5phDmE+yU32qVGfxwWqy5uaKJUPgXoAw
	1VZv6Xk/M+8oOzTb1t/N+XUvbMb590f5OftflqQQTpFsw8AULk+DiXs7jY2MGEEqPvS38+UTL3ajl
	BRsIkg8t2Uk+jpJlQQIwPYTPaCbPKdDLXCbIHJA0oJeogFH95tHqJiscyjtRcP7poCQucIcjR943f
	KTRBNBM72ip7JbCSE8zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOid-0000000DkYz-1s8A;
	Thu, 04 Jul 2024 15:49:59 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOia-0000000DkWv-18iF
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 15:49:58 +0000
Received: from pendragon.ideasonboard.com (117.145-247-81.adsl-dyn.isp.belgacom.be [81.247.145.117])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2124B502;
	Thu,  4 Jul 2024 17:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1720108165;
	bh=bga54ShtX80dKpbhHelOs80UZt/O8/1NiGzrdUI5LEY=;
	h=From:To:Cc:Subject:Date:From;
	b=uWOCZWRwVL3/83DVscOHRWiw892L/CKujh3zTNp6WpNT66GCaOk7kiIQEOsx+zr8u
	 6l+8Yi2CmDtxFDuopvlMIyEJwKkGzBwv5e1OrNqTzRZquj6jXwZCbPwBEEa2r9d+pf
	 Ovk953rDteZlHvQsfjo6xI4HH97RXSUciP2Wgx3Q=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/5] media: rkisp1: Add support for the companding block
Date: Thu,  4 Jul 2024 18:49:27 +0300
Message-ID: <20240704154932.6686-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_084956_489664_F131DC24 
X-CRM114-Status: GOOD (  14.42  )
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

Hello,

This patch series extends the rkisp1 driver to add support for the ISP's
companding block.

The companding block is an ISP processing block located at the front of
the processing pipeline that performs data expansion, black level
subtraction and data compression. It is found in the ISP8000Nano on the
i.MX8MP, and not present in Rockchip versions of the ISP, that implement
BLS in a dedicated block (not present in the ISP8000Nano) already
supported by the driver.

The first two patches start with preparatory work. Patch 1/5 refactors
existing duplicate code to share a common function, that will also be
used later in this series. Patch 2/5 then improves the ISP parameters
extensible format handler by making it possible to condition support for
particular ISP blocks based on device features.

Support for the companding block follows in the next three patches.
Patch 3/5 adds macros for the companding block registers, and patch 4/5
adds feature flags to differentiate between the dedicated BLS block and
the companding block. Finally, patch 5/5 adds support for the companding
block in the ISP parameters.

The series is based on Jacopo's support for extensible parameters in the
rkisp1 driver ("[PATCH v5 0/7] media: rkisp1: Implement support for
extensible parameters", see [1]). Thanks to that work, adding support
for a new ISP block in a backward compatible way is easy. I have pushed
a branch to [2] that includes all the dependencies, on top of the media
stage master branch.

[1] https://lore.kernel.org/r/20240703161048.247124-1-jacopo.mondi@ideasonboard.com
[2] https://git.kernel.org/pub/scm/linux/kernel/git/pinchartl/linux.git/log/?h=next/media/rkisp1

Laurent Pinchart (2):
  media: rkisp1: Add helper function to swap colour channels
  media: rkisp1: Add features mask to extensible block handlers

Paul Elder (3):
  media: rkisp1: Add register definitions for the companding block
  media: rkisp1: Add feature flags for BLS and compand
  media: rkisp1: Add support for the companding block

 .../platform/rockchip/rkisp1/rkisp1-common.c  |  14 +
 .../platform/rockchip/rkisp1/rkisp1-common.h  |   7 +
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |   9 +-
 .../platform/rockchip/rkisp1/rkisp1-params.c  | 243 ++++++++++++++----
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  23 ++
 .../platform/rockchip/rkisp1/rkisp1-stats.c   |  51 +---
 include/uapi/linux/rkisp1-config.h            |  89 ++++++-
 7 files changed, 348 insertions(+), 88 deletions(-)


base-commit: 06d29a973fc1d19dc5d3337565b83e83344c14ea
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
