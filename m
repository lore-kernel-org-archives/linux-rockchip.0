Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D18D7CAC597
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Sep 2025 14:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMFYnT6uvnLGSuNeU5b97ytDNyRpl5bJG6XU4ogGedY=; b=tvhtE6bq6dnHQG
	r+ysMQ+FsRMTi4qDF50G47nz9QQl4W3m6VLhVK40fQWsGnOkxRMOd+iLFZjqbYBteEzmKuvOlV8na
	HwGDxWZHQtBkzklqRAV3anu09x4XZPm3oUwSf6Ky4C3nzint30Kv2VNT3YLmnh5fObFQ0zMV4TU/7
	jMBtc275x0eikXD2Kzf6EYOx8absKwoVVyQg1ahpZR6260b2cvKROE+0k7KToJVCfW6yf+F1/cpdg
	uAOEMsatSJOFW7C+ppX75nx9iirP62P0Usx6A5XhPYyLJ5I/b0rqpbx6v3fH5Mzf2JG+BF/i6k0yh
	+NedCWZqDxMNssVCu+VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyAOG-00000004kYx-0KMF;
	Mon, 15 Sep 2025 14:41:12 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyAOC-00000004kXu-3uJf;
	Mon, 15 Sep 2025 14:41:11 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id A17D36DF;
	Mon, 15 Sep 2025 16:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1757947188;
	bh=UCT0GiCK1YOW+PhYr1Pzbcbe42IkXxQYZBGZKDcKnug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N2q0dBS2ofT7pUa8jiujbAVSOMtx8wdhwtbRZwtFcdSaOZ+MxGhLqK4oh3ntDZ8Ax
	 FsDYMGCxuOsCmtbznoi9p6baEWTAK0Ij6QkkreAai3ITqpYLUHF1TxJbH++gbYj6vJ
	 Ql8gIMnJ/8P6F8rg8UbitM6gzX48+/uUQxj15t/k=
Date: Mon, 15 Sep 2025 17:40:40 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: kernel test robot <lkp@intel.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Keke Li <keke.li@amlogic.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dan Scally <dan.scally@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	oe-kbuild-all@lists.linux.dev, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 5/8] media: v4l2-core: Introduce v4l2-params.c
Message-ID: <20250915144040.GA8821@pendragon.ideasonboard.com>
References: <20250820-extensible-parameters-validation-v4-5-30fe5a99cb1f@ideasonboard.com>
 <202508240704.AZwGXBaw-lkp@intel.com>
 <jhynzoppwi22vnrdzrvqixsbvntsli7sj2vtsxrevtmxluveps@q6yzgvlqmxxb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <jhynzoppwi22vnrdzrvqixsbvntsli7sj2vtsxrevtmxluveps@q6yzgvlqmxxb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_074109_108483_0611CDD9 
X-CRM114-Status: GOOD (  24.05  )
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

On Mon, Sep 15, 2025 at 03:31:58PM +0200, Jacopo Mondi wrote:
> Question for media maintainers...
> 
> I'm not sure how I should better handle this one
> 
> On Sun, Aug 24, 2025 at 07:16:21AM +0800, kernel test robot wrote:
> > Hi Jacopo,
> >
> > kernel test robot noticed the following build errors:
> >
> > [auto build test ERROR on a75b8d198c55e9eb5feb6f6e155496305caba2dc]
> >
> > url:    https://github.com/intel-lab-lkp/linux/commits/Jacopo-Mondi/media-uapi-Introduce-V4L2-extensible-params/20250820-210503
> > base:   a75b8d198c55e9eb5feb6f6e155496305caba2dc
> > patch link:    https://lore.kernel.org/r/20250820-extensible-parameters-validation-v4-5-30fe5a99cb1f%40ideasonboard.com
> > patch subject: [PATCH v4 5/8] media: v4l2-core: Introduce v4l2-params.c
> > config: nios2-randconfig-002-20250824 (https://download.01.org/0day-ci/archive/20250824/202508240704.AZwGXBaw-lkp@intel.com/config)
> > compiler: nios2-linux-gcc (GCC) 9.5.0
> > reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250824/202508240704.AZwGXBaw-lkp@intel.com/reproduce)
> >
> > If you fix the issue in a separate patch/commit (i.e. not just a new version of
> > the same patch/commit), kindly add following tags
> > | Reported-by: kernel test robot <lkp@intel.com>
> > | Closes: https://lore.kernel.org/oe-kbuild-all/202508240704.AZwGXBaw-lkp@intel.com/
> >
> > All errors (new ones prefixed by >>):
> >
> >    nios2-linux-ld: drivers/media/v4l2-core/v4l2-params.o: in function `v4l2_params_buffer_validate':
> >    v4l2-params.c:(.text+0x124): undefined reference to `vb2_plane_vaddr'
> > >> v4l2-params.c:(.text+0x124): relocation truncated to fit: R_NIOS2_CALL26 against `vb2_plane_vaddr'
> 
> Clearly v4l2-params.c (now v4l2-isp.c) depends on VIDEOBUF2_CORE
> 
> Right now v4l2-params.c gets compiled in as part of the
> videodev-objs Makefile target. IOW is not gated by a KConfig option.
> 
> To select (or better, depend) on VIDEOBUF2_CORE I should guard
> v4l2-params.c with a KConfig option so that I can 'depend on
> VIDEOBUF2_CORE'. Drivers that use the v4l2-params.c helper would then
> have to 'select V4L2_PARAMS` (or similar).

Make it V4L2_ISP :-)

> Is this the best approach or are there alternatives I might be missing ?

We don't want VIDEODEV depending on VB2. I think it also makes sense to
have a separate Kconfig option for these helpers, are they will be used
by a small number of drivers.

Make CONFIG_V4L2_ISP an option that drivers select, not depend on.

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
