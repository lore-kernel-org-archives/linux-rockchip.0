Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1002FC63797
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 17:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krz0yKsUPzC4kDgcCAh7klRm8dqluCtMeAWMZM41CH4=; b=s+E1601klECTBu
	6s47muzigzvvP/jBP8fPHOss4whsJbb8Ep3yQ4ZDIKMdb3bBjIaPjY+kjrj2uaSZxdjXjamzCpz85
	zlovdjKyUcMP31+bkWZrvVQ8Gj6pa4j5jYNBQLmYNbTjNTkdbDbM5L720KD/Js3l4+Kc+AsY4dbi3
	r4jS6GH1Y6E3LhX0H0664MVs99Emi+PShBC7XWHSK/8H5+M98eMH6O+L/UqQ5f1g7k8GK3RiT8sy/
	JmqugfQtpqCXp7wZEetZyf4ag85ux+kuSk+m7pMj4KIF0PZWRk7ihfAhp4tqxrhfUyCWSExtAqKn0
	cIcjArtowvINWgq3OWAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDqul-00EETC-5j; Fri, 06 Jan 2023 17:53:59 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDqui-00EE0q-FL
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 17:53:58 +0000
Received: by mail-wm1-x333.google.com with SMTP id g25-20020a7bc4d9000000b003d97c8d4941so4080974wmk.4
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 09:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8GHbXKYEfBQ8k18yvEj5GJ6Gqi0uOqe0xAgSwSiXa+Q=;
        b=V55nkZ92AGtNCvV8RPNuqTTAVXI89wklWiLVGrs7BnsXhJNUKRmB/CpzYOBOiw9Sd9
         KLhU75XHjuZ7O9TFWix/cgyGxlMVd7KmsTXJAUF+bCJE5BHlsf5Mw/w1fiJ21+GGGzCg
         w5L86CL42Wh++y9bn1PAXUcuA5V+YXkF54Hsg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8GHbXKYEfBQ8k18yvEj5GJ6Gqi0uOqe0xAgSwSiXa+Q=;
        b=UeViMw0qbMxYJCIVF0DRI3IwC+xHuy4N/BtUHOlhzscmWAz0/5FFk76kY1waUozT+6
         BmXLfp6Q7mJ5oUeWcvAmRyU/c57s9ebb7HUn82BGN1UKy++WHXcU42WHZJwBKaRNv6jY
         aW+mPcqevzBduxpl7m/NhjHNrr1hNNJoUNTzxnFEaWpnVSlhdAL9QZ/Qc1X31vWf3C6P
         fEyDJiG+kCFsvkqIQAjoK+Zk6Q8qw9JwlFmSHxGaqbbqTh+lpW5/dfplfT+GranVhQcd
         BakyrPYDBvGidXVLW64d6avN1RUQpoakx6X8faxOU/q2cRe4m06JdAQBHuQ63k1X/6hl
         GYJQ==
X-Gm-Message-State: AFqh2kruLpifRGkkPweqNCQLao/aSgF205ymr895nvH6nT4+BKGNADcw
	7StS+SoVf6GCYR4G8uQ2f332NA==
X-Google-Smtp-Source: AMrXdXsZklbcpQLvNKmHYjVJ8RsVqFufvmJpMcBdaZKRVy/wyCjXEAOFtZhLM8QwwpSTJpw0I4VMaw==
X-Received: by 2002:a05:600c:3b02:b0:3c7:18:b339 with SMTP id m2-20020a05600c3b0200b003c70018b339mr48171334wms.37.1673027632819;
        Fri, 06 Jan 2023 09:53:52 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id h8-20020a05600c350800b003d990372dd5sm7823216wmq.20.2023.01.06.09.53.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 09:53:51 -0800 (PST)
Date: Fri, 6 Jan 2023 18:53:49 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <Y7hgLUXOrD7QwKs1@phenom.ffwll.local>
Mail-Followup-To: Brian Norris <briannorris@chromium.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_095356_548213_B990AA06 
X-CRM114-Status: GOOD (  24.99  )
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

On Thu, Jan 05, 2023 at 05:40:17PM -0800, Brian Norris wrote:
> The self-refresh helper framework overloads "disable" to sometimes mean
> "go into self-refresh mode," and this mode activates automatically
> (e.g., after some period of unchanging display output). In such cases,
> the display pipe is still considered "on", and user-space is not aware
> that we went into self-refresh mode. Thus, users may expect that
> vblank-related features (such as DRM_IOCTL_WAIT_VBLANK) still work
> properly.
> 
> However, we trigger the WARN_ONCE() here if a CRTC driver tries to leave
> vblank enabled here.
> 
> Add a new exception, such that we allow CRTCs to be "disabled" (with
> self-refresh active) with vblank interrupts still enabled.
> 
> Cc: <stable@vger.kernel.org> # dependency for subsequent patch
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
>  drivers/gpu/drm/drm_atomic_helper.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> index d579fd8f7cb8..7b5eddadebd5 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -1207,6 +1207,12 @@ disable_outputs(struct drm_device *dev, struct drm_atomic_state *old_state)
>  
>  		if (!drm_dev_has_vblank(dev))
>  			continue;
> +		/*
> +		 * Self-refresh is not a true "disable"; let vblank remain
> +		 * enabled.
> +		 */
> +		if (new_crtc_state->self_refresh_active)
> +			continue;

This very fishy, because we check in crtc_needs_disable whether this
output should stay on due to self-refresh. Which means you should never
end up in here.

And yes vblank better work in self refresh :-) If it doesn't, then you
need to fake it with a timer, that's at least what i915 has done for
transparent self-refresh.

We might need a few more helpers. Also, probably more igt, or is this
something igt testing has uncovered? If so, please cite the igt testcase
which hits this.
-Daniel

>  
>  		ret = drm_crtc_vblank_get(crtc);
>  		WARN_ONCE(ret != -EINVAL, "driver forgot to call drm_crtc_vblank_off()\n");
> -- 
> 2.39.0.314.g84b9a713c41-goog
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
