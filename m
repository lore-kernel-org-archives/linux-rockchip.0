Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E516C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Nov 2023 03:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3hqo+w8pgU67SfKu9NTLcwPB9KpqzcPmmOVJf6/Jq8=; b=whokeegvgeMk8w
	4GGRqqsYyaUzzFl5yMxUyJRe2frVWBE8rVuMXaGXQD1+J0eh5K8VyekBUzlbkLdh139Ds4lZyTSkR
	FMrx765CXyvonuG47KG2TbSijEdmawXiiuUydvNjriYSU5KR9sQD6EPgPkx/FAraeh7SYgLOuwJHK
	349EaA7H9V35VPy3MEM6mA2+YpjTJvzM2Dz0d1DKATcgTzo7DyU01j8JS6b+0ZfFhwS87PDEk2VBO
	RNqUSydACZMSHgquE5Y/zKOAcROx1UwK8B557/hDDlSeWP+f3p9VrvdOlQ7p6B8GirtsxBKZBb34b
	8Gb/8OL37A0UhzXRGAMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r76BU-00ABTl-2f;
	Sun, 26 Nov 2023 03:51:52 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r76BS-00ABTI-06
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Nov 2023 03:51:51 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3b843b61d8aso1883554b6e.0
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 19:51:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700970708; x=1701575508; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=n3ePcv5eyiWbDO+V9MEwPvr8kWuH4Kzge2qv1KaLJqs=;
        b=Xgp8zlPRuX/vFvQ2CkeXqQpzD7QFQIWBfeM1h024hvfwvSfumtYxcKMgnzDTcvYyp2
         e/JmGssAsihnl+t/wGHcDO9KDsH6jC05ArDwQWmkyvaHqMzGtfZ8jYwKBdij89PuofEZ
         wEzfGlhssv4WNk8HK6lGk+UuBkHVdstp60JhC5FYJx9eCJtg/7MsiQt2myUv24JO4YOx
         a/URwX1MaS4KUKFvcU72iB/5iGU+5JW8zmVWUxJFapGMmPkLr4BnkTgws2dsL97Wl9UH
         7EAj3bfEd7PKp87OvkYw7WrChBhVKz2pqPfP3vaPFOSX31Ej3d3c+ABxXRihaDx0Qf/J
         fIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700970708; x=1701575508;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n3ePcv5eyiWbDO+V9MEwPvr8kWuH4Kzge2qv1KaLJqs=;
        b=YeCbFLXF1RXMijXAPS99/O9NJkOGp0KhZh0dohP7h0MNko5OpTDdM5H/OWlxZnbNdJ
         TY0+OPWGX2JEuH1B71xnbdy2ynUk8nHKhurEPf7v6M9/ku6z3rkMqg8ypCpnywySvn27
         X+s8OWx5NITHfTrCU3wvV3H32kesm3JJnXRX2+pntceH6KTTjKqvf58K4voQ6r7tgxJ7
         fJreErvU//kPuPLOb66HjzW0h4yNvK3uqenua2jlSr4tMNo9UOOX6ooqUKTYRcmzcGhc
         xzYwFclndM0xP8cGmqW1caoimxJtbIyHLcQdfHjjo4+sKumTAvR0mdFcVPP/3Ar9EdV9
         eVJg==
X-Gm-Message-State: AOJu0YyqXdDOg33qHurnFrfW0yfyXjbaICGBwiZM38zFdrve/Gn2RLcZ
	FAp5ymxWTk+KvZssr/rELw7w1/C4jS8=
X-Google-Smtp-Source: AGHT+IF/X8aRobgXRIN9qGUIxqzUHSyxSexoCuANEUhynakNMA+LmC0DkbZCl5A53nkihBW/EJWx5g==
X-Received: by 2002:a05:6808:1407:b0:3b2:f2e0:6b39 with SMTP id w7-20020a056808140700b003b2f2e06b39mr10679999oiv.12.1700970708056;
        Sat, 25 Nov 2023 19:51:48 -0800 (PST)
Received: from neuromancer. ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id be8-20020a056808218800b003b2e4754cc2sm1064673oib.26.2023.11.25.19.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 19:51:47 -0800 (PST)
Message-ID: <6562c0d3.050a0220.2a5c5.554b@mx.google.com>
X-Google-Original-Message-ID: <ZWLA0WS8boG6j1Rc@neuromancer.>
Date: Sat, 25 Nov 2023 21:51:45 -0600
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, neil.armstrong@linaro.org,
	sam@ravnborg.org, Chris Morgan <macromorgan@hotmail.com>,
	sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org,
	robh+dt@kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>,
	Macebrooks@gmail.com
Subject: Re: [PATCH V4 2/6] drm/panel: nv3051d: Hold panel in reset for
 unprepare
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
 <20231117202536.1387815-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231117202536.1387815-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_195150_093340_E85BB7E7 
X-CRM114-Status: GOOD (  18.37  )
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

On Fri, Nov 17, 2023 at 02:25:32PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Improve the panel's ability to restore from suspend by holding the
> panel in suspend after unprepare.

Now I have confirmation this does fix a bug for some users, and a
somewhat serious bug at that. A user had their device suspended for
approximately 12 hours and when they returned the screen was not
displaying correctly, even after a reboot. This patch was recommended
for troubleshooting, and confirmed to fix the problem (note, the screen
did eventually "right" itself after several hours of being off prior to
testing this fix). So now knowing it's really a bug as there was some
question previously if there were actual issues, is there a way this
can be added to the 6.6 and older supported kernels?

Thanks to brooksytech for the bug report and confirmation of fixes.

Might be a bit late for this, but:
Tested-by: brooksytech <macebrooks@gmail.com>

> 
> Fixes: b1d39f0f4264 ("drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel")
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
> ---
>  drivers/gpu/drm/panel/panel-newvision-nv3051d.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> index 79de6c886292..c44c6945662f 100644
> --- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> +++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> @@ -261,6 +261,8 @@ static int panel_nv3051d_unprepare(struct drm_panel *panel)
>  
>  	usleep_range(10000, 15000);
>  
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +
>  	regulator_disable(ctx->vdd);
>  
>  	return 0;
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
