Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 419F7C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 08:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxDWeL9kaFAxW+31nWuOVWga+/bMlIXbMx7j8/Ngyd0=; b=Atx6/jKhcXQoNo
	V5J0UrRzX/50CAUBHlJ8VZOFhSCVGEGQGq/e6apArVDUCwfJZukKoXL0YWRsKoOQ8MNJEpzG702k9
	wJ+uPTsVyITPrPFHiw4+GD09J7c5ThjW01zjECRlYWC4hVSXMyLyHd58cgSaa+At44OW7sM/LqQhO
	97qbpWhI50+//WAKK+vYa/5Zlmg3ZgrXRFj9RKvcDmdaOLYUxJiWqIoKQzMIKxRxt2iDJxE2iEsAT
	GSovbB/4eib1p/vhsPt00MFya0lCrFPKcD2RgH9gszXDFKohcxznUawP/8VNCrX05+FnT4vxO3ri4
	iuh7rAJJhxI8hoMrfGdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc0bJ-004a5p-AU; Wed, 06 Apr 2022 08:01:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc0b5-004Zzx-6x
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 08:01:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nc0b2-0001UE-3N; Wed, 06 Apr 2022 10:00:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nc0b0-0003bW-3l; Wed, 06 Apr 2022 10:00:54 +0200
Date: Wed, 6 Apr 2022 10:00:54 +0200
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
Message-ID: <20220406080054.GT4012@pengutronix.de>
References: <20220331070614.GD4012@pengutronix.de>
 <eebd2731-f18b-af1c-b0b9-09df669f5a3c@rock-chips.com>
 <20220331081815.GF4012@pengutronix.de>
 <8aa9da47-d7ed-41bf-384c-103757c19fe2@rock-chips.com>
 <20220401125527.GM4012@pengutronix.de>
 <7b2630d8-0575-5d65-dd81-3ef336ad5ba7@rock-chips.com>
 <20220405090509.GP4012@pengutronix.de>
 <93001a4c-b009-202f-7b04-34e1a9e617ec@rock-chips.com>
 <20220406070403.GS4012@pengutronix.de>
 <52d602e9-088a-4c82-ab08-9f0a127d0e5f@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52d602e9-088a-4c82-ab08-9f0a127d0e5f@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:50:02 up 6 days, 20:19, 65 users, load average: 0.01, 0.05, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_010059_458636_AAD77912 
X-CRM114-Status: GOOD (  75.52  )
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

On Wed, Apr 06, 2022 at 03:47:18PM +0800, Andy Yan wrote:
> Hi:
> =

> On 4/6/22 15:04, Sascha Hauer wrote:
> > On Wed, Apr 06, 2022 at 09:43:49AM +0800, Andy Yan wrote:
> > > Hi Sacha:
> > > =

> > > On 4/5/22 17:05, Sascha Hauer wrote:
> > > > On Sat, Apr 02, 2022 at 09:25:33AM +0800, Andy Yan wrote:
> > > > > Hi Sascha:
> > > > > =

> > > > > On 4/1/22 20:55, Sascha Hauer wrote:
> > > > > > On Thu, Mar 31, 2022 at 07:00:34PM +0800, Andy Yan wrote:
> > > > > > > Hi:
> > > > > > > =

> > > > > > > On 3/31/22 16:18, Sascha Hauer wrote:
> > > > > > > > On Thu, Mar 31, 2022 at 03:20:37PM +0800, Andy Yan wrote:
> > > > > > > > > Hi Sascha:
> > > > > > > > > =

> > > > > > > > > On 3/31/22 15:06, Sascha Hauer wrote:
> > > > > > > > > > On Wed, Mar 30, 2022 at 08:50:09PM +0800, Andy Yan wrot=
e:
> > > > > > > > > > > Hi Sascha:
> > > > > > > > > > > =

> > > > > > > > > > > On 3/30/22 14:39, Sascha Hauer wrote:
> > > > > > > > > > > > Hi Andy,
> > > > > > > > > > > > =

> > > > > > > > > > > > On Tue, Mar 29, 2022 at 07:56:27PM +0800, Andy Yan =
wrote:
> > > > > > > > > > > > > Hi Sascha:
> > > > > > > > > > > > > =

