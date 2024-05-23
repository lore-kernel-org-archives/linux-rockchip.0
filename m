Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFA75C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 09:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxUsl+J8AgQ2u6XdHWhaCbYLVhYvSLKK64jegUvYxek=; b=KmfVbSXchXOh+C
	zRWq0jCRh9xxNMn8agPWc2+3rcGNKv7MckwnawxcjpLI2LSSt45AIRz5igI9YHAL6IMkA+1aQnxGu
	vcimweKYVZUDlHO+95a81e7h8zAAa2YtYDPB3F4unrxUKajiJrvnGPxJTNMQexes223ShBrwfeRIr
	qOrdnDTa/9tFlqr4cm7/4Q3m7JOSQEd2HlDspOjR5JfIZ470xLzIQl7GkDo3wap5qpFMX4nLT83vJ
	+15uQ751kisW9SyU8D0ZMqK31jyi5QDspYzSxw2zfBypR+U080j9rX1CQ8pO01tknPdRyt+PYnDov
	xE4Zy763/jGe+z0Cv58Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4V5-00000005cL1-2yT5;
	Thu, 23 May 2024 09:12:39 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4V2-00000005cJw-2pO8
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 09:12:38 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2e724bc46c4so48835511fa.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 02:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716455554; x=1717060354; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YeQACHVYvjXLcJmL0mtvqm0YtmyCm9cGr2iJkKX/fdc=;
        b=lRX2NSxvofO2ShQvc1YW5aJDCyvGLg3utlCa053gVHyqeUqHC/f4m9x4F3LXBRoM8g
         wkWNaZfUNNmOmrH0cMNEiQDqdO6ALqu4EfDKahxayllQTWA5gayeTIswJ7iX4clzrZzP
         xks2PLjxSOUUWEKoxKgXNqY1Bk9EeBA5C2G6OtAxyEUSLbu1asGekvw2x7Apa6aBBIPe
         T2YBJ+avD8U4DMnvBLN6Oaf77H0Jd4g6F20sVKCmX684C2OIOunNhuS08FBgDrYK80dJ
         eSMynnwWwXwT1q53ZQIasi/+AWvQaJYhpninEog2zF+D2Y6YkDvHYFfsd4vmI48tt6WP
         2YPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716455554; x=1717060354;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YeQACHVYvjXLcJmL0mtvqm0YtmyCm9cGr2iJkKX/fdc=;
        b=jSiyYQQ31oNiezw7HkvoBf0Hk0SheX3+V1fmfBf3gAp+AGrrPVkpbA6jx4/RkmhHLF
         O531HRpQx7l2sqDmBqj5gq3QXwwsmbguTBcXUMQIiyzbQ42zy4dQK25jVXWlqQUfCXIJ
         +8gf1nWB/+RbCUyJraKvyEQ9aY3lHnt7V3c9e5CYjO6oRVluaHP6FuIBLOaSpLqS70ln
         lysArEqmCmCJYTV+Pb2slUuga25jZscibz+GPIVHqKmnrlSbumvKfVhbHe4vn67qezL+
         zzKHkvCzjDCrQG2z96W2j9lnuIu0C9xqOpXaYTDYUco8yfdR4qYwKLrI37fbsqy6naKo
         FZBQ==
X-Forwarded-Encrypted: i=1; AJvYcCV54kv+b0teMG2H1Mwo99nhOOqu9B7Cc/7unZdw2va+ja8DTDoVeX00V5GOR5XdiU0ltFuPVVr4D6QnJiqO+XbzBBKpd9nJwBdYZc5LkZI+xIpX
X-Gm-Message-State: AOJu0Yy4Sz5eOWnGRw6/1UyHntdd1IHqXZ1hFrG7Lbnmm3QAuyaGfVd6
	ARJ/7H2AaNXqt/RbIIVSFlnxgYhkW1tQxvxQz8WQMyoGwsBFBq8KYdkHVs6Kjgc=
X-Google-Smtp-Source: AGHT+IFRp9kSkZyOBZ37uKA0zC3RicLR9A71BI+sImuk8bVozEkI6NVn6ruWTcgBILxGVWLUmvKCJg==
X-Received: by 2002:a2e:8797:0:b0:2da:9ed:9b43 with SMTP id 38308e7fff4ca-2e9494bdbcbmr26440181fa.31.1716455554344;
        Thu, 23 May 2024 02:12:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e4d15158c4sm41368191fa.73.2024.05.23.02.12.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 02:12:33 -0700 (PDT)
Date: Thu, 23 May 2024 12:12:32 +0300
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
Subject: Re: [PATCH v14 07/28] drm/connector: hdmi: Add support for output
 format
Message-ID: <dxqf6n2gaksc66rksmdcaky22nz226veex5q6mw4c6npsuobut@m3vuxyai3evm>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-7-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-7-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_021236_804448_8F6A6DD5 
X-CRM114-Status: GOOD (  12.52  )
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

On Tue, May 21, 2024 at 12:13:40PM +0200, Maxime Ripard wrote:
> Just like BPC, we'll add support for automatic selection of the output
> format for HDMI connectors.
> 
> Let's add the needed defaults and fields for now.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  3 ++-
>  drivers/gpu/drm/drm_atomic.c                       |  2 ++
>  drivers/gpu/drm/drm_connector.c                    | 31 ++++++++++++++++++++++
>  drivers/gpu/drm/tests/drm_connector_test.c         |  9 +++++++
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 22 +++++++++++----
>  include/drm/drm_connector.h                        | 20 ++++++++++++++
>  6 files changed, 81 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
