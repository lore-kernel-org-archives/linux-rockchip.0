Return-Path: <SRS0=W4bh=E5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 070B3C2D0E4
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2020 12:49:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 72B8620857
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2020 12:49:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="NiSrfEE7";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=vanguardiasur-com-ar.20150623.gappssmtp.com header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.b="xzdEz6kB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 72B8620857
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9epz+6lt7f6JibnUGc7JBsYRG0rV90dbg7R+ajIx8u4=; b=NiSrfEE77xLeEtdytg/64gS3y
	b2QtRMEV8Uu9a6s2hOumHLrDPXICIyGMHAHav9FuomktjT9KDMKJnVCeaDBsGSXTMNRmqsHORQH+u
	54OKV+hEOpSxVuZYBMB302JS6tJqxZES5fCjs4cnu8S2jhGVp5LX78VfffGiTl2tVMu33g6CG7LjW
	4ahwlqGMxD6w/kOwIvgW2RcnZJZBGQwzMJDOgMfhuvrkWbXgSw16HtnNAxSa9SWDVclqxFVjqGfiW
	tnw+gBaEJvqMGoan4PpA01hGBEzqvO6W82bQt16NZ8HHSaK4gk/tRmqz0Psj6MgiemMa0ItrU3fJN
	4aHOC0I4g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khBHO-00025L-Jk; Mon, 23 Nov 2020 12:49:14 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khBHH-00022v-DU
 for linux-rockchip@lists.infradead.org; Mon, 23 Nov 2020 12:49:12 +0000
Received: by mail-ed1-x544.google.com with SMTP id cq7so16937019edb.4
 for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2020 04:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GyUtXV4I7oufOCmRehbSbZihfE2dNAsjJjjjrmEuICw=;
 b=xzdEz6kB4zBik1uOatoshaBm6LaSKmUojijYt8h9dh2QGrUS76eruUvLIzkSH0eGEe
 DOl+Li0VGvprWuzJGUffQBqShHCUBvn0FG05F8PWA7Ix6v7nmuwvqau9BuAUXtBuzc9P
 biFtftXYWUdPL666mAAt48VYycPt4mDE/nFamResc8Jm6tepnfAiJpTSHUAnPk79ypk0
 LDR50k++wjeWldDm+gC03roaoqPBQQqL0fsaZikOBH87K99u1MRrLTd13dwLHowdkXpQ
 ztf6f/03UDNnrWdRmhDlhaGsgjm9AQ0a+uIiw96KobpddpBrzU5tcbP8H1dC1S7gVEf2
 xPfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GyUtXV4I7oufOCmRehbSbZihfE2dNAsjJjjjrmEuICw=;
 b=lhoo7JStp5dXQ/vok3TS+uOYcZ+rQw6pYrlRvZZZNLOVqUKYJ6AuKaDp2Bb8cTL1u6
 dn86haGMOycdeT62xPVERMyVOPISGTZZKxdHOUMsZUy8PQZW7Fu9SwebbHY50t/9TxZM
 bUEBt6hTWgKg844MbV3pud+GEJyFYLBNpg08EAsSQjxr1ETD16nCMBWnloERcTKrk4Ew
 cuy3Akq36dTBPaSobhs1N9bwAysVqfWcnZu3y9ZvJq/5BfVNHA/iW6/X749j1ZGFgYPO
 LrHUw4KNwy+MpKQ2SgoZ3re6qEjZvaS189yIG8rm5zLOdd5ffhmFlkr3l6RVFgFR6Mqn
 NmnQ==
X-Gm-Message-State: AOAM532roJA/RRFHmFWi1FrM+6NwnAeMR2wDhIH+Z5OhxVRrYutolwi7
 McldBvS2/Y5zi13ZTv9nFJO3oVi4xX0vHrvDvOhNbw==
X-Google-Smtp-Source: ABdhPJzlanZtbb9BGdfii0DcE9OSCvj2yyVYSpep2MYBMNOh1SH5wMpSHxztxzQJLoz9y7yPdd5mKxJnY6cjP3OZ38I=
X-Received: by 2002:aa7:cb52:: with SMTP id w18mr38774344edt.362.1606135744041; 
 Mon, 23 Nov 2020 04:49:04 -0800 (PST)
MIME-Version: 1.0
References: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
 <20200922165535.1356622-3-maxime.chevallier@bootlin.com>
 <CAAEAJfCcPRnyjPozXG9rjovO+cJ6ZZBadShs_X9DQCrjSj7mUw@mail.gmail.com>
 <20201123082122.49a08ebb@bootlin.com>
