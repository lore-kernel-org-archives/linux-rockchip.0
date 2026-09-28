Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62DE7CA5FA3
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 18:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WiuQRfnesVw6KoBXF2Fp5PAgGWKT8+Ax6RyNfCd/Cgs=; b=bHrbezBSi7iAZd
	AYKD26YBoYeEfABKD9rNLK+yP0DJGdHC8JELG8bwAjOMvKNfMjchPJtsaRI1N1I8dTh1DTlYXlVUw
	A8ofQYGIMwoDiKanguUCMkOCXKJW17v04U5LI2dcsCAA9o+Vm2he5ZFfRSJDVq9Fd81fKApgy2Fpl
	rTeM+N9OnvjMt1yqNmnd+RURdUtUKf+hUD9PKn/PFC0SNaCHBgDzyMUnvMlQhEOGn7bJSR56EhJYr
	0DoAwB80HB3c/IU2RRK96VCzEN4FJDItzbdYhTpSTxac4QNROVPzqr4yH+ByoSELDKN2zCSVPOHMt
	FUmwENLD54iCxVav1QZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBFnE-00000001HM6-3evx;
	Mon, 28 Sep 2026 18:09:36 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBFnA-00000001HKd-4Aky
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Sep 2026 18:09:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1790618970;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WblzAY3JRV9CtwzNMKeAP2oGeUzXJbmdjxKWRmzPjT0=;
	b=Cl4bJVb2yGMg418R/dWWSytlOLD4xTru66dMwgPYhwOdvR7JQ7aMGnWSaJHOrm1dqN4aWm
	1qmnhlqCykCul0iw/1urYyg7q44LptyqaR+Y3rBBQ/p0rPqgKAfF1P1FTiLkZcXALxNQqa
	XYi876v3i+nNO+RJLoq8ofQSnS94KGc=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-630-MZtezWkXPY-G0C_2Gw4KzA-1; Mon, 28 Sep 2026 14:09:28 -0400
X-MC-Unique: MZtezWkXPY-G0C_2Gw4KzA-1
X-Mimecast-MFC-AGG-ID: MZtezWkXPY-G0C_2Gw4KzA_1790618967
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-49e7631c43aso34555875e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Sep 2026 11:09:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790618967; x=1791223767;
        h=content-type:mime-version:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WblzAY3JRV9CtwzNMKeAP2oGeUzXJbmdjxKWRmzPjT0=;
        b=q5m3PkdD2ZcunqjQCz/GeSzbs5BX2cXTiBmsEn/BVy9/8CwU0gTK6kUWmOYkeiNnyP
         SoCGmFOZojnWA9soKw4AwuPfnZXwXVOkiKWNWnrpo9lbgE6rXnwLc+jPSwFqV6l7wlIk
         5B2CZ3DsOz9r0g3a9UUE6zCL5kx9uxWnJMNPUknORQtpu6CjchV5yp8T+ACCbNckICpN
         mnBb6u/IBsx1yEkS9J4Bf4IMNHHIIgQ4ebbuUZI/mniodoj2t+jh6dUm82Z2cfrNGSVe
         9BtOY7GdOfVzjw05s9tfWmnEnbBOGxcxevmdpBx5ymq9G9+NYgkzxcYw2ZOKG6W+hiC2
         XFiQ==
X-Forwarded-Encrypted: i=1; AKwUvBy0LjS8RrimPy5uYhTpnlT3OKMM1o0C7GaSlaue619cCaAPtkRumhQJqpiLjgcSM/kfpdpJEHORX1kZYSRUpg==@lists.infradead.org
X-Gm-Message-State: AFuF++kuY0JZKYDgJOxdFbJAw3aSv4zxixzyCQ7sa36BeeYalQIoqAzL
	P9FZs/OajMwgqTUwKuffivimKaabLRHzReYPEUp7mFy3a8YTxeJTf/zHJ9kLCt7GY1Eozv3Hqh/
	pUWNkQDduacFZVNsW9MWQlkm2f9W1LslHTZGWT+GLkMaV7k61iy/xI5GiQy7jD6Pq02fqmr9+fw
	==
X-Gm-Gg: AYBFou2AiN4ZRDjjy37RgtxTq0M0kyheiLicKG0SsJb2R5l7avl1w5hyIisbjmHz/vT
	AEO9LXGqI9KcYx0ezdO6OVT6ZqoNDWDHCjWbNVKa102iE4rkeNhi7pWtii3qt0GfO3LOqTCNDwg
	v0DmypMOnsnXOhx69bWwgehWhXj0QbKMjJmAcwH8rdQ6L4DxzmLz9ynqzSYOu7bZ/n8E9wImSiv
	2snMarFdJiHTQBnMEaCXRerE++3L9i0vHX8EaknujkkeTZLcJvlihinM7gYW8i8YwLx46NpXUwP
	hCbjyOZ8lQulzzHkSsvxIA+CTgNGe3U1hAhDl2qRE2PJ149UyiCjzzkwB5KIrtVt5mPESBm7wVJ
	5CtzPKHY0neK+jiIGutuWegUN0Tz1xGoEiLYFamnHBAaMtI5HNqe9CFulfLxhoWD5GQ==
X-Received: by 2002:a05:600c:1389:b0:49f:dcc8:c735 with SMTP id 5b1f17b1804b1-49fe66f4c7dmr231739885e9.18.1790618966876;
        Mon, 28 Sep 2026 11:09:26 -0700 (PDT)
X-Received: by 2002:a05:600c:1389:b0:49f:dcc8:c735 with SMTP id 5b1f17b1804b1-49fe66f4c7dmr231739375e9.18.1790618966445;
        Mon, 28 Sep 2026 11:09:26 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a00d10cb7dsm3533065e9.0.2026.09.28.11.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 11:09:25 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, jfalempe@redhat.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch, jani.nikula@linux.intel.com, Alexander.Deucher@amd.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-tegra@vger.kernel.org, sashiko-reviews@lists.linux.dev, Thomas
 Zimmermann <tzimmermann@suse.de>, Alex Deucher <alexander.deucher@amd.com>
Subject: Re: [PATCH v4 1/2] drm/fbdev: Move fbdev module parameters next to
 module init
In-Reply-To: <20260928080323.23909-2-tzimmermann@suse.de>
References: <20260928080323.23909-1-tzimmermann@suse.de>
 <20260928080323.23909-2-tzimmermann@suse.de>
Date: Mon, 28 Sep 2026 20:09:23 +0200
Message-ID: <xlv133utfdt8.fsf@fmartine-thinkpadx1carbongen12.rmtes.csb>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Gd_8VYZUK1ayYW1hZz7UiTTKH3Qyc2UNjKcapDShU4c_1790618967
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_110933_107087_57BF106F 
X-CRM114-Status: GOOD (  12.25  )
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

Thomas Zimmermann <tzimmermann@suse.de> writes:

Hello Thomas,

> Define the parameters for fbdev emulation in the source file with the
> module-initialization and exit code of drm_kms_helper.ko. The parameters
> control some aspects of DRM's fbdev emulation. Common usage looks like
>
>   drm_kms_helper.drm_fbdev_overalloc=200
>
> on the kernel's command line. This has been possible for many years
> and changing it would likely upset users.
>
> The emulation code is supposed to be moved into the module for DRM
> clients. Keeping the parameters in drm_kms_helper.ko avoids breaking
> systems the use them in the way described above.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Reviewed-by: Alex Deucher <alexander.deucher@amd.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
