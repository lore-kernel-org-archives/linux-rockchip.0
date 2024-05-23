Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11468C25B79
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 09:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8j874lhpYI/W858iJeWRIHNNseHwxxsyewxfOyql0Zk=; b=w3Pn/SwTFUTl68
	gM5ANlGSs3lWv1ao5j0PUe+EcS7sIf+srsrO2WWSVXL7g0J0GIytFa8EvgXTOOqGI2F9bhOSdr2Y2
	BtWkwdFm3Lz33+B0jGV1IJtFWIH2017NNEQkuf31qxVAPC4NlbE8BXnMBXI4+fcUar9tG5/g29ryX
	4xfeHdltfStqtVUrvZhlJxyEsZc0Ii4aqongpFS/sA2BgnSjBiPnaXOht+xy38eUVjqRuWnSfAXZl
	kRy0DJud0mPaHrD8FCnlAzhurCBnil8SNZAztATzgdjDcglJaEcvbBEMIFnpITJSxTQDeToZdqcJ8
	H0nMESQx7sBGcmsssCew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4aj-00000005dAw-0gg0;
	Thu, 23 May 2024 09:18:29 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4ae-00000005d9G-22Eu
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 09:18:26 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2e724bc466fso57112191fa.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 02:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716455901; x=1717060701; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hq01rfxiJkhZS3QzRfqemO50XhU1PhV9rUGPBC31chs=;
        b=kktRH5jOERVSXayzohNPxHiAoIafP9KDe9MXKJSYGwRJ1iwv/hs0MKOhxYF5GH11nH
         DlQ9B1uR86q3W5FDfXE/8cNuXsz/a1JHBCqIld3dq6OHAiG9RKBPIYeLSv55sSJyluc/
         kgtwACOhDzA6HBet0JyI2fBmHax6Sw7ivwl20M0vIFCCeN6KdM5oQRpuI7S/ZVPbK9jc
         GUuhZNFzTOjaecx6ov4XneqsDkt7MnahWAZmsNU1R+BGXib/wvJ2dI47PV4J82utMXrc
         4GkTvPaf6urj+3Rvo9qURv7MIajiPZTmh/KEl80SPigWRKYa61Dp3onDEJkGgkcDOn11
         q7fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716455901; x=1717060701;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hq01rfxiJkhZS3QzRfqemO50XhU1PhV9rUGPBC31chs=;
        b=o8NrA1lWKdaddjepI7OJMvOdagWaJl9LOnmyssqLLg5QgqBUEtaB61WuVn2y8r/sw+
         siIIqq/gvQ7nSRKjlxUdGh59eEh6nZMHbT5NOg7gdAqyzm2P/5rUBafab+DASV9kyV3K
         SbC87NWyK84tMaDQUPU3iHgjS0U6TfLUf41lTq2GRu3yziDOrBIc2ZpQcavSns6pOCJz
         9jqF8iAtr42iZdebz2xPzZ3JWPtIzgbKylEmS1HiDu5yFYYT3QJotqwHHk/voF0z6Eo0
         bWjWAQkFH1oHoyi/Kqwu3dVBTpl2NxJ6ItxUovCYcP6t6XWMD5KZcNtpXcAN9mgUK1LL
         fzWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYSZzmyGd9HRPxQv3RUfFCxg7r8idHK7sZA2Z7+RE0swMoVHpXlr81nWazVvwE8bhbQuEbWLO0L1pn+uQ8CjNU3Hyheg7p6AxJQUNzQYBoxycp
X-Gm-Message-State: AOJu0YxZf4G4yQsbeLpuXJH6E9apHShTb+woqYffO92bcG+GjmpLTc1p
	dXB6ZVs2gFS7KGZHkqn/qv0XJfOUfLo9NERZARzkbNzb++YBbmIHm96Xc5eO65Q=
X-Google-Smtp-Source: AGHT+IHtkzdUfQObjmEVprHkzFN8zKAN9fTh1YCm+Kcmac6VM9gqN/CwHy0s14ABNvz7H4Poi3qpvg==
X-Received: by 2002:a2e:a792:0:b0:2e9:564a:db29 with SMTP id 38308e7fff4ca-2e9564ade37mr5621401fa.29.1716455900802;
        Thu, 23 May 2024 02:18:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e5686b802asm36602901fa.95.2024.05.23.02.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 02:18:20 -0700 (PDT)
Date: Thu, 23 May 2024 12:18:18 +0300
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
Subject: Re: [PATCH v14 08/28] drm/tests: Add output formats tests
Message-ID: <h4t3rsxz6yez5fosi6lyvob5mbngkjb7ad5e4euddhokcjimn6@dif2qzr2xjhc>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-8-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-8-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_021824_587043_DE769EC8 
X-CRM114-Status: GOOD (  15.67  )
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

On Tue, May 21, 2024 at 12:13:41PM +0200, Maxime Ripard wrote:
> Now that we track the HDMI output format as part of the connector state,
> let's add a few tests to make sure it works as expected.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/tests/drm_connector_test.c         | 99 +++++++++++++++++++++-
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 32 +++++++
>  2 files changed, 130 insertions(+), 1 deletion(-)
> 
> +
> +KUNIT_ARRAY_PARAM(drm_hdmi_connector_get_output_format_name_valid,
> +		  drm_hdmi_connector_get_output_format_name_valid_tests,
> +		  drm_hdmi_connector_get_output_format_name_valid_desc);
> +
> +static void drm_test_drm_hdmi_connector_get_output_format_name_invalid(struct kunit *test)
> +{
> +	KUNIT_EXPECT_NULL(test, drm_hdmi_connector_get_output_format_name(4));

Nit: it might be better to use a bigger value here. It's easier to miss
this if other formats get added for whatever reason.

Nevertheless:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> +};
> +
> +static struct kunit_case drm_hdmi_connector_get_output_format_name_tests[] = {
> +	KUNIT_CASE_PARAM(drm_test_drm_hdmi_connector_get_output_format_name,
> +			 drm_hdmi_connector_get_output_format_name_valid_gen_params),
> +	KUNIT_CASE(drm_test_drm_hdmi_connector_get_output_format_name_invalid),
> +	{ }
> +};
> +

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
