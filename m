Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B60F1C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 13:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRcsS1YvXuMwEm66L8YYAWVFNzQT1TsptVm+oxmnBNY=; b=j8XPkvZNaA4b8G
	SL8BHXe6pDzz5sHCP6Rq4znoqC0bUlXSGw1Hus84RqmEohQj92Jt7j1kMv1+5RNF4K/y8H9nTvT6e
	qIFgpA7TwOiMXBIZWkb8IKDAeCCXlrc/tps4jTVwhCcxtOb7tYrwAsDxQgYBdZtS5qphFzF/qXhUU
	XfYCfGrQGWwvRIzS0osC5ArMIxzLof4wj+t68G2jhHcED6aQRZWEcbjLXh0vqEe1guQyVdWjQ/vWY
	SpjjSzNgzWQi+VpWRom6GPW3exTDG7ZVwpycz7if2YlD8NQ6gT8IJ4c21oKMHZ5OvqtsylxALOvuk
	GIiNhfxFlzj++hbvGuQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxqo7-005nOQ-AG; Thu, 16 Dec 2021 13:28:27 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxqWN-005ekr-6p; Thu, 16 Dec 2021 13:10:10 +0000
Received: by mail-ed1-x532.google.com with SMTP id y13so86602608edd.13;
 Thu, 16 Dec 2021 05:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=psqq8AxoCtsUWk+9+3wi7F1REcnczjIneOZP6k7X4Bw=;
 b=l4/fnlsaIWrU7XKiQ7Y1Xotl89tt0lQGwCgppt2kzLRde0Zmvr3uL/Twu8Q7HJmzBR
 h4+y76Vejnslwze2Z+R8qRc4gxovJ/kYrOq7ftE7Y9OdEMUi4w8BXAZots4MkDbo6uNt
 5BZfMIA14nVRhnyWayWC4kykR9tqSlO4q9yYaNPdWpqtfzwWnkCKsaxiPU0ydjvc4WtN
 iD/9tLaLxnFTHnLTxvOiOsLKVvImmerZK+VlpUahAATlZQZ8TkrZKYFQewtGRxQ4AgiM
 zGCJX9iDSYqMQcqCaFNJz6Nth6NbTQ2TahaYIJVvz3oOXl8EEmGVcYJA9YilTEaNnPYR
 UpBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=psqq8AxoCtsUWk+9+3wi7F1REcnczjIneOZP6k7X4Bw=;
 b=OKmC4D61Cr8IXUfYFQY5vya051fUC2QHF20PEHsV/Aba+LrVGQrcGu277VSbBFes0v
 OM1vheOvO92IIiwk8FfyTbh/7MotecGVLc8ftameTur03yqnyh2yOBK3onFDzBeK8UXz
 YxdLxq4GPHqtOlo8rx1DOqRN5nBsh4rPfuJy/Hoe3zV46hom9g6+IersMrC00Q9aMWN9
 8YVqVGH9OB5Zmoo3mgpmaxGFz3gyVdKjMGHKK9sYAbB0tlfvnqP29NFQdm6dmOD+GK8m
 0iTcDZBRZgQ1LHie1yV0OuQRWkCGIf8Z7oG9CguBNXD+YDzVGpyKkgaJ8M0nxM9uMhsw
 /o5g==
X-Gm-Message-State: AOAM531EuZMRu9sPRdqCxbcI1ozCrGE828FdrWWXO5yz3IGKWmbydi9b
 Xap6yXwNXqurffR+OApYN3OiELL4lPiAdIbWIx4=
X-Google-Smtp-Source: ABdhPJyJ7BpFsLTq0XQBuilAPWj5q7Udd6T7s6oVqbuEeN+5S7fO/uyVzU/41WmJNvE51tkKZn15ArvhQa/v+6Od+xc=
X-Received: by 2002:a17:907:2d12:: with SMTP id
 gs18mr3229632ejc.198.1639660205253; 
 Thu, 16 Dec 2021 05:10:05 -0800 (PST)
MIME-Version: 1.0
References: <20211216111256.2362683-1-aford173@gmail.com>
 <Ybsyd9/nRrszJ5f8@eze-laptop>
In-Reply-To: <Ybsyd9/nRrszJ5f8@eze-laptop>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 16 Dec 2021 07:09:53 -0600
Message-ID: <CAHCN7xJGpjCw5TLOXJ1r-KtcRNcUVqwa2qhmwCrLuTf4aJqBkQ@mail.gmail.com>
Subject: Re: [PATCH V2 00/10] media: hantro: imx8mq/imx8mm: Let VPU decoders
 get controlled by vpu-blk-ctrl
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media <linux-media@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>, 
 Adam Ford-BE <aford@beaconembedded.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_051007_310280_78CA8298 
X-CRM114-Status: GOOD (  42.54  )
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

