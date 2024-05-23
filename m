Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74493C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 10:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Ur+30iL2NSRO8yEVnyzz3J55KF5sVwIhsTgzDQnpl8=; b=E7g+y3YfmDusIS
	tACP1G8ii1C3ty4HSOZLUDa37p/38s+lKEkx6bYDKMC2yZ9ucVJt0vPiaGnh3503BT12JZf1qrnCh
	jBV5am11C9FI312a2kOxVt6hO/GXzda7KeTioOXelU0HnquL9Rs7ZebgBZHi5GHXmi/dedSb3B1Fs
	CjeqI3AUrg2Ik2lzvHFuzZqE8ABl25k9TVjRhpBxHyW8mUenYFY9303Td+3He634c1vKjPPxyV9qd
	5YtWRxmuabVHiqOW85PetykhUy2d12B16dOkoyG5v4rNV3Rgj04/9BF42/RUhbHKHwi27l1Qc2OFz
	GLSBhmYxB9C5mCDmDnYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5cq-00000005sEl-3tZi;
	Thu, 23 May 2024 10:24:44 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5co-00000005sD1-2LeH
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 10:24:43 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-523b20e2615so8747280e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 03:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716459881; x=1717064681; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YTs4KhPH145/AJRmP8+6lMsBop1Ixgucc2xC1shylpk=;
        b=yNZ3/MMgNxw27tEkb/3cwHvWprlFXi70+rOYVhtYbXBqwMyyn9vTyY5OroSASuqKsE
         6mfhJfzbhxs1fXx7Lsi+J4GQso0jtN/Vp2k7wD1o2aNTHNJp/B6EcEQn8sV6HjR1rGoY
         cHFmgtU5++525Y/o0tkPVYrUwGJMdp6l5Lf2E3dqT/Be/1udl1SthHehEOI5sXiUAN4Q
         nTcYmhCPGauFxg2y+zlik3UOs6XOdfsNGEK9Xsq1c/x/nGcQbU0EQRkzdaKaNtXJnuUm
         LtYOUooZBQ1aZxeQ3puMlnDuaR2lQ6TEkpFmqa/wwelpg62f9BCAD8RgU9HIC7wG+UWs
         AIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716459881; x=1717064681;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTs4KhPH145/AJRmP8+6lMsBop1Ixgucc2xC1shylpk=;
        b=xK8VJSqjtS2exUuppcekqKD+jZDA/YQKE8Qkw8ZMwrtD3IFhpCwAhA0nKr7Mluhl/v
         OrZYiqtav+BnCbl6SCIEcfZ4h/3Gagdlbp6RRX546YVhJRAfXcwg495wUYJaoXsnxqMo
         k2nPLPKzVf3eL5DinlFGrL6U0kaXpI4t32Mig9FNnBhfQn4U24PNJ2z+jgBLiFrM2j74
         g70C94KhCwyAnlfk2mO3GOzcEeI1XPUm5xzVxfxW1raHfG2rHXdmGyQha2lVdcgP9vS0
         wlomJRpgieRMVrZjLpKqLzKH5IdMvMWp7AO+uT6YMQOGykk1r02qJvbWixpqtvjnAp3k
         b+bA==
X-Forwarded-Encrypted: i=1; AJvYcCXR6C8sj88IJMBvLwUMH0tesQTiL8LUescBytcNgCG6AVmpkzHj5XERMcOUL/7IH0UtEmq8V/2h5Of9e22O9svf0/XrQwz0MxQSmykKfq/Eq3jW
X-Gm-Message-State: AOJu0Yx2kUBTvg7a8wQ3wmHsrL5N/PcRoK5+TE4fIyCgLGa6O0boPceJ
	gBIGY+SFssQ5tWUqAjvIFhOSqvqOGqtlFSjZrQfvty6+PcXgxHlx/sZRM7treLA=
X-Google-Smtp-Source: AGHT+IFh8tvpeC+TwvjC1fPxZfM+UwuyED0DKgyl3oWL27XorJPrG1npFHJwvig7HdSlbfPLtqhR9Q==
X-Received: by 2002:a05:6512:3141:b0:521:9207:189d with SMTP id 2adb3069b0e04-526c121522amr2191728e87.65.1716459880614;
        Thu, 23 May 2024 03:24:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ad526sm5387014e87.54.2024.05.23.03.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 03:24:39 -0700 (PDT)
Date: Thu, 23 May 2024 13:24:38 +0300
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
Subject: Re: [PATCH v14 19/28] drm/connector: hdmi: Add RGB Quantization
 Range to the connector state
Message-ID: <evhxta7gk6mogntoafibz7kxcgziikrhitrjg45t3p3lhify2k@uwwdo6i4bqbx>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-19-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-19-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_032442_688456_A3132A83 
X-CRM114-Status: GOOD (  12.94  )
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

On Tue, May 21, 2024 at 12:13:52PM +0200, Maxime Ripard wrote:
> HDMI controller drivers will need to figure out the RGB range they need
> to configure based on a mode and property values. Let's expose that in
> the HDMI connector state so drivers can just use that value.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 29 +++++++++++++++++++++++++
>  drivers/gpu/drm/drm_atomic.c                    |  1 +
>  include/drm/drm_connector.h                     |  6 +++++
>  3 files changed, 36 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
