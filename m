Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6315EC25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 09:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTJsqkWg4PN75y1BDL1fAvMI7v/FLk4gp/OrTZpBpRg=; b=akI1totY+8mzfl
	xYqg2rfjhJrYpyTmN5VsvOpbYvs4rpfJvVz19Qq+hjxDd28CX404WM28U4hjRwtyGSJlt6vj8W9Id
	B9ECxa68r/5DWMGGI+l5Nv78v8j2JTUCz9ojEXqOjZoBMtA4zZ29xOTtU8WkI6ukAA54N1/3QBQNr
	ZPXY+9x/IE+ovKL4qHurWXIVyikaSsCHOGB0MBUajaZ5lxMYc3vXtZqGhP+oxLVNuHjEaTbZnU6c8
	ODLJ31M6ray9/ZZiaaX4TReUtYQX7wksJw21U3yMi65hKqNjnSEv1S1HOOn545sTEnAshdOKZwNkB
	6mulgZvTsf57zWa7CFvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4Sv-00000005c5L-41y9;
	Thu, 23 May 2024 09:10:26 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4Ss-00000005c2w-0RNK
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 09:10:23 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-523b017a5c6so10941528e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 02:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716455412; x=1717060212; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yLbNbEeZZx+Y9UagHOzdXnc5AHkeTqV4LNqc32hMk7o=;
        b=kFrlVb/nabAKVNC/o28zSUXwtouWkyLhBpi42wTO28HbiuYLyYm1KY/DZcdx9C+2GD
         /GhzpE2ITq9dzIOrmDjxSRFvf4gh85w5cYXk5SkdfYdLthsBZ279FPNKfmgINOTaSCR2
         sjJ2XO5z8DMt4bOWE066c8LlZJ19a3gxyK8eGfjeVLtbsq3S5Py6Z5R9UXeMlIQpc88A
         rz5LVEo/nl4PgXOfE+x4ZUBUOEUXy0/YcK2wD7FhS2Kqaw3YK9qA4rzhd97cTkwxF1Zm
         WQ54S1FlBPO0HMC+6Ku8uD++KXVG/czLJThJ+EYCuvoGoiGw1sULjOrVyOP4r48Q0lX3
         vs3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716455412; x=1717060212;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yLbNbEeZZx+Y9UagHOzdXnc5AHkeTqV4LNqc32hMk7o=;
        b=lv0oBJhtglVPBs5hcROeogxCF4coBYoC8zUedv63poxOKVF8c+cSK0M2zhF4sJyJmH
         rrmWUVvYY381VQcVd+vZ98Z1WXfNQ3O5tPX22wVHsrFbKH+4arD7nipjz8jBczr1FS7O
         BIwPfYW+3F0GEPN4W0Z8TdPIcoSmrmc+GYHIeBRXDYNH8CVsMeDmhT1WdzXwsaae5b0j
         j83sbf7VfueLk/0d0CQlvLcwqAKP5IoGY/v4cKNQu3DZ9iJmMsaewgQwRFGHx8tIpvFG
         veUOjDV71V2htcSFu4lk0Q0CZX18/kN/tzBU8wqOxq/FkGMNmdWQd9ljmZ0vvH0jYb1G
         aCbg==
X-Forwarded-Encrypted: i=1; AJvYcCXLNHaOOTw4LcNKGGxCCbxof/LWrDnz74Dl10Kpgqk8tklJIM6XSgJegbKniPuOJeyyImctR80wJzEimBZRtOROxo2KnXOdqepDOQanjI7xryki
X-Gm-Message-State: AOJu0Yw90Gr8lTcJl7N+G+vzoT4NA7+QZsX8WT51uGE+yphpMoxAawJA
	dOAdVZ7ZikP7XV1ZfDUGGW1PKqaeyPHs8CbcVK40LznIfgnjLwiN8C4wQlTWs4Q=
X-Google-Smtp-Source: AGHT+IGdSgWnLFMgir035AHyOCVqS5scq5u8M8DlUryO/CIUdmVczkNrL4TJ+hWCvcPS/dK0wrOj/Q==
X-Received: by 2002:a05:6512:44b:b0:51e:646d:fe3b with SMTP id 2adb3069b0e04-526c1213db4mr3455906e87.60.1716455412389;
        Thu, 23 May 2024 02:10:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ad640sm5253516e87.61.2024.05.23.02.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 02:10:11 -0700 (PDT)
Date: Thu, 23 May 2024 12:10:10 +0300
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
Subject: Re: [PATCH v14 06/28] drm/tests: Add output bpc tests
Message-ID: <p6mpuna2ubfpqyfogblvknxadga2uqnm3lsocwol4npwmgw66h@42yt4b5zhk5y>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-6-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-6-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_021022_152731_5F6CA7B8 
X-CRM114-Status: GOOD (  11.86  )
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

On Tue, May 21, 2024 at 12:13:39PM +0200, Maxime Ripard wrote:
> Now that we're tracking the output bpc count in the connector state,
> let's add a few tests to make sure it works as expected.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/Kconfig                            |   1 +
>  drivers/gpu/drm/tests/Makefile                     |   1 +
>  drivers/gpu/drm/tests/drm_connector_test.c         | 140 +++++++
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 438 +++++++++++++++++++++
>  drivers/gpu/drm/tests/drm_kunit_edid.h             | 106 +++++
>  5 files changed, 686 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
