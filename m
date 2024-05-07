Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAC10C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 07:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txeV8swTg73JkQAftMc6qLP8nUiLLR+AJWU5nrgDNe8=; b=pd/eYK8iuTmfpi
	ICR9trOILLXGacwAc8/ZKW8TayJBQl9J/2LK1hUUidBUPAXEdtfbuPoEwLf0iYvCNd3+dPBrgyho7
	PkSvdDbwPjqlLnpwDPGLkAkaq97ITPyXS18ovNeFyTOXjSuj362m2X3FSD51poyRoyanjGjhGKeSX
	HMzg0bBiZvPU8LAIsMfYq0mKZR+BUd0VePDNzZ8F1cLPKmOU9GMQiX8pPjjpkyKNFt55JO++HV/Pi
	dkAW7/ExDL9QiHUYNYNjncCgoVsSaGel9sXEOABQwiyK9HvQ00xNNhlDLnG2QFlduQKDkH7DhM5KW
	/70Fa8IRRwGDS33bzG0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Eoh-00000009uks-3bDv;
	Tue, 07 May 2024 07:00:47 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Eof-00000009uk7-1AZs
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 07:00:46 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CE2C73D5;
	Tue,  7 May 2024 09:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715065242;
	bh=XaN3hETb2jl2cA4B5izXN4/lT0Xw9mOoyhCtWYUfVuE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sHUGyQxrL8ObaF6WAqEayyMtABEIzFh/4W7CfmM8MXL/KYTLdhWXZF9p/qSsRZFOu
	 D27yurDSRmjhBK+ogKKrrRylgIek0cqZh64z1sLaEC9p1FOuYC8BAdn1w7nhH/4+iG
	 iI64vXC0yYmWldtOAaSejSI6Q+XnuoTpAtYBvL2I=
Date: Tue, 7 May 2024 10:00:35 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] media: v4l2-subdev: Provide const-aware subdev
 state accessors
Message-ID: <20240507070035.GA27500@pendragon.ideasonboard.com>
References: <20240507060323.26950-1-laurent.pinchart+renesas@ideasonboard.com>
 <20240507060323.26950-2-laurent.pinchart+renesas@ideasonboard.com>
 <1114679f-841e-4dca-92f8-3f4e4735bfac@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1114679f-841e-4dca-92f8-3f4e4735bfac@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_000045_582136_5A3C381F 
X-CRM114-Status: GOOD (  36.49  )
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

On Tue, May 07, 2024 at 09:46:08AM +0300, Tomi Valkeinen wrote:
> Hi,
> 
> On 07/05/2024 09:03, Laurent Pinchart wrote:
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
> > Changes since v1:
> > 
> > - Wrap the accessors with _Generic() using a single macro instead of
> >    adding a _Generic() statement in each of them.
> > ---
> >   include/media/v4l2-subdev.h | 40 +++++++++++++++++++++++++------------
> >   1 file changed, 27 insertions(+), 13 deletions(-)
> > 
> > diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
> > index e30c463d90e5..c8cfa1eaa82f 100644
> > --- a/include/media/v4l2-subdev.h
> > +++ b/include/media/v4l2-subdev.h
> > @@ -1326,6 +1326,16 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
> >   #define __v4l2_subdev_state_gen_call(NAME, _1, ARG, ...)	\
> >   	__v4l2_subdev_state_get_ ## NAME ## ARG
> >   
> > +/*
> > + * A macro to constify the return value of the state accessors when the state
> > + * parameter is const.
> > + */
> > +#define __v4l2_subdev_state_constify_call(state, value)			\
> > +	_Generic(state,							\
> > +		const typeof(*(state)) *: (const typeof(value))value,	\
> 
> Why is the first typeof not typeof(state)?

Wouldn't that be "const const struct v4l2_subdev_state *" when the state
is const ?

> > +		default: value						\
> > +	)
> 
> For non-const state this expands to:
> 
> _Generic(state,
> 	const struct v4l2_subdev_state *: (const struct valuetype *)value,
> 	default: value
> )
> 
> And for const state:
> 
> _Generic(state,
> 	const const struct v4l2_subdev_state *: (const struct valuetype *)value,
> 	default: value
> )

