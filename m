Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C7AFC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 22:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eyjr/vFYjXAlHX9Z0XKbB8Lw5Wn+d44WlVcT1v7911k=; b=yK5dst4koOOApt
	zA9oCXdg+sfJxScbkWyMBeVZaZkQ6nxQ9uxcXfgoPgM+o8jRsa4i+mzxUliSrtXIl1PcLMu9crUc8
	3VkDN9+cghr0tENPUZsND+AJxz9luFAk1ojgmbNORuomYKkn+97Ii5UzEfrq53Fo239UOw7+sZumg
	aQ06cn2MBTrncz37lyMJX4VT8WnJiYhaAejpwjnvk8GWBbudmXoTTmEgIU2rlnrCPDLpnbYyNeQDO
	tBMkAi7kwS6nWjLf98FBKpjy+agBGpd0BhxUoc+fr037BmiEIFbradOcfDA4D35wJS5QXRQLhtnea
	ESxjCG+lw1mi6hSA9d/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msuyl-00DeRP-78; Thu, 02 Dec 2021 22:55:03 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msuyW-00DeLm-Qt
 for linux-rockchip@lists.infradead.org; Thu, 02 Dec 2021 22:54:52 +0000
Received: by mail-pj1-x102e.google.com with SMTP id
 fv9-20020a17090b0e8900b001a6a5ab1392so964191pjb.1
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Dec 2021 14:54:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vfw913dxLQGDDDu3u0AH4o7CLm4UyARzu/jOwnTAzDg=;
 b=zCVZOPDnH85lUefIRg9bWnj7MAId6D6aN+FVUw2OKz0F6YISk7zj6lYaztcaSCySD1
 82ES1v/dJHv93WFEWnmV2/HDH0yJFGadeEkY0HnnRKRmtiSH6bQJTKDqx76mot+h083R
 vStvRWP59Kco0YXYzeCtIBcfl2L3bdFA5uJjuTU1wUBn3tMeWiInOYQ1xr9EX5YpzzSi
 P0HwqMDciy4NIVr0T/l5GOfP1lwGHosCkrgf2ciGZgcXkzp/4ZgtsX2p8QpWJSezbxSy
 pTolQgF+pLwL/uPNEzHp0m7oRq3n+HDe4Wtf4rXBG5uEZVPFynN085c09LYe/oNLxOR5
 vmLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vfw913dxLQGDDDu3u0AH4o7CLm4UyARzu/jOwnTAzDg=;
 b=e4UL44ZMk+5O79EjCbo5PayVha1qKdv1BTdVPsQa6S/pzrA+C+5fzVIKmop8Kzyhrv
 9Gp7NG5X5jfsUwlIq3dzOPlHYBb0mHEYmugxch/La6baG2jwSGnRO+6lz5VclgYdjZBr
 7qZBT3tN3xF7rICyTnSPEF6FFSmH8JGconTFkDxdHiEEpwm7Sc74bnnOHoeCqHML9qCC
 BNZHzKxk5tG+qvQUyvKllbjUvhrzQHegyRSYKeNzAthHL2AXkeGFDKymG4QFId6Vd9rJ
 JECBkDW6hvkjv/CHU9Xnv5acUZPxMtvc7XaCZwHEs2fVijLRVhN6399WfF9J7DZaLvoJ
 +vWg==
X-Gm-Message-State: AOAM532g2ip9eCMs4Wu0rS5AeB0BL9A2X53cyoqGO5tBfPad2oBhh+u0
 rITu3iQ1IgPqZVahZXRMvBl+rbiHUmFlQ2T33Dm44A==
X-Google-Smtp-Source: ABdhPJwNWK1BZ6y85VRBKw2XnnhU2TW8bgHhFWv+lq+A4VRYCiBdHuU2rJQ1o76TWMR9SV0iQzkrAUpUSTIwVNHJ+Cg=
X-Received: by 2002:a17:902:a717:b0:142:76bc:da69 with SMTP id
 w23-20020a170902a71700b0014276bcda69mr18556804plq.12.1638485687667; Thu, 02
 Dec 2021 14:54:47 -0800 (PST)
