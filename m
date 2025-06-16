Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A934C71155
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jun 2025 15:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/yp6v3Afk5/bR/RXaC0xG3ktwFaj6lNzRO1xTgixqAs=; b=CD7VhmryEM8J8e
	epDLhG1rMOOTIX1gQHNuVUv50beqHwLOWdrce+T8MsPvmwtGqupOISp+fX2VRKgDXeay+vJ501+J1
	E2Fcx4nRDIMwq0SYuALwGC5vwQecCQdVT4PePpH84unmveUqRmuY9NrAJZpyUH1Zyp0zWnrl7hfj7
	jAwINE8D/KFV07JqmEbI6sqyHwcFmehYBR4yx36GfwFyQtcxDueKfVGDYEit08VzVwFi+PgD9p4Sx
	pLNVdmO5osAKStCX3Fl9GZte8ibN6uOY0fR/gm+HBkzepzxgyH16sGhC+oDifts+xEKmma3fvzunU
	iaOkCKzZpvGTtJoTiMEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBku-00000004sEl-1fRy;
	Mon, 16 Jun 2025 15:28:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBWb-00000004nxL-0d4g;
	Mon, 16 Jun 2025 15:13:30 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 357B7346;
	Mon, 16 Jun 2025 17:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1750086793;
	bh=0HNCExAqJ+LaxU1ueCxhXgS3CX0/GTT4qiqhOCeleZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cd+rEl4LeP/ZHIM4gWEMYhjqXD0/rin9VjD52OOHdZvIkqhRoZaWZn00QN6bJnKA6
	 pVExi1IbQLR4xfrlBC/dpwg8ODX0SRU7pxY8ZM2CFH8LzJOKfAccxMJQ+5H54VHgVS
	 rCMxoyNkNFjfyxiC7+vvZacma5jP5aesiq8AWwhs=
Date: Mon, 16 Jun 2025 18:13:09 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: simona@ffwll.ch, airlied@gmail.com, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, geert@linux-m68k.org,
	tomi.valkeinen@ideasonboard.com, dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org, imx@lists.linux.dev,
	linux-samsung-soc@vger.kernel.org, nouveau@lists.freedesktop.org,
	virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
	intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org
Subject: Re: [PATCH v5 25/25] drm/xlnx: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
Message-ID: <20250616151309.GF10542@pendragon.ideasonboard.com>
References: <20250613090431.127087-1-tzimmermann@suse.de>
 <20250613090431.127087-26-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250613090431.127087-26-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_081329_329063_466A0732 
X-CRM114-Status: GOOD (  14.55  )
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

Hi Thomas,

Thank you for the patch.

On Fri, Jun 13, 2025 at 11:00:44AM +0200, Thomas Zimmermann wrote:
> Call drm_mode_size_dumb() to compute dumb-buffer scanline pitch and
> buffer size. Align the pitch according to hardware requirements.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/gpu/drm/xlnx/zynqmp_kms.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xlnx/zynqmp_kms.c b/drivers/gpu/drm/xlnx/zynqmp_kms.c
> index b47463473472..7ea0cd4f71d3 100644
> --- a/drivers/gpu/drm/xlnx/zynqmp_kms.c
> +++ b/drivers/gpu/drm/xlnx/zynqmp_kms.c
> @@ -19,6 +19,7 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_drv.h>
> +#include <drm/drm_dumb_buffers.h>
>  #include <drm/drm_encoder.h>
>  #include <drm/drm_fbdev_dma.h>
>  #include <drm/drm_fourcc.h>
> @@ -363,10 +364,12 @@ static int zynqmp_dpsub_dumb_create(struct drm_file *file_priv,
>  				    struct drm_mode_create_dumb *args)
>  {
>  	struct zynqmp_dpsub *dpsub = to_zynqmp_dpsub(drm);
> -	unsigned int pitch = DIV_ROUND_UP(args->width * args->bpp, 8);
> +	int ret;
>  
>  	/* Enforce the alignment constraints of the DMA engine. */
> -	args->pitch = ALIGN(pitch, dpsub->dma_align);
> +	ret = drm_mode_size_dumb(drm, args, dpsub->dma_align, 0);
> +	if (ret)
> +		return ret;
>  
>  	return drm_gem_dma_dumb_create_internal(file_priv, drm, args);
>  }

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
