Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CB77C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 18:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6ByvegMRSCbuXHJjUjEyFIohDx9TRbXRptQhM9+/dA=; b=12yzq4qdFyj7jF
	4nIodkc0EIW6SnlKHHylQrTp6njYI7E2CYmOy7/BYkmYuZXRUZzIIo84kW1T4p36Glu2vmx+Rlqtv
	EkGedmA2561XYniVu6dNakYgBLttRyjtxtP4qQiralffjS3JTKracniUh1EMfTVx+IwrvI3e91QlP
	Ho+t86T82AeyWszCi3dmqrzub7t2LxCU3iDyCE6tXbYxyvGh7AYdV9HJQE0WL+rqYpW1pkybZmsqS
	MENIzG9eW1eWDRww50OD4K9lU4DlbMaSjxOIn1H9h6jyEot0n4mQQ8ubxok2x0yJA9Mrq4AaURWHy
	0LD0YApiHJxjVtmR/PXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msU9s-009iiE-5h; Wed, 01 Dec 2021 18:16:44 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msU9e-009idr-Ju
 for linux-rockchip@lists.infradead.org; Wed, 01 Dec 2021 18:16:32 +0000
Received: by mail-pl1-x62c.google.com with SMTP id n8so18363401plf.4
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Dec 2021 10:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4Fjo/oLhM/GI33DECaidoRno6lOPTrQDXq4YeW1u3XI=;
 b=Gy/mI/syDjgmJ/Dy5HSB0lekRFIu1fZjXrSHJRAyRpEjIvsMYeuD7jd9Gl+/dViRyQ
 bX7H/U8ylCShghMTxCO2moMoFwVRephY825eJHoHYIsCBrCSTGr5lkGv0EVJCxBJCTjC
 XKWTHHeI4L0kX6Cm8I0VJGnBecIMJN05ZjnxWJF4pIjeSiGX31iD106ZbDpbwRBH3ncL
 GQspUzeaq+6ISOEZHY9XlWQRXZMBJvMLiLqaYwPf9HtglHgZUBhMgSXHJZwlcKZdu2JF
 kvW6WGURB6KwscUjDn/Y5mtcbI6S1JQUSwK+OOMpZYnpnAwCy3Qgvhf8sAIwj+oy1ks2
 C3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4Fjo/oLhM/GI33DECaidoRno6lOPTrQDXq4YeW1u3XI=;
 b=LLg4CeXCY0osHJKtaL/HPq9D21nJnHMXgS4IBk0WMfbAsE6Ml1p1Mk9T0CfolnoKOM
 e0X04Nl5MexZyipHwnAoib4QiL+8Toqn1TsMxK1yejJjNELJW73qKsyLsUdY+yCqqKbe
 BRHyGncPKVWPZxuK68vpOIyWqx/WtO0Xg219TVnLYCw7s0lBVi8PRLxwpGiUvH1nZjwn
 FlzjcYJ6zF6BoOFQ2UTiXuLL9GG0sjdwSOJgWKyjUV0ia8MPn4c2xn6HlUdbqVgrWRIX
 xVcxDjqWOzfHYUyZnZUwd4SxXuNeo8S/5XWsYL2SLAmHa9qZ7u4e22a7z6+z29ApaNFJ
 m3pw==
X-Gm-Message-State: AOAM533IRtcDQiaAyolyT0dCizQz7nyhO9lnDP0rEieUkiETsn0nOIvf
 yLSzXQOb/UrPhdubGCKLUr+xjYKUzdNX9NLvKjEK5A==
X-Google-Smtp-Source: ABdhPJwttCSPFnI/f0Y+73jbxauzbId1+8+EbhmZWwrFdssLOLUTnHuIDjdXa+sBopTO83KHL5/G+HdxFmuxHV6QOCE=
X-Received: by 2002:a17:90b:33d0:: with SMTP id
 lk16mr9513215pjb.66.1638382589692; 
 Wed, 01 Dec 2021 10:16:29 -0800 (PST)
MIME-Version: 1.0
References: <20211201013329.15875-1-aford173@gmail.com>
 <CAJ+vNU1jENmWAR_5E98Vgb53ctxjxSWJewPW0YC4Yp4DuYTn3g@mail.gmail.com>
 <7216bc863d89faa9fdc5cd8d44c319f7a6d88159.camel@pengutronix.de>
