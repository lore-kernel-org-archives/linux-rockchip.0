Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D71BFC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 11:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yFKoBMdvqGeQ1OP6PHWxOxY5X5hIohvtZnOM8h0Bw0=; b=Sd/frDuoRHJAfu
	WGFRGL8+oSl/LueMGwrEE0aOs2P/hcwDGlN48H/5KMO989NJ16JN+e/zxmnvTXYHE3JTQswBBql44
	svalv1hfElNLNN97rIasrtD4NvwOfuiixGd4SI9wAohbB0WowTleJR6o3hrlLuOPjNJTRoELJbO2o
	WivMl/venICsOKtcgQlK66aE3fsSPQpJVNauP5UJ2LiH+Ok7fjHGarAiCykSTNb9cqmmhLDpGifJA
	Y42fPpHAaRoLfMU1zujdoCkMpIEj99WbrKneuZTdj2cjL2nQU5Dq0mZ9LzGgqYaRdL0qR/saWRDw1
	zMbuqIx0gLhgGcVTdA5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRBlO-00HMMJ-6J; Mon, 07 Mar 2022 11:42:54 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRBlL-00HMLI-ON
 for linux-rockchip@lists.infradead.org; Mon, 07 Mar 2022 11:42:53 +0000
Received: (Authenticated sender: jacopo@jmondi.org)
 by mail.gandi.net (Postfix) with ESMTPSA id BFAE5FF805;
 Mon,  7 Mar 2022 11:42:46 +0000 (UTC)
Date: Mon, 7 Mar 2022 12:42:45 +0100
From: Jacopo Mondi <jacopo@jmondi.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 01/17] media: rkisp1: capture: Initialize entity
 before video device
Message-ID: <20220307114245.lxujtjjvzs3uuhoa@uno.localdomain>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
 <20220304171925.1592-2-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220304171925.1592-2-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_034251_970214_8F2FFB0E 
X-CRM114-Status: GOOD (  15.96  )
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

Hi Laurent

On Fri, Mar 04, 2022 at 07:19:09PM +0200, Laurent Pinchart wrote:
> The media_entity embedded in the video_device needs to be initialized
> before registering the video_device. Do so.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

Reviewed-by: Jacopo Mondi <jacopo@jmondi.org>

Thanks
  j

> ---
>  .../platform/rockchip/rkisp1/rkisp1-capture.c   | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index c95c00a91180..9c11f2b8e5f5 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1372,22 +1372,25 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>
>  	vdev->queue = q;
>
> +	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
> +	if (ret)
> +		return ret;
> +
>  	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
>  	if (ret) {
>  		dev_err(cap->rkisp1->dev,
>  			"failed to register %s, ret=%d\n", vdev->name, ret);
> -		return ret;
> +		goto error;
>  	}
> +
>  	v4l2_info(v4l2_dev, "registered %s as /dev/video%d\n", vdev->name,
>  		  vdev->num);
>
> -	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
> -	if (ret) {
> -		video_unregister_device(vdev);
> -		return ret;
> -	}
> -
>  	return 0;
> +
> +error:
> +	media_entity_cleanup(&vdev->entity);
> +	return ret;
>  }
>
>  static void
> --
> Regards,
>
> Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