MIME-Version: 1.0
References: <20211202041627.291625-1-aford173@gmail.com>
 <CAHCN7xJHuOFTQBQWk1yKsk3M0iDB7aKc0=L2DisUoSXVeO3xXQ@mail.gmail.com>
 <CAJ+vNU2t7Yp5OGtWj432Y-8hL62nQBbG58zM-gAj5YfuCO__sA@mail.gmail.com>
 <CAHCN7xJXMUHHBACuozY3nUdZ0QqHFLrmwrXnArtCKBG7+P4UZQ@mail.gmail.com>
In-Reply-To: <CAHCN7xJXMUHHBACuozY3nUdZ0QqHFLrmwrXnArtCKBG7+P4UZQ@mail.gmail.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 2 Dec 2021 14:54:36 -0800
Message-ID: <CAJ+vNU15MWx9t-KUJKZjwPbBZTU=KuRtGYzxgfhypENHKFJpiQ@mail.gmail.com>
Subject: Re: [RFC V3 0/2] arm64: imx8mm: Enable Hantro VPUs
To: Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Lucas Stach <l.stach@pengutronix.de>,
 linux-media <linux-media@vger.kernel.org>, 
 Adam Ford-BE <aford@beaconembedded.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree <devicetree@vger.kernel.org>, 
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_145448_985606_61883A2C 
X-CRM114-Status: GOOD (  36.55  )
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

