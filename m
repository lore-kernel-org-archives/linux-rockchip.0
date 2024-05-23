Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F4B3C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 10:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ElOepXB/wcYPsRhXOyMuOHwkYfPMjrHdw7Oglw8owaU=; b=2IeQh9yrzBFcn1
	M8g18ySnjkp39ogk6S8Opy8wgb/MuErcE6mlEFeV9FBLwvg/L0cnv1wX2G0mfe0dKwpIBbYTLFn9S
	LDYdYYkTmhFWwQXqE3EMUQJlmi08gEmn9kHt0Q7IRSNUJa3ua+49KbukrdIKJPhiXCU5cUr1QnOWa
	fVyYEsvIhtoZLKs5EmmdXv8Zv1omp6ZRrNdmAkV5TScD2Urn8YDElTDbFB2xw+vK9Ezkkp03TCKmO
	PcYkBFCrNWm5O2r2u5QtEpbJbdwFa8d9ftnIj20DV49DpuV47HB9I9CzwOztl5uxp3ki9UVHgVNrv
	HXuPZT9fYeWNBvt52+2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5dl-00000005sUf-1EqW;
	Thu, 23 May 2024 10:25:41 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5df-00000005sTE-25QX
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 10:25:40 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5210684cee6so8059629e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 03:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716459934; x=1717064734; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h0Y/Ql63/IxwaJL+O/h+E6/ion+Rk9v6vnf8eimobm8=;
        b=uvEd7RD9e4X3xilnJliRpHFLHy9v2k/jZA+0yxlewKrFIhxLbfsPI2g9YPa57duZM5
         EmWF5iqPUkBG4ZBR6CWcFdtiqXE3cHFvVHzc+SV++o4D4PmpeitWSCMcFuywR7sGulrR
         oQnT+um9sJn/rH5TccfcNVekMQmntEyyhOATcPnTDklcPnNgLonL6lXGLHgXEmRfrP21
         W/fFmawI6EtkmCmOTpz6co1BgZNzyb3FqztQiZpqzwog22aWe4pcqlGDN5tx63+g3K5r
         LPLMK7MlPJYAox7si+ULZ4QlkavrxZrz1g0/M24L5lQnB5iaEuG1BhSV743u2WKkVN2p
         ziDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716459934; x=1717064734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h0Y/Ql63/IxwaJL+O/h+E6/ion+Rk9v6vnf8eimobm8=;
        b=wQtQld1XSotUekl5qOxEQX16jAdLsW9me3YeA+aQE5VINH5nLDW3iGrfsZU2GvvSa8
         YW+U9hOQDl1GQDqAyTjdD+TPDP1p01ZnGMsztG7/3Qyq9Cx8yL7lW5+WEOB0vvo5v+BV
         IGUEsRkaGWFACYKdCsot7L6GtmHVhY6EfR60W5lpg+D4VMXidn3vROPjvTf5pCUw4gHF
         LwGdVMMEI5tm1vrElka97vR4nd1OcomGy3WI0Po6NDdN1bQ2BOn1m3MwbPX0DNs3rJvj
         DDFvETh5w/6yV+XItdxmFOsAtFsLgS7v6i2/sEzrTBZ0R188N9GQpzPGc6BzaZGdV8L0
         oayg==
X-Forwarded-Encrypted: i=1; AJvYcCWAfNONGgne7IxznumgN7IjCkawbnzkTN5VeHLef0Fk+oP7uZu5t5+g/UrPIiLLvRLZvxoo/StIU8A5WJYUqpV9RCdcgM+6BrcoNZ8ibdlqfCzh
X-Gm-Message-State: AOJu0Yw6Lfy9P/d6FsxF/54NO5XWWx+KPlUF5SMODoeNQ4bgTuOkXJtR
	YWaooJ1YR4bQm+rJTvWLe4pplg8w5DW+8lFvo3J+UYx/4WS4U2oMnfmLHQcdvOQ=
X-Google-Smtp-Source: AGHT+IG3S9HxgA+BRyKc+tEiIJocVHkYeAAUZVOvMSsA2E8b2S+QZ7Z9TP78uV3Je9C7031yrjAtlg==
X-Received: by 2002:a19:5208:0:b0:519:2a88:add6 with SMTP id 2adb3069b0e04-526c0782f50mr2886400e87.55.1716459933553;
        Thu, 23 May 2024 03:25:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ba739sm5323969e87.101.2024.05.23.03.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 03:25:32 -0700 (PDT)
Date: Thu, 23 May 2024 13:25:31 +0300
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
Subject: Re: [PATCH v14 20/28] drm/tests: Add RGB Quantization tests
Message-ID: <pruqf2ou26m7i7ez2p6rgjdfbzkngqyuwfv3bnx5d3jzxce3af@sa3d467uka3d>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-20-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-20-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_032537_655632_DD9E3905 
X-CRM114-Status: GOOD (  13.10  )
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

On Tue, May 21, 2024 at 12:13:53PM +0200, Maxime Ripard wrote:
> The previous commit added the infrastructure to the connector state to
> track what RGB Quantization should be used in a given state for an HDMI
> connector.
> 
> Let's add some kunit tests to make sure it works as expected.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 355 +++++++++++++++++++++
>  1 file changed, 355 insertions(+)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
