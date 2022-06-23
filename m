Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77079CCA48C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=euEgrDIYtzliNySFJgqsnOINAZddthrrd4z9xqTGbi4=; b=jS99QRZOpSR3W5
	f4TCdLlR6rBoFcYo/8KFk9tliyI+a0U5jGjdDutMxKivqSZFCLTnmqywT7Ta7abp29ztccIrJvl/x
	xbYb4s5PKMRFsxqYBhbbMiI31KthIkdl8/xw7xG4Es3LSi5Eg81A/oJwFdnY9GAi0Vpp8wjt0CDjq
	2YXDRkAOazWOeFqFIrmXZaf8J5luIzMbYdn9pxs8R1iBl/9nmH4R3rGhcbz5BvBtMelr4xrQY1gnG
	kjGSo7rrErkrmQZ0wDi+qgBQdcrFD2eFHwzzbt4ug62EhoNmfmb1xJsGG67xTA8L8t/zauiv7z7H0
	7UuFpdufwwV3oQFn+ofw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pyx-00FzIF-Ju; Thu, 23 Jun 2022 16:47:03 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pyu-00FzFU-BD
	for linux-rockchip@lists.infradead.org; Thu, 23 Jun 2022 16:47:01 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 88so163364qva.9
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jun 2022 09:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=poorly.run; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=B1jvVdluJ66W41UOcamwBo/85mg4sSq7LE7oRZc9/Ws=;
        b=CQgpPxqnnpqAloyO7Cx3oS7JP5gZQB3Qg0Mw2O4cWqw3cPSl/gs3pEoUgwTf3F2ERo
         dqIndkVy6qNbaczXA18ui/W1Uf2EYbUGkmckXM1NOGViyBpaCUtGPOXa2WE1WTX9e1SY
         WML0WjDpL/clGTLZdmKiq6o2tGLLrdlI9gHCS10Mi/kIkpec+p5IdmoZ1XFY7puK4uUH
         BOawN171/X8635YxQHiPx4XzloEvkwByWBIBZEK6EdI0XLNGOUpp6hZiKZvi2jJngvF0
         B9azYvIFMbctnuc1A9kMbnzp+BAbHnl6yOUVoDpD9sY5t2AHKxM4D6ijomMyR/wV0j+M
         MQlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=B1jvVdluJ66W41UOcamwBo/85mg4sSq7LE7oRZc9/Ws=;
        b=fcD5vra2Udx93HeisKHxqgcwlBAxp8oJgRYaGCF4BGmwhWbIVhZCtWWD6g+IhPwtup
         7Xvuth9QzSspTwsw4Q6j/wwkOXtvCwnj2V6+BAurY+7pkiZjNmsQ5zd+un0KXnmijulX
         4UgRUhc+8Kkyy7qD99De/H/eX0DTCfgRayHF0yBsbDb/QqG7QFxqlmaLA/s5F421PBOX
         hcj7yzRtt1FZXGNQlsEf9MDCHUgCnGJaqE6MW8ZrH+F6Xr73SwdBQBjnOY7mxRb3jltd
         2PJ7f6evUhtNmm1ZsI21Yptr6DuIaNSbxO9UhjsQHnSp03Sfr5t92LfNWtWDC0Miv+NR
         Q4GQ==
X-Gm-Message-State: AJIora9gd+3/3Y+g6lZ8heR/DO5FjSQVVC5FwAXL6eL7f3JdFaS4Cntf
	VFLKg9A5ti4mjvFgV9y+LZS3WA==
X-Google-Smtp-Source: AGRyM1vxTXHu+RcB3wUEKbXav6TTh4Vf0ZudnPRdRYthYM9mf8uEoaiSOtHZwJ2Xro3RBhPUjeOqUA==
X-Received: by 2002:ac8:5a04:0:b0:304:f19e:5fe4 with SMTP id n4-20020ac85a04000000b00304f19e5fe4mr8951799qta.374.1656002817837;
        Thu, 23 Jun 2022 09:46:57 -0700 (PDT)
Received: from localhost (115.25.199.35.bc.googleusercontent.com. [35.199.25.115])
        by smtp.gmail.com with ESMTPSA id x28-20020ac8701c000000b00316022dcc08sm3157121qtm.11.2022.06.23.09.46.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jun 2022 09:46:57 -0700 (PDT)
Date: Thu, 23 Jun 2022 16:46:56 +0000
From: Sean Paul <sean@poorly.run>
To: Brian Norris <briannorris@chromium.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Doug Anderson <dianders@chromium.org>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH] drm/rockchip: vop: Don't crash for invalid
 duplicate_state()
Message-ID: <YrSZAMYzEkXUExNG@art_vandelay>
References: <20220617172623.1.I62db228170b1559ada60b8d3e1637e1688424926@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617172623.1.I62db228170b1559ada60b8d3e1637e1688424926@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_094700_535418_11D33EBD 
X-CRM114-Status: GOOD (  16.55  )
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

On Fri, Jun 17, 2022 at 05:26:52PM -0700, Brian Norris wrote:
> It's possible for users to try to duplicate the CRTC state even when the
> state doesn't exist. drm_atomic_helper_crtc_duplicate_state() (and other
> users of __drm_atomic_helper_crtc_duplicate_state()) already guard this
> with a WARN_ON() instead of crashing, so let's do that here too.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Thanks for this patch!

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 74562d40f639..daf192881353 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1570,6 +1570,9 @@ static struct drm_crtc_state *vop_crtc_duplicate_state(struct drm_crtc *crtc)
>  {
>  	struct rockchip_crtc_state *rockchip_state;
>  
> +	if (WARN_ON(!crtc->state))
> +		return NULL;
> +
>  	rockchip_state = kzalloc(sizeof(*rockchip_state), GFP_KERNEL);
>  	if (!rockchip_state)
>  		return NULL;
> -- 
> 2.36.1.476.g0c4daa206d-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
