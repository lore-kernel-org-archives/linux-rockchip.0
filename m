Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07585C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 11:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6ui5hhwC09Y5aNgybHapzS8Ii4lom4Itb1g9faXoMI=; b=FWhAQ383Q0CZbN
	eyMIlcTxuHB/x4Bv64oBkfJt3i4g3ph/94mindxLc564P8ydv7Jq4YR/uLoSciUNjPiHHJNNqn9DQ
	rLgxMR/RxAngzHNpCTYGxDD2X0yjJAPxVdno3YGLh0LgmAPTMf2vVsnwXXpGdJtKFMjEv19QfiHWi
	Yop1cfwHNJcL48bZmCwagh9aFlDVEb38tmFFBGuXf1CR67pwQ5M5gLQxJ3E0y8x2BMyAwLFC0TNea
	sMJd33KK+X9K5IeM43jzUsr4OG1AzsAXpAovH1E9cm54tHixPprUHvuH03/DOB2SWpjH+CClvgLCl
	IESefcRE+Yvzaq7WecnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA6vc-000000065S4-38dx;
	Thu, 23 May 2024 11:48:12 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA6va-000000065Q4-2KED
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 11:48:11 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-52848dcebe7so438935e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 04:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716464886; x=1717069686; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6E61Jxzxjq7f22HqS8A7YYLGqKHl4SecZqgeLR9j6N4=;
        b=j5SxYjVE9JA72PVa1/D3D+KWaphKihv5vVh/uVp/NoV/Cd1RARUF0Uxxkk8GPMRFU5
         d3k2hCXCycqS5o24PKzjDuU6nxhaQDZfBmikV/mkQWkxfUFC7fdn0YbOFSPfJelHyQpV
         fWlbVuRmUxyVaZUqST9w0DIvwZvWGpfNNHq3tjLz4xAImMI2gL+v7smXfbAL1oYhgY3h
         z9UlfERY90Ymui0ZZdNAa4kGy4j7tJJOXhkFRQ2Q76+MSNrV/U09mlgAX9Mni86WpWaR
         KPWSHUIzmTjYbbHfzlKLS42P1Hn8s3OqJrsZCXQegCZz2Tr+N3i6rxcmGEhOjQBwDLYg
         YLKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716464886; x=1717069686;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6E61Jxzxjq7f22HqS8A7YYLGqKHl4SecZqgeLR9j6N4=;
        b=WOkiZWBRNypp6MLNEMVJWdAPhWa7Nw50Y1Xv2Zog9OBu3Weho1s2ym256Wpbw0XpSm
         0ZY4vZzy+oschw1PkEcS7AV08X7+p8LVgP6JPSVH6bs37xYM8qzI/JAiC2fd6AMM7Lli
         4McGPNTQ75gV9Ut8uojm/8c2dcHMSMF9zDdZNbe5Fs8SylVV2dtmqoHUEpcILUFqA54S
         SUfMH3EuAk0m6doi8doRaUBStJyOu0CzSiwDfEOR21cyGC8PDKVnYe60TOtNaokkghst
         sxjKEoiIc+0FsWqW0J4Ej94IQ74BHuOX8M+rRfofX+ZI6NrohzZqYJ2Yd22pzodJwRfL
         R3vA==
X-Forwarded-Encrypted: i=1; AJvYcCV0KNAB04Fm+nDFutKgizsB5dpYqE6Hg8TUZ4QDBtiBs8hL+VFwZnXv0Pj/Qs0Qx9kjn6YHeHaQLZTenseESMNqfQit/IQuyB0FSGap5T8VLuQM
X-Gm-Message-State: AOJu0YwOLeHT433FVuogtgwqikxT3m8zreQU0aHBBfJ20i9c1/IpYf22
	IKcb0FPOASl4bfbHgI5GnS1r1icMEqn5CPVfja2kRLbUfyg8ZHmE4guGULgk6pQ=
X-Google-Smtp-Source: AGHT+IEyzI18nfzrDPezUD9GxCNOdOCNYajNRn6pfAF677xU9i/D+vNI4ocAHpHkdn63Af8sVdouJw==
X-Received: by 2002:a19:2d45:0:b0:51f:30dd:f35f with SMTP id 2adb3069b0e04-527ef9d932bmr566891e87.14.1716464886556;
        Thu, 23 May 2024 04:48:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-528ce560b22sm42924e87.238.2024.05.23.04.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 04:48:06 -0700 (PDT)
Date: Thu, 23 May 2024 14:48:04 +0300
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
Subject: Re: [PATCH v14 23/28] drm/connector: hdmi: Create Infoframe DebugFS
 entries
Message-ID: <dflaec5kcwlo2y23txb5susqimiohuvf5uox5kecmbrcs4wnox@dq7xak3vcazm>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-23-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-23-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_044810_604904_B9790713 
X-CRM114-Status: GOOD (  15.08  )
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

On Tue, May 21, 2024 at 12:13:56PM +0200, Maxime Ripard wrote:
> There has been some discussions recently about the infoframes sent by
> drivers and if they were properly generated.
> 
> In parallel, there's been some interest in creating an infoframe-decode
> tool similar to edid-decode.
> 
> Both would be much easier if we were to expose the infoframes programmed
> in the hardware. It won't be perfect since we have no guarantee that
> it's actually what goes through the wire, but it's the best we can do.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_debugfs.c | 152 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 152 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
