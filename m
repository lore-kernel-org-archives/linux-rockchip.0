Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D44A7C61D97
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 15:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeG9h/7N6la4qQTncCTJ8zYpuTlfXKo6GxKO1oVNjbI=; b=n5BRf1UQ9uWMSl
	1yCWAdXd99aMt6FCuP/bkLkQe3GX2Ld/73AQaS8POAkZw3oqytjk6FKRodOvSyU4/Ka/XCtTyLBkt
	KDOV+TXvIZkDCuTqpJOTNIJPfdxhCKwedZmBdB9RIGpIkLKTm9psOw2pEZIqQDwRba5oA74N/76yb
	QHfjF6zkseN/sDXrQ4fWxSVDTxQl8OXpTJlAohevjONFqHbvgZl6D1kR4TOSdb/v9mn1Y75VJwEFE
	buh8zsXTx5DDPY4OEZpgzZJ/P9RGQ4Op/hS8NWQfMqugQAlVq75fCUbwQ5J1H474XsizpgN5aNFl6
	FNdEq6K+/0PYQxc9gTWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pNu-002JwP-2d;
	Wed, 22 Nov 2023 15:43:26 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pNr-002Jt1-1B;
	Wed, 22 Nov 2023 15:43:24 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 947C8276;
	Wed, 22 Nov 2023 16:42:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1700667768;
	bh=k29ozEbJ8zlLnjX66MhNGx4brAb6opLBW5VLft4t83g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hnMtkywL1K930hJV+LYSEbgVBb/a2anGMk3b/mOd+i4Gy3ZO8YKZLlyHZTkH9HUpH
	 b1JBkvYGM0fbqWNOEXvbQyQ3tiIHw5TP2y+o+TjvtLcTRRcoit5kYVOUdg/gye8hOJ
	 6a45U4Ho++QFBds3fX0zShk+DxGra47hG4XBi8+c=
Date: Wed, 22 Nov 2023 17:43:26 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jacob Chen <jacob2.chen@rock-chips.com>,
	Yichong Zhong <zyc@rock-chips.com>,
	Shunqian Zheng <zhengsq@rock-chips.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Eddie Cai <eddie.cai.linux@gmail.com>,
	Allon Huang <allon.huang@rock-chips.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] media: rkisp1: Fix memory leaks in
 rkisp1_isp_unregister()
Message-ID: <20231122154326.GI3909@pendragon.ideasonboard.com>
References: <20231122-rkisp-fixes-v1-0-1958af371e39@ideasonboard.com>
 <20231122-rkisp-fixes-v1-2-1958af371e39@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122-rkisp-fixes-v1-2-1958af371e39@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_074323_540349_904CA12D 
X-CRM114-Status: GOOD (  14.30  )
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

Hi Tomi,

Thank you for the patch.

On Wed, Nov 22, 2023 at 04:42:23PM +0200, Tomi Valkeinen wrote:
> Add missing call to v4l2_subdev_cleanup() to fix memory leak.
> 
> Fixes: 2cce0a369dbd ("media: rkisp1: isp: Use V4L2 subdev active state")
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index 88ca8b2283b7..45d1ab96fc6e 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -933,6 +933,7 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
>  		return;
>  
>  	v4l2_device_unregister_subdev(&isp->sd);
> +	v4l2_subdev_cleanup(&isp->sd);
>  	media_entity_cleanup(&isp->sd.entity);
>  }
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
