Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9F7AC02185
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 14:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a93BJQYxD0QT3qf7RS3S9b+ZUIJOF5s/oFeHiTOQU1k=; b=zV0BqtKh8tTcdV
	FAPpoydoNpZ60xIasmSOCH8TBw9SCp6RD27tF54bl99BP73xfEwP3WeJJyHp+BOBb8Q1vjH/+THsK
	ytUA5xtTeNDRFeRWQhifb4fL6H0HlqhSf3Wl6uqJAl87caHk+tDi8Akr1ul4BVJRClw050+kclEbL
	e8bz/Pss0P4KLvA7rXUumh+zOb+JAtutzZxEmlL3bmV+FL+tXGooCfMT86f/Aw+9Y3t1BQshwOFdH
	21MOQYVNhAjQwWMEVDtALga7EwoYVeHDwRjyQZ/MRGit2UwCBsJmktq02yQpT+SBVi5+oMs14DoGY
	kMqgfkHCRoPHXlCYedqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY4UY-0000000C8fV-17h9;
	Wed, 15 Jan 2025 14:35:34 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY4Tf-0000000C8ZX-20GM
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jan 2025 14:34:41 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-6d92cd1e811so8074826d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jan 2025 06:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1736951678; x=1737556478; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wgpCbUXuk0fjx7PlpFBa3YSbnvvXmj+DNx/eEdB8F5M=;
        b=mtZsEk35qOcp+dJB6bF2UgYMnBvKuUewYL9lO+qYKhpDcnWJhVhAvfRkm/EUIHOQFI
         f9PPFJ6d5RVS7M/2x3QFXHzf9xTmrg9phavH7f3j1VdiuvKoT+i/ELZ8kT/lFxZuMFkc
         DNmynN9+eykzU9C7Mzvy9cGa4ZcWuv7Q4KSTn5MOoFaHUgI3JlM9PFmLuDBbYRhWhq09
         uxAaWX1FLfjzuu9WHUBiD2tLiOYzw2LPvpRzLmQKmKuABPIKAjybNnRtXSo8iWfTyZkP
         I+Bn/bqS/lA6stuVbOnrSRTXg4tNE/idYqGHB42yFFZbL+8XPZq0DEYEC0pXlNqzC0pp
         gusQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736951678; x=1737556478;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wgpCbUXuk0fjx7PlpFBa3YSbnvvXmj+DNx/eEdB8F5M=;
        b=sD3bWvE8A8etS3EDUSAm+TCEz3EqNWf59ivvN/XXI+rNyJpGdQNPE9y041I/59G7vB
         ZcQ/eDWdIZv8sMQsNbdBjbMNNiXa3/8jYFDuyTtuNJKqHIgLQmd8bmRe87GHLO9QdYIs
         aDcPCbQ2x+nEy+cwG1EidSXqta7mExq2xCAW52m0746MA8+ysvlC3ndipIFwRDitDlbr
         M6oxm9jCDexyFLuSqtvvfEH0IkcFQwXsK0+iqBLiVl7oV15oWwdTlt+oh8QUwe6T1kky
         kBCAE3xAi9oPiaibBk1gYnTpkykQamy+gQlYpkxN1Rz/ttmCUQQWH54pgMujL2+txyYK
         Ho1A==
X-Forwarded-Encrypted: i=1; AJvYcCWJRxB5Zx6rabtfN5pHHjomL1Dwmw6FK8hRk1Ge+PB3jyxqriEL5eln9Vrq9rImMv3kVUzhAMwlaEGFvyvHlQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzsQATxk9Pv2XJgLGrT/VTiY4ahDIDcty/ndKaKGiESiJ670py9
	arziRPoaB744294dWkfHRd2NmiX1YZnVW/jyGGKXj14Xv7SUv1/L0shTFH/uoZgY2cRF1U5AKR6
	v0KaJ0nIbgDrfQ/hXiPzdy0UKnNabZgUgT6KKug==
X-Gm-Gg: ASbGncuPE9uSPJYip5boqihacHIBeWPpyVy8xavRROezQDG9W9TadbqOH8I1TLgGVrb
	uQMxfRiS1T9Vyg+rSoG6pQPk8gf89zMTbHCc=
X-Google-Smtp-Source: AGHT+IFPz9fbMcvhhyZZGYYuWLUwXCRTy8s+kBCbi69J2hIRU1+TB7begqOpM0+xy1s6GqB+nx1X6ZJAR0totDSXOwo=
X-Received: by 2002:a05:6214:486:b0:6d8:e7c9:ffa0 with SMTP id
 6a1803df08f44-6e192c73ef5mr43851476d6.19.1736951677902; Wed, 15 Jan 2025
 06:34:37 -0800 (PST)
MIME-Version: 1.0
References: <20250109150310.219442-1-tzimmermann@suse.de> <20250109150310.219442-26-tzimmermann@suse.de>
 <cdbe483d-0895-47aa-8c83-1c28220f4a02@ideasonboard.com> <bc97b92e-7f8a-4b92-af8a-20fa165ead55@suse.de>
 <f3ba05c7-6e49-4641-a3f9-ba418ebdb7c3@ideasonboard.com> <c6735280-7c32-4319-8ca9-a7305d8117c3@suse.de>
 <d67adb03-5cd0-4ac9-af58-cf4446dacee3@ideasonboard.com> <0ea6be58-0e04-4172-87cd-064a3e4a43bc@suse.de>
 <f35cb350-6be9-48ca-ad7e-e9dd418281d5@ideasonboard.com> <4af0b6a7-c16a-4187-bbf5-365a9c86de21@suse.de>
 <e327ad84-b5c9-4480-b873-dc3aca605538@ideasonboard.com>
In-Reply-To: <e327ad84-b5c9-4480-b873-dc3aca605538@ideasonboard.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 15 Jan 2025 14:34:26 +0000
X-Gm-Features: AbW1kvZOqZIfsgr5MQqIuf1jKNJtcUmkb-2ddanRpBEhDxEw_Wl931RGN2rzkA8
Message-ID: <CAPj87rOn=RQ615zyaEdFT2ADfPztU7+heVi0G34Rdg-=QO1cCw@mail.gmail.com>
Subject: Re: [PATCH v2 25/25] drm/xlnx: Compute dumb-buffer sizes with drm_mode_size_dumb()
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, airlied@gmail.com, simona@ffwll.ch, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org, 
	nouveau@lists.freedesktop.org, virtualization@lists.linux.dev, 
	spice-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
	intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Andy Yan <andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_063439_514426_2C434006 
X-CRM114-Status: GOOD (  11.79  )
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

On Wed, 15 Jan 2025 at 14:20, Tomi Valkeinen
<tomi.valkeinen@ideasonboard.com> wrote:
> No disagreement there, we need CREATE_DUMB2.
>
> My point is that we have the current UAPI, and we have userspace using
> it, but we don't have clear rules what the ioctl does with specific
> parameters, and we don't document how it has to be used.
>
> Perhaps the situation is bad, and all we can really say is that
> CREATE_DUMB only works for use with simple RGB formats, and the behavior
> for all other formats is platform specific. But I think even that would
> be valuable in the UAPI docs.

Yeah, CREATE_DUMB only works for use with simple RGB formats in a
linear layout. Not monochrome or YUV or tiled or displayed rotated or
whatever.

If it happens to accidentally work for other uses, that's fine, but
it's not generically reliable for anything other than simple linear
RGB. It's intended to let you do splash screens, consoles, recovery
password entries, and software-rendered compositors if you really
want. Anything more than that isn't 'dumb'.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
