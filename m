Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59F89C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 11:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kcfaxh3OvWjgDIX5ilFaXU8xZOsFHt1wV4/+uUnDUkw=; b=eJ6YV6Uacxaaw2
	KFWVxJtkn7eJ8LLJOEV+4yADPSznSMvdlZCpIsavay9U/BerM63U8A5V7pANm7g6TVS8rDppDIJVU
	U3hDpiz5MApmHwVLJOFfbtPJLQVo4lmh5hRv1IvrUjh0ap1KBtE2ctAjGcQ+XXlV2t72tEuBDxtEW
	/6VD904obV7iWgBOTeWRpzjqcFC8VPQJpiK4+c2KtpRKMUZw/J1Ge1+P3gwkpnd9E7CSiESqoZyiq
	7U/Xyx231QQuUovsaMcsQ3BxR9ona1spa3uTd2rILn921sE1KNXjqoQkXw+y8L50Csp8e0zjCrccv
	FvRnjMB8OUNniURx8QeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD2rI-00FPDO-GC; Thu, 27 Jan 2022 11:22:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD2p6-00FOIM-5b
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 11:20:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nD2p2-0004SH-WD; Thu, 27 Jan 2022 12:20:13 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nD2p1-00082z-2I; Thu, 27 Jan 2022 12:20:11 +0100
Date: Thu, 27 Jan 2022 12:20:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Doug Anderson <dianders@chromium.org>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Yakir Yang <ykk@rock-chips.com>,
 =?iso-8859-15?Q?St=E9phane?= Marchesin <marcheu@chromium.org>
Subject: Re: [PATCH 07/27] drm/rockchip: dw_hdmi: Use auto-generated tables
Message-ID: <20220127112011.GM23490@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-8-s.hauer@pengutronix.de>
 <CAD=FV=U7W_oWjS_gCurAkNdkcuHQGn-XH=-VwP2MSG9zO92ySg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=U7W_oWjS_gCurAkNdkcuHQGn-XH=-VwP2MSG9zO92ySg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:06:15 up 47 days, 19:51, 83 users,  load average: 0.13, 0.26, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_032016_325179_C9C66632 
X-CRM114-Status: GOOD (  44.39  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jan 26, 2022 at 07:54:53AM -0800, Doug Anderson wrote:
> Hi,
> =

> On Wed, Jan 26, 2022 at 6:58 AM Sascha Hauer <s.hauer@pengutronix.de> wro=
te:
> >
> > From: Douglas Anderson <dianders at chromium.org>
> >
> > The previous tables for mpll_cfg and curr_ctrl were created using the
> > 20-pages of example settings provided by the PHY vendor.  Those
> > example settings weren't particularly dense, so there were places
> > where we were guessing what the settings would be for 10-bit and
> > 12-bit (not that we use those anyway).  It was also always a lot of
> > extra work every time we wanted to add a new clock rate since we had
> > to cross-reference several tables.
> >
> > In <http://crosreview.com/285855> I've gone through the work to figure
> =

> The `crosreview.com` syntax doesn't seem to work anymore. Could maybe
> update to https://crrev.com/c/285855 ?

did that, thanks.

> =

> > out how to generate this table automatically.  Let's now use the
> > automatically generated table and then we'll never need to look at it
> > again.
> >
> > We only support 8-bit mode right now and only support a small number
> > of clock rates and and I've verified that the only 8-bit rate that was
> > affected was 148.5.  That mode appears to have been wrong in the old
> > table.
> >
> > Changes since v3:
> > - new patch
> >
> > Signed-off-by: Douglas Anderson <dianders at chromium.org>
> > Signed-off-by: Yakir Yang <ykk at rock-chips.com>
> =

> Should probably change the "at" to "@" ?

yes.

> =

> > Reviewed-by: St=E9phane Marchesin <marcheu at chromium.org>
> =

> In general shouldn't carry downstream reviews when posting upstream
> unless you're certain that the person intended it...
> =

> =

> It's been a long time, but in general I think I was fairly confident
> in the numbers that my script pumped out, at least given the caveat of
> no pixel repetition and 8-bit only. That being said, I didn't have any
> inside knowledge of the hardware and just figured out formulas that
> seemed to match the table that I had. YMMV.

Rockchip adopted this patch for their downstream Kernel, so they haven't
been able to come up with better values. Given that you created this
patch for a fairly old SoC and the values are still usable on rk3568 I
think that's the way to go.

> =

> I'll also say that when I did a rebase of veyron (rk3288-based
> Chromebook) to 4.19 about 2.5 years ago, I ended up squashing several
> of these patches into 1. That can be found at
> <https://crrev.com/c/1661056>. That also has details about why some of
> these patches never made it upstream. The main reason, at least in the
> case of rk3288, was the PLL sharing problem that nobody ever solved.
> rk3288 didn't have quite enough PLLs and thus, if you were using both
> VOPs, one of the VOPs was going to be severely limited in what pixel
> clocks it could make. There was no framework deciding which VOP should
> be limited and how the system should react to this...
> =

> =

> In any case, I'm pretty far disconnected from all this stuff now, but
> I wish you the best of luck in trying to get it all solved!

Nah, sorry, I won't get that all solved ;)

I am not that interested in rk3288, my main concern is the rk3568. That
one has two spare PLLs for three heads instead of one PLL for two heads,
so the problem is less pressing.

I'll stick to this version of the patch instead of the combined one
because this patch seems to be correct regardless of the PLL problem.

Thanks for the link though, it gives me some insights why things are the
way they are currently.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
