Return-Path: <SRS0=ewtI=OV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D562C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 20:37:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3FC5D61AA9
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 20:37:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3FC5D61AA9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=poorly.run
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Dv4nQai2RCdGwrzO61lZUIn++9BQ9JsiGcIvhqWVCE=; b=sP8WDFYlSwj+jc
	dzkQA/k2OqslIBclvfKjrZJYf0L+5LL9J4rXfdq64Pp2a8gQk282YtKuVlapRGo2BK64XM1oNhG2X
	Gw7RMhq+d/zY5jWMaQ+tLeXyO0oF53Dp3OHXbCfzdeZ75kyF/NcoxF0hHvnbwMl0IYzg7QjdiXVGH
	MKFVLQv51gGUBmGUyK3JO0JfHGX+CmlT2kRv6i0d9TttF67fIt6iPslSGjv4zi07tJSUH/MDahTzX
	ebvHDe3Goq+mD/Rb15Qn4zcwlJHGMeivWXTDCqOw2GUBtYioroYv7wiQ7p0IvK4iYAeuDxKrrlLMF
	mEWmIEzUAWq0+imwlpVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWPHe-001Hyi-E4; Fri, 01 Oct 2021 20:37:30 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWPHc-001Hy4-9X
 for linux-rockchip@lists.infradead.org; Fri, 01 Oct 2021 20:37:29 +0000
Received: by mail-qk1-x734.google.com with SMTP id 194so10390352qkj.11
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Oct 2021 13:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zkZRE1eEAZyryz39bCaestf9STy5sTzg/yvpAeBoKL4=;
 b=CCfbyOwfd0P5t+5ZRImMnUUskPj72rArktg6RNaaUNyqXUeSgwpM0rbAcBAkglWGIq
 Ay6J1tK3tzZyS4rNAL4Ie+5m+CxzGQLqODv44oIGUpXsXPPErFtsUvyi1Ih5aIRK06jS
 keLPV3t/hH5HZ09dSBgthqijzUkoR9Z9U2xEZYGbrxp8yxMiltt7cYgV8CRb3z1N13is
 X/V1h6W7+jmpVATxfjdn5QbUBJ4FZV+O5R7shhJJj3Yc4pi04JGiICRUcPpMDr24Yv6U
 JQmu27ksNY9r75HUGveFA/TQIniku8vM8xLV89+TRl3DdYOt7mYt5pmsStjLkbN2Fgcd
 fbYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zkZRE1eEAZyryz39bCaestf9STy5sTzg/yvpAeBoKL4=;
 b=J0zStk5oz9Snmk+/tz8OgYTNF0n9HMxtB6opU3CqNa2J3CpNGQPdABq55zdPJHydI6
 QaZaY/efDDd9CdLAetG4cdBLOPTfs6s1DQLtJuOROynKZKG9tp99FYt2HCueicyisOqG
 9ymWnKTmw9BMCpxWCUy6035pdzI0wjjI5SEMvU69qY8GoCTnnJrdBhL5+QUW5Pm0uxuf
 +Yj8CRFcrAO1wTUryo2x9JV3CtA1WqCDJ+f5HIdvg9eMyCiIkCyf33KFMHrbAoXfucwq
 2qepXyK8FnM4hheoBN5g+QNUxPXQB0J/vjtm14M0I/uquUxzmaswb1E+PcZzZSeBJN6d
 IPCw==
X-Gm-Message-State: AOAM532IVLdbmSo9IFA9efWhzSah9Nli3LqhMNk19YFNiFd56ewl2YNY
 amYzUMgZHj0lnGLqZgggB8R/Kw==
X-Google-Smtp-Source: ABdhPJyanMpqt2duCpwpvAmH2PwIWFc4RUPjx+nuDVdS38gdaqmbFEoZOY+04aefRITy3t9qRTOsoA==
X-Received: by 2002:ae9:e895:: with SMTP id a143mr55119qkg.113.1633120646890; 
 Fri, 01 Oct 2021 13:37:26 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id i8sm3957487qtp.55.2021.10.01.13.37.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Oct 2021 13:37:26 -0700 (PDT)
Date: Fri, 1 Oct 2021 16:37:22 -0400
From: Sean Paul <sean@poorly.run>
To: Brian Norris <briannorris@chromium.org>
Cc: Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, stable@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: Re: [PATCH] drm/brdige: analogix_dp: Grab runtime PM reference for
 DP-AUX
Message-ID: <20211001203722.GZ2515@art_vandelay>
References: <20210929144010.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929144010.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_133728_362800_D2E42EC5 
X-CRM114-Status: GOOD (  20.58  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, Sep 29, 2021 at 02:41:03PM -0700, Brian Norris wrote:
> If the display is not enable()d, then we aren't holding a runtime PM
> reference here. Thus, it's easy to accidentally cause a hang, if user
> space is poking around at /dev/drm_dp_aux0 at the "wrong" time.
> 
> Let's get the panel and PM state right before trying to talk AUX.
> 
> Fixes: 0d97ad03f422 ("drm/bridge: analogix_dp: Remove duplicated code")
> Cc: <stable@vger.kernel.org>
> Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
>  .../gpu/drm/bridge/analogix/analogix_dp_core.c  | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index b7d2e4449cfa..a1b553904b85 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1632,8 +1632,23 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
>  				       struct drm_dp_aux_msg *msg)
>  {
>  	struct analogix_dp_device *dp = to_dp(aux);
> +	int ret, ret2;
>  
> -	return analogix_dp_transfer(dp, msg);
> +	ret = analogix_dp_prepare_panel(dp, true, false);
> +	if (ret) {
> +		DRM_DEV_ERROR(dp->dev, "Failed to prepare panel (%d)\n", ret);

s/DRM_DEV_ERROR/drm_err/

> +		return ret;
> +	}
> +
> +	pm_runtime_get_sync(dp->dev);
> +	ret = analogix_dp_transfer(dp, msg);
> +	pm_runtime_put(dp->dev);
> +
> +	ret2 = analogix_dp_prepare_panel(dp, false, false);
> +	if (ret2)
> +		DRM_DEV_ERROR(dp->dev, "Failed to unprepare panel (%d)\n", ret2);

What's the reasoning for not propagating unprepare failures? I feel like that
should be fair game.

> +
> +	return ret;
>  }
>  
>  struct analogix_dp_device *
> -- 
> 2.33.0.685.g46640cef36-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
