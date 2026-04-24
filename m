Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07302C44503
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkvlB09XBBr7D9pxxU+mHAlo6ikxOg73fXrEsMfbuJM=; b=gYLaNpWCSeBUV3
	kQAHsKAZevrIrOi6WM9yzA5jEVuVoCXNxk8QhoytcpH3RUHooLmKyJiAmFdZ64RbuNkdfxMJ9yYFI
	XLyZvX1A8OZTbkRTolBRpc26HzaFZbSNmrLuB+Ji33JZVy5mDbE0YE08wSQi4tI2YZcTzrcg9M54G
	0nlyMQTE5jv4b/XfBIs8kngEuZ2jJH9kadRDQ45PpyZsuW52VOMY13+vydseb1vH4ExV4U065LkAf
	d3T4HURrS5H149GyzDQjeE/4lopHCFWbUmaceACrZWDwEM4Oee40tZZs3ilN79vo55G04rsrWhh5Z
	N9huNNtGUgsTv6v/GTGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkSU-00000001ZLY-1ZQ1;
	Thu, 09 Jul 2026 08:50:14 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGBQU-0000000CpyF-0ldU
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Apr 2026 07:58:17 +0000
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7de4ebe10cbso1175786a34.3
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Apr 2026 00:58:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777017493; x=1777622293;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+k21mzy1Q8IyL290m/XCuURamP2UyoHvl1hWQE5Pk/w=;
        b=NiRZGGYYPa2o7mCtAWNhp1RVStN5Awl0EVulCHG9Gk/q7/fWUEmeXbb1oqOVVm7Sd5
         dtJt1sBCLNWctXr7hHrRefTDMcc1Nj/27p4jtognbI1UKGa1HTr+bjSRsNSsBDv2E7sp
         vgx7p8IHCL0ittK594FvO+ZzckUw1MJMmuX6M1OFYhIRRKYi5YF/nCByT9d+9VqaJwow
         fxd3TPUlLp39QDd0hpn6xcM2vqaNHdj+ReR07K38lKFu5PwTpwe2tDyWeE0LT8kKG/XK
         kiDXZ2cY/uvFAO7OiNWbRK7JZkCLf7AE5IoCUpgK7GNMCm+wsDmcMTMRdzT5IpQdUng7
         Czyw==
X-Forwarded-Encrypted: i=1; AFNElJ/txsOyVNuNL9nLDXVzjUATCurUFdREo3TaBD3YoS5NMEcW85oHI81VNInTCrT6xugzsBNsERb/8GQuCke2hA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0omhFQ7FPvIS/wmxCLYS5al/MM5pi5iwgNETHbPIzqog/BNlb
	TYBwyFFMIVgwyZjTeXG2kNg3/DlexUtesraKK3CWfmMn1T5nEqWM0eCZeQ4TSkG6AIs=
X-Gm-Gg: AeBDievnyY6XDdDZLB+SsWA/C8fTXyEOngf+r/f12h60HVH1Zn6Koz7DNStZbRBuGPm
	sk/k5iV88dQZmLhGNGy8UPJ6Duv/rt74W0bhoFXNPsKboyMueqZHPn9XXB7I+ywVFHmccjiz8Xh
	zr5r8szEOP+WX8JGnzlgNSm0ThZlBIIc33IDxxbasna8StY8ojx4PTnahdxgiYjKBYJ4mnoW4GZ
	Q9oaIfxR6XSfxrIvGiPKdlR3cYW8zvQahoYjMImcbp3uf5KVmHSRQ5EJYy+UTv0CKLqTwGonUPI
	theyiN+cJzMt/Q9TYpmOXbBnsiTxPev+28cG9kPjRLe0tD/r7Wf35CaGvqhWJ2/6ugil5f4rxOo
	js3cRAtEsv/RzTqTpFQjNT/QT8qkFXas0LVFLedKTeZnsvXov6PZS+3w0HgA3pYH1z3MUe0WTR3
	zIXKwK7NkGNXJvbyOlXar0mJ1Sc14ZCykp3QIxcr3QOW/qgymRFVLf0AKb9oz5jQF6iciDBE4=
