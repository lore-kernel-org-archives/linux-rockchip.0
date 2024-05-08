Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E85C25B4F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 18:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxC6vTaXpbbZ1dic5DX3HPuMKLwqm0/FlpWDRijR5js=; b=b1OzxMTta3ANQo
	B4XkPUr72NFbDWEiWJkgX6dnBmmcWNNmVCT23VEc8kfKhtKs2RQGjhuQbDpoOei3cdyX1iPi+10Tc
	ElmTYXgFaJxQfdM5yj867cCQ7USaRjxQoCtUO5rUqvrCntu7TtWlCxxN68+Nnh8L4Z1cFytL/EEdS
	rdLTB4OuiK60fWO/pU5DiE1dtO7vfm6ic66nwO0rRlmS4HoDGyvsjh2Es/T28PbLkHNEDsN39IbsR
	nM2Oi+tzFdAb0fPXkElrQJMtOPn8P7ZbK7vsYbtYpbLouBbgJfz7v1so4Sk0wRNtz+jhL1zVZTnVL
	/PDZJsLkAmPQvlSV0bNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4mHh-0000000Ga1z-169p;
	Wed, 08 May 2024 18:44:57 +0000
Received: from lahtoruutu.iki.fi ([185.185.170.37])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4mHc-0000000Ga0S-3oLZ
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 18:44:55 +0000
Received: from hillosipuli.retiisi.eu (80-248-247-191.cust.suomicom.net [80.248.247.191])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 4VZPFj17xVz49Q47;
	Wed,  8 May 2024 21:44:40 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu;
	t=1715193882;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HRQ6ktTcY6IyP0yNGoqX7mYAD8bbo36PpZGLoGu3HvM=;
	b=tmfe9z6c4wm6VpM9pQyT+EvTjHr/EtPqf05l+ezD6R1rNv3t+SGDy0sNsnvYypqwoN4Nq5
	wGXfdV6fiJKA9wCciwf9xJY6qKZDck4zddP89orRREQ5f0YKa6Wf8CyNxHcP3mt/6mg70L
	xAreWFWKwQ+/oHJI9fGudmKgJB3sb5Y3Lbh8tFz8MI3/lZD2Yb39nXb0CGMvpfnH/XDR/S
	O9NSgeYfTzjWqv0/Szh90MZW7JpwT9J+kjMAhaBfbVq/CDvHhrokLxvFna+kWQHtrGCOcU
	gqalG5ngxOFZxZ168TRA93qxn6IO0/vk7js5l7KsgNjm1w/fA1hgSJDi+VdkzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=lahtoruutu; t=1715193882;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HRQ6ktTcY6IyP0yNGoqX7mYAD8bbo36PpZGLoGu3HvM=;
	b=dvFsYt1EDeKGJjdDbSKWj0b7j2bz7JO93Rf5UaNix1ls1Xurxp3LGggXYYvipubEqc0KPm
	lSWjmxNoMdPV8KE0dFbw+emrXDPh10w7VtJwYOOmgjaxoSdULpiQAByyJuIZb8Xm3b8Q6b
	JxqPzdQ+eEwkE5EjT1ljXUk64fNpkJl/Ji3vd7gcCbERS3AMnJpmtIbaYalPY6EWLu/jcY
	GiPg38YfqAKb38vydxwX/DbxY/ybAHXrXmE5GxnJkOl9+BX5O5Yn4CXLQRXuvnoEfGhY6Q
	IGxV3vYpPHxwf0cbgRKYkFl4DWnl5P7pz2n8Ng/IFR5FG86E4DqYiM24AUlZIg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1715193882; a=rsa-sha256;
	cv=none;
	b=upbfWpYaDry47wMomZZACGg2z6O+QXRqaHikfcC7pZX9XUoZJ27SV4afme64Cc1lj0Ly9M
	X+DagOVTV3h93+Bgi1lRdlLzHjgjmVGxXT+imKL+twI0cyjOnlPmFOVsRd/yyH31UBcSGO
	SkNOvW4Uod2vsh2MKU8eXHAicRm5Q8na00Amq2C4S4SGVcXy7RO5MbV+0tUZnUdMTBWTd+
	jY2o51Trqg68fuXQyoDeKzibC0eFF+V+KhIHdJdCTC10G9CS9D2ylIdj6pY40eFxJuIAjz
	3KPCHC9J3unISMzlUEyJmskhQN05VL+cLcjAZNakwYZ33LFYnxKSICMBhkkpbQ==