On Thu, Dec 2, 2021 at 1:00 PM Adam Ford <aford173@gmail.com> wrote:
>
> On Thu, Dec 2, 2021 at 12:54 PM Tim Harvey <tharvey@gateworks.com> wrote:
> >
> > On Thu, Dec 2, 2021 at 4:29 AM Adam Ford <aford173@gmail.com> wrote:
> > >
> > > On Wed, Dec 1, 2021 at 10:17 PM Adam Ford <aford173@gmail.com> wrote:
> > > >
> > > > The i.MX8M has two Hantro video decoders, called G1 and G2 which appear
> > > > to be related to the video decoders used on the i.MX8MQ, but because of
> > > > how the Mini handles the power domains, the VPU driver does not need to
> > > > handle all the functions, so a new compatible flag is required.
> > > >
> > > > V3 is rebased from git://linuxtv.org/hverkuil/media_tree.git for-v5.17c
> > > > This branch has support for VP9.
> > > >
> > > > I set cma=512M, but this may not be enough memory as some tests appeard to run out of memory
> > > >
> > > > V3 of this series has several changes:
> > > >
> > > > Update imx8m_vpu_hw to add missing 'reg' reference names for G2 and include references to VP9
> > > > Update device tree to remove IMX8MQ_VPU_RESET, remove some duplicate vpu clock parenting
> > > > Fix missing reg-names from vpu_g2 node.
> > > > Apply patch [1] to manage the power domains powering down.
> > > > [1] - https://lore.kernel.org/linux-arm-kernel/20211016210547.171717-1-marex@denx.de/t/
> > > >
> > > > With the above, the following Fluster scores are produced:
> > > >
> > > > G1:
> > > > ./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
> > > > Ran 90/135 tests successfully               in 74.406 secs
> > > >
> > > > ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
> > > > Ran 55/61 tests successfully               in 8.080 secs
> > > >
> > > > G2:
> > > > ./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
> > > > Ran 127/303 tests successfully               in 203.873 secs
> > > >
> > > > Fluster and G-Streamer were both built from their respective git repos using their respective master/main branches.
> > > >
> > >
> > > I should note, that both interrupts appear to be triggering.
> > >
> > > # cat /proc/interrupts |grep codec
> > >  57:      13442          0          0          0     GICv3  39 Level
> > >   38300000.video-codec
> > >  58:       7815          0          0          0     GICv3  40 Level
> > >   38310000.video-codec
> > >
> >
> > Adam,
> >
> > On another thread you had let me know that you also removed the reset
> > from the pgc_vpumix power domain which does appear to resolve the
> > hang:
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index eb9dcd9d1a31..31710af544dc 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -681,7 +681,6 @@
> >                                                 clocks = <&clk
> > IMX8MM_CLK_VPU_DEC_ROOT>;
> >                                                 assigned-clocks =
> > <&clk IMX8MM_CLK_VPU_BUS>;
> >                                                 assigned-clock-parents
> > = <&clk IMX8MM_SYS_PLL1_800M>;
> > -                                               resets = <&src
> > IMX8MQ_RESET_VPU_RESET>;
> >                                         };
> >
> >                                         pgc_vpu_g1: power-domain@7 {
> >
> > That would make such a patch have a 'Fixes commit d39d4bb15310
> > ("arm64: dts: imx8mm: add GPC node")' but of course that vpu domain
> > isn't active until your series so I'm not sure if we should send this
> > separate or squash it with "arm64: dts: imx8mm: Enable VPU-G1 and
> > VPU-G2". I'm also not clear if removing the reset requires some
> > further discussion with Lucas.
>
> Unless there is objection from Lucas, I'll likely make it the first
> patch in the series marking it with a fixes tag so it gets backported,
> then the rest of the series would be adding the bindings, update the
> driver and adding the G1 and G2 nodes.
>

Adam,

I've also gotten decode+display working for vp8/h264 using this series
and gstreamer-1.19.3 (although I have to use software colorspace
conversion)

# source: vp8 software encode on x86
gst-launch-1.0 -v videotestsrc ! vp8enc ! rtpvp8pay ! udpsink
host=172.24.33.15 port=9001
# sink: vp8 hardware decode on imx8mm
gst-launch-1.0 udpsrc port=9001 caps = 'application/x-rtp,
media=(string)video, clock-rate=(int)90000, encoding-name=(string)VP8,
payload=(int)96, ssrc=(uint)3363940374,
timestamp-offset=(uint)3739685909, seqnum-offset=(uint)28161,
a-framerate=(string)30' ! rtpvp8depay ! v4l2slvp8dec ! videoconvert !
kmssink

# source: h264 software encode on x86
gst-launch-1.0 -v videotestsrc ! video/x-raw,width=800,height=480 !
x264enc ! rtph264pay ! udpsink host=172.24.33.15 port=9001
# sink: h264 hardware decode on imx8mm
gst-launch-1.0 udpsrc port=9001 caps = 'application/x-rtp,
media=(string)video, clock-rate=(int)90000,
encoding-name=(string)H264, packetization-mode=(string)1,
profile-level-id=(string)64001f,
sprop-parameter-sets=(string)"Z2QAH6zZQMg9sBagwCC0oAAAAwAgAAAHkeMGMsA\=\,aOvssiw\=",
payload=(int)96, ssrc=(uint)2753453329,
timestamp-offset=(uint)3593065282, seqnum-offset=(uint)12297,
a-framerate=(string)30' ! rtph264depay ! v4l2slh264dec ! videoconvert
! kmssink

# source: vp9 software encode on x86
gst-launch-1.0 -v videotestsrc ! video/x-raw,width=800,height=480 !
vp9enc ! rtpvp9pay ! udpsink host=172.24.33.15 port=9001
# sink: vp9 hardware decode on imx8mm
gst-launch-1.0 udpsrc port=9001 caps = 'application/x-rtp,
media=(string)video, clock-rate=(int)90000, encoding-name=(string)VP9,
payload=(int)96, ssrc=(uint)2246741422,
timestamp-offset=(uint)3441735424, seqnum-offset=(uint)30250,
a-framerate=(string)30' ! rtpvp9depay ! v4l2slvp9dec ! fakesink
^^^ this fails with no-negotiated

Note I have to use videoconvert because v4l2slvp8dev src is
NV12/YUY2/NV12_32L32 and from testing only BGRx appears compatible
with kmssink (even though gst-inspect kmssink says it can sink
NV12/YUY2). With the 800x480 resolution of my display the CPU overhead
of software colorspcae conversion with videoconvert only about 9%

I haven't yet gotten vp9 decode+display working yet as 'rtpvp9depay !
v4l2slvp9dec ! fakesink' does not negotiate and it might be because my
vp9enc source is on an old gstreamer 1.16.

When you post the next series please add:
Tested-By: Tim Harvey <tharvey@gateworks.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