In-Reply-To: <20201123082122.49a08ebb@bootlin.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 23 Nov 2020 09:48:51 -0300
Message-ID: <CAAEAJfD9r=skAPAEZX50Y-EnbeZRy+LEnERR_rvkcoghESEn2w@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] media: rockchip: Introduce driver for Rockhip's
 camera interface
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201123_074907_820281_664F819C 
X-CRM114-Status: GOOD (  38.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Maxime,

On Mon, 23 Nov 2020 at 04:21, Maxime Chevallier
<maxime.chevallier@bootlin.com> wrote:
>
> Hi Ezequiel, and thanks a lot for the review !
>
> On Fri, 2 Oct 2020 14:35:28 -0300
> Ezequiel Garcia <ezequiel@vanguardiasur.com.ar> wrote:
>
> > Hi Maxime,
> >
> >Thanks to Dafna, I found the patch ^_^
> >
> >The driver looks real good. Just a few comments below.
> >
> >Is the driver passing latest v4l2-compliance tests?
>
> I'll post them along with the next iteration of the series.
>
> >> +config VIDEO_ROCKCHIP_VIP
> >> +       tristate "Rockchip VIP (Video InPut) Camera Interface"
> >> +       depends on VIDEO_DEV && VIDEO_V4L2
> >> +       depends on ARCH_ROCKCHIP || COMPILE_TEST
> >> +       select VIDEOBUF2_DMA_SG
> >> +       select VIDEOBUF2_DMA_CONTIG
> >> +       select V4L2_FWNODE
> >> +       select V4L2_MEM2MEM_DEV
> >> +       help
> >> +         This is a v4l2 driver for Rockchip SOC Camera interface.
> >> +
> >> +         To compile this driver as a module choose m here.
> >> +
> >
> >Please add ... "the module will be called {the name}".
>
> Sure, I will do !
>
> [...]
>
> >> +#define VIP_REQ_BUFS_MIN       1
> >
> >I think you might want to have more than 1 buffer
> >as minimum. How about 3? Two for the ping and pong,
> >and one more in the queue.
>
> Yes you're correct, 3 should be the strict minimum required buffers
> here, I didn't update that after adding the dual-buffering mode.
>
> >> +#define VIP_MIN_WIDTH          64
> >> +#define VIP_MIN_HEIGHT         64
> >> +#define VIP_MAX_WIDTH          8192
> >> +#define VIP_MAX_HEIGHT         8192
> >> +
> >> +#define RK_VIP_PLANE_Y                 0
> >> +#define RK_VIP_PLANE_CBCR              1
> >> +
> >> +#define VIP_FETCH_Y_LAST_LINE(VAL) ((VAL) & 0x1fff)
> >> +/* Check if swap y and c in bt1120 mode */
> >> +#define VIP_FETCH_IS_Y_FIRST(VAL) ((VAL) & 0xf)
> >> +
> >> +/* Get xsubs and ysubs for fourcc formats
> >> + *
> >> + * @xsubs: horizontal color samples in a 4*4 matrix, for yuv
> >> + * @ysubs: vertical color samples in a 4*4 matrix, for yuv
> >> + */
> >> +static int fcc_xysubs(u32 fcc, u32 *xsubs, u32 *ysubs)
> >
> >See below, you should be using v4l2_fill_pixfmt_mp.
> >
> >> +{
> >> +       switch (fcc) {
> >> +       case V4L2_PIX_FMT_NV16:
> >> +       case V4L2_PIX_FMT_NV61:
> >> +               *xsubs = 2;
> >> +               *ysubs = 1;
> >> +               break;
> >> +       case V4L2_PIX_FMT_NV21:
> >> +       case V4L2_PIX_FMT_NV12:
> >> +               *xsubs = 2;
> >> +               *ysubs = 2;
> >> +               break;
> >> +       default:
> >> +               return -EINVAL;
> >> +       }
> >> +
> >> +       return 0;
> >> +}
> >> +
> >> +static const struct vip_output_fmt out_fmts[] = {
> >> +       {
> >> +               .fourcc = V4L2_PIX_FMT_NV16,
> >> +               .cplanes = 2,
> >
> >From what I can see, you are only using this
> >information to calculate bytesperline and sizeimage,
> >so you should be using the v4l2_fill_pixfmt_mp() helper.
>
> You're correct, it indeed makes things much easier and allowed to
> removed a lot of redundant info here !
>
>
> >> +static void rk_vip_set_fmt(struct rk_vip_stream *stream,
> >> +                          struct v4l2_pix_format_mplane *pixm,
> >> +                          bool try)
> >> +{
> >> +       struct rk_vip_device *dev = stream->vipdev;
> >> +       struct v4l2_subdev_format sd_fmt;
> >> +       const struct vip_output_fmt *fmt;
> >> +       struct v4l2_rect input_rect;
> >> +       unsigned int planes, imagesize = 0;
> >> +       u32 xsubs = 1, ysubs = 1;
> >> +       int i;
> >> +
> >
> >I was expecting to see some is_busy or is_streaming check
> >here, have you tested what happens if you change the format
> >while streaming, or after buffers are queued?
>
> Yes correct. I used the stream->state private flag here, but I it was
> also brought to my attention that there also exists a vb2_is_busy()
> helper, but I'm unsure if it would be correct to use it here.
>

Long story, short: when the application creates buffers,
with e.g. REQBUF (see vb2_core_reqbufs), it will call
the driver (vb2_ops.queue_setup), to get the planes' sizes.

In the current model, for a given vb2 queue, all the buffers
are the same size. In practice, the simpler way to express
this is not allowing S_FMT if there are buffers allocated
in the queue (vb2_is_busy).

You could relax the vb2_is_busy requirement in your driver,
but I usually find it's not worth the trouble.

>
> >> +
> >> +static int rk_vip_g_input(struct file *file, void *fh, unsigned int *i)
> >> +{
> >> +       *i = 0;
> >> +       return 0;
> >> +}
> >> +
> >> +static int rk_vip_s_input(struct file *file, void *fh, unsigned int i)
> >> +{
> >
> >Only one input, why do you need to support this ioctl at all?
>
> I actually saw a fair amount of existing drivers implementing these
> callbacks even for only one input, so I don't really know if I should
> remove it or not ?
>

S_INPUT is used e.g. on capture devices that have multiple
inputs and can capture from one input at a time.

If the ioctl is empty like this, the driver can simply not support
the ioctl.

Best regards,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
