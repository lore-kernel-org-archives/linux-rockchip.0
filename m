Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4AFDE77199
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 12:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evhTrfAJq04iouPgBRGefsL3b7ocp0AYv1al9322KoY=; b=Yw++jL/5IB1UQy
	Y0JpqkteOfGCKeUn5rs+azaqVeeIyzNXSBC7C+SJ86B9VdIVZmXv3MkCBKYMI8fTjfl7QXiU8pb0r
	e9oamznclXeAa0jHIdeYgWIaphVFrfkxIaRy0xRQ+zexo9Nofi/G8wSN+0GR9IduhW3J2tcHGqCrg
	FjXE1esGR5VvT5z7qlotpoEW4qQj3gk6k6qkRuRiulc88XbohAVi0Rg4xT6HLpKLSgUBP0BaLRZBt
	+h9llQifDnp/iaQEQp43XFKvefNC7NpZMFIEUbiiQDwCYp8iDrAK+6JXEtcVVIME12q5Y2lPiZBnn
	rDmbvPc95tOKKqdZe+UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrt1-0000000BtCh-37Mt;
	Thu, 09 Jan 2025 12:43:43 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrrb-0000000Bsvi-2TST
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jan 2025 12:42:17 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2ffd6af012eso9473671fa.2
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2025 04:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426533; x=1737031333; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jSa8UzMvzUoVXnoAHj07r7u9fcSmFdWl/qcJ+OAdKWE=;
        b=buNDKL3IDNKNH/4B/iyLOWsBxka8cpsbemBJFsw3tUbo7T7UiJ0fHWHNWesZGmdmDK
         F17/oz6i7maSHYdSL7ST0G5OjDwHryWWYHi3foPtiAbTVTk6wWQRP6Nfnejng1koHViA
         wOomkIgl25LKLZAENP7QVO69FF+EnA8cn0Wh4artf1xh6oEIAw3IEtvB0K4RODJigz66
         UseKNXWTHi2nJSioGkCXy+YLFv9gvwk0a4DLU6PONmAuJgEtG0iHczSFtK4KDbuuQRmg
         OoVVWOiri4/uScQ34k5CnMx//DVKdEfa+b6CKFvdMudfqnc+HGt+cKAnSvT/IGtlUF7Z
         lB4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426533; x=1737031333;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jSa8UzMvzUoVXnoAHj07r7u9fcSmFdWl/qcJ+OAdKWE=;
        b=SXxu0/ndoCrj3ZOVyoPIxcRsMImFGU919RDuJOwRQEEPVuvIZvt2y85wVoIXI+Bz+Y
         OxLBGtReRBgE3Lz69d+GhTEjVB9wn0Np/iSWWUL2WtJBRXVECGcyrq0qcAEKvWQihmRW
         3BAJs1Mah1h3XDhVJDakte/w+/pdrdJBPjQAfGBLbozHJo9KSNnXxWD7wQ8bWBGiRBk9
         q3RFon22bvD/hxUpH1O6Uz1OhTv7THcxC2U4Mp6HIzSMGpK4u7LPlgD2dkqTW4IreLCP
         9I8T9Pewqph3D3W2Uu6Wu6sWTsfNpNntXnMcvMEpRoMdeUQrP0Q+3h95EnUhnS7QK2J1
         7BnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNmqjaYgqvwh4AFlvgVmDnKuCSLpTYRBSwb9hid4AEgS3egRp9n8qXNQt1Y5sY8XDKddHZmX7sT60psrp7GQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwHdcutUmuHmFynSXcY89gkALoIs5oqMOxM1w2hcNDc0Rz618r4
	4fI+XGEo0NJ8xUqERlazG6rK5Lknm4Y8vTCe4ZMH/Qrcntr2I9di/9FUrycAp6Y=
X-Gm-Gg: ASbGnctb64CQ/atxPVFY6YhONM8qp6i+8C0laVyg7IGfqJi4QRaOKSQWSBRqqVgMf3n
	6y227YxTNeHreSL8RuKGVCnCIqJI6n8jzkrHj/+6JutfpZlwSi5lnjbWQZhpDjSHUxo0b7NS9kO
	e2xzOuPcGJOKwgaD30sfoNpUyGMuhyj74IGSJKQ8ERGuNo1SqsWwLpbsy6k2QPdxS5Uaqc+8TU4
	xrczZxvxi2qo/AKlLGw4qAshnFiBb8rzFNSOAlqBoAcPgQ378HbLvgQJmH4cIdUJd8ROsuvChCk
	w9KzZu9zQTz0osRIuWnFlse+qn+2OyYvfFqU
X-Google-Smtp-Source: AGHT+IE1P1UCOivFTvYWWTS/q4LjMLHD5zB9iByIGL1otwhnL6V5dvTRWi82T/q6jI3Oss5lknekTg==
X-Received: by 2002:a05:651c:50a:b0:302:1fce:392e with SMTP id 38308e7fff4ca-305f45e7f69mr24518741fa.25.1736426533394;
        Thu, 09 Jan 2025 04:42:13 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428becb309sm185975e87.253.2025.01.09.04.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:42:12 -0800 (PST)
Date: Thu, 9 Jan 2025 14:42:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v5 10/20] drm/bridge: analogix_dp: support to get
 &analogix_dp_device.plat_data and &analogix_dp_device.aux
Message-ID: <woyxxwpwuicp7enqkwbquuwpknftc4exkui3wlmkvjcohb3yhj@iv3adwzot534>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-11-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_044215_634494_37D83384 
X-CRM114-Status: GOOD (  10.81  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jan 09, 2025 at 11:27:15AM +0800, Damon Ding wrote:
> Add two new functions: one to find &analogix_dp_device.plat_data via
> &drm_dp_aux, and the other to get &analogix_dp_device.aux. Both of them
> serve for the function of getting panel from DP AUX bus, which is why
> they are included in a single commit.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 14 ++++++++++++++
>  include/drm/bridge/analogix_dp.h                   |  4 ++++
>  2 files changed, 18 insertions(+)
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
