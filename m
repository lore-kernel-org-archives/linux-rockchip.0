Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FBFDC38145
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 10:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEJ2BQnMV3nLxgN7ANNrG3A/wM+cJfZcO3twLOrU2Po=; b=po7z3zfaS1zmWt
	dH/4jH7uRvB48oIBF1HHOnPm8859sCpLeHvzval5YTNnk0DDUzDtRcjipBHy7FgwSl4Io4OEq3a6b
	6FvUQzvcIIax2dQZJ+NOluclZY1m/TLV8B0/3vXGPmM1Ry16+o+xMe2ijanhWd6WY33+DMZ8GA5F9
	CdSMNKjW2YbVqbtMUD9mYPPjBx61AF4XZ4yx9YDqHNpCtWJvMkkDqidRQiekT/KpQrdvBXrsZtGzT
	4Vq6b2zT93T78DgfVWWHtn/HC+mmge08dOAQKWubFoNR4Bmdi3Vcz/ri5VVwu81eSmxcxZYNXENm3
	tziTAwvNka7CafU2Diwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU3aG-0038tH-IC; Fri, 02 Sep 2022 10:07:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU3aD-0038mA-7s
	for linux-rockchip@lists.infradead.org; Fri, 02 Sep 2022 10:07:31 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 618934A8;
	Fri,  2 Sep 2022 12:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1662113241;
	bh=0s6hXaaMR3nFS1KsG9idWtYzbofRcsnb0Rh6EL3VXDw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lEjLTShXJ9nIhjbWXMt6DYUAT7qTK7V7nR4YNe97Dbsl7ZVLH6x2Fu/D9aL3nhFaa
	 qPNDgj3WaQs6DgGj/5j+HFDumRJ/GGjMM+xd02LWbx+pEWlaWn0Ix75SpC7BALeHMH
	 VxbyHgwrFgXXZWXYGebGBDxTivVmEOx3COutbA1A=
Date: Fri, 2 Sep 2022 13:07:09 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 0/5] media: rkisp1: Fix LSC initial configuration on
 i.MX8MP
Message-ID: <YxHVzTIIiTZ80/xl@pendragon.ideasonboard.com>
References: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
 <20220902090704.crddbkvmguvezyiy@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220902090704.crddbkvmguvezyiy@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_030729_479333_8532A50B 
X-CRM114-Status: GOOD (  23.85  )
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

Hi Dafna,

On Fri, Sep 02, 2022 at 12:07:04PM +0300, Dafna Hirschfeld wrote:
> On 17.08.2022 05:18, Laurent Pinchart wrote:
> > Hello,
> > 
> > This patch series fixes the Lens Shading Correction initial
> > configuration on the i.MX8MP.
> > 
> > The i.MX8MP integrates an ISP8000Nano v18.02, which unlike other
> > versions currently supported by the driver, gates access to the LSC RAM
> > with the ISP_CTRL.ISP_ENABLE bit. The initial LSC configuration being
> > performed before the ISP gets enabled, the writes to the RAM are
> > ignored, leading to incorrect results.
> > 
> > The series starts with four small drive-by cleanups of the LSC code, and
> > patch 5/5 then fixes the issue. I'm not totally thrilled by the code
> > architecture, but I'm not sure why, and I have a feeling doing better
> > would require a large refactoring of the ISP parameters handling. If
> > anyone sees an option for a better implementation, please say so.
> > 
> > The series is based on top of "[PATCH 0/7] media: rkisp1: Fix and
> > improve color space support" ([1]). Reviews for that base series would
> > thus be appreciated too.
> > 
> > [1] https://lore.kernel.org/linux-media/20220815065235.23797-1-laurent.pinchart@ideasonboard.com
> 
> Hi, I see that the series is also based on "[PATCH v2 00/55] media: rkisp1: Cleanups and add support"
> right? I could not apply patch 5/5 because it seems to sit on top of
> '[PATCH v2 49/55] media: rkisp1: Configure gasket on i.MX8MP'
> Do you have a branch you can share with all the sets?

Sure. You can find all pending patches for the rkisp1 at
https://gitlab.com/ideasonboard/nxp/linux/-/tree/pinchartl/v6.0/isp.
Commits up to and including "media: rkisp1: Zero v4l2_subdev_format
fields in when validating links" are candidates for v6.1, commits
starting at "dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible"
need some more work.

> > Laurent Pinchart (5):
> >   media: rkisp1: Clean up LSC configuration code
> >   media: rkisp1: Store LSC register values in u32 variables
> >   media: rkisp1: Simplify LSC x/y size and grad register macros
> >   media: rkisp1: Use RKISP1_CIF_ISP_LSC_GRAD_SIZE() for gradient
> >     registers
> >   media: rkisp1: Configure LSC after enabling the ISP
> > 
> >  .../platform/rockchip/rkisp1/rkisp1-common.h  |  29 +-
> >  .../platform/rockchip/rkisp1/rkisp1-isp.c     |   9 +-
> >  .../platform/rockchip/rkisp1/rkisp1-params.c  | 378 ++++++++++--------
> >  .../platform/rockchip/rkisp1/rkisp1-regs.h    |  20 +-
> >  4 files changed, 239 insertions(+), 197 deletions(-)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
