Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D18C04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 21:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1MDpoT+/5utJ+RR6Zjeowry7ufTzuTjhnjb1SZG5uM=; b=vPF61kv1Lor+nq
	V3iHVXEWT0HsOdChb5De3hjJ+wy/DlW79fKxiiJ9fU7xV+J1Zui7PWhpi++VxS+7sEW+n7mVp5g3w
	DnYiiixODAkTUM/qOZHj7/VgCKXcrfkR44Bj9TxJI9MJqj/s6TraChm7WbCdytiuQVHtqANVrvemY
	FgE+RuaROxrAzMnYbus3tVFylwW1a6b331Ws8/JJtXdGiPzwPCWBTtgLdYeMRCkjja5StEQ2GFaJb
	6h2S1gd/0uYYWg8T+vcZe70q3tZZhqq9huUNNGHquXEoYf0o26r0CIPTtJYrdwyXbSA/yr5wGQSiq
	033cgBe3OtqsTrGmV5mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4oRM-0000000Gxvi-01KK;
	Wed, 08 May 2024 21:03:04 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4oRI-0000000GxuP-2XOq
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 21:03:02 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0C3E716D4;
	Wed,  8 May 2024 23:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715202171;
	bh=7rRTIapHt6sGqrwX4oB+GqHFUHj6eUfnAVCac5/PhDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Uy3aoBW91sH8N54AwJDqdsYGSM+Ed4zvBTC1xtihs6TC36RqQgEX05xqD69sw1Nnk
	 RUaVPOb/iHZQ48EcYHFTly7KWs2nWBvDmZvJJpThb+hDbXJXztdWzVYAYO8uWJ54iY
	 BVW9ALL3OVq/jqq5rHBncIHdS2817aXG4qa1Smzo=
Date: Thu, 9 May 2024 00:02:45 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@iki.fi>
Cc: linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/2] media: v4l2-subdev: Provide const-aware subdev
 state accessors
Message-ID: <20240508210245.GA13978@pendragon.ideasonboard.com>
References: <20240507161907.27747-1-laurent.pinchart+renesas@ideasonboard.com>
 <20240507161907.27747-2-laurent.pinchart+renesas@ideasonboard.com>
 <ZjvIGDaAAGK0WJo1@valkosipuli.retiisi.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZjvIGDaAAGK0WJo1@valkosipuli.retiisi.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_140300_822929_24FE2324 
X-CRM114-Status: GOOD (  33.81  )
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

On Wed, May 08, 2024 at 06:44:40PM +0000, Sakari Ailus wrote:
> Hi Laurent,
> 
> Thanks for the update.
> 
> This is starting to look very nice. A few comments below...

Thanks :-)

> On Tue, May 07, 2024 at 07:19:06PM +0300, Laurent Pinchart wrote:
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
> > Changes since v2:
> > 
> > - Specify types explicitly in _Generic() expression
> > - Fix cast of value to const pointer
> > 
> > Changes since v1:
> > 
> > - Wrap the accessors with _Generic() using a single macro instead of
> >   adding a _Generic() statement in each of them.
> > ---
> >  include/media/v4l2-subdev.h | 40 +++++++++++++++++++++++++------------
> >  1 file changed, 27 insertions(+), 13 deletions(-)
> > 
> > diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
> > index e30c463d90e5..cd3e9e2ebe4d 100644
> > --- a/include/media/v4l2-subdev.h
> > +++ b/include/media/v4l2-subdev.h
> > @@ -1326,6 +1326,16 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
> >  #define __v4l2_subdev_state_gen_call(NAME, _1, ARG, ...)	\
> >  	__v4l2_subdev_state_get_ ## NAME ## ARG
> >  
> > +/*
> > + * A macro to constify the return value of the state accessors when the state
> > + * parameter is const.
> > + */
> > +#define __v4l2_subdev_state_constify_call(state, value)				\
> 
> This function just changes the return value constness. How about calling it
> e.g. __v4l2_subdev_state_constify_ret instead?

Fine with me.

> Either way,
> 
> Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> 
> > +	_Generic(state,								\
> > +		const struct v4l2_subdev_state *: (const typeof(*(value)) *)(value), \
> > +		struct v4l2_subdev_state *: (value)				\
> > +	)
> > +
> >  /**
> >   * v4l2_subdev_state_get_format() - Get pointer to a stream format
> >   * @state: subdevice state
> > @@ -1340,16 +1350,17 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
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
> 
> These function names are missing _get after the prefix.
> 
> Could you also add the interval function here, too?
> 
> The would fit well for a separate patch.

I'll drop the change above and will fix the whole paragraph in a
separate patch.

> >   */
> > -#define v4l2_subdev_state_get_format(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
> > -		(state, pad, ##__VA_ARGS__)
> > +#define v4l2_subdev_state_get_format(state, pad, ...)				\
> > +	__v4l2_subdev_state_constify_call(state,				\
> > +		__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
> > +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
> >  #define __v4l2_subdev_state_get_format_pad(state, pad)	\
> >  	__v4l2_subdev_state_get_format(state, pad, 0)
> >  struct v4l2_mbus_framefmt *
> > @@ -1368,9 +1379,10 @@ __v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
> >   * For stream-unaware drivers the crop rectangle for the corresponding pad is
> >   * returned. If the pad does not exist, NULL is returned.
> >   */
> > -#define v4l2_subdev_state_get_crop(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
> > -		(state, pad, ##__VA_ARGS__)
> > +#define v4l2_subdev_state_get_crop(state, pad, ...)				\
> > +	__v4l2_subdev_state_constify_call(state,				\
> > +		__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
> > +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
> >  #define __v4l2_subdev_state_get_crop_pad(state, pad)	\
> >  	__v4l2_subdev_state_get_crop(state, pad, 0)
> >  struct v4l2_rect *
> > @@ -1389,9 +1401,10 @@ __v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
> >   * For stream-unaware drivers the compose rectangle for the corresponding pad is
> >   * returned. If the pad does not exist, NULL is returned.
> >   */
> > -#define v4l2_subdev_state_get_compose(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
> > -		(state, pad, ##__VA_ARGS__)
> > +#define v4l2_subdev_state_get_compose(state, pad, ...)				\
> > +	__v4l2_subdev_state_constify_call(state,				\
> > +		__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
> > +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
> >  #define __v4l2_subdev_state_get_compose_pad(state, pad)	\
> >  	__v4l2_subdev_state_get_compose(state, pad, 0)
> >  struct v4l2_rect *
> > @@ -1410,9 +1423,10 @@ __v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
> >   * For stream-unaware drivers the frame interval for the corresponding pad is
> >   * returned. If the pad does not exist, NULL is returned.
> >   */
> > -#define v4l2_subdev_state_get_interval(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)	\
> > -		(state, pad, ##__VA_ARGS__)
> > +#define v4l2_subdev_state_get_interval(state, pad, ...)				\
> > +	__v4l2_subdev_state_constify_call(state,				\
> > +		__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)	\
> > +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
> >  #define __v4l2_subdev_state_get_interval_pad(state, pad)	\
> >  	__v4l2_subdev_state_get_interval(state, pad, 0)
> >  struct v4l2_fract *

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
