Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 802BCC61D99
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 15:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBGdwOC5XGsrcHV2ow4kx/HWwTwsrBL2qx+ZKZWzUAw=; b=cgljnOrUpyov8N
	eugRY5FX5JFwixLsnHQGm4P0v0NwnMHA76/KnyVnIlU8QGIokfmOqLRsbrTmT+Bh68x/D1tttWDjO
	AYCZRnAcLyMyny2Iuif5HB4UlHCUeGRDNLp6u7+VhGuZjQvXnvrUYS7Ub7zqk4whECFA5fk1ckk0s
	UCr+Rg2VemoklynWEDGf6gDNkAb5pVW5Tk4o6LShMC5vfJpsCqfzd+3/XiPPFAGPreAw+2r7hgiKC
	nr7cYezEy1f6Iq9P3k6ELtc/uz5f2D2gYK3DU7x94GM9/LByBLw+/kucxOnSCS3dob5Cnad5PuXyC
	vUHPu50TqEG0DiSVMCtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pN0-002JWQ-16;
	Wed, 22 Nov 2023 15:42:30 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pMx-002JU5-0F;
	Wed, 22 Nov 2023 15:42:28 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5B9FE276;
	Wed, 22 Nov 2023 16:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1700667714;
	bh=bn0nJ8Ndl9lU9tfsNi9BaoIDkaD6hNR0oaXanoGoHA8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WsSYv/Wt9RtbEjCqnVDlohKNe7Oy5LK1lfPrHMFxE/+WMWbfeIlcOSYqt7lnZ/oXV
	 E6fWt1qJ5io4vjj3tztrcNK9CkNjfZR1dxWs9ToXW2+RqV0L7pd1X19fHiCPwrUz0s
	 lDwOFvs9iOoHS4QLrZOX7Fb3+STspsr4diN26pFM=
Date: Wed, 22 Nov 2023 17:42:31 +0200
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
Subject: Re: [PATCH 1/2] media: rkisp1: Fix media device memory leak
Message-ID: <20231122154231.GH3909@pendragon.ideasonboard.com>
References: <20231122-rkisp-fixes-v1-0-1958af371e39@ideasonboard.com>
 <20231122-rkisp-fixes-v1-1-1958af371e39@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122-rkisp-fixes-v1-1-1958af371e39@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_074227_254784_2B822569 
X-CRM114-Status: GOOD (  16.78  )
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

On Wed, Nov 22, 2023 at 04:42:22PM +0200, Tomi Valkeinen wrote:
> Add missing calls to media_device_cleanup() to fix memory leak.
> 
> Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index c41abd2833f1..e10cc2881757 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -617,6 +617,7 @@ static int rkisp1_probe(struct platform_device *pdev)
>  	media_device_unregister(&rkisp1->media_dev);
>  err_unreg_v4l2_dev:
>  	v4l2_device_unregister(&rkisp1->v4l2_dev);
> +	media_device_cleanup(&rkisp1->media_dev);

As media_device_cleanup() cleans up for media_device_init(), shouldn't
it go to the err_pm_runtime_disable label ? The label may need to be
renamed to err_media_cleanup then.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  err_pm_runtime_disable:
>  	pm_runtime_disable(&pdev->dev);
>  	return ret;
> @@ -637,6 +638,8 @@ static void rkisp1_remove(struct platform_device *pdev)
>  	media_device_unregister(&rkisp1->media_dev);
>  	v4l2_device_unregister(&rkisp1->v4l2_dev);
>  
> +	media_device_cleanup(&rkisp1->media_dev);
> +
>  	pm_runtime_disable(&pdev->dev);
>  }
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
