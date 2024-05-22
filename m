Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A273EC25B78
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 May 2024 22:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MiC5YgFi92FCTsvQwBTNNzGcL1tdWCr7Pi3pEBH10eU=; b=SVhDhu1sc833A0
	wC/YBWZfJ7ZU/79W0ha8/qjcm+pP1X7wgqFHMmAAmmwC3lbvHNNh3ulGTY6mtKtu26Bjt6kyZkXg5
	qklOn3lbwrkzjWDkaYdzUlDgbwhSSvxllh32CaLKsqGu0HXuQAhy92CWVPfFwHGZtGIxxX6BsFO58
	IS78IDWeeP3pWzkwbzEmk9ULLDdhWA5vDoISoQdPP1aZvtukHNtj1Ydpu3fCd8wybfu77wooMTqe0
	+8ULQ/MsRx0B9sJ3vSqb21luJrPpaiLvblomgVcAnO+2OLw+5jROQKR4fPl1Z8tdhtHVW82+AgWAW
	YHma1mkAfSGWLO/djnsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9uOp-00000004Gs6-2Nw9;
	Wed, 22 May 2024 22:25:31 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9uOl-00000004Gqg-26nc
	for linux-rockchip@lists.infradead.org;
	Wed, 22 May 2024 22:25:29 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-51f99f9e0faso8481600e87.2
        for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2024 15:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716416723; x=1717021523; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0B2JbRhNTxBGKVMHTsItxZYaFytK7xf2SG3yQV20MJg=;
        b=FnHFvkDVGZXqCErtnrD5QcxhWp/LNFgwPHnKuieQM5sYtAJ/VjHu4c/AmWadRuxHcg
         8NqwwQhaFZAREjqS89TIyO/ww9/7vwHvB1MLG56MYs8EDR9S2Tyzc+4pbPJ4Rvn+tIc5
         8fYcHaTOFwYjtKA+RIN40GGKyRKnx09/UKRkVj3nbA0XchkjSkcB48KHehFZHnMwn2Us
         gZgFlmlR9wRLelLqE3S4Zr4XQ1wHdW8HiVvVK8hBZT/x50BC3qjzt2WYguLV2FruRHc5
         k3eFCwkTo1KaaIwPoetBkSRCVYM1KslTAA7Ge7z3zuBxE2bVjRdLjqij0pZdwjwRC2HB
         8F6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716416723; x=1717021523;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0B2JbRhNTxBGKVMHTsItxZYaFytK7xf2SG3yQV20MJg=;
        b=FZzWVuPz0gpMZDRhbxpCruEk+6qp0ODoZUBR5s+whK65+VLqCoIC0N4GGhFhH2NNPp
         ezOaIxiQJY4ZMoPkAC5+dC+Y5D5gmsOam4/NMeoJdupP+C9QVzdqrfozwmjWoZE9Jz67
         4+AQCdOK3Q1O5s3t7hYZvCBg1D+DKXpd82uslI7Be2cZ0hjP276OkSZgodNGb52lkUzp
         iz/AhTgOrX/3F2KS5svnZc4wi8mPtS3mva67b+fe5e5SdVnf2xMXs76LeC61kOERDzJy
         5NNtE67ZXeQ6H6zXzXmx4g0M25n4jRfTyqgPDYpWUE3+d9khLyl8OK5AxpJjBHV6En7C
         sWKg==
X-Forwarded-Encrypted: i=1; AJvYcCX41teKsHbtnRAmo1u6OZidoOo8mGl5itRZ4RQCJQfidzywO47KPrWtxU5l8uYcc7CduwwaRhYMUQjo2tXXrn5dDAeklM/WJ8jVUfyP4XxYUBwK
X-Gm-Message-State: AOJu0YxUhiqCN6Iqd7dGOTwSECeeN8XFQ0rUm9UmApjbbqGKSo5IjBdO
	yhjmGXsKH6nTlgpsGstKY/urSSlaRsco6GI3X7OPHTc2Vpu40Qix02i3UIvblAU=
X-Google-Smtp-Source: AGHT+IEdRcdYbBoQQzpqYVDzxkuMPcPMqGC5L1AwkkRW2Odahvetj8UXht61AaeWnM+5cMkq4/v0ww==
X-Received: by 2002:ac2:5ded:0:b0:519:6a93:ed3a with SMTP id 2adb3069b0e04-526bd6935bfmr2114964e87.23.1716416722617;
        Wed, 22 May 2024 15:25:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ad499sm5106336e87.20.2024.05.22.15.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 15:25:22 -0700 (PDT)
Date: Thu, 23 May 2024 01:25:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH v14 05/28] drm/connector: hdmi: Add output BPC to the
 connector state
Message-ID: <ikljb6koxeg6urdzjyg4nbqtl6pzxs2vakavjkxjudsjhsklyp@3ib3inb2oq4s>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-5-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-5-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_152527_596548_5394962E 
X-CRM114-Status: GOOD (  12.00  )
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

On Tue, May 21, 2024 at 12:13:38PM +0200, Maxime Ripard wrote:
> We'll add automatic selection of the output BPC in a following patch,
> but let's add it to the HDMI connector state already.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 20 ++++++++++++++++++++
>  drivers/gpu/drm/drm_atomic.c                    |  5 +++++
>  drivers/gpu/drm/drm_connector.c                 | 20 +++++++++++++++++++-
>  drivers/gpu/drm/tests/drm_connector_test.c      | 12 ++++++++----
>  include/drm/drm_connector.h                     | 12 +++++++++++-
>  5 files changed, 63 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
