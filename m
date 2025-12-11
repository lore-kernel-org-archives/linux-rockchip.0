Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BF65D4335B
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 22:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgOrelivfh9Fd5xae8pPUZGDkIcWxKf/EhceGp5yirY=; b=nNWSdVpQ0m0+wF
	eq5gBWLppmgJK5BLbD+kRKNYkTLeKead6BmzA+Bj1q6U7gruYIJ4m16x8Og/gaN14SARGnUWn875N
	IFKzH/WAThpBPZX6s9CpeCzSWj3acs+uGA6WeavcdoIKz0cAbDJYO1CeTvwVTJh13joOB9VdmdhyP
	s0SSd9QIb/1/daR1BiCUuPZVHTR2SZ8aHw/AH2x3Q6Mud3VKYgxEtuaM6xL+UCpfNokrX+CvFVx8n
	5GxG6ykBuYq0dWvfajuoKbFsGpD3aimM98ges7uf7QzZEo2u47lDRf2JOqA3xfOxtr5Rdr8S534a0
	UzecyQUXPp9xxZdJDqvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpIs-0000000HMce-1Qug;
	Thu, 11 Dec 2025 22:38:30 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpIp-0000000HMbq-2zOX
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 22:38:28 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so5106415e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Dec 2025 14:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765492705; x=1766097505; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hJB9vsPJhBGqG1y/+P5/s4l3WFLRuJ78lA6bLowUWtk=;
        b=VdN5YmTpR5Dj7YiEy1YzsE1AXeDVxt5RFhAWiXdGzcj2UCnMvppKZArBAd2oNdY+y/
         fEgAq2tj4rsPOJcmisCyaz2D5m2j5DRJ05tz616vd9x1x53fkLnNk3lf83k7bub5Il1w
         QJN4gmD9G+nzokaJKIc54xG/cVX5AnFl7CWNVhuE/73jF7eWxmn+XxIEUm7jmzpSyanE
         +BKwfgYkHi4Ekx3NZqF5ea4RSb8J34H5aer4zumnqEmDWVNsegJx4mR2OLDZW8UB9p9H
         usdudEweTZp3DNQldr48qH6I8boAxza3vUzYkbKCtbkQ5VR6TngjV4QnmVHsmlCU2vaf
         Nsjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765492705; x=1766097505;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hJB9vsPJhBGqG1y/+P5/s4l3WFLRuJ78lA6bLowUWtk=;
        b=s/2LqOY/pFX5QEDrQZgiiCAPlDrTc4yW8UMBaPeJqZfF2cxmc6nuLBx+HhFB0fbo2h
         PBs348j7quxNsS0KHgsvaTbHLGaygw9LL7urdLdP9E099eAR9boFaDNpTOPf3VUD8MLN
         3txhHGOqWEBOPlk2iyJ2TPZG6lQHSWJHQEoXAjHxRIqOtD0CoKQ/Po+Y3aJzJ71+JT9x
         F+FKQ9H06N1lr19eZ41Vy5itvPnNK+gQKPkKDDvgenQxwZdnypwiZ1XBjgLNrTkvnUV5
         yL03s158pG89lDIxSenPvGhniFuDEMuHWLBxcJiSSEtKNajdg1C7tsyD032j5YpSpB3T
         Bc6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUBFpcW0GHAxfyidb+wiClGPL+rCPzcTRsS4sg3gs+qLbndRTqdrW37Fme/zSp28ULq7m6ohhtQAsiENEEOoA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxM0fukK8OJrzYG/AVonGC7m2OdpLyRUlKhNP9H3ms6mD7kEGD0
	8RAmFjAJkkwGpIfeZK0dVYr4jTwbGqx/ix60pULBNE5MNkFkfctpUQ17HXzG9w==
X-Gm-Gg: AY/fxX40bFK+mo4sUl2kKggdO/Fjfx3wK12tx9bdhw20cGhN9A86RExwMQfrZT49d2o
	NKE/MfdgQvyM3NzcG34by8eyJDBQZnJr67tNLelYDFZ9Al1xAVQSES5a9dO+vTBr0WD/UhNW2FY
	UKcPjuuUg98bha1zmpzJuL7D7u8r5vyNoYwcdAu55i7qtEXpDFWpvRJWWgP2tXfX7h70tAE7J6W
	f/m4wN898nkeeuK0x7AJB0mYi+TQmtZmVBsr5rwxrvNnLfTB4LElxYrjg4TdDM+6hjvLOoX6FIW
	FMg4uSpxiP7HbIC67qgJCAPIzUm92/WX4jAkDGkgOWZgnw39G0U2M9u0lG+YhhforpZqk0AXXyl
	vOdLv6IIU4Bz0SmHjq22k0DhMHvhnf5YJ75w9lRTLEXofFHSfCbKHvss/WOi0RNjNvWdHGKR4NI
	G3I8gyH+x5anfAbcWE3uVh5xScXOPyktX4oCNtsnL0bYLvbu0MmunH
X-Google-Smtp-Source: AGHT+IHLwdFc72oZ+XpABv665DoqMI2joXHmdbmUSRJgh1kVpg1rJGVTxEvlCZOJHg/L9U83lkVLTQ==
X-Received: by 2002:a05:600c:a06:b0:475:e007:bae0 with SMTP id 5b1f17b1804b1-47a8375362emr95622175e9.16.1765492704852;
        Thu, 11 Dec 2025 14:38:24 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f3a20c2sm508975e9.6.2025.12.11.14.38.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 14:38:24 -0800 (PST)
Date: Thu, 11 Dec 2025 22:38:22 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko =?UTF-8?B?U3TDvGJuZXI=?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Daniel
 Stone <daniels@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v4 1/8] drm/rockchip: vop2: Switch impossible format
 conditional to WARN_ON
Message-ID: <20251211223822.6eeabb4d@pumpkin>
In-Reply-To: <20251211-vop2-atomic-fixups-v4-1-5d50eda26bf8@collabora.com>
References: <20251211-vop2-atomic-fixups-v4-0-5d50eda26bf8@collabora.com>
	<20251211-vop2-atomic-fixups-v4-1-5d50eda26bf8@collabora.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_143827_761862_2E8AAD22 
X-CRM114-Status: GOOD (  19.83  )
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

On Thu, 11 Dec 2025 21:40:31 +0100
Nicolas Frattaroli <nicolas.frattaroli@collabora.com> wrote:

> From: Daniel Stone <daniels@collabora.com>
> 
> We should never be able to create a framebuffer with an unsupported
> format, so throw a warning if this ever happens, instead of attempting
> to stagger on.

It doesn't look like you've changed the behaviour.
Except that all the systems with PANIC_ON_WARN set will panic.
I believe that is somewhere over 90% of systems.

	David

> 
> Signed-off-by: Daniel Stone <daniels@collabora.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 498df0ce4680..20b49209ddcd 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1030,7 +1030,8 @@ static int vop2_plane_atomic_check(struct drm_plane *plane,
>  		return 0;
>  
>  	format = vop2_convert_format(fb->format->format);
> -	if (format < 0)
> +	/* We shouldn't be able to create a fb for an unsupported format */
> +	if (WARN_ON(format < 0))
>  		return format;
>  
>  	/* Co-ordinates have now been clipped */
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