X-Received: by 2002:a05:6830:25cc:b0:7dc:e090:68a with SMTP id 46e09a7af769-7dce0900edfmr8576137a34.0.1777017493075;
        Fri, 24 Apr 2026 00:58:13 -0700 (PDT)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com. [209.85.210.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7dce2b2652bsm7242836a34.9.2026.04.24.00.58.12
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2026 00:58:12 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7de431da8fbso1994950a34.1
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Apr 2026 00:58:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ93+P+ClYGyNovQ14fzZdML4M7bi0x3BegR/F4ndwhhCoXL0/3Uc9jnvqE23HnLBm08+p7I/N/PljJ0axAvjw==@lists.infradead.org
X-Received: by 2002:a05:6102:38cb:b0:5e8:1d93:921a with SMTP id
 ada2fe7eead31-616f772e968mr14645934137.15.1777017023068; Fri, 24 Apr 2026
 00:50:23 -0700 (PDT)
MIME-Version: 1.0
References: <20260423-drm-bridge-connector-attach_encoder-v2-0-2ae6ca69b390@bootlin.com>
 <20260423115550.444930-7-luca.ceresoli@bootlin.com>
In-Reply-To: <20260423115550.444930-7-luca.ceresoli@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Apr 2026 09:50:10 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVbEV0b+MwCjqyc9Q0EjasD2hoN0rqWtjfmPPotZ19Lrw@mail.gmail.com>
X-Gm-Features: AQROBzASdrVB_Aky8lNaIViGqa4fIOoRKTkBEjNLF-nFJbKyYgy5oQezNNnYjKM
Message-ID: <CAMuHMdVbEV0b+MwCjqyc9Q0EjasD2hoN0rqWtjfmPPotZ19Lrw@mail.gmail.com>
Subject: Re: [PATCH v2 41/41] drm: renesas: shmobile: remove now-redundant
 call to drm_connector_attach_encoder()
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sasha Finkelstein <fnkl.kernel@gmail.com>, Janne Grunau <j@jannau.net>, Liu Ying <victor.liu@nxp.com>, 
	Douglas Anderson <dianders@chromium.org>, Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Paul Cercueil <paul@crapouillou.net>, Anitha Chrisanthus <anitha.chrisanthus@intel.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Icenowy Zheng <zhengxingda@iscas.ac.cn>, Jingoo Han <jingoohan1@gmail.com>, 
	Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Marek Vasut <marex@denx.de>, 
	Stefan Agner <stefan@agner.ch>, Jyri Sarha <jyri.sarha@iki.fi>, Michal Simek <michal.simek@amd.com>, 
	Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, asahi@lists.linux.dev, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260424_005814_220618_0A63012B 
X-CRM114-Status: GOOD (  22.20  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:23 -0700
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

Hi Luca,

On Thu, 23 Apr 2026 at 13:59, Luca Ceresoli <luca.ceresoli@bootlin.com> wrote:
> shmob_drm_connector_create() can init the connector in two ways, based on
> the 'if (sdev->pdata)':
>
>  1. manually in shmob_drm_connector_create(), or
>  2. delegating to drm_bridge_connector_init()
>
> Whichever branch is taken, drm_connector_attach_encoder() is called
> immediately after to attach the connector to the encoder.
>
> Now drm_bridge_connector_init() calls drm_connector_attach_encoder() on the
> connector so it is not needed anymore in case 2 and should be removed, but
> it is still needed in case 1. Move drm_connector_attach_encoder() from the
> common path to inside shmob_drm_connector_create() in order to get back to
> a single drm_connector_attach_encoder() in both cases.
>
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

For case 2:
Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>

As none of the old SH platform have been converted from
sh_mobile_lcdc_fb to shmob-drm yet, case 1 cannot be tested.

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
