Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34C07C25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 01:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1y8QCsrFuMsU66mz9ympGMaMdixg42W2Jo8ffFwFG1w=; b=pfbLHtx1AtuIo2
	DibpDxK7v97ZiT9I/PktHeaRbEeVE9jkePqenNQpolznBJA98qn7FqADlExCrzHXeoHtFYS8zA3z2
	SwOXoavFtDzwIB0QgVH79Sg9qhRDmn0IJoRpvaF3930N6J3RjKAwJP3kR8YOv9rz9WXDzGSHX1PSO
	zFCUyJQ9VMPaX8c8WMQZ/x0XmMa42HXzT9LLstjFu5MljUL0/+BdSq5vAckBAdwq1T2Z9R3qKjsnX
	9R65Nnkq4Y8u7Uo6K1aJKjij0+0G7SCE3QTwnw/izXNl7WHEyw8lKqA4G6AbdDvpRF9PhxLDvohNp
	R2XJDeaRiVFBLygqJJsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBlDK-0000000GkNQ-2WPk;
	Tue, 28 May 2024 01:01:18 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBlDH-0000000GkKu-011B
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 01:01:16 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2e95a60dfcdso2341651fa.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 May 2024 18:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716858073; x=1717462873; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gVWdPdkqG+FpK3oH/DlfMMYl8/VYifM6OkQGUd5A4Q8=;
        b=MndmsZY+3PLw0yzQVQWcFEZfXZbw0qCC//d/Tak4s/rfA971w1pmDZjTvIELA2A4g6
         uEmy5QvZmUDLoK+j0sCjZj6iwCHdp998xHCAy1Zj3x3/SGSNc23L8zqAmRDb098Pfaqe
         f1TA3XTaE62hRp8daYyMzzecfAzWDsUldiAByBcKKz3fIjFXDXwq9YBOxatKJOB3jI3J
         xs18GpzWfWnvEsjvjXsZjkRGr6ffqqleSYOkrsHEKXhwgfZSrsGfeYBDqojfoMOp2YMB
         AYqUxgeSzS3Q9VbbmzWL9pp+/yzLlkO788XM3gAqn/Y0jR7yNBb06c70l3F+EP/PzJAq
         cAgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716858073; x=1717462873;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gVWdPdkqG+FpK3oH/DlfMMYl8/VYifM6OkQGUd5A4Q8=;
        b=Dz/a4tofE8dY4hSGaGQlrUt7gRF5GmOgJ1p3JAW5g40Scb1I6e3QSqdx78slzzP7Uv
         c8il4FxsqTUuyS62a8cdDHdufduTncGw57C2pAKJj7Upck3lrzYLOiPdcNv3R8t8hjW7
         F1J04fEbL997fmki1JcMWtEmltQjWswOkVd0TVPVUAkKYKyc8XskSNr+veCH5ODCSyTf
         5uRzaGoYU+Qek7CxGySxldBq5N4/SFABWtX4As9sf5d14ojUnWdT3XIxug8OteZ2moFv
         0fB+6n4tnTBAS7LW+bcf392eaJ3msZeeApDvZl/1iQukKpoRoBqLwfRUvqVZlg8WeQLq
         irLw==
X-Forwarded-Encrypted: i=1; AJvYcCUM26Mh7UZI5LpdWODHbCCdJfprV+6h82OhxSC0ABJx+ttn8/6sNbhfeDHS/Wb/I46XpiNAYkQyqfqC6p00C6jWHFj0XrLVGGilNnk9hc29FA0F
X-Gm-Message-State: AOJu0YxaPIwtIzYcWHG4XEmnco7vHgoItJ24KnrX9FqiEEZR5oOdOMmP
	WyUpJbV1HL21PhrWa9IPis2XnwUobmU/UZjInNYdKXiq4fuwVxfQY6AN+B245zs=
X-Google-Smtp-Source: AGHT+IHJTgREWZz1ERTKguUSrfa2uSdH6MWQOiMMxr9ZzLrg0bQtJ+SkJaUNtX+UKWWdzgu2vkTWKA==
X-Received: by 2002:a2e:9f16:0:b0:2e9:8197:eca5 with SMTP id 38308e7fff4ca-2e98197ee2emr15410431fa.0.1716858073013;
        Mon, 27 May 2024 18:01:13 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bf23fc4sm21208521fa.134.2024.05.27.18.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 18:01:12 -0700 (PDT)
Date: Tue, 28 May 2024 04:01:11 +0300
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
Subject: Re: [PATCH v15 10/29] drm/tests: Add HDMI TDMS character rate tests
Message-ID: <duizmokcym456fn7mpsfwrwsgazwy4q5nhtfoi5ih6ntmd75th@7yxduxya6j6k>
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
 <20240527-kms-hdmi-connector-state-v15-10-c5af16c3aae2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-kms-hdmi-connector-state-v15-10-c5af16c3aae2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_180115_085588_ED667FFF 
X-CRM114-Status: GOOD (  12.25  )
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

On Mon, May 27, 2024 at 03:57:59PM +0200, Maxime Ripard wrote:
> The previous patch added an helper to compute the TMDS character rate on
> an HDMI connector. Let's add a few tests to make sure it works as
> expected.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/tests/drm_connector_test.c | 300 +++++++++++++++++++++++++++++
>  1 file changed, 300 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
