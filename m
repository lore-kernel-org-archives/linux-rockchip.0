Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D248C10DC3
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 14:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdU6sdjGi4QfYUMO7HF/4GXY8KwSg/gNQs3tADeFOdI=; b=Hg8wB/R0zFlvD6
	G00522K4BPYS52KrSmEyWFwkaJJx6otS9oP73V9ilK4s/85t6sBRKBCfPlYzSyG7Wo+jCJW4fQy2N
	lYcp8ctWrrKpxEPkpIzfF60V4gPenp0fhFHT6YEqH8EbOC8o5mVJRmMS+ieznlzNGAbyMX8BQY+uE
	aD+LpBilRbovyTugaVjWi7/yEnujot9TwTbWDtDQM5in+8XuCOJe4Fx9H1hA9B8dCd6LRz76rSfU/
	M3DLMD31J1lSSTGdYaMkNPRsBw/PmoMxJ4JBpb6pimeEKIaUR0g5vGf+GGsSGXHCJ0elqFZdpHhKF
	YKvUpWKvKRlag9JeC0aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBFim-00D4cg-2u;
	Thu, 07 Dec 2023 14:51:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBFik-00D4b4-0b
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Dec 2023 14:51:23 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 930ED669;
	Thu,  7 Dec 2023 15:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701960639;
	bh=mmIkfVQc68N7JNAoTaRx+5k1CZ6tmq9+BC7ujGbLecQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aCgRpH77mR7UtKnvDAQOpecUIDW09gbrBDTIQtXK9MY9OJjDm2ew2SPq3rDh947tJ
	 TEUCZhbLOzewpl/rHEVyZXV9t8hlauqH2BMe7IkXa5hvBk1LByS/GPOX1tir8DGE4z
	 kWQW3vhdyrL87BbLtFQYANHNgLkPTj68n/woZvJw=
Date: Thu, 7 Dec 2023 16:51:27 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	kieran.bingham@ideasonboard.com, tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com
Subject: Re: [PATCH v2 0/4] media: rkisp1: Misc fixes and debug
Message-ID: <20231207145127.GB17373@pendragon.ideasonboard.com>
References: <20231201140433.2126011-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231201140433.2126011-1-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_065122_386669_38996055 
X-CRM114-Status: GOOD (  11.96  )
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

Hi Paul,

Thank you for the patches.

On Fri, Dec 01, 2023 at 11:04:29PM +0900, Paul Elder wrote:
> This series adds a small cleanup of the register definitions, as well as
> some additions to the debug for the rkisp1 driver.
> 
> Paul Elder (4):
>   media: rkisp1: regs: Consolidate MI interrupt wrap fields
>   media: rkisp1: debug: Add register dump for IS
>   media: rkisp1: debug: Count completed frame interrupts
>   media: rkisp1: debug: Consolidate counter debugfs files

I'll take patch 1/4 to 3/4 in my tree already, while the discussion on
4/4 continues. Please let me know if you would rather have me wait.

>  .../platform/rockchip/rkisp1/rkisp1-capture.c |  2 +
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  5 ++
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 71 +++++++++++++------
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     |  2 +
>  .../platform/rockchip/rkisp1/rkisp1-regs.h    |  9 +--
>  5 files changed, 60 insertions(+), 29 deletions(-)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
