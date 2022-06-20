Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EE33C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 14:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfBurvTKo9RAL+aiqnLLbZ4EAPcJ1CWoHUAORRYK05U=; b=QC5925DZPKKsHe
	AL0oBXcrPeEDDjkcyVakCWep0D2IlsRGa4Kv/3Lo6cCU8hrnZRJQ5wMYBvVfadcw8Z+yx/EinQV+G
	tVpyeJq1TpU899kzRTbiaFZnui3LoT94Zuowe8wyg1R1YfjPr0PxsTu9P6p22B7hW+87LsKkqd9tD
	JTbOyxgm+R0O7WHtA997W60r8NMqAITka7yJEaOSP/sBJqUY44hoCCZ9jjYEt9QZeo2S1M8ziXTLy
	Hhoz6GAk2Fk4JO/W75nS+erQFPsIi2z4XGqhC7GGWugAryRZfi5Pjr+bgv3qDpwtSm1m9zh5hkVHW
	4josAOeUbsbZ9KlI6vTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3INr-0014FI-92; Mon, 20 Jun 2022 14:28:07 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3INm-0014EF-Ud
	for linux-rockchip@lists.infradead.org; Mon, 20 Jun 2022 14:28:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1B1ABB811C4;
	Mon, 20 Jun 2022 14:28:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78A10C3411B;
	Mon, 20 Jun 2022 14:27:57 +0000 (UTC)
Message-ID: <7a373ba9-4736-f726-a07e-38d9c5c9062c@xs4all.nl>
Date: Mon, 20 Jun 2022 16:27:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH 16/55] media: v4l2-async: Add notifier operation to
 destroy asd instances
Content-Language: en-US
To: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, dafna@fastmail.com,
 heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
 djrscally@gmail.com, helen.koike@collabora.com,
 linux-rockchip@lists.infradead.org
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-17-paul.elder@ideasonboard.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220614191127.3420492-17-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_072803_321350_9630AE58 
X-CRM114-Status: GOOD (  26.93  )
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

On 6/14/22 21:10, Paul Elder wrote:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Drivers typically extend the v4l2_async_subdev structure by embedding it
> in a driver-specific structure, to store per-subdev custom data. The
> v4l2_async_subdev instances are freed by the v4l2-async framework, which
> makes this mechanism cumbersome to use safely when custom data needs
> special treatment to be destroyed (such as freeing additional memory, or
> releasing references to kernel objects).
> 
> To ease this, add a .destroy() operation to the
> v4l2_async_notifier_operations structure. The operation is called right
> before the v4l2_async_subdev is freed, giving drivers a chance to
> destroy data if needed.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Looks good!

Regards,

	Hans

> ---
>  Documentation/driver-api/media/v4l2-subdev.rst |  6 ++++++
>  drivers/media/v4l2-core/v4l2-async.c           | 10 ++++++++++
>  include/media/v4l2-async.h                     |  2 ++
>  3 files changed, 18 insertions(+)
> 
> diff --git a/Documentation/driver-api/media/v4l2-subdev.rst b/Documentation/driver-api/media/v4l2-subdev.rst
> index cf3b52bdbfb9..6f8d79926aa5 100644
> --- a/Documentation/driver-api/media/v4l2-subdev.rst
> +++ b/Documentation/driver-api/media/v4l2-subdev.rst
> @@ -243,6 +243,12 @@ notifier callback is called. After all subdevices have been located the
>  .complete() callback is called. When a subdevice is removed from the
>  system the .unbind() method is called. All three callbacks are optional.
>  
> +Drivers can store any type of custom data in their driver-specific
> +:c:type:`v4l2_async_subdev` wrapper. If any of that data requires special
> +handling when the structure is freed, drivers must implement the ``.destroy()``
> +notifier callback. The framework will call it right before freeing the
> +:c:type:`v4l2_async_subdev`.
> +
>  Calling subdev operations
>  ~~~~~~~~~~~~~~~~~~~~~~~~~
>  
> diff --git a/drivers/media/v4l2-core/v4l2-async.c b/drivers/media/v4l2-core/v4l2-async.c
> index c6995718237a..735dede624b8 100644
> --- a/drivers/media/v4l2-core/v4l2-async.c
> +++ b/drivers/media/v4l2-core/v4l2-async.c
> @@ -52,6 +52,15 @@ static int v4l2_async_nf_call_complete(struct v4l2_async_notifier *n)
>  	return n->ops->complete(n);
>  }
>  
> +static void v4l2_async_nf_call_destroy(struct v4l2_async_notifier *n,
> +				       struct v4l2_async_subdev *asd)
> +{
> +	if (!n->ops || !n->ops->destroy)
> +		return;
> +
> +	n->ops->destroy(asd);
> +}
> +
>  static bool match_i2c(struct v4l2_async_notifier *notifier,
>  		      struct v4l2_subdev *sd, struct v4l2_async_subdev *asd)
>  {
> @@ -626,6 +635,7 @@ static void __v4l2_async_nf_cleanup(struct v4l2_async_notifier *notifier)
>  		}
>  
>  		list_del(&asd->asd_list);
> +		v4l2_async_nf_call_destroy(notifier, asd);
>  		kfree(asd);
>  	}
>  }
> diff --git a/include/media/v4l2-async.h b/include/media/v4l2-async.h
> index 13ff3ad948f4..25eb1d138c06 100644
> --- a/include/media/v4l2-async.h
> +++ b/include/media/v4l2-async.h
> @@ -81,6 +81,7 @@ struct v4l2_async_subdev {
>   * @complete:	All subdevices have been probed successfully. The complete
>   *		callback is only executed for the root notifier.
>   * @unbind:	a subdevice is leaving
> + * @destroy:	the asd is about to be freed
>   */
>  struct v4l2_async_notifier_operations {
>  	int (*bound)(struct v4l2_async_notifier *notifier,
> @@ -90,6 +91,7 @@ struct v4l2_async_notifier_operations {
>  	void (*unbind)(struct v4l2_async_notifier *notifier,
>  		       struct v4l2_subdev *subdev,
>  		       struct v4l2_async_subdev *asd);
> +	void (*destroy)(struct v4l2_async_subdev *asd);
>  };
>  
>  /**


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