In-Reply-To: <7216bc863d89faa9fdc5cd8d44c319f7a6d88159.camel@pengutronix.de>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 1 Dec 2021 10:16:18 -0800
Message-ID: <CAJ+vNU2PxgdN414Ufd4NAG5CJgnftNSAHDGpt9Nj+RfgkNmxaw@mail.gmail.com>
Subject: Re: [RFC V2 0/2] arm64: imx8mm: Enable Hantro VPUs
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Adam Ford <aford173@gmail.com>, linux-media <linux-media@vger.kernel.org>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Adam Ford-BE <aford@beaconembedded.com>, 
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Device Tree Mailing List <devicetree@vger.kernel.org>, 
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_101630_663777_24574B2D 
X-CRM114-Status: GOOD (  40.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Dec 1, 2021 at 9:32 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Tim,
>
> Am Mittwoch, dem 01.12.2021 um 09:23 -0800 schrieb Tim Harvey:
> > On Tue, Nov 30, 2021 at 5:33 PM Adam Ford <aford173@gmail.com> wrote:
> > >
> > > The i.MX8M has two Hantro video decoders, called G1 and G2 which appear
> > > to be related to the video decoders used on the i.MX8MQ, but because of
> > > how the Mini handles the power domains, the VPU driver does not need to
> > > handle all the functions, nor does it support the post-processor,
> > > so a new compatible flag is required.
> > >
> > > With the suggestion from Hans Verkuil, I was able to get the G2 splat to go away
> > > with changes to FORCE_MAX_ZONEORDER, but I found I could also set cma=512M, however
> > > it's unclear to me if that's an acceptable alternative.
> > >
> > > At the suggestion of Ezequiel Garcia and Nicolas Dufresne I have some
> > > results from Fluster. However, the G2 VPU appears to fail most tests.
> > >
> > > ./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
> > > Ran 90/135 tests successfully               in 76.431 secs
> > >
> > >  ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
> > > Ran 55/61 tests successfully               in 21.454 secs
> > >
> > > ./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
> > > Ran 0/303 tests successfully               in 20.016 secs
> > >
> > > Each day seems to show more and more G2 submissions, and gstreamer seems to be
> > > still working on the VP9, so I am not sure if I should drop G2 as well.
> > >
> > >
> > > Adam Ford (2):
> > >   media: hantro: Add support for i.MX8M Mini
> > >   arm64: dts: imx8mm: Enable VPU-G1 and VPU-G2
> > >
> > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi   | 41 +++++++++++++++
> > >  drivers/staging/media/hantro/hantro_drv.c   |  2 +
> > >  drivers/staging/media/hantro/hantro_hw.h    |  2 +
> > >  drivers/staging/media/hantro/imx8m_vpu_hw.c | 57 +++++++++++++++++++++
> > >  4 files changed, 102 insertions(+)
> > >
> >
> > Adam,
> >
> > That's for the patches!
> >
> > I tested just this series on top of v5.16-rc3 on an
> > imx8mm-venice-gw73xx-0x and found that if I loop fluster I can end up
> > getting a hang within 10 to 15 mins or so when imx8m_blk_ctrl_power_on
> > is called for VPUMIX pd :
> > while [ 1 ]; do uptime; ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0; done
> > ...
> > [  618.838436] imx-pgc imx-pgc-domain.6: failed to command PGC
> > [  618.844407] imx8m-blk-ctrl 38330000.blk-ctrl: failed to power up bus domain
> >
> > I added prints in imx_pgc_power_{up,down} and
> > imx8m_blk_ctrl_power_{on,off} to get some more context
> > ...
> > Ran 55/61 tests successfully               in 8.685 secs
> >  17:16:34 up 17 min,  0 users,  load average: 3.97, 2.11, 0.93
> > ********************************************************************************
> > ********************
> > Running test suite VP8-TEST-VECTORS with decoder GStreamer-VP8-V4L2SL-Gst1.0
> > Using 4 parallel job(s)
> > ********************************************************************************
> > ********************
> >
> > [TEST SUITE      ] (DECODER                    ) TEST VECTOR               ... R
> > ESULT
> > ----------------------------------------------------------------------
> > [ 1023.114806] imx8m_blk_ctrl_power_on vpublk-g1
> > [ 1023.119669] imx_pgc_power_up vpumix
> > [ 1023.124307] imx-pgc imx-pgc-domain.6: failed to command PGC
> > [ 1023.130006] imx8m-blk-ctrl 38330000.blk-ctrl: failed to power up bus domain
> >
> > While this wouldn't be an issue with this series it does indicate we
> > still have something racy in blk-ctrl. Can you reproduce this (and if
> > not what kernel are you based on)? Perhaps you or Lucas have some
> > ideas?
> >
> Did you have "[PATCH] soc: imx: gpcv2: Synchronously suspend MIX
> domains" applied when running those tests? It has only recently been
> picked up by Shawn and may have an influence on the bus domain
> behavior.
>

Lucas,

Good point. I did have that originally before I started pruning down
to the bare minimum to reproduce the issue.

I added it back and now I have the following:
arm64: dts: imx8mm: Enable VPU-G1 and VPU-G2
media: hantro: Add support for i.MX8M Mini
soc: imx: gpcv2: keep i.MX8MM VPU-H1 bus clock active
soc: imx: gpcv2: Synchronously suspend MIX domains
Linux 5.16-rc3

Here's the latest with that patch:
...
[VP8-TEST-VECTORS] (GStreamer-VP8-V4L2SL-Gst1.0)
vp80-00-comprehensive-007 ... Success
[  316.632373] imx8m_blk_ctrl_power_off vpublk-g1
[  316.636908] imx_pgc_power_down vpu-g1
[  316.640983] imx_pgc_power_down vpumix
[  316.756869] imx8m_blk_ctrl_power_on vpublk-g1
[  316.761360] imx_pgc_power_up vpumix
[  316.765985] imx-pgc imx-pgc-domain.6: failed to command PGC
[  316.772743] imx8m-blk-ctrl 38330000.blk-ctrl: failed to power up bus domain
^^^ hang

I believe there is some sort of simple test I can do to power the gpu
up/down to test as well but not clear what that is.

Tim

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