> > > > > > > > > > > > > On 3/28/22 23:11, Sascha Hauer wrote:
> > > > > > > > > > > > > > With upcoming VOP2 support VOP won't be the onl=
y choice anymore, so make
> > > > > > > > > > > > > > the VOP driver optional.
> > > > > > > > > > > > > > =

> > > > > > > > > > > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutroni=
x.de>
> > > > > > > > > > > > > > ---
> > > > > > > > > > > > > >         drivers/gpu/drm/rockchip/Kconfig       =
     | 8 ++++++++
> > > > > > > > > > > > > >         drivers/gpu/drm/rockchip/Makefile      =
     | 3 ++-
> > > > > > > > > > > > > >         drivers/gpu/drm/rockchip/rockchip_drm_d=
rv.c | 2 +-
> > > > > > > > > > > > > >         3 files changed, 11 insertions(+), 2 de=
letions(-)
> > > > > > > > > > > > > > =

> > > > > > > > > > > > > > diff --git a/drivers/gpu/drm/rockchip/Kconfig b=
/drivers/gpu/drm/rockchip/Kconfig
> > > > > > > > > > > > > > index fa5cfda4e90e3..7d22e2997a571 100644
> > > > > > > > > > > > > > --- a/drivers/gpu/drm/rockchip/Kconfig
> > > > > > > > > > > > > > +++ b/drivers/gpu/drm/rockchip/Kconfig
> > > > > > > > > > > > > > @@ -23,8 +23,16 @@ config DRM_ROCKCHIP
> > > > > > > > > > > > > >         if DRM_ROCKCHIP
> > > > > > > > > > > > > > +config ROCKCHIP_VOP
> > > > > > > > > > > > > > +	bool "Rockchip VOP driver"
> > > > > > > > > > > > > > +	default y
> > > > > > > > > > > > > > +	help
> > > > > > > > > > > > > > +	  This selects support for the VOP driver. Yo=
u should enable it
> > > > > > > > > > > > > > +	  on all older SoCs up to RK3399.
> > > > > > > > > > > > That reminds me that I wanted to rephrase this. Wil=
l change in next
> > > > > > > > > > > > round.
> > > > > > > > > > > > =

> > > > > > > > > > > > > > +
> > > > > > > > > > > > > >         config ROCKCHIP_ANALOGIX_DP
> > > > > > > > > > > > > >         	bool "Rockchip specific extensions for=
 Analogix DP driver"
> > > > > > > > > > > > > > +	depends on ROCKCHIP_VOP
> > > > > > > > > > > > > Aanlogix dp is also on vop2 base soc such as=A0 r=
k356x and rk3588.
> > > > > > > > > > BTW I just looked at the downstream driver. Here we hav=
e the same
> > > > > > > > > > situation that the analogix dp driver calls rockchip_dr=
m_wait_vact_end()
> > > > > > > > > > which is implemented in the VOP driver, so when the ana=
logix dp driver
> > > > > > > > > > is actually used on a VOP2 SoC then it is either used i=
n a way that
> > > > > > > > > > rockchip_drm_wait_vact_end() will never be called or it=
 explodes in all
> > > > > > > > > > colours.
> > > > > > > > > > =

> > > > > > > > > > > > I added the dependency because analogix_dp-rockchip=
.c calls
> > > > > > > > > > > > rockchip_drm_wait_vact_end() which is implemented i=
n the VOP driver,
> > > > > > > > > > > > so this driver currenty can't work with the VOP2 dr=
iver and can't
> > > > > > > > > > > > be linked without the VOP driver being present.
> > > > > > > > > > > > I'll add a few words to the commit message.
> > > > > > > > > > > Maybe a better direction is move rockchip_drm_wait_va=
ct_end from the VOP
> > > > > > > > > > > driver to rockchip_drm_drv.c
> > > > > > > > > > I am not sure if that's really worth it. Yes, the direc=
tion might be the
> > > > > > > > > > right one, but I would really prefer when somebody does=
 the change who
> > > > > > > > > > can test and confirm that the analogix dp really works =
with VOP2 in the
> > > > > > > > > > end.
> > > > > > > > > If follow this point, the current DW_MIPI also has not be=
en tested for
> > > > > > > > > confirm that it
> > > > > > > > > =

> > > > > > > > > can really work with VOP2, so you should also make it dep=
ends on
> > > > > > > > > ROCKCHIP_VOP.
> > > > Here you are suggesting to add even more Kconfig dependencies.
> > > > =

