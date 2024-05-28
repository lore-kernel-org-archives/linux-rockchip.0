Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE48DC25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 01:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9P1RhUHYd4GrPWnue89dkgn5vAZhWrMm/zNf2oycQKs=; b=afLo/Bp3bs0Z/S
	9YnXTZ2fA5NhiaCCWr82A+b0vQxhqtCOg9qECB2N3H5hx2e/xOz6dL3I/dl8kIbXpSdZ/tvARvYGY
	KW21eODdv3g0im7sM9jCKfL3ji7QZkh9ZZ8kNSo2NSBesBstBjB2ND5ZiO2NbUhTde0M4/wmfRufy
	9aEZ9tj7QlXRajqfhxQIolTJDvku+wuEtd0NZcWIYq6uT9SyJDI5UMt2sqT9yPsJ8sI9MtVQDxCBP
	snR14vjH5un0gZcjh8c1OHUqVpM24GndEbvse1f/9+kbhYvwp4nNjoMVS/SJxkBukMp+eOaiDz2zA
	nMj7AmUXQqCIy/vH3nsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBlDs-0000000GkbL-1aWJ;
	Tue, 28 May 2024 01:01:52 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBlDq-0000000GkXa-0ZRO
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 01:01:51 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2e716e302bdso3073651fa.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 May 2024 18:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716858104; x=1717462904; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N/n2HPYcfVAMa9viMhIlGedEXMDJx4RNXfxIzwMIkJU=;
        b=AkrUXlwI1p3O1uC/eLK3yPOQ9peVM7iAnUx7nBpsDWpbc2j0v7oNJY8vW8rXLhER4r
         F5XQJhw2mbgb/dJACHh+tu4Yc7ZsiVKGahol+0y6PcO7DhfxDS7FFi4wrfLT5wtimUiZ
         0S6UTcvktc7WhOtvguWqKvT/FsUYaFim2wjBdKWUN9lk4vCabvMWftREtOEa+6dHcR48
         F5BfnS2cO1mPe4yU4VWcdBb4dN4aL0ncgkPi6nBSZVjiGD+SswPq5WbCpY4MUk7LKEiW
         hkhe3TdwlLBGum1uwPPs5QtcxWQfiWqguZY7hiXt3WB6p+1XkhMWqlGGuM4E9D2SQ2Wq
         09qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716858104; x=1717462904;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N/n2HPYcfVAMa9viMhIlGedEXMDJx4RNXfxIzwMIkJU=;
        b=cJ9A2NBDe/M+2bI2VZShR0ZHerGPvy63auKm2qKScgbZnHVedCbP9sR3KBXh7jaWbP
         T1sepL2Ca3RZylARn87fo1JVazrTH56MhrqOFe1PQkcoPFAl3s69/B73yvZ/arehBOqK
         TH80KLz25PG64DB8syhlcQ7ixflAP7jX0MZ5S1D+48l5Gns9M5+zr+AVZOfyOjzZsp+H
         /5/RPES9NQw4Ujm708ufJe3ci40A/hAMOA5mgbn5yMfLZcC12syhVaRBRjZoafzK1BXs
         /ye4t+GkWyXUrA/td0HaFqz/v2FtR3FuwA9Odp8Uwnnma779Sirt6yeE9B8zmOTX+EJS
         dDMw==
X-Forwarded-Encrypted: i=1; AJvYcCXqetunHpyZSn+xJmQ40eWy4yHe6f+FtOAKPV1ENIbektUNF9QEYVM5UEweB/HjEQYO+V+XQZQEuLHM+ZWD8A3MHe27vco7K5Vzk/upN18mBZ7f
X-Gm-Message-State: AOJu0YwMcsC+XtJIHKvFF2W4HzHHEVDGkBorjw3pCq9SGiqqfifc4P5V
	tymgmjFCZGH2FyPoq3pJFWqCkpOqSkEIB6uwXPLDx6bNb9hcm/UmuLUVVwEY/ck=
X-Google-Smtp-Source: AGHT+IF9DeTXOwnwxp4rQ2ox7OoaNgJ/aFfsN8eoykusp3USaYLBAH6PtRIs6CcigKQqs8R9SXPflA==
X-Received: by 2002:a2e:9092:0:b0:2df:d2a4:439e with SMTP id 38308e7fff4ca-2e95b0c232cmr60901341fa.27.1716858104135;
        Mon, 27 May 2024 18:01:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bf2866dsm21078741fa.139.2024.05.27.18.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 18:01:43 -0700 (PDT)
Date: Tue, 28 May 2024 04:01:42 +0300
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
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v15 15/29] drm/connector: hdmi: Compute bpc and format
 automatically
Message-ID: <yas2tp7anjplld6fxg542i6z7e3mrowy3ex2mb2nohij4kkchv@fp4oi3or67i6>
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
 <20240527-kms-hdmi-connector-state-v15-15-c5af16c3aae2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-kms-hdmi-connector-state-v15-15-c5af16c3aae2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_180150_213499_8AA8F582 
X-CRM114-Status: GOOD (  12.91  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, May 27, 2024 at 03:58:04PM +0200, Maxime Ripard wrote:
> Now that we have all the infrastructure needed, we can add some code
> that will, for a given connector state and mode, compute the best output
> format and bpc.
> =

> The algorithm is equivalent to the one already found in i915 and vc4.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 217 +++++++++++++++=
+++++-
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  25 ++-
>  2 files changed, 230 insertions(+), 12 deletions(-)
> =


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