Indeed it would :-)

> 
> Afaics, that works as the double-const is just considered a single-const, but the
> macro looks like as if you use typeof(state) thinking that it would always produce
> the non-const base type. Also, the macro would not work if the default case was
> "typeof(*(state)) *".

Indeed.

> Is there a reason to use the typeof()? As the result of typeof depends on the state
> type, the macro also changes depending on the state type, which I feel is an extra,
> unnecessary, complication in an already not-so-clear system.
> 
> Why not just use "struct v4l2_subdev_state" directly? Or if typeof() is used, maybe
> explain in a comment that the "double-constifying" is intended, and it happens to
> work because we have the default case (instead of explicit non-const case).

Using the explicit type works for me.

> >   /**
> >    * v4l2_subdev_state_get_format() - Get pointer to a stream format
> >    * @state: subdevice state
> > @@ -1340,16 +1350,17 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
> >    */
> >   /*
> >    * Wrap v4l2_subdev_state_get_format(), allowing the function to be called with
> > - * two or three arguments. The purpose of the __v4l2_subdev_state_get_format()
> > + * two or three arguments. The purpose of the __v4l2_subdev_state_gen_call()
> >    * macro below is to come up with the name of the function or macro to call,
> >    * using the last two arguments (_stream and _pad). The selected function or
> >    * macro is then called using the arguments specified by the caller. A similar
> >    * arrangement is used for v4l2_subdev_state_crop() and
> >    * v4l2_subdev_state_compose() below.
> >    */
> > -#define v4l2_subdev_state_get_format(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
> > -		(state, pad, ##__VA_ARGS__)
> > +#define v4l2_subdev_state_get_format(state, pad, ...)				\
> > +	__v4l2_subdev_state_constify_call(state,				\
> > +		__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
> > +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
> >   #define __v4l2_subdev_state_get_format_pad(state, pad)	\
> >   	__v4l2_subdev_state_get_format(state, pad, 0)
> >   struct v4l2_mbus_framefmt *
> > @@ -1368,9 +1379,10 @@ __v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
> >    * For stream-unaware drivers the crop rectangle for the corresponding pad is
> >    * returned. If the pad does not exist, NULL is returned.
> >    */
> > -#define v4l2_subdev_state_get_crop(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
> > -		(state, pad, ##__VA_ARGS__)
> > +#define v4l2_subdev_state_get_crop(state, pad, ...)				\
> > +	__v4l2_subdev_state_constify_call(state,				\
> > +		__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
> > +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
> >   #define __v4l2_subdev_state_get_crop_pad(state, pad)	\
> >   	__v4l2_subdev_state_get_crop(state, pad, 0)
> >   struct v4l2_rect *
> > @@ -1389,9 +1401,10 @@ __v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
> >    * For stream-unaware drivers the compose rectangle for the corresponding pad is
> >    * returned. If the pad does not exist, NULL is returned.
> >    */
> > -#define v4l2_subdev_state_get_compose(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
> > -		(state, pad, ##__VA_ARGS__)
> > +#define v4l2_subdev_state_get_compose(state, pad, ...)				\
> > +	__v4l2_subdev_state_constify_call(state,				\
> > +		__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
> > +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
> >   #define __v4l2_subdev_state_get_compose_pad(state, pad)	\
> >   	__v4l2_subdev_state_get_compose(state, pad, 0)
> >   struct v4l2_rect *
> > @@ -1410,9 +1423,10 @@ __v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
> >    * For stream-unaware drivers the frame interval for the corresponding pad is
> >    * returned. If the pad does not exist, NULL is returned.
> >    */
> > -#define v4l2_subdev_state_get_interval(state, pad, ...)			\
> > -	__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)	\
> > -		(state, pad, ##__VA_ARGS__)
> > +#define v4l2_subdev_state_get_interval(state, pad, ...)				\
> > +	__v4l2_subdev_state_constify_call(state,				\
> > +		__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)	\
> > +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
> >   #define __v4l2_subdev_state_get_interval_pad(state, pad)	\
> >   	__v4l2_subdev_state_get_interval(state, pad, 0)
> >   struct v4l2_fract *

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
