Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FBA6C04A68
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Jul 2022 14:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2okiemRHz2EhxSPE5hRE7eEGy1s3mfk6qSG8KpF93jg=; b=zTvmRuxAVrKjm1
	gVlZnKMDIVCVnr0wdysmnKsyTLEYzZ5BTPoMC3AHpQEFbP0aZC3sVcHikomL13J9rMClIxoMnLoKm
	oTOJWRyhQTWvGON9gIXR1S2WsFxfhyXjt7FdX5h/YZlbw9yHebonRsxp17mge6PQEbev/p3N9pA26
	CDvsr/iCDE5D3fjLWnLUgrdiET/s3k2mew30XlrUYBDFz+usKhCnaijhywX1fz6lFxZSL5h6x3bZc
	bxmCBj9S6PDvuYGfo7RW1uW4QOjy4CxyU0VfATtxKCD9qNoGVgWmibeXTl/Z46KTr9ZbMrFw8qM93
	q3PyPSxmWyJFDRzmC+Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH4NM-00A4xQ-Ke; Thu, 28 Jul 2022 14:20:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH4NA-00A4ox-Tp; Thu, 28 Jul 2022 14:20:22 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3F76B56D;
	Thu, 28 Jul 2022 16:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1659018016;
	bh=q2BB39MP0tZQIZRXCzJWG56ZohL9stJRt4VHYJFO6jI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZdxDrewPgpInaF+/7uxPx56GKvm1lJ9F8meoFeXq4J7bQBXB7t8kpFLE/IGm6bKUx
	 bUA5e4m0I2FcgWDEZ/LA1AFzIAMjQAiYhb1iSWxQBMUHS503HkRXj9bvVTItANOGX2
	 TtGyE9q2UGlzqYgGlSxfCffkO0t1Wvi+XtARQiYE=
Date: Thu, 28 Jul 2022 17:20:13 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: paul.elder@ideasonboard.com
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] media: rkisp1: Add UYVY as an output format
Message-ID: <YuKbHdiZD5JGE/GY@pendragon.ideasonboard.com>
References: <20220714112603.1117335-1-paul.elder@ideasonboard.com>
 <20220714112603.1117335-3-paul.elder@ideasonboard.com>
 <YtcwZSbXlSaaMjcd@pendragon.ideasonboard.com>
 <20220728125259.GL3984498@pyrite.rasen.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220728125259.GL3984498@pyrite.rasen.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220728_072021_142791_2BBAD414 
X-CRM114-Status: GOOD (  35.63  )
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

Hi Paul,

On Thu, Jul 28, 2022 at 09:52:59PM +0900, paul.elder@ideasonboard.com wrote:
> On Wed, Jul 20, 2022 at 01:29:57AM +0300, Laurent Pinchart wrote:
> > On Thu, Jul 14, 2022 at 08:26:03PM +0900, Paul Elder wrote:
> > > Add support for UYVY as an output format. The uv_swap bit in the
> > > MI_XTD_FORMAT_CTRL register that is used for the NV formats does not
> > > work for packed YUV formats. Thus, UYVY support is implemented via
> > > byte-swapping. This method clearly does not work for implementing
> > > support for YVYU and VYUY.
> > > 
> > > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > > 
> > > ---
> > > UYVY for the self path has not been tested because no device supports
> > > it. The rk3399 has a self path, but does not have the
> > > MI_OUTPUT_ALIGN_FORMAT register and thus does not support UYVY. The
> > > i.MX8MP does support UYVY, but does not have a self path.
> > 
> > I'm tempted to drop it then, as the code below isn't correct given that
> > you use the same register for both MP and SP. Let's address MP only for
> > now.
> 
> The same register is used for both MP and SP. They just have different
> bits. Which is why we'd need the read-write cycle, assuming that there
> exists a device that has both an SP and the MI_OUTPUT_ALIGN_FORMAT
> register.

Indeed, I had missed that. The documentation is confusing, the register
is described as "Output align format for main path", has both
mp_byte_swap and sp_byte_swap, but no sp equivalent to mp_lsb_alignment
(maybe the self path doesn't support raw outputs though ?).

I'm OK keeping support for both paths, but I think the
MI_OUTPUT_ALIGN_FORMAT register should then be initialized to a default
value somewhere.

> > > ---
> > >  .../platform/rockchip/rkisp1/rkisp1-capture.c | 40 +++++++++++++++++++
> > >  1 file changed, 40 insertions(+)
> > > 
> > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > > index 85fd85fe208c..77496ccef7ec 100644
> > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > > @@ -97,6 +97,12 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
> > >  		.uv_swap = 0,
> > >  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> > >  		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> > > +	}, {
> > > +		.fourcc = V4L2_PIX_FMT_UYVY,
> > > +		.uv_swap = 0,
> > > +		.yc_swap = 1,
> > > +		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> > > +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> > >  	}, {
> > >  		.fourcc = V4L2_PIX_FMT_YUV422P,
> > >  		.uv_swap = 0,
> > > @@ -231,6 +237,13 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
> > >  		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
> > >  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> > >  		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> > > +	}, {
> > > +		.fourcc = V4L2_PIX_FMT_UYVY,
> > > +		.uv_swap = 0,
> > > +		.yc_swap = 1,
> > > +		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
> > > +		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> > > +		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> > >  	}, {
> > >  		.fourcc = V4L2_PIX_FMT_YUV422P,
> > >  		.uv_swap = 0,
> > > @@ -464,6 +477,20 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
> > >  		rkisp1_write(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL, reg);
> > >  	}
> > >  
> > > +	/*
> > > +	 * uv swapping with the MI_XTD_FORMAT_CTRL register only works for
> > 
> > s@uv@U/V@
> > 
> > > +	 * NV12/NV21 and NV16/NV61, so instead use byte swap to support UYVY.
> > > +	 * YVYU and VYUY cannot be supported with this method.
> > > +	 */
> > > +	if (rkisp1->info->features & RKISP1_FEATURE_MI_OUTPUT_ALIGN) {
> > > +		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT);
> > > +		if (cap->pix.cfg->yc_swap)
> > > +			reg |= RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES;
> > > +		else
> > > +			reg &= ~RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES;
> > > +		rkisp1_write(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT, reg);
> > 
> > As the register is not initialized anywhere, it would be better to write
> > it fully here instead of a read-modify-write cycle. Same comments below.
> > 
> > > +	}
> > > +
> > >  	rkisp1_mi_config_ctrl(cap);
> > >  
> > >  	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_CTRL);
> > > @@ -505,6 +532,19 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
> > >  		rkisp1_write(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL, reg);
> > >  	}
> > >  
> > > +	/*
> > > +	 * uv swapping with the MI_XTD_FORMAT_CTRL register only works for
> > > +	 * NV12/NV21 and NV16/NV61, so instead use byte swap to support UYVY.
> > > +	 * YVYU and VYUY cannot be supported with this method.
> > > +	 */
> > > +	if (rkisp1->info->features & RKISP1_FEATURE_MI_OUTPUT_ALIGN) {
> > > +		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT);
> > > +		if (cap->pix.cfg->yc_swap)
> > > +			reg |= RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_BYTES;
> > > +		else
> > > +			reg &= ~RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_BYTES;
> > > +		rkisp1_write(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT, reg);
> > > +	}
> > 
> > Missing blank line.
> > 
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > >  	rkisp1_mi_config_ctrl(cap);
> > >  
> > >  	mi_ctrl = rkisp1_read(rkisp1, RKISP1_CIF_MI_CTRL);

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
