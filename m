Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 846FDC43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 22:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKzDjbUrUXSLGAwOgur4jlnkYIhKDb/rHd5Jw7B0voY=; b=AI/+qLGAAC6b/6
	MrxL48Uo8JtCJ43cqK9pn34g2y/FGcc2cpWFnkyHmC7gj+yinh5OS7FgZr2BWbceCKckzAXz3i453
	FvbU3oKP1IOyFN03vUkxkgKVXTrhgg/0iwGhJszYAdUDyU8tnFQhPsJM8kjXXH8hsBBeiRDtcDbmN
	JSUbzhuidOg5+WYyPSsEF6vvA5TmIljk75uVXaeGUy2GRupWUlhGO46Bz3qk6oLTi0rc7IMhmgooi
	QWLCM14IT0/1ImmwJQBcq2Ma7Eel0ZcE+Jqf2OtFKaJlO6AG9fQQL4Ep4WV/++x0RPxgSEX0DiOYf
	fOJ42MGE4aVJrKDgI6kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1bcf-00GhcG-CL; Wed, 15 Jun 2022 22:36:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1bcb-00Ghbl-TZ
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 22:36:24 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D4D28415;
	Thu, 16 Jun 2022 00:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655332580;
	bh=5AabepMHcw/wdiCrgPXu6Z9MDMa0s1PtWRr7KRhzlB8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OVyHZL9R4qF1XMoPty1qwaqcXUsBReGIvLqS8Wb38f0v3Ozuy/EvxwVw2PZyGPknS
	 bV9KRR5MaJEjjbIaIJfUoUDe96PeqOf1vrmGZin6enKjShc5yX7Hbb+sFgaLIRwbcm
	 v0jH++prvXqPtuanRghpDHkFNlJeyiKr9yyWb2oY=
Date: Thu, 16 Jun 2022 01:36:09 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH 16/55] media: v4l2-async: Add notifier operation to
 destroy asd instances
Message-ID: <Yqpe2e8WzeDkAhYj@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-17-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-17-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_153622_307575_3C73C5E1 
X-CRM114-Status: GOOD (  26.19  )
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

+ Sakari and Hans

This patch is needed by this series, but I think it could also be
reviewed and merged standalone already.

On Wed, Jun 15, 2022 at 04:10:48AM +0900, Paul Elder wrote:
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

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
