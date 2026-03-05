Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EAF3EEF314
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 07:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OL2GLJoas9Fl6xTwsH3Ei3JPusbTKyXPERuXL6hHKX4=; b=Fissoj0h4EUacP
	gffvioZPVa/JcKd9KaULQ/dEPaJ8PV0h2P2PHO1H/0ubLzh6r4MP9DjEPH9W+UlMqhVd5IDL50Lq3
	pvwxOXIYJc/IPBhv1QlVk+RWEnuCyWlMEirLqhCLY1IJm6R0kM9kB7BN1bDP738uNsr/0gRfUlk4B
	NWfilzFhiCvZIVDPVLofQQbe8UsnMqVe8uA2+3AiU1JuR9NeTnrCisXq0EV3agMb3ivyiSeX20WDP
	HxeCT50BcroJrsfeO9sthgPum3SthZt7bTJSW6bDa9Mw16+qV9X3vERUZ4ZgUIq49TNq+z5k+A97q
	0Zd2wgXyBrbFPoidB/ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3RE-0000000177C-1yRV;
	Thu, 05 Mar 2026 07:48:04 +0000
Received: from mail-vk1-f171.google.com ([209.85.221.171])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3RB-00000001766-2j5t
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 07:48:02 +0000
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5674d8be45eso3120648e0c.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 23:48:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772696880; x=1773301680;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7xyHjzGnphi32H4Bte19x6wQV76UaiJqzbc3zMkJKs8=;
        b=CuP0Zmx7D1pq1FO3BamJ/+FsDbGA1CzzB5+0aA067Lc75fr8BVA1+NXVIHwVfSWpZ7
         Y1x8QQQopZjgl2+VO0pQP03Db0LDb2KX+nTN418QReGx9/b4Q+WshD6nJVj+vCyuA4la
         yVWc8I3To0iGrRwwsqclpDn3Eq7mmLkN7a2KMKVQTL5tPHatZgxiFt/8hUtFzaun1i1o
         iGkYPFAK1b7KgsovIhCQ5u3BKsi8la/DEo3KISE2bNdVegpG/UAhnC/8ZD9rdAdepPHT
         Vmp5SeCjrBpUSuFTkmm+hR8ArLJ2zT6gOXXnO8zqynWjXpesYuZVUr639LGcbfFAC3au
         bamQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/+aQ8w942Jr1r5UkJxESZ7Wk2keBkmF81GBpOOTISEstY07gvecKWSR0Gk3A8aDLAt32cByfhrj1ajnFvPw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxg7L3ksF7fT3Ohh57Tvg65ws+x42OKW2VOlKBe3K/QiYScn2VQ
	82jwVoF9oJ/I6QnNhIWon+VUfaNNJKT8vk6z7fS8QMYiJvWHo35zU4PFINfNngJB
X-Gm-Gg: ATEYQzwTPfMcyxd+8pWjC9g8Xgd0V1Gr1zFfG9K+vWjDWTtsAfNN1LciSb1RX9fKkqr
	tBOxfqe85Jm2MQ6z5hcNEON8OUBRCyT9v+XYTSHLWv/dKvaHGLqHjS9pm9G49ZfkkCOG1vrN3Me
	Lb/MrmBiHiAuPSEAhje3Sz0SZuh+g2sIJ+QzVdN7j3Xc1108FkUItDCSD6X0gE8yEauqpies2NX
	gx3TbGrRzmCN2RMTyGVmNyPOKgsjGHzT3w5DpMt64gdCv8da+PxcZ2j6YeaddPEs+Ny/0a0PDnu
	/kZxY2OKhbqRjeZjwgQzMoklrB/t1p15w0swyls/X8fY8MWl43Iv503Bhyga1pxr2/W21wWxamh
	56wIYknhoV4u99P0jICPEdOhaotxyynp43CQ41SPnFI8tDy2PIhaoxHtoaj0rqt6CLSEUBt6W7c
	83fYy6Lx0DTdzcZgbQjVsDs4r7yGGauA+fFpCcwwKdh0JJLQxM1pt21bpBw2izwrk8uRmWhPI=
X-Received: by 2002:a05:6122:3307:b0:566:23dd:19b9 with SMTP id 71dfb90a1353d-56ae74c84a4mr2315083e0c.3.1772696880264;
        Wed, 04 Mar 2026 23:48:00 -0800 (PST)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91bb97absm25677854e0c.6.2026.03.04.23.47.58
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 23:47:58 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5ff1703cb9eso2132716137.3
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 23:47:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVNwu+8Vu5Qd1RaJt/IhWvqTvB70T6jftzootjKBKXs85iQOOJcDvrDe534L9lG8y8L4Zh51bH1DiSU1GAuZw==@lists.infradead.org
X-Received: by 2002:a05:6102:32c1:b0:5ff:a16b:93f9 with SMTP id
 ada2fe7eead31-5ffaae2d5b0mr1883200137.21.1772696877960; Wed, 04 Mar 2026
 23:47:57 -0800 (PST)
MIME-Version: 1.0
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com> <20260304175735.2660419-14-vladimir.oltean@nxp.com>
In-Reply-To: <20260304175735.2660419-14-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 08:47:47 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUNtqsui3ek1RYCTyiuDLRajpSBMnrdzED6wu6i7-QcuA@mail.gmail.com>
X-Gm-Features: AaiRm514iMGAdfTBAVsgfVfK-GGHy9jHY4ezK-Lp3w09-JWpnENLQ0I4lkIFgvE
Message-ID: <CAMuHMdUNtqsui3ek1RYCTyiuDLRajpSBMnrdzED6wu6i7-QcuA@mail.gmail.com>
Subject: Re: [PATCH phy-next 13/22] phy: introduce phy_get_max_link_rate()
 helper for consumers
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org, 
	netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andy Yan <andy.yan@rock-chips.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Markus Schneider-Pargmann <msp@baylibre.com>, Magnus Damm <magnus.damm@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_234801_689365_F036E3D0 
X-CRM114-Status: GOOD (  21.95  )
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

Hi Vladimir,

On Wed, 4 Mar 2026 at 19:00, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> Consumer drivers shouldn't dereference struct phy, not even to get to
> its attributes.
>
> We have phy_get_bus_width() as a precedent for getting the bus_width
> attribute, so let's add phy_get_max_link_rate() and use it in DRM and
> CAN drivers.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Thanks for your patch!

>  drivers/net/can/rcar/rcar_canfd.c                   | 2 +-

For the Renesas part:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -640,6 +640,12 @@ void phy_set_bus_width(struct phy *phy, int bus_width)
>  }
>  EXPORT_SYMBOL_GPL(phy_set_bus_width);
>
> +u32 phy_get_max_link_rate(struct phy *phy)
> +{
> +       return phy->attrs.max_link_rate;
> +}
> +EXPORT_SYMBOL_GPL(phy_get_max_link_rate);

Any specific reason you are not making this a simple static inline
function, like phy_get_bus_width()?

> +
>  /**
>   * _of_phy_get() - lookup and obtain a reference to a phy by phandle
>   * @np: device_node for which to get the phy

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
