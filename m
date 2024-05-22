Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65622C25B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 May 2024 22:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnE4IwXkS/bzFfNjW0jG0yjbsZqtNdmW4dKFX13AsAM=; b=J/4bAPQstF2n/L
	ld7O2toPq0VuvUhbtoJtI8B0Js90W+6+RhUZePT6vkRpRyi9LmtismjCpD+03S6zrn7DWz32oWNz8
	7efn6TN8yJXlV3d5n3awo8wDUIVtdp9hcnusGsN2u8oulisqvuTu6PGp2exs+kO2/I6BlfVZcSKMV
	dTCDlLj4xMRCLfdIwqmautzpm2D1MlrSrk0F4z2jOHnnxqGfXr+8nAKOOzY9dOWjMTV3jgvhVgYdT
	CU8KF43qjcgCTee0qz3sxsPYk0ZwlJcqHUKgCOYMcMwUcA3I0aRWbISOL+vZoGRIoBZkmbg2I7LmF
	C+1cG27NADHcuZzRTpCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9uCT-00000004EbE-3zAO;
	Wed, 22 May 2024 22:12:45 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9uCO-00000004EZW-2enc
	for linux-rockchip@lists.infradead.org;
	Wed, 22 May 2024 22:12:44 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5210684cee6so7485038e87.0
        for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2024 15:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716415954; x=1717020754; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BQOeeyMaEqMnu39Y+NwRU81Ky5s55spLGysaOpoEjNs=;
        b=ICcW8VjQUCSSCAAfRVjU22OnWNrhL7HInHr0qgalAGGuqva7Lsn/5eaGrnlHDt2771
         hny3c+PozRhPf/O/EDWJsMPvq+Hlw5fV2h2gZzEGUE/L8iI5V2kgrTvYgZfegeS8yzCi
         U5740BSYh2t7AVP3kYJjI/GoA8X5TOaFgRl98AuSX8BlvUyRxJQhDR4btCJWah7sUslY
         sG2+8OYrb19V1uCDu0wdqlRnyaALiiQfa/yn1ZgNfTqvm25nIkbfeN0EkQm7j/IZQZ4X
         OF1f+yj6qnCf6UtLgrwsV2qHDcn4UnKX1wG7Wxz9OZaUP+2e3nKCiRCA4XtBN41HWrV6
         LAXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716415954; x=1717020754;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BQOeeyMaEqMnu39Y+NwRU81Ky5s55spLGysaOpoEjNs=;
        b=bKzbEfi8ciVBSnFbSH8hiFthqgSjXdSnEYubLzvo3oel4YeqPCeIGI1lFLodCc7uhO
         sx0hL0yX4G7icXVXLY6jAn3ZhQQkFUn+HeS26ATA739mATyoXSgRW/nk4W78fKr4U5pW
         fbZ53kCBSqn/sYpIO/GD3t2cvuNIR5Ai8/KLSsMLU2wvnzzuDygzetLqZYhDc+gym9EP
         XZ9ZK+QWESV6IK4mt3akvh7DZM06JcGL0ZcXC+ivq1C58nMXegxXjVi5PpFr5bUk5Unk
         K82AyhOOQK5/qgvGdkcyu/Q8/PKKF1xPKqfwRS1uHMQkVCMWVSYMV/9sRINoFqf6pgU9
         Slaw==
X-Forwarded-Encrypted: i=1; AJvYcCXnGyM7CBP6xHpTUcslfF7v0/IjWiFrucOWmLIaG9fKrojxmZkmYC/qB/BNPjF+/RoqKROlPf4IJ+NlDxT56qYp5QrK9Xch3SKXD88YkujybISJ
X-Gm-Message-State: AOJu0YwFsQLqCuwrgr0Fnt8i0KODGZ4ve8hdJYa6pXZdB1owjkmOICrI
	3Pe2JV0rg8X4wLt1pOK3sp3WJUJflbu55cs97D39HP7Q85Vc24Y4l4KimOVVO+w=
X-Google-Smtp-Source: AGHT+IFmy9iqYhx6F/MxVLTLyGH1Ov9kV4rl1NcWdUJFcx0idK0FYhwE3IrOr5DzJF6JcDSGkx+xHA==
X-Received: by 2002:a19:431a:0:b0:523:9493:4e63 with SMTP id 2adb3069b0e04-526c0d49771mr1801806e87.60.1716415954442;
        Wed, 22 May 2024 15:12:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ba50csm5062862e87.69.2024.05.22.15.12.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 15:12:33 -0700 (PDT)
Date: Thu, 23 May 2024 01:12:32 +0300
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
	Dave Stevenson <dave.stevenson@raspberrypi.com>, Sui Jingfeng <sui.jingfeng@linux.dev>
Subject: Re: [PATCH v14 01/28] drm/connector: Introduce an HDMI connector
 initialization function
Message-ID: <g4eqwhtbdtqyhjhigtvsplu3hxdyrggkowssgh4b6lj57t6kqh@mptafawe26m7>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-1-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-1-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_151240_795725_4112E8E5 
X-CRM114-Status: GOOD (  17.10  )
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

On Tue, May 21, 2024 at 12:13:34PM +0200, Maxime Ripard wrote:
> A lot of the various HDMI drivers duplicate some logic that depends on
> the HDMI spec itself and not really a particular hardware
> implementation.
> 
> Output BPC or format selection, infoframe generation are good examples
> of such areas.
> 
> This creates a lot of boilerplate, with a lot of variations, which makes
> it hard for userspace to rely on, and makes it difficult to get it right
> for drivers.
> 
> In the next patches, we'll add a lot of infrastructure around the
> drm_connector and drm_connector_state structures, which will allow to
> abstract away the duplicated logic. This infrastructure comes with a few
> requirements though, and thus we need a new initialization function.
> 
> Hopefully, this will make drivers simpler to handle, and their behaviour
> more consistent.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Reviewed-by: Sui Jingfeng <sui.jingfeng@linux.dev>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_connector.c | 39 +++++++++++++++++++++++++++++++++++++++
>  include/drm/drm_connector.h     |  5 +++++
>  2 files changed, 44 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
