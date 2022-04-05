Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BFA8C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 09:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLTGNt9t3WI901hHQ6n0Fn4ByJjJl/5abt9/2UK4fQI=; b=U4A9aHN+J2Dl96
	5ah6YCIsO8nh/u+Ir5WzWhN8TcDEG+RyA++Brdlt9X48DKhavHkOc44R9FhciujVzMlTaebOsdRAm
	R1noG+QRlD+MpWgujq0cw4HgAghEyU5UJOK/iDWthGQam4eZhHUcaKgVFm9lB2g+87YlQ4cmVdyYy
	A8eti00JvWDWb338stPxbkrUmtAvVsIEn5862tHpUuJZWUC1p6AtuIuCr0iqqTdtfKSO/vKmyuWz8
	ACjfNsL2uIX4ah7tPC/dKnws638OJyvPVE0n8ikvXAlUWc15z4yHtUSnYoqPATno/nXmky8LkYtvd
	MupgorMWOsFmLqMgErfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbf7u-000HJm-4I; Tue, 05 Apr 2022 09:05:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbf7p-000HI6-TF
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 09:05:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nbf7h-0003mS-6S; Tue, 05 Apr 2022 11:05:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nbf7d-0003gt-2b; Tue, 05 Apr 2022 11:05:09 +0200
Date: Tue, 5 Apr 2022 11:05:09 +0200
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
Message-ID: <20220405090509.GP4012@pengutronix.de>
References: <20220328151116.2034635-21-s.hauer@pengutronix.de>
 <274a12a9-61f1-7d6a-e89c-52237621930b@rock-chips.com>
 <20220330063913.GW12181@pengutronix.de>
 <9619ce71-db59-d6cd-c254-2b67122fa245@rock-chips.com>
 <20220331070614.GD4012@pengutronix.de>
 <eebd2731-f18b-af1c-b0b9-09df669f5a3c@rock-chips.com>
 <20220331081815.GF4012@pengutronix.de>
 <8aa9da47-d7ed-41bf-384c-103757c19fe2@rock-chips.com>
 <20220401125527.GM4012@pengutronix.de>
 <7b2630d8-0575-5d65-dd81-3ef336ad5ba7@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7b2630d8-0575-5d65-dd81-3ef336ad5ba7@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:18:17 up 5 days, 20:47, 58 users, load average: 0.42, 0.29, 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_020522_128561_74C3F623 
X-CRM114-Status: GOOD (  68.76  )
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

On Sat, Apr 02, 2022 at 09:25:33AM +0800, Andy Yan wrote:
> Hi Sascha:
> =

> On 4/1/22 20:55, Sascha Hauer wrote:
> > On Thu, Mar 31, 2022 at 07:00:34PM +0800, Andy Yan wrote:
> > > Hi:
> > > =

> > > On 3/31/22 16:18, Sascha Hauer wrote:
> > > > On Thu, Mar 31, 2022 at 03:20:37PM +0800, Andy Yan wrote:
> > > > > Hi Sascha:
> > > > > =

> > > > > On 3/31/22 15:06, Sascha Hauer wrote:
> > > > > > On Wed, Mar 30, 2022 at 08:50:09PM +0800, Andy Yan wrote:
> > > > > > > Hi Sascha:
> > > > > > > =

> > > > > > > On 3/30/22 14:39, Sascha Hauer wrote:
> > > > > > > > Hi Andy,
> > > > > > > > =

> > > > > > > > On Tue, Mar 29, 2022 at 07:56:27PM +0800, Andy Yan wrote:
> > > > > > > > > Hi Sascha:
> > > > > > > > > =

> > > > > > > > > On 3/28/22 23:11, Sascha Hauer wrote:
> > > > > > > > > > With upcoming VOP2 support VOP won't be the only choice=
 anymore, so make
> > > > > > > > > > the VOP driver optional.
> > > > > > > > > > =

> > > > > > > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > > > > > > ---
> > > > > > > > > >       drivers/gpu/drm/rockchip/Kconfig            | 8 +=
+++++++
> > > > > > > > > >       drivers/gpu/drm/rockchip/Makefile           | 3 +=
+-
> > > > > > > > > >       drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
> > > > > > > > > >       3 files changed, 11 insertions(+), 2 deletions(-)
> > > > > > > > > > =

> > > > > > > > > > diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers=
/gpu/drm/rockchip/Kconfig
> > > > > > > > > > index fa5cfda4e90e3..7d22e2997a571 100644
> > > > > > > > > > --- a/drivers/gpu/drm/rockchip/Kconfig
> > > > > > > > > > +++ b/drivers/gpu/drm/rockchip/Kconfig
> > > > > > > > > > @@ -23,8 +23,16 @@ config DRM_ROCKCHIP
> > > > > > > > > >       if DRM_ROCKCHIP
> > > > > > > > > > +config ROCKCHIP_VOP
> > > > > > > > > > +	bool "Rockchip VOP driver"
> > > > > > > > > > +	default y
> > > > > > > > > > +	help
> > > > > > > > > > +	  This selects support for the VOP driver. You should=
 enable it
