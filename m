Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E76F1E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 14:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+6ycRbRwlOFLl4dHvmVAt6Tf46bZSiLlarQvaO2PIY=; b=t3VHtNQMlh03Q4
	lEY6N8bJkO6wW/ivHhLablUsB9zgOqvuSeTvEW1CvKy1rZQ2b5m1oF7oUwtnbCF5LidWCtrnesifr
	OGJ+rE/EW790J9Mynw0HkOp55BhGhDevso0ezNN8TjOaagnRmF95X580FUMyym82EgM5F25qflLKN
	KvqWZf9JQYBRrV5ym2BM2l8luObSBSh6JMNnFIPNUm3dSYsHEyoAuBx+30IQSJQ28gCnVL5Lu918I
	FEQDXwYf/4RlUHNmf9BcM/Qhw36sW9nPaLy5ZCptuUF08Uj4585/O6m3r8T0STWVmuuGuwAkAdqEb
	SxUcbsTKlASQi7G7Cf8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNYND-0000000DiM7-3Era;
	Tue, 17 Dec 2024 14:16:31 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNYGr-0000000Dgoj-0NKP
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 14:09:58 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5401e6efffcso6133716e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Dec 2024 06:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734444595; x=1735049395; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mV9n8rD9lCXVFxHRKSb6HxnIcMmuUp+M9EhLoSWf19Q=;
        b=K8FRIGUlVuI5oGEKneNn17Tj+SFu5JvVzDCU0UsVpP6v02UoORBct7VqGJhwbjHqCy
         aN0BO1vcriOZrN76YuyrjCOrZiEQwpV1sLwCJ+ycP2vbzF8EviEIqH06te+nf2trqH+n
         FoOCq2g2DtrLRUXzQt6EN3k7oQG/lcYvl9iCWgrPKbxtmW25Z0OM8M2lptjTlCbjGJ9B
         3qwffDPuQetmLSvRhP38DD3/yb0tGkvPzOVpsl1jpDOwI70S5xSBDwgrcT0DisSDLJp5
         x0HI4VY7ByZJOHZEIW6+miGMNbEMI5l/rkrUIfOD0MTibogZOk81MWAsGTOrzA9LFqX9
         y/yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734444595; x=1735049395;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mV9n8rD9lCXVFxHRKSb6HxnIcMmuUp+M9EhLoSWf19Q=;
        b=Sv6beTULTHvJ6Fwx7qNhFgNNjxHzP9CN11f6rkKaHa4yraRTakLy9jWgrqgbDKvKqA
         4gCMOf7B4n+1ry9k7f9bwG34FlshGER15SzY3YgiXZYz5eOVDS0lTAZ2ztNqhXz8Wx94
         q8HEsKBJ7v/x66+7PBbfvN4gZvkaMiPsLEPAynt4oCIcmryMhrRtVzxNgHi3iWaETKQr
         RMIv8h3IShEURjmONOI4saHVzlZQ7FcadNC0CAhKD6bucoYaygONRaUFAQf4LCvagUdy
         cDoDjLo0Roe2ssI3sctF5BRIEHkF5oFuqL26pv0T99X/sod0+9HR0beBvBD7ctzfAJ4Q
         0ryg==
X-Forwarded-Encrypted: i=1; AJvYcCWjOTS8qDM6qSB3n4jNuq8B/IHIW0ofyqbrPMRQOVwj17MD5Li/hBUb+5FN9xnWkwbrxeIHx3NmTUF7NE8etA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzk6yuaNknaMGArYezwbuzXW+e8vTB8pkXMWFCxFXQEgU6zuYJ1
	17aW3bQe85xF9hf0wS/Mmg+iMJeWBHkWJg/in19V53P8wYmS3M2q+Ah8/CIAkJo=
X-Gm-Gg: ASbGnctdHLrt7bLN2GeO9XdpXQga3vYHgKDlo4NhWAk9rPOZhtbIcOZ1PsejtCdz32D
	8AUhRWet1QeCz0k6l2i56ydc8yPjWj1e4lS9GE00ukMjxTnh1WI35/waHpKOCn+PsgONEz1b3U9
	kMTWlVAk2sSu5bbWupS8IrGgwqSPwl+1ndzNH+dLRrhDSTTvzcxU4IsxdzB8WDXJlq9xJCnAz6b
	Dut8gdomcBS/z+uYRNnf0ckRY8gbzWR+aF3kmUwrUl72fzRFX9AywUaUmfAoVzEmYTgRRb13lO9
	TC2wbpkjfQNnMq5rcMVOqYr/b2Be0oP+WZ8P
X-Google-Smtp-Source: AGHT+IHTf5dvyD0mHW1jS/2vTroVhCSJd6opzQzzWVJuSVJWGrT5Dsv7wwpXGqTnNzyEJctFejbUSg==
X-Received: by 2002:a05:6512:3189:b0:53e:3a01:cf4d with SMTP id 2adb3069b0e04-5409055dff5mr6856692e87.31.1734444594653;
        Tue, 17 Dec 2024 06:09:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120ba9dcbsm1166017e87.73.2024.12.17.06.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 06:09:53 -0800 (PST)
Date: Tue, 17 Dec 2024 16:09:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Phong LE <ple@baylibre.com>, 
	Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 00/10] drm: add DRM HDMI Codec framework
Message-ID: <kyytu3nofrjkajwatmxdyav7oekkeigrhx5amddgjtlpsdl2m5@3moqad3gfds5>
References: <20241217-drm-bridge-hdmi-connector-v7-0-cb9df2b6a515@linaro.org>
 <D6DZB443IQ7A.3P1135M6DMF2S@cknow.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D6DZB443IQ7A.3P1135M6DMF2S@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_060957_130437_303159D0 
X-CRM114-Status: GOOD (  12.54  )
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

On Tue, Dec 17, 2024 at 01:36:29PM +0100, Diederik de Haas wrote:
> On Tue Dec 17, 2024 at 1:40 AM CET, Dmitry Baryshkov wrote:
> > This series depends on the ELD mutex series [1]
> >
> > [1] https://lore.kernel.org/r/20241201-drm-connector-eld-mutex-v1-0-ba56a6545c03@linaro.org
> 
> There's a v2 of that patch series here:
> https://lore.kernel.org/all/20241206-drm-connector-eld-mutex-v2-0-c9bce1ee8bea@linaro.org/

... and it's even merged to drm-misc-next. I dropped it from b4 deps,
but I forgot to update the cover letter.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