Received: from valkosipuli.retiisi.eu (valkosipuli.localdomain [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 8FABC634C94;
	Wed,  8 May 2024 21:44:40 +0300 (EEST)
Date: Wed, 8 May 2024 18:44:40 +0000
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/2] media: v4l2-subdev: Provide const-aware subdev
 state accessors
Message-ID: <ZjvIGDaAAGK0WJo1@valkosipuli.retiisi.eu>
References: <20240507161907.27747-1-laurent.pinchart+renesas@ideasonboard.com>
 <20240507161907.27747-2-laurent.pinchart+renesas@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240507161907.27747-2-laurent.pinchart+renesas@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_114453_152386_BF6C633F 
X-CRM114-Status: GOOD (  28.89  )
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

Hi Laurent,

Thanks for the update.

This is starting to look very nice. A few comments below...

On Tue, May 07, 2024 at 07:19:06PM +0300, Laurent Pinchart wrote:
> It would be useful to mark instances of v4l2_subdev_state structures as
> const when code needs to access them read-only. This isn't currently
> possible, as the v4l2_subdev_state_get_*() accessor functions take a
> non-const pointer to the state.
> 
> Use _Generic() to provide two different versions of the accessors, for
> const and non-const states respectively. The former returns a const
> pointer to the requested format, rectangle or interval, implementing
> const-correctness. The latter returns a non-const pointer, preserving
> the current behaviour for drivers.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> ---
> Changes since v2:
> 
> - Specify types explicitly in _Generic() expression
> - Fix cast of value to const pointer
> 
> Changes since v1:
> 
> - Wrap the accessors with _Generic() using a single macro instead of
>   adding a _Generic() statement in each of them.
> ---
>  include/media/v4l2-subdev.h | 40 +++++++++++++++++++++++++------------
>  1 file changed, 27 insertions(+), 13 deletions(-)
> 
> diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
> index e30c463d90e5..cd3e9e2ebe4d 100644
> --- a/include/media/v4l2-subdev.h
> +++ b/include/media/v4l2-subdev.h
> @@ -1326,6 +1326,16 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
>  #define __v4l2_subdev_state_gen_call(NAME, _1, ARG, ...)	\
>  	__v4l2_subdev_state_get_ ## NAME ## ARG
>  
> +/*
> + * A macro to constify the return value of the state accessors when the state
> + * parameter is const.
> + */
> +#define __v4l2_subdev_state_constify_call(state, value)				\

This function just changes the return value constness. How about calling it
e.g. __v4l2_subdev_state_constify_ret instead?

Either way,

Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>

> +	_Generic(state,								\
> +		const struct v4l2_subdev_state *: (const typeof(*(value)) *)(value), \
> +		struct v4l2_subdev_state *: (value)				\
> +	)
> +
>  /**
>   * v4l2_subdev_state_get_format() - Get pointer to a stream format
>   * @state: subdevice state
> @@ -1340,16 +1350,17 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
>   */
>  /*
>   * Wrap v4l2_subdev_state_get_format(), allowing the function to be called with
> - * two or three arguments. The purpose of the __v4l2_subdev_state_get_format()
> + * two or three arguments. The purpose of the __v4l2_subdev_state_gen_call()
>   * macro below is to come up with the name of the function or macro to call,
>   * using the last two arguments (_stream and _pad). The selected function or
>   * macro is then called using the arguments specified by the caller. A similar
>   * arrangement is used for v4l2_subdev_state_crop() and
>   * v4l2_subdev_state_compose() below.

These function names are missing _get after the prefix.

Could you also add the interval function here, too?

The would fit well for a separate patch.

>   */
> -#define v4l2_subdev_state_get_format(state, pad, ...)			\
> -	__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
> -		(state, pad, ##__VA_ARGS__)
> +#define v4l2_subdev_state_get_format(state, pad, ...)				\
> +	__v4l2_subdev_state_constify_call(state,				\
> +		__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
> +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
>  #define __v4l2_subdev_state_get_format_pad(state, pad)	\
>  	__v4l2_subdev_state_get_format(state, pad, 0)
>  struct v4l2_mbus_framefmt *
> @@ -1368,9 +1379,10 @@ __v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
>   * For stream-unaware drivers the crop rectangle for the corresponding pad is
>   * returned. If the pad does not exist, NULL is returned.
>   */
> -#define v4l2_subdev_state_get_crop(state, pad, ...)			\
> -	__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
> -		(state, pad, ##__VA_ARGS__)
> +#define v4l2_subdev_state_get_crop(state, pad, ...)				\
> +	__v4l2_subdev_state_constify_call(state,				\
> +		__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
> +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
>  #define __v4l2_subdev_state_get_crop_pad(state, pad)	\
>  	__v4l2_subdev_state_get_crop(state, pad, 0)
>  struct v4l2_rect *
> @@ -1389,9 +1401,10 @@ __v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
>   * For stream-unaware drivers the compose rectangle for the corresponding pad is
>   * returned. If the pad does not exist, NULL is returned.
>   */
> -#define v4l2_subdev_state_get_compose(state, pad, ...)			\
> -	__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
> -		(state, pad, ##__VA_ARGS__)
> +#define v4l2_subdev_state_get_compose(state, pad, ...)				\
> +	__v4l2_subdev_state_constify_call(state,				\
> +		__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
> +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
>  #define __v4l2_subdev_state_get_compose_pad(state, pad)	\
>  	__v4l2_subdev_state_get_compose(state, pad, 0)
>  struct v4l2_rect *
> @@ -1410,9 +1423,10 @@ __v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
>   * For stream-unaware drivers the frame interval for the corresponding pad is
>   * returned. If the pad does not exist, NULL is returned.
>   */
> -#define v4l2_subdev_state_get_interval(state, pad, ...)			\
> -	__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)	\
> -		(state, pad, ##__VA_ARGS__)
> +#define v4l2_subdev_state_get_interval(state, pad, ...)				\
> +	__v4l2_subdev_state_constify_call(state,				\
> +		__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)	\
> +			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
>  #define __v4l2_subdev_state_get_interval_pad(state, pad)	\
>  	__v4l2_subdev_state_get_interval(state, pad, 0)
>  struct v4l2_fract *

-- 
Kind regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
