Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A24BC25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 10:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBkicBrPoWdTNG6HtV/ZhCr5A5km0wFKx6WpROP8bvo=; b=m5Di4qpFWR2/HJ
	jXkUlF4OvfVFPc06UoAc8pxmzemn9lE5DPW5UFO3mzw+2CAzYnFy9d1HbD8yraEuJT4bYmFzcPqS6
	rPqUUQaGcG+f/MWHIRP3yNc4pcsT0yPsSyyWbb6YAksc5Q45t/gXJhwPHHzMHbyedddDlUB+Yyh8j
	8OwoG1QcicwTum7JL9yiSjFEgbQImqFl8KkdKG2kbBUwZepSu9Ifazht8/agO2B8Q4JLbPcqlp0YC
	enXG1APiO8hRGBaOsAbPeM4Wds9Wjpin6PzFuo2Lz2jZpj7lEbFFyOezSJuNNPz1koz95EOYdN2ZJ
	UbCJpO2yF4A4XfIoy48g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5br-00000005ruK-1zt9;
	Thu, 23 May 2024 10:23:43 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5bn-00000005rsI-2OnI
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 10:23:41 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5206a5854adso6744857e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 03:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716459816; x=1717064616; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dKSB7IlQHbEtURtFb5gxRDwbVXbfNmYltNG39raj9z0=;
        b=QnkxBUv55mMo00oDMPjUNuSAL7cEN6hNrlnost7Ad+HABTgr/cY3RKOwGpHpsL121J
         reJkD7V8qt26pEQDoCnDl2xocrPMyrwMyt/SI4Ee7f6c8HY+u+mnAX4iXzgpPkeZ8N1d
         ssUixsTwWg0D1ywk1Plv7QVBA4quevqXzK1BKsf7Rop3y4Ck4ezs/YPjbD4aY6mZ5rla
         +UxiMSUhKy4B/LHchHYwYizaiDeSaonO1kZTikvo91wTEyWbGoA1Js8g8HYLjcQ1Z2qu
         lXQeFr10btXgKZ83kLX8hJ/v0CND3ywVxlvtItymHS4FE272EHAfl2fjeV2H+W9ix7X0
         n4fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716459816; x=1717064616;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dKSB7IlQHbEtURtFb5gxRDwbVXbfNmYltNG39raj9z0=;
        b=XBJOK0aiOkxokKLqMA3Rvj8fZEwBVw6lj0HrNDTz6DFFZmGs3UcOuzaLi2K8osW6fK
         kxiT7l5GFrT5gXpDMpCtPiCdWy9VEUhEVITFrK4elSEExu/8ONhcKCeYEM9hsWDCsVR4
         LaD8x0J4le0oL+XfnE3yKVktdYigpbT8Vc0PHnLk7a8kgKQ4R90mBhmIOlF0vE7GhWZj
         6GlEtGrD5SoAJcV93kvBwaMRsyE5pO8qaPThmTDo2rWYiVq2cV38tfR0Fj/nNUXepQta
         5OBslRBcNw3pLcs1TUP11WBzXfXeZkUYMSXELIc5Zi0nkQ5guIuv+jGVS7apptExcee+
         FQWg==
X-Forwarded-Encrypted: i=1; AJvYcCUWKqaodOKaw+wtDNrC4uISGatvlk4R7ez+WHCvB3GsOdOrcAzWnPAO7X8KlU+qUu7eyZaBaRMWZ0luTFWlpvoVghY+V9R4WMBSmOzzRnA1X0L7
X-Gm-Message-State: AOJu0Yxb1DtBpiRLrj1sAwd2Nrmx1SEbeVKqNk+KuyEiLNRodVwwWC9C
	2mieAu7MXU+jfHwTF9ST9WfLZHNgoBs++R3D4ljs0rdRLpZ4O8mj23f0OqLQ/eg=
X-Google-Smtp-Source: AGHT+IEzxmh8z+32apu2/wM5J7agRdiD9NBJtehzlsORjUBmhCc0n9L3OJrcZNqTzzbLZrKSNAoRhg==
X-Received: by 2002:a05:6512:3b85:b0:528:996c:137c with SMTP id 2adb3069b0e04-528996c3830mr730488e87.63.1716459816721;
        Thu, 23 May 2024 03:23:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f38d899asm5271242e87.231.2024.05.23.03.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 03:23:35 -0700 (PDT)
Date: Thu, 23 May 2024 13:23:32 +0300
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
Subject: Re: [PATCH v14 18/28] drm/tests: Add tests for Broadcast RGB property
Message-ID: <3pxdrdobtqbxedsstby2bfexuvzyqinzlxdp7d3gii6bbecp3y@zg6wl5lu4kgk>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-18-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-18-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_032339_825444_6D67125B 
X-CRM114-Status: GOOD (  12.17  )
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

On Tue, May 21, 2024 at 12:13:51PM +0200, Maxime Ripard wrote:
> This had a bunch of kunit tests to make sure our code to handle the
> Broadcast RGB property behaves properly.
> 
> This requires bringing a bit of infrastructure to create mock HDMI
> connectors, with custom EDIDs.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/tests/drm_connector_test.c         | 116 ++++++++++++++++
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 151 +++++++++++++++++++++
>  2 files changed, 267 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