On Thu, Dec 16, 2021 at 6:35 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> Hi Adam,
>
> The series looks really great.
>
> On Thu, Dec 16, 2021 at 05:12:45AM -0600, Adam Ford wrote:
> > Both the i.MX8MQ and i.MX8MM have G1 and G2 decoders.
> > The two decoders are similar, but the imx8mm lacks the
> > post-processor, so they will have distinct compatible flags.
> >
> > From what I can tell, the G2 decoder wasn't working, so splitting
> > the i.MX8MQ VPU into G1 and G2 makes it easier to control them
> > independently since the TRM of both the i.MX8MQ and
> > i.MX8MM list them as distinct IP blocks. This also allowed G2 to
> > become available.
> >
> > With them being split, the power-domain can shift to the
> > vpu-blk-ctrl which is available on both i.MX8MQ and i.MX8MM,
> > but some of bits are different, so they'll have separate bindings.
> >
> > Lastly, with the G1 and G2 operational, enable the i.MX8MM.
> > On the i.MX8MM, the clock speed of 600MHz was chosen to match
> > the default of the kernel repo from NXP and can be overwritten
> > by board files for anyone who under/over volts the power rail.
> >
> > There seems to be some disagreement between the TRM and the Datasheet
> > for the imx8mq as to whether the speed should be 300MHz (TRM) or
> > 600MHz (datasheet), so feedback from NXP would be very much
> > appreciated.
> >
> > The repo used as the starting point was:
> > git://linuxtv.org/hverkuil/media_tree.git for-v5.17e
> >
>
> I believe you should be able to rebase on top of
> media_tree master. As far as I can see, it contains the VP9
> support you need.
>
> Also, please cherry-pick the following fix from Benjamin
>
> https://patchwork.linuxtv.org/project/linux-media/patch/20211208164418.848790-1-benjamin.gaignard@collabora.com/
>
> This is queued and should land on the master branch very soon.
>
> > Fluster was run on both i.MX8MM and i.MX8MQ
> >
> > At 600 MHz, the i.MX8MM had the following:
> >
> > ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
> > Ran 55/61 tests successfully               in 8.299 secs
> >
> > ./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
> > Ran 90/135 tests successfully               in 71.200 secs
> >
> > ./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
> > Ran 139/303 tests successfully               in 218.079 secs
>
> I imagine the reason H264 and VP9 tests take so long
> is some pixelformat conversion somewhere. It would be great
> if Fluster could have test vectors ready in the pixelformat
> the hardware produces :-)
>
> >
> > The i.MX8MQ had the following:
> >
> > ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
> > Ran 55/61 tests successfully               in 7.732 secs
> >
> > ./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
> > Ran 90/135 tests successfully               in 58.558 secs
> >
> > ./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
> > Ran 144/303 tests successfully               in 271.373 secs
> >
>
> ... in any case, the fact that fluster is passing is already
> telling us the driver is in good shape. How many jobs is the above
> running in parallel?
>
> If you want to do some other tests, you can build a gstreamer
> pipeline, with sync=false, and decode a few 1080p video, e.g.
> https://jell.yfish.us/.
>
> Something like gst-launch-1.0 filesrc ! decodebin ! fakevideosink, or
> so.
>
> Then, you can run the pipeline in parallel as many times as you want:
>
> gst-launch-1.0 filesrc ! decodebin ! fakevideosink filesrc ! decodebin ! fakevideosink filesrc ! decodebin ! fakevideosink ...
>
> (GStreamer lets you concatenate src ! sink src ! sink, in the same
> gst-launch-1.0 invocation).
>
> > V2:  Remove references to legacy dt-binding from YAML, but keep
> >      it in the driver so older device trees can still be used.
> >      Fix typos in YAML
> >      Remove reg-names, interrupt-names, and clock-names from YAML,
> >      since each node will only have one of each, they're not necessary
> >      Add Fluster scores to cover letter for i.MX8MQ
> >
>
> Looks great.

Any change you could give your acked-by or reviewed-by to the patches?
 Even if they need some work, I can carry those along to the next
revision when I do the work you request.

adam



>
> Thanks,
> Ezequiel
>
> > Adam Ford (7):
> >   dt-bindings: media: nxp,imx8mq-vpu: Split G1 and G2 nodes
> >   media: hantro: Allow i.MX8MQ G1 and G2 to run independently
> >   arm64: dts: imx8mq: Enable both G1 and G2 VPU's with vpu-blk-ctrl
> >   arm64: dts: imx8mm: Fix VPU Hanging
> >   dt-bindings: media: nxp,imx8mq-vpu: Add support for G1 and G2 on
> >     imx8mm
> >   media: hantro: Add support for i.MX8MM
> >   arm64: dts: imx8mm: Enable Hantro G1 and G2 video decoders
> >
> > Lucas Stach (3):
> >   dt-bindings: power: imx8mq: add defines for VPU blk-ctrl domains
> >   dt-bindings: soc: add binding for i.MX8MQ VPU blk-ctrl
> >   soc: imx: imx8m-blk-ctrl: add i.MX8MQ VPU blk-ctrl
> >
> >  .../bindings/media/nxp,imx8mq-vpu.yaml        | 93 +++++++++++--------
> >  .../soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml      | 71 ++++++++++++++
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 23 ++++-
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 63 ++++++++-----
> >  drivers/soc/imx/imx8m-blk-ctrl.c              | 68 +++++++++++++-
> >  drivers/staging/media/hantro/hantro_drv.c     |  3 +
> >  drivers/staging/media/hantro/hantro_hw.h      |  3 +
> >  drivers/staging/media/hantro/imx8m_vpu_hw.c   | 75 ++++++++++++---
> >  include/dt-bindings/power/imx8mq-power.h      |  3 +
> >  9 files changed, 324 insertions(+), 78 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml
> >
> >
> > base-commit: d1888b0bfd2ddef2e8a81505ffa200b92cc32e0c
> > --
> > 2.32.0
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
