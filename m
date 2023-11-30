Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CDA3C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 13:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23NivCPQXVEcAIGvFE2XnaG2sWUolMNv+so/E1GRKqo=; b=H1jd1v88G+Dqz4
	zLSDlxt+XIiDb1i1wJUTTU/juT5kIJa2gQhy9125x81LlFZxzO5Gd2uEDnGDG91LpgDpVPbDuArer
	X5AcT5i8yosiz4oSS1l0TLu1bgr/TugY8iSa9AzZ80WDAVUxf+YPvx1ycOCKNbvp916xFaV5ohWS1
	VTrKa7/+0LZqCJVXp6dutcIO8oYxfl/AVkLr3X2KbBgnQvwU7dKWNGF5J1SwvtsFMv2oKdC96qcwZ
	3sk7zxJwkfMMz4H1vGigtr7ARNG+Bs1urziV9y+m26m6QAc+WRbsgg+A3cZRkXdv6GfFVJHZzn/e+
	IWfh/rZM5mpbvuPpaGCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8hMS-00B0Vv-34;
	Thu, 30 Nov 2023 13:45:48 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8hMP-00B0Uq-1l;
	Thu, 30 Nov 2023 13:45:46 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8C80155;
	Thu, 30 Nov 2023 14:45:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701351907;
	bh=XHpARKgcvdjeAqbtIxtvOde4zZgRWl+NFysb0Gz1TpI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ox4zOnnGPuQWmJwVUbeyvRZWzI2YNcP8mXjBQ9GlN7B45LOxdmpB75fncpTJzv6X4
	 bUnOrXo9MY1a/MkSyXx2fijg8PJv1AEHuNurpX+O9OyUP5kVscyupg3kUkZg+ZH2Vr
	 /n+g0BvDG8wle0BfT+1NOcUcdBfw/HkJg85dFsNM=
Date: Thu, 30 Nov 2023 15:45:50 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	kieran.bingham@ideasonboard.com, tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/3] media: rkisp1: regs: Consolidate MI interrupt wrap
 fields
Message-ID: <20231130134550.GN8402@pendragon.ideasonboard.com>
References: <20231129092956.250129-1-paul.elder@ideasonboard.com>
 <20231129092956.250129-2-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231129092956.250129-2-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_054545_722046_011ED388 
X-CRM114-Status: GOOD (  16.17  )
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

Thank you for the patch.

On Wed, Nov 29, 2023 at 06:29:54PM +0900, Paul Elder wrote:
> Consolidate the wraparound fields in the memory interface interrupt
> status registers, so that it can be more succinctly expressed by taking
> the stream ID (main or self) as a parameter.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> index 350f452e676f..bea69a0d766a 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> @@ -172,12 +172,9 @@
>  #define RKISP1_CIF_MI_FRAME(stream)			BIT((stream)->id)
>  #define RKISP1_CIF_MI_MBLK_LINE				BIT(2)
>  #define RKISP1_CIF_MI_FILL_MP_Y				BIT(3)
> -#define RKISP1_CIF_MI_WRAP_MP_Y				BIT(4)
> -#define RKISP1_CIF_MI_WRAP_MP_CB			BIT(5)
> -#define RKISP1_CIF_MI_WRAP_MP_CR			BIT(6)
> -#define RKISP1_CIF_MI_WRAP_SP_Y				BIT(7)
> -#define RKISP1_CIF_MI_WRAP_SP_CB			BIT(8)
> -#define RKISP1_CIF_MI_WRAP_SP_CR			BIT(9)
> +#define RKISP1_CIF_MI_WRAP_Y(stream)			BIT(4 + (stream)->id * 3)
> +#define RKISP1_CIF_MI_WRAP_CB(stream)			BIT(5 + (stream)->id * 3)
> +#define RKISP1_CIF_MI_WRAP_CR(stream)			BIT(6 + (stream)->id * 3)
>  #define RKISP1_CIF_MI_DMA_READY				BIT(11)
>  
>  /* MI_STATUS */

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
