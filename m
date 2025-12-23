Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4331AE6FE24
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Dec 2025 16:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvtOL+WhRfniYvJbw6MaqwJEUUIrX3HZ2PY4XSmGCIY=; b=iwkbvtl0ZqkMBk
	j7WSxR0gGeJShOJBnL7zKSTOAE5TpaZBVVwyxraj3dw8TZApqu+eci3Pyn0XbGfmvPEQTgJ7/CSf7
	bvpM5uElAsVGhV7yGNwI76Eer7SCvQEZJOPRip1eMRTiu0AtcEAr+prlts4Dppbf9CRw2x75dSkEF
	lOI9AR0kl9322xBMwgFAmaELlkDrrYhYZVjk07x3dpIUXysmaHAM8ilVQOea/FOMa84XAqN728RKX
	wYp2M2Y1Y4gCigFngDlZbmkbaPHzisfKSFU6NSvac8y60TYd9GlE3s6LbqEdlnNBw6H0XUUwKEXht
	/4IR44Lpth0fMw8iUPWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY5HM-0000000FlgS-3T51;
	Tue, 23 Dec 2025 16:30:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY5HK-0000000Flfz-1eUG
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Dec 2025 16:30:31 +0000
Received: from pendragon.ideasonboard.com (81-175-209-152.bb.dnainternet.fi [81.175.209.152])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 722AF833;
	Tue, 23 Dec 2025 17:30:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1766507417;
	bh=EssmU79hIAIBvgwSq9QzBKNjzESzJNuoxUB6MD1ZQGY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rPvMJI8J+fn/vctuWtoIqAQRVV1gFno+Rr9dMoYJNGwJ7Xf72efjcoH+cnDB2lKvD
	 y4hu1abpiq1up1Pad+/EhQIbC23w9kbr+O6FFF20xNa0OFZ38mJnj1b2p68EP7szHw
	 jRE4BHEYVRm+3/Ac/iHl+knxbSj7mYEDvezfw7nM=
Date: Tue, 23 Dec 2025 18:30:10 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Linux PM <linux-pm@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Brian Norris <briannorris@chromium.org>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 05/23] media: rkisp1: Discard pm_runtime_put() return
 value
Message-ID: <20251223163010.GJ9817@pendragon.ideasonboard.com>
References: <6245770.lOV4Wx5bFT@rafael.j.wysocki>
 <2356323.iZASKD2KPV@rafael.j.wysocki>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2356323.iZASKD2KPV@rafael.j.wysocki>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_083030_579326_15D54BBD 
X-CRM114-Status: GOOD (  25.96  )
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

Hi Rafael,

Thank you for the patch.

On Mon, Dec 22, 2025 at 09:01:55PM +0100, Rafael J. Wysocki wrote:
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> Printing error messages on pm_runtime_put() returning negative values
> is not particularly useful.
>  
> Returning an error code from pm_runtime_put() merely means that it has
> not queued up a work item to check whether or not the device can be
> suspended and there are many perfectly valid situations in which that
> can happen, like after writing "on" to the devices' runtime PM "control"
> attribute in sysfs for one example.
> 
> Accordingly, update rkisp1_vb2_stop_streaming() to simply discard the
> return value of pm_runtime_put().
> 
> This will facilitate a planned change of the pm_runtime_put() return
> type to void in the future.
> 
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
> 
> This patch is part of a series, but it doesn't depend on anything else
> in that series.  The last patch in the series depends on it.
> 
> It can be applied by itself and if you decide to do so, please let me
> know.

I've applied the patch to my tree for v6.20.

> Otherwise, an ACK or equivalent will be appreciated, but also the lack
> of specific criticism will be eventually regarded as consent.
> 
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c |    5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1123,7 +1123,6 @@ static void rkisp1_vb2_stop_streaming(st
>  	struct rkisp1_capture *cap = queue->drv_priv;
>  	struct rkisp1_vdev_node *node = &cap->vnode;
>  	struct rkisp1_device *rkisp1 = cap->rkisp1;
> -	int ret;
>  
>  	mutex_lock(&cap->rkisp1->stream_lock);
>  
> @@ -1132,9 +1131,7 @@ static void rkisp1_vb2_stop_streaming(st
>  	rkisp1_return_all_buffers(cap, VB2_BUF_STATE_ERROR);
>  
>  	v4l2_pipeline_pm_put(&node->vdev.entity);
> -	ret = pm_runtime_put(rkisp1->dev);
> -	if (ret < 0)
> -		dev_err(rkisp1->dev, "power down failed error:%d\n", ret);
> +	pm_runtime_put(rkisp1->dev);
>  
>  	rkisp1_dummy_buf_destroy(cap);
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
