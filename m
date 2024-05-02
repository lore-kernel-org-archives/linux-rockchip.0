Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21F5CC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 16:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCZC3nYG3P4ZjrB+fwI2tlavFEjHH31m5Xi4GKNlo6M=; b=T3+ZQvjatd4f/o
	SjikPyla5i7dJtQ+TtRAtEgh4RhHYMJaDFJ9BVIoCeG/SbMPsvrK9+/3p6vfZ4MkKNEaY2EspLrOL
	OyPgQDMFFijnBURXUas3OfS0klBo23hPkx5gwUcldDZ+3cztGp2evXohTaPokUSuBFRu+9Ib42wCa
	7rt2IKrWD4/DUg1PNAOs9JOY9pGXvRpiWm31evJccmVVUtBAjnZLFrxkWeHrunMZTQa9ErWiMnTZ/
	JFjtkMTfdRn18HKLHMkBBCK+m/dv25fjMCU4oj4t35RoRFw0InuZtmMTpOM4Nkubqh53WAdgo8Hpv
	Wp+H3/5BrIHG14lIqqCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Ysm-0000000DDBu-14PS;
	Thu, 02 May 2024 16:02:04 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Ysi-0000000DDAa-3gXw;
	Thu, 02 May 2024 16:02:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1714665721; x=1746201721;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ObIQatXLy+J9dMb/aQHo04fdKZEbIx2wJbwo8cGX7+4=;
  b=mwL++sxinDUymAJ06oY5QLrwS3N8Fpat9YNjyMmPkX8bDY4pgvGMdNyd
   nwKZskA8sSFM2GYVxPAGrdzUCZFmoR6c4uWzgRJMn2p/chS8DnxhqnapO
   3g4oI76c6jK+QNmhWJ4+7BxlZMtumVgYcJEBeEJJYzyYLMbM/GvI9ivkr
   Xy7LV6GhGrNw52mSYTxTDcU8xtH1ygd8gca+RiRUK1Uqqx/38wn4AJE3A
   wk9eSSxo+ZERzAIjFmVoRQQXvl1Bxh6sxr/bvrjVpUkE1eSMgdMt69dbd
   EWxdaNdN8sFF4EP+FSl0uXGTkP2M6t9qUFwjoMjWV6DDM4/Hc+KAhZex0
   Q==;
X-CSE-ConnectionGUID: 152FvhclStSFqzcV+ct3DA==
X-CSE-MsgGUID: 6+2Ee3clS2ubN4CzLK/Srw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="14249288"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; 
   d="scan'208";a="14249288"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 May 2024 09:01:59 -0700
X-CSE-ConnectionGUID: a1kHzcGiQIqF5NJN93SlPw==
X-CSE-MsgGUID: 2oXSiKsHT2ynxvhMlUTPFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; 
   d="scan'208";a="31831340"
Received: from turnipsi.fi.intel.com (HELO kekkonen.fi.intel.com) ([10.237.72.44])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 May 2024 09:01:48 -0700
Received: from kekkonen.localdomain (localhost [127.0.0.1])
	by kekkonen.fi.intel.com (Postfix) with SMTP id 1C4E111FA94;
	Thu,  2 May 2024 19:01:45 +0300 (EEST)
Date: Thu, 2 May 2024 16:01:45 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Julien Massot <julien.massot@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Sylvain Petinot <sylvain.petinot@foss.st.com>,
	Yong Zhi <yong.zhi@intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
	Dan Scally <djrscally@gmail.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Eugen Hristev <eugen.hristev@collabora.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Maxime Ripard <mripard@kernel.org>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Martin Kepplinger <martink@posteo.de>,
	Purism Kernel Team <kernel@puri.sm>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Hugues Fruchet <hugues.fruchet@foss.st.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Yong Deng <yong.deng@magewell.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Benoit Parrot <bparrot@ti.com>, Jai Luthra <j-luthra@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Michal Simek <michal.simek@amd.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev, linux-staging@lists.linux.dev,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 0/2] Introduce v4l2_async_nf_unregister_cleanup
Message-ID: <ZjO46Uo_tVcRTdA0@kekkonen.localdomain>
References: <20240502-master-v1-0-8bd109c6a3ba@collabora.com>
 <20240502155626.GD15807@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240502155626.GD15807@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_090201_138186_0E91D74B 
X-CRM114-Status: GOOD (  24.60  )
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

Hi Laurent,

On Thu, May 02, 2024 at 06:56:26PM +0300, Laurent Pinchart wrote:
> Hi Julien,
> 
> On Thu, May 02, 2024 at 05:22:20PM +0200, Julien Massot wrote:
> > Many drivers has
> >   v4l2_async_nf_unregister(&notifier);
> >   v4l2_async_nf_cleanup(&notifier);
> > 
> > Introduce a helper function to call both functions in one line.
> 
> Does this really go in the right direction ? For other objects (video
> devices, media devices, ...), the unregistration should be done at
> .remove() time, and the cleanup at .release() time (the operation called
> when the last reference to the object is released). This is needed to
> ensure proper lifetime management of the objects, and avoid a
> use-after-free for objects that can be reached from userspace.
> 
> It could be argued that the notifier isn't exposed to userspace, but can
> we guarantee that no driver will have a need to access the notifier in a
> code path triggered by a userspace operation ? I think it would be safer
> to adopt the same split for the nofifier unregistration and cleanup. In
> my opinion using the same rule across different APIs also make it easier
> for driver authors and for reviewers to get it right.
> 
> As shown by your series, lots of drivers call v4l2_async_nf_cleanup()
> and .remove() time instead of .release(). That's because most drivers
> get lifetime management wrong and don't even implement .release().
> That's something Sakari is addressing with ongoing work. This patch
> series seems to go in the opposite direction.

This still avoids the driver authors feeling they need to implement wrapper
functions for v4l2_async_nf_{unregister,cleanup}. I'd be in favour merging
this.

I don't see this getting in the way of adding use counts as the code will
need to be changed in any case.

-- 
Regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
