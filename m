Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A253BC25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 10:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlTLaAoztyuL4Ti5Nni8pqvi+Dcvhyc6f5+aazwaDGQ=; b=FaeeD7Fw6icb7r
	GSiWmKbhqPTwM75PpRji6KFL6uqAEwbj4SgTwMRu1I2KjvsZYr38ThjWM79gYyr3Dc50+sN1dt/7Q
	WXoy8fgPeOMYMP/Ddd9JsmZorBhvQ7e5WNSmysewZkNeAJ8xuHXZ+30e83UcLpFmyYtxeYHKCurFF
	x+sAEPIXnwEx4WITYEnF+9AGaBfIO+hjvZq0JQq/yfWOx49Olz7ffMZA7bDhvH0VZ/7jXmuzj7Lhm
	m18k8UiVpklUdydXjQCIHoB6gaEiUPjZjrHqYmWRy3dnfP6XhBrOTy+eTO+mfGKBPO032JkdYtukT
	CqGqt8xF3TC6OvjRsC2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5Vr-00000005qFY-0v5I;
	Thu, 23 May 2024 10:17:31 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5Vk-00000005qEC-42EH
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 10:17:29 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-51f4d2676d1so7575246e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 03:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716459443; x=1717064243; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=80bP7y7qA9MMuEwQlAA7CumJ5PPSgBtdUbjEPN31H7U=;
        b=XPkl5BsCLfaMhga+A2jIngu7MAoMNuCRlbwfNXvO+zq6knZj6chR33QDOi0K4bDRzw
         5uVw40UyCPoGK1DdYaJIzJVOiHoBDIbKlm73yV9Ro5behl8KuqWx2ETtGDOb+R4nAsIp
         cgZ6x5p8o7cYkfwuANSrUS8ogyld0LSZJYjL2DhNm5V/WgVA0jrAsZO0TjAS3NEnBF8o
         m4o7Et7pCVR0I/b/21DkEoZZE3xjYs2bg6Md/nCS0kZJqXjb2iBqxjOMrqra9smFXHly
         jn/eZjy3nIlxscX5QMl9uLhalZBy9UksyJ6+d0bpCNBJJZWuVEL4yxpZw0mVzPto4c0W
         UJpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716459443; x=1717064243;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=80bP7y7qA9MMuEwQlAA7CumJ5PPSgBtdUbjEPN31H7U=;
        b=aeNQrRxLtsJ9qmL7IAWap+gBmf3Ju/L/nli6hwft3c9WT4xPRKkvcOy6BHqcXlzIO8
         c0AQw2lgqt4mbkCd+GF+CN1F+950SUvIEipDgscoF0nrXG4sPJ8iomxbzU8V9gljWNFd
         Fx0Np/kCfQCKJnR+qc/7ZmFnIN2KYVmTTWDlRVseEJhpvKePfjfayHfLK74ozDOvUAm8
         22Q4DuffW1hzLENhrjXGWL8ks77l899NpA7yx5niO9Skk02yYE3lMVEoJoWJNqo5Df3Q
         Dz4WWWraquNoCjwpI3a/nesv6KWRZ3Qs3jjGZ6TKBuwGLxSYRRlb0qFhDSTqYWCW8/dj
         dhwA==
X-Forwarded-Encrypted: i=1; AJvYcCWJyCnXVokqwrlU+kITTeLw3cmtHcd87sXqdgklUWG6xKaRqIK0WGxmY1fr6jQECans9Cy+cr25bLpACc8VK6m0gG/hRv9T/IVC7taxEWFCvfWh
X-Gm-Message-State: AOJu0YxrM5S5YJwJ15mR8XgvYh22hVykjQBDNDfkmfFRncAqsASn6Szw
	pbmHCjN7qEKvHFYeYq32ojpeZDfDK6mj+tb9bCSqaILqIF1E7xn1Wo2udpOK+B4=
X-Google-Smtp-Source: AGHT+IHf7awBjw/9D/TT+Rgq+OAeb8dHAhP0xUpM418Uxoc/FOiPxZ31oJO7H7MbUzlhcOAfgCiNgA==
X-Received: by 2002:a19:f618:0:b0:523:89b0:b03f with SMTP id 2adb3069b0e04-526bf35ccf2mr2563834e87.28.1716459443132;
        Thu, 23 May 2024 03:17:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52812cf2e1bsm215911e87.254.2024.05.23.03.17.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 03:17:22 -0700 (PDT)
Date: Thu, 23 May 2024 13:17:20 +0300
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
Subject: Re: [PATCH v14 16/28] drm/tests: Add HDMI connector bpc and format
 tests
Message-ID: <7xvmyypalx7letzlyxoootpc2e7io5f2no3pu7jnmh36m4su44@6sewdztpjqfz>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-16-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-16-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_031725_037098_CE35CD6B 
X-CRM114-Status: GOOD (  12.31  )
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

On Tue, May 21, 2024 at 12:13:49PM +0200, Maxime Ripard wrote:
> The previous patch added the bpc and format an HDMI connector needs to
> be set up with for a given connector state.
> 
> Let's add a few tests to make sure it works as expected.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 509 +++++++++++++++++++++
>  drivers/gpu/drm/tests/drm_kunit_edid.h             | 160 +++++++
>  2 files changed, 669 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
