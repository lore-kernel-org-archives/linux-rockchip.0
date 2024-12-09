Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A758E7717D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 17:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XkdoWGld0bZeYZZeB5pcihSESqzm/fC5zmN8fFxTqE=; b=DkVssrPrYGagTz
	5XGAjvpQXOg/UUvmjxZvpN6KJdeK1IAEX7b3KFFd7C29ZN0yD7DAxD0v1x72o6pBW2S3WQ696EJ45
	eNKCDBSgn3yNKvR/bwF90CudINXTUcQNh/s+rxGXNnsXCfGA4XGiDP8gReUfB5+EXGZxbzRo9imP/
	sST9qvAWYgMfAkt6c0HOxjOkxXM1/eEpT1WyFtVcP4DQd5mlFJvxzx4fFTMos+6llIoZTK51H4zen
	T0wRB4eOpf3n+y5fTC4ITI7zSr90ye6AzRKDR4Dlpx1pq1U4pfAgcmIyXsWYooFP93JdHR3lErAxD
	jlQj/ybGqX4JL9mbTdlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKhFe-00000008fs4-1OrM;
	Mon, 09 Dec 2024 17:08:54 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKhD8-00000008fII-3Aov
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 17:06:20 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-6d88d3d1eb6so44018136d6.0
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Dec 2024 09:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1733763977; x=1734368777; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CEAfsLVBfsGUy76+oFFFHqlf6kVm31lMCS/pgQCj+NM=;
        b=JQFTyLzatT7TfvNp5ypt0cl8KAVgN+lNDm6MQ9/SctCn6lv3ngT+spbsKA8maGc4HT
         viId263EWvk7pbvOCIp64jNcaMcRL1HxwyLVlOJp1YLBTad94M37GVkWhrnM5x6tsIpr
         PenWDmxF9oPLR49lNeICZCTgWqma5ETVwb6+BXQxnA4Y++mJC8DZZ4xCSCLpO0ovDvWC
         U9zUIotcub1mb36UUuGyUz29ozzH6GXY9TCiMoHw4ZwZJ4nTmHlLmS/2WMR0YMbopvbv
         S0goRUHx/ktFCsQfJ/vsRRxlwqxsr09tGYZTP5XfD8xkZ2IslTAGGiTRXNLqqihvhxhS
         7VWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733763977; x=1734368777;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CEAfsLVBfsGUy76+oFFFHqlf6kVm31lMCS/pgQCj+NM=;
        b=FzYGYNh62jhCI7Q+tw0QAbbQFHxVHlrsyX6amV9kF6qDy7Cq11J0ffr3MXpJoR8V7T
         qKf8Zx153rknJsVM+Sdcq7OrDb8UnQlcR7hE8LGnT1E1bW2m66+CEU+cSxCGNH/syxCM
         SjXNGFK9KWCRByKnMxaUk9fqPX1tWtEmGORlrSpHsk8n7z7J/x5vBhxDVCSxB9NY2HFn
         hS6e4aKOcyz3bp2XBULbt0rk9XqownhoYrm6BIr0guH+eRxa2+tnTAh4wZabr2xHeLuE
         ArMnnqjv9hZx6BI3ATCMBaIvbj5nn4aZuwralenMqYvWlAq5bEoC4hPYHv+hBa8NX/ZE
         oaig==
X-Forwarded-Encrypted: i=1; AJvYcCVg0NEHHnBidqNi87wGgnxra9XQexCmt0yimo2GkLxSNVxaOk3v4XaZL1UymUjta1FUemFQoGk1r+VCe/QZdw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8cOpCom3+Aahppy7yorP1vJ5V/KpHrr/Xk25/RL7BGTySwgYB
	aQ2MJflAVCXwwWakDVNantWwfCihYvOaca6CxH/TNNFrOGkBptzz604wIfoR3yokL/Qw7F4vGXz
	EXAth1Dz4IWpNUuPRdCcGmG9MvDA5jQc1JL8V1Q==
X-Gm-Gg: ASbGncu8S1bKxZ/BFAg7f4W253evNABlxqr+QjVcS3cAGFuusDWmibhDERP3MMZIwyc
	/2jWNmSVuMhK8FKMKHtWnbOvZ2MUH
X-Google-Smtp-Source: AGHT+IGAVS5+GIVv09oM5aUfkNYSqKqLURj0uHGDQYo0Hnrn9PDydwzeP97lSsusJEmrWZvi9Pv6yK2sFETMgjF0y6Y=
X-Received: by 2002:ad4:5f8d:0:b0:6d8:8283:4466 with SMTP id
 6a1803df08f44-6d9213835acmr1371546d6.18.1733763976815; Mon, 09 Dec 2024
 09:06:16 -0800 (PST)
MIME-Version: 1.0
References: <20241209122943.2781431-1-andyshrk@163.com> <20241209123215.2781721-1-andyshrk@163.com>
In-Reply-To: <20241209123215.2781721-1-andyshrk@163.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 9 Dec 2024 17:06:05 +0000
Message-ID: <CAPj87rO0MG2yE_NTndbxQ77rW-p6-ht5kx5vsaOZikQfVmwrgg@mail.gmail.com>
Subject: Re: [PATCH v5 08/18] drm/rockchip: vop2: Add check for 32 bpp format
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	s.hauer@pengutronix.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	derek.foreman@collabora.com, detlev.casanova@collabora.com, 
	Andy Yan <andy.yan@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_090618_957408_CBF44793 
X-CRM114-Status: GOOD (  11.45  )
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

Hi Andy,

On Mon, 9 Dec 2024 at 12:32, Andy Yan <andyshrk@163.com> wrote:
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index bd8db45eeba6..1f101a3c3942 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1224,7 +1224,15 @@ static int vop2_plane_atomic_check(struct drm_plane *plane,
>                                 return -EINVAL;
>                         }
>                 }
> +       }
>
> +       if (fb->format->format == DRM_FORMAT_XRGB2101010 || fb->format->format == DRM_FORMAT_XBGR2101010) {
> +               if (vop2->data->soc_id == 3588) {
> +                       if (!rockchip_afbc(plane, fb->modifier)) {
> +                               drm_err(vop2->drm, "Unsupported linear 32 bpp for %s\n", win->data->name);
> +                               return -EINVAL;
> +                       }
> +               }

Please do this in the format_mod_supported() hook, so userspace can
see the true support of each format/modifier per plane. This will then
be checked in drm_atomic_plane_check() so you don't need to open-code
it here.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
