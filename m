Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6578DC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 07:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MPqtLA2EokclMzQ04jKI7bxiLixEKLrldc+iMSMixo=; b=ur0JxzJuT2WH2J
	RKgHvQOajwn/uNwlA0ws4+MjdYSZ7I5jPqpqRghMffwjDd5CcGIank0cGju3jq4WKdlK5In9PHVPh
	H+D44Ijsm/S04GkOAttLPUFUUXiPlpiQAmSfWlTrOMggV4w5JDQSwvGxKbo9Sedqw9cinq0nHqJO8
	Hk+rP7V2lyvKbhPMcJB22qMFlPjVAyxKVXLOEmlDQYeVKY6PXiVdA9UAslHGeXg61o6SVAam7yxlA
	puGB59fhHVI2LN0wP0AtKwCLoIi013AFgzuG9PsSnvap+WcsGYjJjbQJw4PcE1DQZ1wR7iqZaAIyX
	LoaF2R12VddnMvVFWTCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZot6-000zhE-F2; Thu, 31 Mar 2022 07:06:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZosu-000zeP-DR
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 07:06:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZosr-0003a1-8a; Thu, 31 Mar 2022 09:06:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZoso-0002cC-OG; Thu, 31 Mar 2022 09:06:14 +0200
Date: Thu, 31 Mar 2022 09:06:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <Kever.yang@rock-chips.com>
Subject: Re: [PATCH v9 20/23] drm/rockchip: Make VOP driver optional
Message-ID: <20220331070614.GD4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <20220328151116.2034635-21-s.hauer@pengutronix.de>
 <274a12a9-61f1-7d6a-e89c-52237621930b@rock-chips.com>
 <20220330063913.GW12181@pengutronix.de>
 <9619ce71-db59-d6cd-c254-2b67122fa245@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9619ce71-db59-d6cd-c254-2b67122fa245@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:59:10 up 19:28, 39 users,  load average: 0.07, 0.09, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_000620_463754_F59E613E 
X-CRM114-Status: GOOD (  37.20  )
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

On Wed, Mar 30, 2022 at 08:50:09PM +0800, Andy Yan wrote:
> Hi Sascha:
> =

> On 3/30/22 14:39, Sascha Hauer wrote:
> > Hi Andy,
> > =

> > On Tue, Mar 29, 2022 at 07:56:27PM +0800, Andy Yan wrote:
> > > Hi Sascha:
> > > =

> > > On 3/28/22 23:11, Sascha Hauer wrote:
> > > > With upcoming VOP2 support VOP won't be the only choice anymore, so=
 make
> > > > the VOP driver optional.
> > > > =

> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > ---
> > > >    drivers/gpu/drm/rockchip/Kconfig            | 8 ++++++++
> > > >    drivers/gpu/drm/rockchip/Makefile           | 3 ++-
> > > >    drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
> > > >    3 files changed, 11 insertions(+), 2 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/roc=
kchip/Kconfig
> > > > index fa5cfda4e90e3..7d22e2997a571 100644
> > > > --- a/drivers/gpu/drm/rockchip/Kconfig
> > > > +++ b/drivers/gpu/drm/rockchip/Kconfig
> > > > @@ -23,8 +23,16 @@ config DRM_ROCKCHIP
> > > >    if DRM_ROCKCHIP
> > > > +config ROCKCHIP_VOP
> > > > +	bool "Rockchip VOP driver"
> > > > +	default y
> > > > +	help
> > > > +	  This selects support for the VOP driver. You should enable it
> > > > +	  on all older SoCs up to RK3399.
> > That reminds me that I wanted to rephrase this. Will change in next
> > round.
> > =

> > > > +
> > > >    config ROCKCHIP_ANALOGIX_DP
> > > >    	bool "Rockchip specific extensions for Analogix DP driver"
> > > > +	depends on ROCKCHIP_VOP
> > > =

> > > Aanlogix dp is also on vop2 base soc such as=A0 rk356x and rk3588.

BTW I just looked at the downstream driver. Here we have the same
situation that the analogix dp driver calls rockchip_drm_wait_vact_end()
which is implemented in the VOP driver, so when the analogix dp driver
is actually used on a VOP2 SoC then it is either used in a way that
rockchip_drm_wait_vact_end() will never be called or it explodes in all
colours.

> > I added the dependency because analogix_dp-rockchip.c calls
> > rockchip_drm_wait_vact_end() which is implemented in the VOP driver,
> > so this driver currenty can't work with the VOP2 driver and can't
> > be linked without the VOP driver being present.
> > I'll add a few words to the commit message.
> =

> =

> Maybe a better direction is move rockchip_drm_wait_vact_end from the VOP
> driver to rockchip_drm_drv.c

I am not sure if that's really worth it. Yes, the direction might be the
right one, but I would really prefer when somebody does the change who
can test and confirm that the analogix dp really works with VOP2 in the
end.

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
