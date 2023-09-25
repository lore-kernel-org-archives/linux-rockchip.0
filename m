Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4405ACE7A91
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 00:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A9STDDrp3eG1UVOgERy8feVX1/ZQG2tJPMZX3maE7pw=; b=E28WEcko8cY3N5
	QIvV7wZxL5IHO+35abJfX8GFohgRuRbKs01HJPdOOghr0pi6CUnlx82ikwfTzB5TB4AuMNElS/k0w
	liM2Y8PW7AYIyHbIvDJ436zXPdgq5VuC2M4SzJCECo+PELx3tfxsyPmhQ0LW4rPRBUsE3EyFyHWSZ
	HA2pyRajEhMHyqGpAgQuq1TdVd2W85LERW32Jm2IYKinZBXI24DZnFO/a5STKxVdSztFUhINP4DFC
	PX7B0dvU9iiC4rwYCTclL7gd4afBUbDgbBhKMGmDujSq15v/LXcmpHJkKqiAyHVC78990XccIf5+/
	rawkURxmENa7BslKIAmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZex-00D1vU-1K;
	Mon, 25 Sep 2023 00:41:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZeq-00D1rg-21
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 00:41:09 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D78202CF;
	Mon, 25 Sep 2023 02:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695602362;
	bh=h9MwXR9aIweSLTl17OYz5+jTiUJjosYThz5TOWQ9bJM=;
	h=From:To:Cc:Subject:Date:From;
	b=ZMm2+PNBBmH5eRFXZbhoK12Z7+pwMxFmh6zCsGr1DqGfdF7gj0ikkFlu7eBUY8Wkv
	 5tSdd7Llm4WjdpjNXhLCoEOwx+cgC4oVVto+6Ci7NQV4+R/5hkr4CiHXo3CrpaDTco
	 9FJNT1Rp9HSUCiRMWIkw9T13xQVuKyIaKcilY1Wo=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 00/14] media: rkisp1: Various cleanups and fixes
Date: Mon, 25 Sep 2023 03:40:58 +0300
Message-ID: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_174104_815377_7079B3E4 
X-CRM114-Status: GOOD (  12.55  )
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

This patch series performs various cleanups in the rkisp1 driver and
fixes two issues.

The series starts in 01/14 with an update to MAINTAINERS to add myself
as a co-maintainer for the driver. I have authored most of the changes
to the rkisp1 driver in the recent past and plan to keep improving the
code base (including upstreaming i.MX8MP support), and I'd like to be
CC'ed on patches.

I have named the series v2 as it contains the second version of the
conversion to the V4L2 subdev active state in patches 02/14 to 04/14.
The remaining of the series is new. Patches 05/15 and 06/14 are two
small cleanups, and patch 07/14 is the first fix, for the line stride
calculation. Patches 08/14 to 13/14 continue with small cleanups, and
patch 14/14 finally fixes the resizer configuration when upscaling
vertically by a factor of 2.

I have successfully tested this series on a RK339 (Rock Pi 4), as well
as an i.MX8MP (Debix) with a few additional patches.

Laurent Pinchart (14):
  MAINTAINERS: Add co-maintainer for the rkisp1 driver
  media: rkisp1: resizer: Use V4L2 subdev active state
  media: rkisp1: isp: Use V4L2 subdev active state
  media: rkisp1: csi: Use V4L2 subdev active state
  media: rkisp1: Convert hex constants to lowercase
  media: rkisp1: Constify rkisp1_v12_params_ops
  media: rkisp1: Fix line stride calculation
  media: rkisp1: Remove dual crop control register from config structure
  media: rkisp1: Program RKISP1_CIF_MI_SP_Y_PIC_SIZE register
  media: rkisp1: resizer: Constify argument and local variables
  media: rkisp1: resizer: Use v4l2_area instead of v4l2_rect to store
    size
  media: rkisp1: resizer: Drop unneeded local variable
  media: rkisp1: resizer: Improve debug message when configuring resizer
  media: rkisp1: resizer: Fix resizer disable check when starting stream

 MAINTAINERS                                   |   1 +
 .../platform/rockchip/rkisp1/rkisp1-capture.c |  24 +-
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  18 -
 .../platform/rockchip/rkisp1/rkisp1-csi.c     | 107 +--
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 263 +++-----
 .../platform/rockchip/rkisp1/rkisp1-params.c  |   4 +-
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 618 +++++++++---------
 .../platform/rockchip/rkisp1/rkisp1-resizer.c | 255 +++-----
 8 files changed, 564 insertions(+), 726 deletions(-)

-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
