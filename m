Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A2ECC10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 06:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tzxcfLnJa+KWIGGkYdLDqnynvb5zPP++tFmli1GxOs=; b=3N4AxYpkE141Qx
	QbKw6clnS62lLVq0i6yRgaj3ni2E1nfTCo1w7SzcfH6jcS4bzia9kCanqjvIdoaYKoNzw9g/1Ep1e
	TNktuXBth2aGuXFO+cb1zo01hdIlNAbyAOlPKBzs9oWil2zeT+vFjdmwU1J34H2ywDwkI/yAqo6F6
	t9ZfTFrdL9KLes09uAN/0GBdicLN1nGDJVwlpcLeqQQjVbmdWQVlp3LiAK1CsPKhQL4wPUvhon6WG
	3FUmTjHOLQGVLtgO7JNNNjjw5bzdlqlwZ1EZ5eTJ4Vwfaw+uNnplLPMxmA0gUyXWXzIsSoGij/n0z
	jppC/yCLFGSIJrnHYmHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4DwJ-00000009mDk-0Hp2;
	Tue, 07 May 2024 06:04:35 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4DwH-00000009mD2-0ueZ
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 06:04:34 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 24F523D5;
	Tue,  7 May 2024 08:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715061870;
	bh=RAPmK72phmkriSbjoQmb+/8N9Rmmk6IR6aCJ9mNc7W8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DDmOJhpR0xyBItft6dgXe+lt/5pkKB+cpas5CWwK3kY+hhK/Hx9Mv1yHrgc2kDuCx
	 FW3CRlteozWHOEGBm2BhYa/3dfQaxbb6B9NFJQT/u2e+mpwmPQrEXDnPy/bDE39161
	 j/P33BtiJc28ghI/iwjM59qJ/oxY7Rc1fgK8Dx8E=
Date: Tue, 7 May 2024 09:04:24 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@iki.fi>
Cc: linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] media: v4l2-subdev: Provide const-aware subdev state
 accessors
Message-ID: <20240507060424.GE26689@pendragon.ideasonboard.com>
References: <20240506175255.24394-1-laurent.pinchart+renesas@ideasonboard.com>
 <20240506175255.24394-2-laurent.pinchart+renesas@ideasonboard.com>
 <ZjlRTuivOz2JUpcc@valkosipuli.retiisi.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZjlRTuivOz2JUpcc@valkosipuli.retiisi.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_230433_427914_D6A98D78 
X-CRM114-Status: GOOD (  32.63  )
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

