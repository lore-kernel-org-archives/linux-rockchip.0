Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CBEDC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 16:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONruFw4ZLmZGlls/JFqTfLSnQrMilJCScxv5sUQHLVY=; b=qWh/fhmCpYwkoO
	09/wN5QJPfvwXru3E6NgF3BdhiaxNTupHcIIBbyP3Tm0Is0oQTBgdZfay0Rk8jTr8qQkQmmgRj/M6
	vwbg1aLgLEc+MVGCBFPayP2Vg02h9CZXM+/dtuWHmIicWKOPDPEl2Qj5CFQ/FYwZrx9ky0Q2Jc1af
	nLmk0GnaihYsBZVOe8C3uxn0Uj/geuK2i+0nqLJFeYo5Pvm18JRL5ExD7vy0Ag4IcnLHnCUx52Onh
	iWWtjrW29ehNCjFhNli+jq1e7OkSZyR1f3pYWGoYQ/evwlv0Cs0s9r4eciT9BRbwp5N81+/1yUGY+
	MLeTkMMstkVrDC+uXhNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YzD-0000000DEdn-1wH5;
	Thu, 02 May 2024 16:08:43 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Yz8-0000000DEcc-38l4;
	Thu, 02 May 2024 16:08:40 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 50D974D4;
	Thu,  2 May 2024 18:07:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1714666059;
	bh=1zxbeK2Vc5xzfg9ivasxN0Y8bxeQt6RGSMFz/qIJEB0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sp++7kuIo7u0MWn92GCxF9L94GCFpxrJwg8v0jK9FWCLWTQXiLcmGPrhGhzZkfM7E
	 637vea6WUMWJ4A5o8RWfMKEhzyGsgm4Z3MNtZDwDfy83U9wUHOM0plYnky+y+NlbYU
	 ozCC8vCzQXC5O9dQNjVpuQnijTzGK8LEvmClhovE=
Date: Thu, 2 May 2024 19:08:30 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Julien Massot <julien.massot@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
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
Message-ID: <20240502160830.GB11443@pendragon.ideasonboard.com>
References: <20240502-master-v1-0-8bd109c6a3ba@collabora.com>
 <20240502155626.GD15807@pendragon.ideasonboard.com>
 <ZjO46Uo_tVcRTdA0@kekkonen.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZjO46Uo_tVcRTdA0@kekkonen.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_090839_090369_B6B8AED6 
X-CRM114-Status: GOOD (  28.92  )
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

On Thu, May 02, 2024 at 04:01:45PM +0000, Sakari Ailus wrote:
> On Thu, May 02, 2024 at 06:56:26PM +0300, Laurent Pinchart wrote:
> > On Thu, May 02, 2024 at 05:22:20PM +0200, Julien Massot wrote:
> > > Many drivers has
> > >   v4l2_async_nf_unregister(&notifier);
> > >   v4l2_async_nf_cleanup(&notifier);
> > > 
> > > Introduce a helper function to call both functions in one line.
> > 
> > Does this really go in the right direction ? For other objects (video
> > devices, media devices, ...), the unregistration should be done at
> > .remove() time, and the cleanup at .release() time (the operation called
> > when the last reference to the object is released). This is needed to
> > ensure proper lifetime management of the objects, and avoid a
> > use-after-free for objects that can be reached from userspace.
> > 
> > It could be argued that the notifier isn't exposed to userspace, but can
> > we guarantee that no driver will have a need to access the notifier in a
> > code path triggered by a userspace operation ? I think it would be safer
> > to adopt the same split for the nofifier unregistration and cleanup. In
> > my opinion using the same rule across different APIs also make it easier
> > for driver authors and for reviewers to get it right.
> > 
> > As shown by your series, lots of drivers call v4l2_async_nf_cleanup()
> > and .remove() time instead of .release(). That's because most drivers
> > get lifetime management wrong and don't even implement .release().
> > That's something Sakari is addressing with ongoing work. This patch
> > series seems to go in the opposite direction.
> 
> This still avoids the driver authors feeling they need to implement wrapper
> functions for v4l2_async_nf_{unregister,cleanup}. I'd be in favour merging
> this.
> 
> I don't see this getting in the way of adding use counts as the code will
> need to be changed in any case.

Fixing the lifetime issues would essentially revert 2/2 and move the
v4l2_async_nf_cleanup() call to .remove(). I don't think providing a
helper that forces the cleanup at .remove() time is a good idea, it
gives a false sense of doing things right to drivers. This is the same
reason why devm_kzalloc() is so harmful, it gave the wrong message, and
created (or participated in) all those lifetime issues.

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
