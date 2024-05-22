Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2925C25B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 May 2024 22:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2V7VETMdSazhBDDDqBhi3l6NebYrwlYRVX/TiNsfCk=; b=q6/jEfJuxao6yD
	SPtRy0enbPsFWdGvWoGY59be7cOlcLf9kqsTHjfzIlYegXNq/pVcZXdUI/ZOxXSJqeXv+3577qZOM
	bUtvXv5hnWEcO7Q7ip53oHADONABvKgJsMT80nJ8Pw3XesjCa25ghiH3ML9QSKWOgx2oSQhRGLjjh
	GP8Azxz3tQqjdOkSX/DVKuD7/fXcmdB0Jcofj7fVrcP7DJod+6MpAvU2r0k8eMKZ8twOz+ylpD4Sg
	s+D5dTPCQ5mkbNE+UZZZUqZvBZasiGwHlxGn3ibjKe45KV9UUCQXgQAiA+L4GcYHV0amwB9Le4wL0
	juYPAEZD83Jt54YWhrOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9uH7-00000004FXR-1orr;
	Wed, 22 May 2024 22:17:33 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9uH3-00000004FTZ-34zA
	for linux-rockchip@lists.infradead.org;
	Wed, 22 May 2024 22:17:32 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-52389c1308dso7028903e87.3
        for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2024 15:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716416243; x=1717021043; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MKjPVo1pobuPoRvHj1uEO1HEyVXXDgMeLw2a17VZbrU=;
        b=CCb3O9GZb4xUIOWfrz5DQ3IevfFbepbcS2JGJL19wPka5YZxZTLyYMoViBMD0HLp/I
         h+AUJlvoenZOnTs+I/u3pOYV8chX5oIAx3OlCp+ohx0h0lVakHEIYpN6to1gkkTfBoZS
         NEiHBxy3PbiVEkH9SlCGHMKGjYuz23zLBiJ/zd2Ou7AGQe8XVGt5Gk+bqGjgghrwfzRI
         BgO1jtQ47n+MHFBoxARlQ3NTaDOxulkeAIuxwJVEAa7sPQYCzqAxDlKh2MQ39P+0yprz
         fzHwjtlBUdybifo7cET87/BGuN7Jo3mvR3qmm5J5XPoczX8CInccorPwyutJAuF1iPdu
         XUmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716416243; x=1717021043;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MKjPVo1pobuPoRvHj1uEO1HEyVXXDgMeLw2a17VZbrU=;
        b=i8qsPnrlZn92YaUr3zJ7aJ9yfGyeaLKiHNQCn48NT1HcMI6T+p0kTjzptCu7us9Xeg
         CwLGAHrLFMlfSaOiJ7WCkP4hkvnrNFheZPyZPFJj1dSLGYvDoDzVNW7F9JmVbS8rNqkj
         M7wcnG3/VoQCIRXQ97hFoWVjRtLwvhlJVXRO33FsgoWB2Q7vWQksBl3LoPWx/c4L7X5y
         /Y4518m1IL5LzH2EOrYqHFkQAMbIiKm01y+RVfvTzLrKeowQ2OLHREZrIctB0gxbhC/S
         /lEDe/DZp6ib01nV/XaJ7a7R6TP3HaaO2bfF7EqTaxJD/LgAR/MqaoyWWHLRxM+Iawlm
         QjDw==
X-Forwarded-Encrypted: i=1; AJvYcCU1aeWyYSZ6qwXaCJBtd39SmRT18ltmEixYeNdaArbm/4bDS5jkhzSQdWTsZbFkJFC/3FZf9jLVIYzstO6///IYfKz8OzWl1Z19DSu8xtkqdK3o
X-Gm-Message-State: AOJu0YxsmLwZ/QHq912ptUqvSQoGXjKvE300X1xDI1xWf0GFMmtcs5jm
	TD56tqFyE69U3K/9bOLjBuN1k8zAa8bIdkPXgh5a7VzU8mP/dswFnqpeAhR1c8A=
X-Google-Smtp-Source: AGHT+IHfhjtR8bEAU54UWtngodjp97JPGUmwO1OM74aRntp9IkGMZ3Yej1SUNJLq9vHd0wtc+li0YA==
X-Received: by 2002:ac2:4c95:0:b0:523:72b8:8002 with SMTP id 2adb3069b0e04-526be315f14mr1967940e87.30.1716416243518;
        Wed, 22 May 2024 15:17:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f38d8b66sm5075515e87.195.2024.05.22.15.17.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 15:17:23 -0700 (PDT)
Date: Thu, 23 May 2024 01:17:21 +0300
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
	Dave Stevenson <dave.stevenson@raspberrypi.com>, Sui Jingfeng <sui.jingfeng@linux.dev>
Subject: Re: [PATCH v14 04/28] drm/connector: hdmi: Create an HDMI sub-state
Message-ID: <zeg3lwkgc36lheoh3wdieexta2roqhhx74crxtw7dygdffkgzn@fwkfx2ixhu4q>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-4-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-4-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_151729_851966_76A6D1A7 
X-CRM114-Status: GOOD (  13.05  )
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

On Tue, May 21, 2024 at 12:13:37PM +0200, Maxime Ripard wrote:
> The next features we will need to share across drivers will need to
> store some parameters for drivers to use, such as the selected output
> format.
> 
> Let's create a new connector sub-state dedicated to HDMI controllers,
> that will eventually store everything we need.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Reviewed-by: Sui Jingfeng <sui.jingfeng@linux.dev>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/Kconfig                 |  7 +++++
>  drivers/gpu/drm/display/Makefile                |  2 ++
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 41 +++++++++++++++++++++++++
>  include/drm/display/drm_hdmi_state_helper.h     | 16 ++++++++++
>  include/drm/drm_connector.h                     |  7 +++++
>  5 files changed, 73 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