On Mon, May 06, 2024 at 09:53:18PM +0000, Sakari Ailus wrote:
> Hi Laurent,
> 
> Thanks for the patch.
> 
> On Mon, May 06, 2024 at 08:52:54PM +0300, Laurent Pinchart wrote:
> > It would be useful to mark instances of v4l2_subdev_state structures as
> > const when code needs to access them read-only. This isn't currently
> > possible, as the v4l2_subdev_state_get_*() accessor functions take a
> > non-const pointer to the state.
> > 
> > Use _Generic() to provide two different versions of the accessors, for
> > const and non-const states respectively. The former returns a const
> > pointer to the requested format, rectangle or interval, implementing
> > const-correctness. The latter returns a non-const pointer, preserving
> > the current behaviour for drivers.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> > ---
> > Bike-shedding about names and the 4 leading underscores is allowed (and
> > expected).
> > ---
> >  drivers/media/v4l2-core/v4l2-subdev.c | 24 +++++-----
> >  include/media/v4l2-subdev.h           | 66 ++++++++++++++++++---------
> >  2 files changed, 57 insertions(+), 33 deletions(-)
> > 
> > diff --git a/drivers/media/v4l2-core/v4l2-subdev.c b/drivers/media/v4l2-core/v4l2-subdev.c
> > index 83c6d1e36871..af1fbc28c8f0 100644
> > --- a/drivers/media/v4l2-core/v4l2-subdev.c
> > +++ b/drivers/media/v4l2-core/v4l2-subdev.c
> > @@ -1616,8 +1616,8 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd)
> >  EXPORT_SYMBOL_GPL(v4l2_subdev_cleanup);
> >  
> >  struct v4l2_mbus_framefmt *
> > -__v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
> > -			       unsigned int pad, u32 stream)
> > +____v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
> > +				 unsigned int pad, u32 stream)
> >  {
> >  	struct v4l2_subdev_stream_configs *stream_configs;
> >  	unsigned int i;
> > @@ -1647,11 +1647,11 @@ __v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
> >  
> >  	return NULL;
> >  }
> > -EXPORT_SYMBOL_GPL(__v4l2_subdev_state_get_format);
> > +EXPORT_SYMBOL_GPL(____v4l2_subdev_state_get_format);
> >  
> >  struct v4l2_rect *
> > -__v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
> > -			     u32 stream)
> > +____v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
> > +			       u32 stream)
> >  {
> >  	struct v4l2_subdev_stream_configs *stream_configs;
> >  	unsigned int i;
> > @@ -1681,11 +1681,11 @@ __v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
> >  
> >  	return NULL;
> >  }
> > -EXPORT_SYMBOL_GPL(__v4l2_subdev_state_get_crop);
> > +EXPORT_SYMBOL_GPL(____v4l2_subdev_state_get_crop);
> >  
> >  struct v4l2_rect *
> > -__v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
> > -				unsigned int pad, u32 stream)
> > +____v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
> > +				  unsigned int pad, u32 stream)
> >  {
> >  	struct v4l2_subdev_stream_configs *stream_configs;
> >  	unsigned int i;
> > @@ -1715,11 +1715,11 @@ __v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
> >  
> >  	return NULL;
> >  }
> > -EXPORT_SYMBOL_GPL(__v4l2_subdev_state_get_compose);
> > +EXPORT_SYMBOL_GPL(____v4l2_subdev_state_get_compose);
> >  
> >  struct v4l2_fract *
> > -__v4l2_subdev_state_get_interval(struct v4l2_subdev_state *state,
> > -				 unsigned int pad, u32 stream)
> > +____v4l2_subdev_state_get_interval(struct v4l2_subdev_state *state,
> > +				   unsigned int pad, u32 stream)
> >  {
> >  	struct v4l2_subdev_stream_configs *stream_configs;
> >  	unsigned int i;
> > @@ -1751,7 +1751,7 @@ __v4l2_subdev_state_get_interval(struct v4l2_subdev_state *state,
> >  
> >  	return NULL;
> >  }
> > -EXPORT_SYMBOL_GPL(__v4l2_subdev_state_get_interval);
> > +EXPORT_SYMBOL_GPL(____v4l2_subdev_state_get_interval);
> >  
> >  #if defined(CONFIG_VIDEO_V4L2_SUBDEV_API)
> >  
> > diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
> > index e30c463d90e5..ba722ab501c1 100644
> > --- a/include/media/v4l2-subdev.h
> > +++ b/include/media/v4l2-subdev.h
> > @@ -1340,21 +1340,27 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
> >   */
> >  /*
> >   * Wrap v4l2_subdev_state_get_format(), allowing the function to be called with
> > - * two or three arguments. The purpose of the __v4l2_subdev_state_get_format()
> > + * two or three arguments. The purpose of the __v4l2_subdev_state_gen_call()
> >   * macro below is to come up with the name of the function or macro to call,
> >   * using the last two arguments (_stream and _pad). The selected function or
> >   * macro is then called using the arguments specified by the caller. A similar
> >   * arrangement is used for v4l2_subdev_state_crop() and
> >   * v4l2_subdev_state_compose() below.
> >   */
> > -#define v4l2_subdev_state_get_format(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
> > +#define v4l2_subdev_state_get_format(state, pad, ...)				\
> > +	__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)		\
> >  		(state, pad, ##__VA_ARGS__)
> > -#define __v4l2_subdev_state_get_format_pad(state, pad)	\
> > +#define __v4l2_subdev_state_get_format_pad(state, pad)				\
> >  	__v4l2_subdev_state_get_format(state, pad, 0)
> > +#define __v4l2_subdev_state_get_format(state, pad, stream)			\
> > +	_Generic(state,								\
> > +		const struct v4l2_subdev_state *: ((const struct v4l2_mbus_framefmt *)	\
> > +			____v4l2_subdev_state_get_format((struct v4l2_subdev_state *)state, pad, stream)), \
> > +		default: ____v4l2_subdev_state_get_format((struct v4l2_subdev_state *)state, pad, stream) \
> > +	)
> >  struct v4l2_mbus_framefmt *
> > -__v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
> > -			       unsigned int pad, u32 stream);
> > +____v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
> > +				 unsigned int pad, u32 stream);
> >  
> >  /**
> >   * v4l2_subdev_state_get_crop() - Get pointer to a stream crop rectangle
> > @@ -1368,14 +1374,20 @@ __v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
> >   * For stream-unaware drivers the crop rectangle for the corresponding pad is
> >   * returned. If the pad does not exist, NULL is returned.
> >   */
> > -#define v4l2_subdev_state_get_crop(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
> > +#define v4l2_subdev_state_get_crop(state, pad, ...)				\
> > +	__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)		\
> >  		(state, pad, ##__VA_ARGS__)
> > -#define __v4l2_subdev_state_get_crop_pad(state, pad)	\
> > +#define __v4l2_subdev_state_get_crop_pad(state, pad)				\
> >  	__v4l2_subdev_state_get_crop(state, pad, 0)
> > +#define __v4l2_subdev_state_get_crop(state, pad, stream)			\
> > +	_Generic(state,								\
> > +		const struct v4l2_subdev_state *: ((const struct v4l2_rect *)		\
> > +			____v4l2_subdev_state_get_crop((struct v4l2_subdev_state *)state, pad, stream)), \
> > +		default: ____v4l2_subdev_state_get_crop((struct v4l2_subdev_state *)state, pad, stream) \
> > +	)
> >  struct v4l2_rect *
> > -__v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
> > -			     u32 stream);
> > +____v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
> > +			       u32 stream);
> >  
> >  /**
> >   * v4l2_subdev_state_get_compose() - Get pointer to a stream compose rectangle
> > @@ -1389,14 +1401,20 @@ __v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
> >   * For stream-unaware drivers the compose rectangle for the corresponding pad is
> >   * returned. If the pad does not exist, NULL is returned.
> >   */
> > -#define v4l2_subdev_state_get_compose(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
> > +#define v4l2_subdev_state_get_compose(state, pad, ...)				\
> > +	__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)		\
> >  		(state, pad, ##__VA_ARGS__)
> > -#define __v4l2_subdev_state_get_compose_pad(state, pad)	\
> > +#define __v4l2_subdev_state_get_compose_pad(state, pad)				\
> >  	__v4l2_subdev_state_get_compose(state, pad, 0)
> > +#define __v4l2_subdev_state_get_compose(state, pad, stream)			\
> > +	_Generic(state,								\
> > +		const struct v4l2_subdev_state *: ((const struct v4l2_rect *)		\
> > +			____v4l2_subdev_state_get_compose((struct v4l2_subdev_state *)state, pad, stream)), \
> > +		default: ____v4l2_subdev_state_get_compose((struct v4l2_subdev_state *)state, pad, stream) \
> > +	)
> >  struct v4l2_rect *
> > -__v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
> > -				unsigned int pad, u32 stream);
> > +____v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
> > +				  unsigned int pad, u32 stream);
> >  
> >  /**
> >   * v4l2_subdev_state_get_interval() - Get pointer to a stream frame interval
> > @@ -1410,14 +1428,20 @@ __v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
> >   * For stream-unaware drivers the frame interval for the corresponding pad is
> >   * returned. If the pad does not exist, NULL is returned.
> >   */
> > -#define v4l2_subdev_state_get_interval(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)	\
> > +#define v4l2_subdev_state_get_interval(state, pad, ...)				\
> > +	__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)		\
> >  		(state, pad, ##__VA_ARGS__)
> > -#define __v4l2_subdev_state_get_interval_pad(state, pad)	\
> > +#define __v4l2_subdev_state_get_interval_pad(state, pad)			\
> >  	__v4l2_subdev_state_get_interval(state, pad, 0)
> > +#define __v4l2_subdev_state_get_interval(state, pad, stream)			\
> > +	_Generic(state,								\
> > +		const struct v4l2_subdev_state *: ((const struct v4l2_frac *)		\
> > +			____v4l2_subdev_state_get_interval((struct v4l2_subdev_state *)state, pad, stream)), \
> > +		default: ____v4l2_subdev_state_get_interval((struct v4l2_subdev_state *)state, pad, stream) \
> 
> Is the cast necessary in the latter case? It would seem like we lose most
> of the type safety checks as a result.

It is, and I was surprised by it. The reason is that all branches of the
_Generic statement must compile, even the ones that are not selected.
When the macro is called with a const state, the first branch is taken,
but the second branch must compile too. Without the cast, the compiler
complains that the state argument passed to
____v4l2_subdev_state_get_interval() is const.

> Could this be implemented using a similar arrangement than the gen_call
> macro above, so that we wouldn't have three very similar sets of macros
> here?

I've sent a v2 that does that.

> > +	)
> >  struct v4l2_fract *
> > -__v4l2_subdev_state_get_interval(struct v4l2_subdev_state *state,
> > -				 unsigned int pad, u32 stream);
> > +____v4l2_subdev_state_get_interval(struct v4l2_subdev_state *state,
> > +				   unsigned int pad, u32 stream);
> >  
> >  #if defined(CONFIG_VIDEO_V4L2_SUBDEV_API)
> >  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
