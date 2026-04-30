Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8555DCCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Apr 2026 12:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9/nAbSobRFLNY3STfJIRsl14M5fBMdBe58IXy8eHq8=; b=D4TXjMNfYnXOw5
	uvxWeNoYA/yGr/m+UU1gxUHlXzsFT2m0kaV8LD3xLAadAptaXujtmmF/jf9/4YC0HUpckbpw9/LkZ
	18s9mOcUSBLc8Phh2ocsx89qKG08kBD8DKym0rVLqgtmpDe+fV/f8Vtg0XFqMXPtEM5xrnEfW5VFg
	tfosSj4IqOkDRku4XtijCv9F2jPZtEQs2V19VPWJwfxy+8C0KKEuoxv7WSMntLC9Kba1g4gVTYHxF
	zqVeMP/t0a2+8JQ8kOecoLQzGuHf8TiJ+hONu9z/PVYJk3d9hD9hiC7TpIeaUCPovIMu2p+1PCZpn
	V6rO//bfFnqo9AU/nK7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIQB8-00000005Qh4-11na;
	Thu, 30 Apr 2026 12:07:38 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIQB6-00000005Qg5-00GE
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Apr 2026 12:07:36 +0000
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-479d4df9035so1134933b6e.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 05:07:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777550855; x=1778155655;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ksIL4rip+tLI1Yx6QhQXSN6krUTnsd9SRkVzjQXrZjA=;
        b=RJFbri4zpWPcFrZXfMZPr3muiQtDRYkikAio3XCitKati2q0xTW18ZHUiASUllmUf2
         XncfH04OEWw1Ex9bvDG6xUAScm135nU3yLRGqEC/At/Wk8u4aeUF+6tx7soTLmZML2T/
         7qnIto/4d8oNnPK2bjyvhtEnbD5cWdjSM/nJr1ZaeQWW2K12onj+JlUP0YScd5PhRKUy
         a4+fbe2uGBBcFYC1tB3hF9pk9G3Zrlqc9QL4tRcZHF4SpoqeWtDI2YXTL3lclkg/vCW2
         zOmKw8/1k3zrb58jd+B7kxgTshR4HRjVBH06sNjf7n5YJXEOiekuhr5gFGLhRYQ+Mnb7
         4+TQ==
X-Forwarded-Encrypted: i=1; AFNElJ9U+5Cg1P52qQip7GT9sk0nGydu9MWQ23b50Zpdx+JcESqcfACuSt9QwYDTq8Vs2YT4PfEje5mhQRpZ5Zj0OQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzhxEcOR4NEXJ6vkNmw1gtl+1cxRb4aCWmagXfH2oz2JrQ2MhAd
	NZkxUepf4vD+v4scQIU9o5y3vreMF02EsWC4tEiGzOcoK0bTFSS86y0MHI+JsMDO63I=
X-Gm-Gg: AeBDieu5VWnRmq2ALm3hoM5VshlcbfTu2ViI8XEXX9ssQlH1OmRlnEynmIQBXlUi95l
	Fyr5+7rfcXn9DqJ+qNMdWvyIHnd/SONPq3THkECURmHhO6OuQFaEIBtKLtfBibl7e9C3kBMdXAl
	7Xhnqvy91NfbAqSF7BtJRnrY0iXjubGXkn2T61xmQdWDNzVqcfe6WS74vpvSQYSTK/oAETXA2Av
	WRJUq+uLMPKH7e/QA6yj5PXR1DNg6i4NMmmApC5UNM+/d5MSnsupxsEFb9ko4FQ8sWDhN2ez2Lf
	hyZi2FsJjOtqgj/gtk3EuWGunIGxhWSOzMxUUX4gB/3qjwhlOVWCZIrWdXgyAmBgQuC7QVPO9cq
	JizZn6GTeUSgcXkgyNBPssKV1b+6k+ohSXE6oMeclJVPQEdgVpWko7FwzsIdwoH+2eYnwassb5H
	LCRc6pPnUudSgkG9G11cm9wtOBjmjqbqc+tc2tPCZc6jioRsSSBLZNjio8U4wvVmYL/XEuZgE=
X-Received: by 2002:a05:6808:e8d8:10b0:479:d674:dce9 with SMTP id 5614622812f47-47c61f95166mr520484b6e.1.1777550855051;
        Thu, 30 Apr 2026 05:07:35 -0700 (PDT)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com. [209.85.210.49])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-47c43ee0400sm2748253b6e.7.2026.04.30.05.07.34
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 05:07:34 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7dcdca9aa0bso1421338a34.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2026 05:07:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+JKs8eOYUqqRgBDIIxHBaB88b+vXr+hWFN8GLJ5aZOSrBU3QpAWyOBJX/3ho1gRPyMhC9cisQsWbcOcbR1WQ==@lists.infradead.org
X-Received: by 2002:a67:e708:0:b0:610:347f:9f3b with SMTP id
 ada2fe7eead31-62afc506100mr613209137.3.1777550404889; Thu, 30 Apr 2026
 05:00:04 -0700 (PDT)
MIME-Version: 1.0
References: <20260430110652.558622-1-vladimir.oltean@nxp.com> <20260430110652.558622-18-vladimir.oltean@nxp.com>
In-Reply-To: <20260430110652.558622-18-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2026 13:59:53 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWbeeRmLf6Ae0Fr0un=-z7z5ONc_hDdjebP=KVkXHPbhw@mail.gmail.com>
X-Gm-Features: AVHnY4K0yYb6vTu9KdtDciwvAziqboYRX_ITZ386sa6ttixZ1EP_Mzy9gi4Pi0E
Message-ID: <CAMuHMdWbeeRmLf6Ae0Fr0un=-z7z5ONc_hDdjebP=KVkXHPbhw@mail.gmail.com>
Subject: Re: [PATCH v7 phy-next 17/27] phy: introduce phy_get_max_link_rate()
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
	linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	linux-usb@vger.kernel.org, netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com, Markus Schneider-Pargmann <msp@baylibre.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andy Yan <andy.yan@rock-chips.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_050736_040370_BBA53395 
X-CRM114-Status: GOOD (  22.71  )
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

On Thu, 30 Apr 2026 at 13:07, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> Consumer drivers shouldn't dereference struct phy, not even to get to
> its attributes.
>
> We have phy_get_bus_width() as a precedent for getting the bus_width
> attribute, so let's add phy_get_max_link_rate() and use it in DRM and
> CAN drivers.
>
> In CAN drivers, the transceiver is acquired through devm_phy_optional_get()
> and NULL is given by the API as a non-error case, so the PHY API should
> also tolerate NULL coming back to it. This means we can further simplify
> the call sites that test for the NULL quality of the transceiver.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Acked-by: Markus Schneider-Pargmann <msp@baylibre.com> # m_can

Thanks for your patch!

>  drivers/net/can/rcar/rcar_canfd.c                   | 3 +--

Acked-by: Geert Uytterhoeven <geert+renesas@glider.be> # rcar_canfd

> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -57,6 +57,7 @@ int phy_notify_disconnect(struct phy *phy, int port);
>  int phy_notify_state(struct phy *phy, union phy_notify state);
>  int phy_get_bus_width(struct phy *phy);
>  void phy_set_bus_width(struct phy *phy, int bus_width);
> +u32 phy_get_max_link_rate(struct phy *phy);

This (and all the existing getters) should take a "const struct phy *".

>  #else
>  static inline struct phy *phy_get(struct device *dev, const char *string)
>  {

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
