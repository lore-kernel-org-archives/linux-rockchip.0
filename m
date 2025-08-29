Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1514CA0FF9
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 18:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiDpsw39Mwo9NDUO+yh9TuGIA+ou5rUiFYPnKLTCcQQ=; b=1PiyY28V7n9my8
	rVDBoMb3zlV4MRrgsnWfwpqA48LIIIVxOLw4OEU6d4GLrS8YcgC+atMaWPRg3P5UenQlWbt2sB3uJ
	ptGcefqqGY/yz8eGeTWV/A4YYnPeMpNUkbGZjK0Qyz6rES5QEk8aTTPxITvKEirO9IheCyabKLihd
	ctZZdDnxpW2eK9EVc/vB72rWhfCh7bKkZs7YcYU6655G6gb+CzS6fCv//JdVRYaHaK2mqv7mJuQ+U
	qy7k71HJHTSwV3qnCmajG0UBztZ3/1lUSwmfbTiOy2dP9AtQfHPr7LHZ2bJFusrUzB30cRCGYfZJo
	vXoCHfpFO+DqseLjAR9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us4BM-00000006gex-2rwn;
	Fri, 29 Aug 2025 18:50:40 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us0ux-00000006Avr-3HLZ
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 15:21:32 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-7f7a6baf794so277481885a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 08:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1756480890; x=1757085690; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2IYwgECH2Vb0kFa6dag8ngSP8oduCmQ/9S3DpTHTLEQ=;
        b=XEVOOkWB0FfDKhPoUSagx/hCVwVOxxzwZ0y1nMCJhoRJFXjAfzOV57qrMj2reOg+Hc
         ey1VkclZjICVfGXU5PSqY77Enf8yywwEJRjW+KCVWpT1nyFq/y30CC0wP2PTxETUTb7C
         dFVdjGrpQiGs+4jMrQcwv9CUdzRUyONRoYPVoxtON5U5D2mgF5ct1fU401/NwXodao5U
         4JJFU+6aqecOEqay+bn0jCHwb1fIIhclBhiQVeCDqvQW4jdU5n6LMgtxa8lCiKi6b5pK
         PiONtSZpgj2wmx9pWXLk2c/JZj4B2n3wQMaR+TE/OB6p5NN0597R82WY0D+3mN4SR4dN
         mnXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756480890; x=1757085690;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2IYwgECH2Vb0kFa6dag8ngSP8oduCmQ/9S3DpTHTLEQ=;
        b=H+UMHgp99Ts5APyU9605daWeO/XhqgAJlRi/UA/S3uLwxuZg6sOB+9zVWnktHD0gjy
         FzKOCNlGndgsUye0/yoKXaEhxcPq3SuR2RYc/nMkW3j7qE4Rkm3k/Hf2w6zAGYhmocVG
         kPaQqCxsMAUjI68SMqermkGLH9t0qUh18iomIKxE55E56oQYeMspbxhHuw1fT0elhGrR
         0OppiAisdDws0R2QFzYVPfLZrfQhy11ue364tDYpIZi+w27+zxyPpEJWsowX0cl86r3O
         A3GlfbdPHaixeQCLK0lNYfu5rTyc8i0Kgj+/qCkwC/Dlwr06gwHUtWyHW5EtJukdshce
         dmkA==
X-Forwarded-Encrypted: i=1; AJvYcCVOkuFeMxfPI2JjWGL4lVMbXRrVY8nB7qWyNHImy+ok9lw4WjBgAuf/LuT6XL2sxuGm+LoLvmOTM+hzMSG3pg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxFs0m2Fns023M2VulERZrQQZ3nBpyBuA1W4G4ghYwqkdjvT3sl
	4IDrOZsy9oN3OpMmDB/oKzZngCl0A+x4vBiPUchEHsiGaFmD7LHYYd/+DNHpUTg724EyT6tHHkX
	lzR/3gfMnsdIHQv3wgUCEKdiV4lu9IK1dEt1ExlA8MA==
X-Gm-Gg: ASbGncvdKSihLCd/u1yxfFUiuBQYWn0F1OPD0Kv7shMPTSU5FE0wYll07QLWFkxhP9m
	b0sEVh4bHspgIAVY4GqlkBhm/6gImyxckr4s1826LZVO/QA39jJg6O5Q6BHMfYWRHSFAh0t2iXt
	Dg9m2RWO/m9tU2cEDyCUPkSJvE4hcvjv4sCHd3Kgn/mrKPzRB/E0XdAhmZhnfRD3pBB9fCyqMYa
	zEhVuMXTxQI0HX9
X-Google-Smtp-Source: AGHT+IGeGmVh1iUNjv0FS+p5OGgAJSDw8wtHxZUJDzpWlckzaiRoFpBbLnvjd7wozfAnhZJNzyKKXYePs5Pqdj4L88E=
X-Received: by 2002:a05:620a:a10c:b0:7ec:7a3:8376 with SMTP id
 af79cd13be357-7ec07a38426mr2536339485a.30.1756480890408; Fri, 29 Aug 2025
 08:21:30 -0700 (PDT)
MIME-Version: 1.0
References: <20250825-rk3588-hdmi-cec-v3-0-95324fb22592@collabora.com> <20250825-rk3588-hdmi-cec-v3-2-95324fb22592@collabora.com>
In-Reply-To: <20250825-rk3588-hdmi-cec-v3-2-95324fb22592@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 29 Aug 2025 17:21:18 +0200
X-Gm-Features: Ac12FXytZj_E6GvxXMIzP02g9SBaLQPs3U8ehFPd5hZi21QBz_4X9pHHnSFdqno
Message-ID: <CAPj87rN55DOhWeCU1o0=rOkGbrP4M8v+a6xeB5eboLdCiJ-vzw@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] drm/bridge: dw-hdmi-qp: Fixup timer base setup
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_082131_825081_75FE7F43 
X-CRM114-Status: GOOD (  11.83  )
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

Hi Cristian,

On Mon, 25 Aug 2025 at 10:57, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> @@ -1255,6 +1254,11 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
>                 return ERR_PTR(-ENODEV);
>         }
>
> +       if (!plat_data->ref_clk_rate) {
> +               dev_err(dev, "Missing ref_clk rate\n");
> +               return ERR_PTR(-ENODEV);
> +       }

This introduces another bisect cliff, as the Rockchip integration
isn't added until patch 5/6, meaning together with the previous patch
the driver isn't usable between patches 1-5. It would be most sensible
I think to keep a default until the users have been fixed up. But
maybe a better sequence for this series would be:
* dev_err_probe() cleanup (easy, no dependencies)
* add refclk to plat_data (populated but unused)
* use refclk instead of hardcoded frequency in bridge driver, make it mandatory
* add CEC IRQ to plat_data (populated but unused)
* add CEC support to driver, probably make it not mandatory to provide
CEC IRQ in DT since it doesn't seem required for correct operation?
* enable CEC in defconfig

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