> > > > > > > > Well at least I have patches here which make DW_MIPI work w=
ith VOP2 ;)
> > > > > > > But you DW_MIPI patches for rk356x didn't come. So this is no=
t keep
> > > > > > > consistency with this point.
> > > > > > > =

> > > > > > > > What about the others, like LVDS and RGB?
> > > > > > > Yes, we also have other interface , RK356X has LVDS/RGB/BT112=
0/BT656, RK3588
> > > > > > > has BT1120/BT656, no LVDS or RGB.
> > > > > > > =

> > > > > > > > > I think the current solution is just a workaround to make=
 your patch pass
> > > > > > > > > the kernel compile
> > > > > > > > Indeed.
> > > > > > > > =

> > > > > > > > I agree that it would be good to add a note somewhere which=
 outputs
> > > > > > > > work with the VOP2 driver (currently only HDMI), but I wond=
er if Kconfig
> > > > > > > > dependencies is the right place for it, because only people=
 who deliberately
> > > > > > > > disable VOP support will see this information.
> > > > > > > > Maybe we should rather add it to the Kconfig help text?
> > > > > > > If a device is supported for this soc, we will add dt node at=
 the dtsi file.
> > > > > > > =

> > > > > > > A Kconfig dependencies don't seems a good idea.
> > > > Here you say Kconfig dependencies are no good idea.
> > > =

> > > Yes. It's not a good idea. So I don't want to see you use a Kcofig
> > > dependence
> > > =

> > > to disable a module to avoid compile which introduced by your patch.
> > > =

> > > > > > Ok, this means we can keep my current approach with just letting
> > > > > > ROCKCHIP_ANALOGIX_DP depend on ROCKCHIP_VOP to avoid having a n=
on
> > > > > Excuse me? How do you get this conclusion ?
> > > > Given that you say that you want to have both more and less Kconfig
> > > > dependencies I came to the conclusion that I only add one where it's
> > > > necessary to compile the driver.
> > > > =

> > > > > I said before,=A0 vop and vop2 based platforms both have ROCKCHIP=
_ANALOGIX_DP.
> > > > Maybe, but vop2 with ROCKCHIP_ANALOGIX_DP doesn't even work in the
> > > > Rockchip downstream kernel, so I wonder how relevant this usecase r=
eally
> > > > is.
> > > =

> > > No, this is not the truth. Rockchip_ANALOGIX_DP of course work with t=
he
> > > vendor kernel. We have many rk356x based products shipped with edp.
> > > Even the VGA output interface on RK3568_EVB1 is drived by
> > > ROCKCHIP_ANALOGIX_DP with a RTD2166 eDP to VGA convert
> > > chip.
> > > =

> > > =

> > > So how do you get conclusion that ROCKCHIP_ANALOGIX_DP can't work with
> > > the Rockchip downstream kernel? Is it because you can't make the DP w=
ork on
> > > your board? If it is, please contact the supplier who gave you the bo=
ard.
> > In the downstream kernel I have available (which is a 5.10.66)
> > analogix_dp-rockchip.c calls rockchip_drm_wait_vact_end() which is
> > implemented in rockchip_drm_vop.c and assumes that the passed struct
> > drm_crtc * can be converted to a struct vop *. Basically it's the same
> > situation we have right now with the mainline kernel, just that the
> > linker issues won't show up because the VOP driver can't be disabled
> > in the downstream kernel.
> =

> =

> So you judge ROCKCHIP_ANALOGIX_DP can't work by this(as vop2 doesn't has
> rockchip_drm_wait_vact_end interface)?
> =

> No, you may not know clearly about this function, this function is used f=
or
> eDP PSR, which is a
> =

> optional function, that means not every eDP panel has PSR function(this
> function usually parsed from edid).
> =

> This really not means than ROCKCHIP_ANALOGIX_DP can't work.
> =

> =

> And your 5.10 downstream kernel seems out of dated. We have already move
> this function out from rockchip_drm_vop to rockchip_drm_drv.

I guessed that. Well we can do the same once we are there, but currently
we are not. My patch doesn't break any existing features and we can add
Analogix DP support later. I know the VOP2 driver is not feature
complete and it doesn't aim to be.

Please let's stop arguing about this topic. Once somebody wants to add
Analogix DP support with VOP2 we can discuss the right way at length and
until then my patch won't do any harm.

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
