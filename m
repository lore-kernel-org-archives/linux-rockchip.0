Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DCE1C25B79
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 01:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQEOtEH9UxZanMCt2flciwaCi67Qsr306KgFtYh8bUo=; b=mkWYV2jYE86s6g
	s1LLDF+DkaHmpnJUg0G0xFHpoSIGYJz3Kd/gZX5naoQrXZ1swIyHekiNbJdV+la2TH5stnYC4WODh
	/82ZKhUO/qZQH3jv97fiJeobY0S4FinqYQNoRbZEi2V29WqFirVAxt5bZFh1KIHv2ojXWy8uKoO4D
	ykMPcHWwG1YzWHv15e1M+J4SWUndd+/HGfpFmoHP/QH1teul42rLupuJACo71futquZwLOzSqAdqd
	KvXcBWKvSiiarlP8KUGTMF16nPuAKq1Iq7odtv20prAIau1HHxh3bN1WU5c/Gnoalj/5k8jsow2bD
	VbR5jE4Idhtw5Ks1RCkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBlD5-0000000GkFG-0Hj9;
	Tue, 28 May 2024 01:01:03 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBlD1-0000000GkDV-0jK3
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 01:01:00 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5238b7d0494so349856e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 May 2024 18:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716858054; x=1717462854; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BmwopWG0DiE3sCpp8aZ0JQHOY+FYWa6TPkm28zzJyuE=;
        b=CMlEwpXCToyZWtNy6NlwDsU+4V3+yO4OE87qfT2wUbVsR2ViqujAra++h3EyGEPcXG
         8+Fwl+3AbMsXT4hfeBa05H7JXOBiXbHODHuAGSqYwOqPYLYG8wyDJurhyFufAwefDx+N
         HARHAnfbYBXw7pgG9W1/etP1tH69UsW6Y2rajnU5HciJCy75olsFI1oTkGPrhRukaH9N
         uEG4aqm+lbX6POvTROD/+kWNk8oMfZViytjDFkO1BvsiWEyXOqfnFbBefqe+NHKqmnvw
         +E7kYmkAiZEJX72csKC2ucwpnFW5A0pWAjDjzehEUAoRT5DBklkVkqTi6NwtvdI9eLkP
         Zl3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716858054; x=1717462854;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BmwopWG0DiE3sCpp8aZ0JQHOY+FYWa6TPkm28zzJyuE=;
        b=AQ1+6xQXa4VyPWgW1qfarc3BrvWAkY+uvDwb3QP8Xg60lWcrIDlOPaA1RYkVzLnZjI
         dJvHr3a7UlCVnBc2o8ljDWf3z8FpSRMqcWoaLYVEZbWEOqv3a5DCqIYS6oQLXuu985aL
         gYxf9AmYsan9dtZnoDplN8Q3Tm0hGJe2ORU8/vbXzEVfDqNaHzlcDMIz6uEmD6CPXDYm
         Nvig6E+MAj30XRwylbQiHzoJH6pDYcWIcFCTd/OVe5aPYFqIaOwc7/X0CHiwjN9R3ysb
         2c8ItdTl1AVRQLl60t6n7yGPMJhYzxAA67TcZ/mLe4bRCLhqzaDQDZXHjceZKLi7aOeh
         f30A==
X-Forwarded-Encrypted: i=1; AJvYcCVf/cW6i/LYefv7VHC2+lybMN7pLWlgF4muVn2ik/qp/6jo1asoYogOcgKf/fEGDYC9eQ1zJQQDaTU6QT4L0bc6KxaO4/JBkpkOpcqzgsfJuxKD
X-Gm-Message-State: AOJu0YxdgccK1GdikGnIuZBA/weQjAccEtrY8lRlzUy6dU/qIJx+vwFC
	RO5H6brbbJcXbMPXaTCuCI+sfzeFk9cHGVFbGAksJDet11cpKykRJ51KzPLSy30=
X-Google-Smtp-Source: AGHT+IFvbCrRsIbF9xwlxxNScbQE81pHqx1ki/P6zSR2F11gCd7AhgIu3KUS7x8FnRnamS3CF4QPsA==
X-Received: by 2002:ac2:5a07:0:b0:520:11b7:6caf with SMTP id 2adb3069b0e04-52967465dbdmr8591708e87.64.1716858053510;
        Mon, 27 May 2024 18:00:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-529712f32f7sm825854e87.282.2024.05.27.18.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 18:00:53 -0700 (PDT)
Date: Tue, 28 May 2024 04:00:51 +0300
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
Subject: Re: [PATCH v15 09/29] drm/display: hdmi: Add HDMI compute clock
 helper
Message-ID: <gdfhorm6pj7l2z4mfhkyabtckoprp3xmdcihjnulzt5gcbtlbq@hmaoimvgwgqn>
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
 <20240527-kms-hdmi-connector-state-v15-9-c5af16c3aae2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-kms-hdmi-connector-state-v15-9-c5af16c3aae2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_180059_323776_BD502F88 
X-CRM114-Status: GOOD (  11.46  )
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

On Mon, May 27, 2024 at 03:57:58PM +0200, Maxime Ripard wrote:
> A lot of HDMI drivers have some variation of the formula to calculate
> the TMDS character rate from a mode, but few of them actually take all
> parameters into account.
> 
> Let's create a helper to provide that rate taking all parameters into
> account.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_helper.c | 61 +++++++++++++++++++++++++++++++
>  include/drm/display/drm_hdmi_helper.h     |  4 ++
>  2 files changed, 65 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
