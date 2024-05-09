Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9C8AC10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 18:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3rcfYSwYYzSc/J2pk+roDGLJvp4P1d7Ot/EeLTMD1t8=; b=F4b8XyXfdYFFX8
	v1Q+orxDkB3LKv/wjEF5nqEUpaM+LVzeQ6eZKB04MZ9p9LtDLN6SekJ/zCT6tZtuBmi/k2Crg5KEk
	5n+BQvPd+rRH5B7GB2QFUQ3F6AY+/JwqROI9lpRYzDT6tA0P5HJ4ie31YlCWxPOhf0KOuDNonFehH
	LLCGlkWhnXFSWLweSY4lBbIE5G8YHhzZwf8zfd5xfUxw/sv7qMiM7utqq93BIVqoPa+j73IUUa1LN
	PefIrDkJ7OwBq2JxQEdIfF8EnWkvD3/6IX1MUt+/kb0B0AhbtSJ1Twr2pIHY8Qq5lVk+JqV94MZY3
	/Npemt7iqzRptceDONLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s58Wh-00000002Nwo-3X0W;
	Thu, 09 May 2024 18:29:55 +0000
Received: from lahtoruutu.iki.fi ([185.185.170.37])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s58Wb-00000002NvF-49XN
	for linux-rockchip@lists.infradead.org;
	Thu, 09 May 2024 18:29:54 +0000
Received: from hillosipuli.retiisi.eu (80-248-247-191.cust.suomicom.net [80.248.247.191])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 4Vb0sy3YRKz49Pwn;
	Thu,  9 May 2024 21:29:42 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu;
	t=1715279384;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7A4xPDEgAQQdMdt52bCRjKFOBSibDEcEKYLBHN2iw5E=;
	b=FdchrSAS/rkEX7K4SCLBSmv4gsvA9kEgIr6ZlVRFo7Ty7yWLoTnyDeRd505V9OfhOo7ig6
	dYcbJBEucAERnmbsNRJNNDcBx8ezW69VKUos6mPiJCfkEvlXxFxjy/cbbcDxsg7oWwBiQK
	+0IMojFOzu2cNwx2zCA1sNCKYzAClI6zpMnFz8ntM7uOu2PYqw/5Hs8TaHH9hYobkgnraG
	CLpYBBGzxZOTpmSLOuzk//FnIXOuvzn6/hBqPoex3UXfYDTcN6OCMiWOtttAfFGImlVlfF
	ynQU/RIu3WIGO1780pllahfLdzf414NJXhvN86caexRN+ZMdh8hwhfEcF5d/yA==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1715279384; a=rsa-sha256;
	cv=none;
	b=d2Y/U8geglk/aao9oANk7ZuwFu2+3cBPXZYAnm6kUVXYYcbaYatFCB8qmNCZ2sk93eY7LQ
	myj04ct8F/Uw04gtP4PWkL7lFhwXQid3OeF4L5tPiGK57AtyUAGeHoBjOxIClVX5xWoFxp
	RV3FkTAN0niqiikA/NYCgqEbiTXAWkCk59V5oSmPYwJ37mCohPKI67y4Q9xw+D60bDWcEX
	Wc/ATDSPfmaQU2oxWJJyEeVzD8fSHtUiUJDZ2pnoss6nODLBX8m8N7aqz9I2Twsq+IcA41
	418yqi2KFRnlTRVvEzXk7NMsKysiKvfKh10Up9P9zA0Jl/ukgiItHn7vQrM1SQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=lahtoruutu; t=1715279384;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7A4xPDEgAQQdMdt52bCRjKFOBSibDEcEKYLBHN2iw5E=;
	b=e2tcMHI7+kyoQS3stRFo3OSo0rbnruwnqXWwdOlmjJ7spynxNiWwu7V0mXc/K1yDCeoWgd
	rXavGj70o3XPy0p6Z8a5+tJBbttkIBuCFKNu65aiV6RCYkvGG7Cd9QVMMJu34iKbAAiuUm
	PzkgHF9eNi/RHJFoolPnPHdahzAAXRrtNoPHzbWu1YYcWVgHyXZv//A+ewu6UrRP6yuDHw
	UTr3O2evOmGlF8ih7nkFZP1x/OmYH3hB23oECUlUCYRmPbSQ0mmAUY3uxu4c9doq0LfEDk
	0Rq7bTj1l+cEr3oyXG5mMWB9vU4/Jp99JNC5rfdtQ0BH5cWToY3R4+jnZH7b2g==
Received: from valkosipuli.retiisi.eu (valkosipuli.localdomain [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 1897D634C93;
	Thu,  9 May 2024 21:29:42 +0300 (EEST)
Date: Thu, 9 May 2024 18:29:41 +0000
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/3] media: v4l2-subdev: Fix
 v4l2_subdev_state_get_format() documentation
Message-ID: <Zj0WFQo0cHReRCcU@valkosipuli.retiisi.eu>
References: <20240508214045.24716-1-laurent.pinchart+renesas@ideasonboard.com>
 <20240508214045.24716-2-laurent.pinchart+renesas@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240508214045.24716-2-laurent.pinchart+renesas@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_112952_189933_B198F171 
X-CRM114-Status: GOOD (  19.81  )
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

Thanks for posting this.

On Thu, May 09, 2024 at 12:40:43AM +0300, Laurent Pinchart wrote:
> The documentation of the v4l2_subdev_state_get_format() macro
> incorrectly references __v4l2_subdev_state_get_format() instead of
> __v4l2_subdev_state_gen_call(). Fix it, and also update the list of
> similar macros to add the missing v4l2_subdev_state_get_interval().
> 
> Suggested-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> ---
>  include/media/v4l2-subdev.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
> index e30c463d90e5..b25b6e97ecbd 100644
> --- a/include/media/v4l2-subdev.h
> +++ b/include/media/v4l2-subdev.h
> @@ -1340,12 +1340,12 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
>   */
>  /*
>   * Wrap v4l2_subdev_state_get_format(), allowing the function to be called with
> - * two or three arguments. The purpose of the __v4l2_subdev_state_get_format()
> + * two or three arguments. The purpose of the __v4l2_subdev_state_gen_call()
>   * macro below is to come up with the name of the function or macro to call,

You could drop "below" here, too: the macro definition is above the text.

Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>

>   * using the last two arguments (_stream and _pad). The selected function or
>   * macro is then called using the arguments specified by the caller. A similar
> - * arrangement is used for v4l2_subdev_state_crop() and
> - * v4l2_subdev_state_compose() below.
> + * arrangement is used for v4l2_subdev_state_crop(), v4l2_subdev_state_compose()
> + * and v4l2_subdev_state_get_interval() below.
>   */
>  #define v4l2_subdev_state_get_format(state, pad, ...)			\
>  	__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\

-- 
Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
