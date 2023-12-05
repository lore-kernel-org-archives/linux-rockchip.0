Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FD00C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 09:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSOSqAKuBO5Pizf0v0C2VqNryKKM4yQliNHQf9RVDFU=; b=Xk8S9BcOBmzsLP
	WeDVXTWhYqtTS9J44KySCqFwfGeS996LGwputbR8MAVtyexVpR9a1cgRs5QF75IG/bPuaQbCAZSCL
	4TBWjNsJOJ1vSucOWBKzRiFyEFSPw63k2+O64QAGzlfJAJn9VSWEmSw7wKiVOppwqlL5tFimEqBmZ
	680cSE0EgDBngy73zOMKNw5/LZEeuPynetppcWpr7Lx09ICnVfPLGz+unBTeTuLKEiGWgzxgSlH0P
	M/WiuNlbEclS07B4diHFXqnutKhf19z3BvY36N26A52XcRYgyloW+ZIri2gzOKQV0SeF9qhHtY15J
	Xf8Lrg+IeFZCi8eOJFKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rASBn-006uCK-2Y;
	Tue, 05 Dec 2023 09:58:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rASBk-006uAp-2E
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 09:58:02 +0000
Received: from pyrite.rasen.tech (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0A94829B;
	Tue,  5 Dec 2023 10:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701770236;
	bh=C5gHCytbW11+M0BtmBXLxYyrGRVxVUELDHlv6s7duS0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jgdHg7//0hH1S+6mbtE6X4c33kbMK0nIfjLAuEGf5sZxY4oDm5BZ7Ul+Sia56y+oj
	 UOBhZ2q+GFnvQvqQqNo9i/G5sr8z30PJLKnXj2H8EOex9P4dMylOpFUZgCMy10xkk3
	 t0l1EdR4c6zhPqqvYeHMlppNmFbX9TVG1LaBonnQ=
Date: Tue, 5 Dec 2023 18:57:48 +0900
From: Paul Elder <paul.elder@ideasonboard.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] media: rkisp1: resizer: Stop manual allocation of
 v4l2_subdev_state
Message-ID: <ZW70HFKQRSxY3wm6@pyrite.rasen.tech>
References: <20231126020948.2700-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231126020948.2700-1-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_015800_888104_EE21676E 
X-CRM114-Status: GOOD (  26.84  )
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

On Sun, Nov 26, 2023 at 04:09:48AM +0200, Laurent Pinchart wrote:
> Supported media bus codes on the resizer sink pad are identical to the
> ISP source pad. The .enum_mbus_code() handler thus delegates the
> enumeration to the ISP's operation. This is problematic for two
> reasons:
> 
> - Format enumeration on the ISP source pad is dependent on the format
>   configured on the ISP sink pad for the same subdev state (TRY or
>   ACTIVE), while format enumeration on the resizer sink pad should
>   return all formats supported by the resizer subdev, regardless of the
>   ISP configuration.
> 
> - Delegating the operation involves creating a fake v4l2_subdev_state on
>   the stack to pass to the ISP .enum_mbus_code() handler. This gets in
>   the way of evolution of both the ISP enumeration handler and, more
>   generally, the V4L2 subdev state infrastructure.
> 
> Fix those two issues by implementing format enumeration manually for the
> resizer.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
> Paul, Kieran, would you be able to test this for regressions ?
> ---
>  .../platform/rockchip/rkisp1/rkisp1-resizer.c | 38 ++++++++++++-------
>  1 file changed, 24 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> index f7af360dcb28..a8e377701302 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> @@ -330,12 +330,8 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>  {
>  	struct rkisp1_resizer *rsz =
>  		container_of(sd, struct rkisp1_resizer, sd);
> -	struct v4l2_subdev_pad_config dummy_cfg;
> -	struct v4l2_subdev_state pad_state = {
> -		.pads = &dummy_cfg
> -	};
> -	u32 pad = code->pad;
> -	int ret;
> +	unsigned int index = code->index;
> +	unsigned int i;
>  
>  	if (code->pad == RKISP1_RSZ_PAD_SRC) {
>  		/* supported mbus codes on the src are the same as in the capture */
> @@ -355,15 +351,29 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>  		return 0;
>  	}
>  
> -	/* supported mbus codes on the sink pad are the same as isp src pad */
> -	code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
> -	ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
> -			       &pad_state, code);
> +	/*
> +	 * Supported mbus codes on the sink pad are the same as on the ISP
> +	 * source pad.
> +	 */
> +	for (i = 0; ; i++) {
> +		const struct rkisp1_mbus_info *fmt =
> +			rkisp1_mbus_info_get_by_index(i);
>  
> -	/* restore pad */
> -	code->pad = pad;
> -	code->flags = 0;
> -	return ret;
> +		if (!fmt)
> +			break;
> +
> +		if (!(fmt->direction & RKISP1_ISP_SD_SRC))
> +			continue;
> +
> +		if (!index) {
> +			code->code = fmt->mbus_code;
> +			return 0;
> +		}
> +
> +		index--;
> +	}
> +
> +	return -EINVAL;
>  }
>  
>  static int rkisp1_rsz_init_state(struct v4l2_subdev *sd,
> -- 
> Regards,
> 
> Laurent Pinchart
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