> > > > > > > > > > +	  on all older SoCs up to RK3399.
> > > > > > > > That reminds me that I wanted to rephrase this. Will change=
 in next
> > > > > > > > round.
> > > > > > > > =

> > > > > > > > > > +
> > > > > > > > > >       config ROCKCHIP_ANALOGIX_DP
> > > > > > > > > >       	bool "Rockchip specific extensions for Analogix =
DP driver"
> > > > > > > > > > +	depends on ROCKCHIP_VOP
> > > > > > > > > Aanlogix dp is also on vop2 base soc such as=A0 rk356x an=
d rk3588.
> > > > > > BTW I just looked at the downstream driver. Here we have the sa=
me
> > > > > > situation that the analogix dp driver calls rockchip_drm_wait_v=
act_end()
> > > > > > which is implemented in the VOP driver, so when the analogix dp=
 driver
> > > > > > is actually used on a VOP2 SoC then it is either used in a way =
that
> > > > > > rockchip_drm_wait_vact_end() will never be called or it explode=
s in all
> > > > > > colours.
> > > > > > =

> > > > > > > > I added the dependency because analogix_dp-rockchip.c calls
> > > > > > > > rockchip_drm_wait_vact_end() which is implemented in the VO=
P driver,
> > > > > > > > so this driver currenty can't work with the VOP2 driver and=
 can't
> > > > > > > > be linked without the VOP driver being present.
> > > > > > > > I'll add a few words to the commit message.
> > > > > > > Maybe a better direction is move rockchip_drm_wait_vact_end f=
rom the VOP
> > > > > > > driver to rockchip_drm_drv.c
> > > > > > I am not sure if that's really worth it. Yes, the direction mig=
ht be the
> > > > > > right one, but I would really prefer when somebody does the cha=
nge who
> > > > > > can test and confirm that the analogix dp really works with VOP=
2 in the
> > > > > > end.
> > > > > If follow this point, the current DW_MIPI also has not been teste=
d for
> > > > > confirm that it
> > > > > =

> > > > > can really work with VOP2, so you should also make it depends on
> > > > > ROCKCHIP_VOP.

Here you are suggesting to add even more Kconfig dependencies.

> > > > Well at least I have patches here which make DW_MIPI work with VOP2=
 ;)
> > > =

> > > But you DW_MIPI patches for rk356x didn't come. So this is not keep
> > > consistency with this point.
> > > =

> > > > What about the others, like LVDS and RGB?
> > > =

> > > Yes, we also have other interface , RK356X has LVDS/RGB/BT1120/BT656,=
 RK3588
> > > has BT1120/BT656, no LVDS or RGB.
> > > =

> > > > > I think the current solution is just a workaround to make your pa=
tch pass
> > > > > the kernel compile
> > > > Indeed.
> > > > =

> > > > I agree that it would be good to add a note somewhere which outputs
> > > > work with the VOP2 driver (currently only HDMI), but I wonder if Kc=
onfig
> > > > dependencies is the right place for it, because only people who del=
iberately
> > > > disable VOP support will see this information.
> > > > Maybe we should rather add it to the Kconfig help text?
> > > =

> > > If a device is supported for this soc, we will add dt node at the dts=
i file.
> > > =

> > > A Kconfig dependencies don't seems a good idea.

Here you say Kconfig dependencies are no good idea.

> > Ok, this means we can keep my current approach with just letting
> > ROCKCHIP_ANALOGIX_DP depend on ROCKCHIP_VOP to avoid having a non
> =

> Excuse me? How do you get this conclusion ?

Given that you say that you want to have both more and less Kconfig
dependencies I came to the conclusion that I only add one where it's
necessary to compile the driver.

> =

> I said before,=A0 vop and vop2 based platforms both have ROCKCHIP_ANALOGI=
X_DP.

Maybe, but vop2 with ROCKCHIP_ANALOGIX_DP doesn't even work in the
Rockchip downstream kernel, so I wonder how relevant this usecase really
is.

> =

> If this patch will cause the compile error, please do a real fix, not a

I can't, because I don't have any hardware to test the Analogix DP on a
VOP hardware, and given that Analogix DP in conjunction with VOP2 hardware =
is
not even supported in the downstream Kernel I am not sure if it's really
worth doing that.

Moving rockchip_drm_wait_vact_end() to rockchip_drm_drv.c doesn't work
with mainline currently, we first would have to add a struct crtc_funcs
to struct rockchip_drm_private. Yes, that could be done.

> =

> workaround that may deliver misleading information.

The Kconfig dependency quite clearly says that the Analogix DP currently
doesn't work with the VOP2. Anyone who wants to change that can use that
information as a starting point and implement whatever is necessary and
likely has the hardware to verify the work. I don't want to solve
problems that *might* arise in the future, and in this case it's not a
direction decision that we might regret in the future.

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
