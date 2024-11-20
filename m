Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A405D60D17
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Nov 2024 09:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M62gObLxlAfW38qqZoRgN3fFnVTTMv9nbthTY3TevVs=; b=Yp6IgRLo+XVmZf
	6yGsq1BKBEBf6wvyZh1873tVW+CSEJ0IM2zYXyx5PI5m+leMr45wwkwmxJMME4rnRyisJ1JXvXKBz
	k75G5BTVQz6EP9AJlo1VWMt9TtjYIGqY7BzLYqpc2AKRaEGVisQ0CTfP6dkQ2Nubo/wx0/wBF+OWM
	1qGkAPySB2/XXVeXrf7xCt74+h/bbNhUl7+48by8uEGl0Pm6SxuW1ZHv5AZxyj3Hy3XzeM4b7LYeo
	hguBT6cK6qn0h2QssAsiaYi2Zcb9My6CiXOFAJlRi7I/aggBqIrAMzWCX1escNAQOcRlayX3dnI5Z
	mFCAH9subyelf+Y30K0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDhUe-0000000EzT3-2uep;
	Wed, 20 Nov 2024 09:59:28 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDhP6-0000000EyFJ-2Bw8
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Nov 2024 09:53:46 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4315e9e9642so45060785e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Nov 2024 01:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1732096423; x=1732701223; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oJLDnW4xgZ8CURNC2nEQvItuWPLm2zclX2H1mWV132I=;
        b=SofOeImDMVBIVZTJq3Mc0sjBgGiF/+ZiPJJTCIIIXv3mCYWMeq75b3IwV2ZdXaEiBN
         mjYT13m/BGph0RhyRUyMzS1l/eNfoS9XAj+vxZDdVvWgaQn9WCjhWzN95BllXNKHZteZ
         b9u2jxrjS6ehGiXOleuGSZrAuH4Ic+rLIS29ywugTJJ7kBoRN/L7hMrkxANctglrBvVw
         Lqj3vBk5p7gd76MReI0ngzVCiPl19L4kZOUI6Z0W9c6Jbh6z87niVDQxD4yK99zGWAsI
         iZMyT49ngSzv9HRFeiBYBisxnYvf+q3hpfqybtNjQkYSwoBwtKrwNeFuDhzPZ6qZKtzb
         et/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732096423; x=1732701223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oJLDnW4xgZ8CURNC2nEQvItuWPLm2zclX2H1mWV132I=;
        b=cLNZQNl7z7pNM1by7m3F1yXbT+jzDuqx3v/Da6QYUXIrN93kcc0J9Pma+CIRM9hatG
         iI4g5RrqIN16ld9Oe+VUWCWx1vzJeMElAnt+GWqgsgQhvbRDOSFyYVz5G7KO8HVEVCBf
         RzNYwUPWRzFXiXa71UA5MCm7N2CG4+ySzrt6XkDn5Z07Jh2EinwGZlHGlnhYUE/wV8eK
         tQyFOpV1qc3CP87tnolzvnZ0Rb/Ho0YDtvfOzhOwElbEbnrSl91vXJPOWd8KNqmoEPhK
         IeFFCwQWATPl2Ru/wRjn9eLvaVqURJ2f/blQo3DUhuD/kTGcKIciParJAUcGR/fpFIG5
         WS5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUzXQSKLkvKeELpbx9uMxiZkXxiXFToRnJZy+XpSsJQOWfmFpdHgcT6Me4M9EXM34CSByjQDd+KzaxTEs9wJA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxYzUQYeAyGXjsDBwpE03f40M2iWx8HrF6gUuF1Un9nITZO972+
	332DAPu5grMcZbKalW63sA6gKeIgoK62n9NvOMm3mWYhooW9up+CTOLD1xs3bz4=
X-Google-Smtp-Source: AGHT+IFGYjEIekWosK3N1x9ZAj53wDHPjVwwCvrEQHprGAlHK6CAfM14PoWKCxOAsPnnpRIJDBdzbg==
X-Received: by 2002:a05:600c:1d83:b0:431:5bf2:2d4 with SMTP id 5b1f17b1804b1-4334f02c7c6mr16575515e9.29.1732096422784;
        Wed, 20 Nov 2024 01:53:42 -0800 (PST)
Received: from fedora.. ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-433b45d4288sm13108335e9.23.2024.11.20.01.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 01:53:42 -0800 (PST)
From: Daniel Semkowicz <dse@thaumatec.com>
To: heiko@sntech.de
Cc: Laurent.pinchart@ideasonboard.com,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	quentin.schulz@cherry.de,
	rfoss@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	Daniel Semkowicz <dse@thaumatec.com>
Subject: Re: [PATCH 0/3] drm/rockchip: Add driver for the new DSI2 controller
Date: Wed, 20 Nov 2024 10:52:58 +0100
Message-ID: <20241120095326.9854-1-dse@thaumatec.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106123304.422854-1-heiko@sntech.de>
References: <20241106123304.422854-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_015344_568677_70C16D3B 
X-CRM114-Status: GOOD (  16.90  )
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

Hello Heiko,

> This series adds a bridge and glue driver for the DSI2 controller found
> in the rk3588 soc from Rockchip, that is based on a Synopsis IP block.
> 
> As the manual states:
> The Display Serial Interface 2 (DSI-2) is part of a group of communication
> protocols defined by the MIPI Alliance. The MIPI DSI-2 Host Controller is
> a digital core that implements all protocol functions defined in the
> MIPI DSI-2 Specification.
> 
> 
> While the driver structure is very similar to the previous DSI controller,
> the programming model of the core is quite different, with a completely
> new register set.
> 
> Another notable difference is that the phy interface is variable now too
> in its width and some other settings.
> 
> 
> Heiko Stuebner (3):
>   drm/bridge/synopsys: Add MIPI DSI2 host controller bridge
>   dt-bindings: display: rockchip: Add schema for RK3588 DW DSI2
>     controller
>   drm/rockchip: Add MIPI DSI2 glue driver for RK3588
> 
>  .../rockchip/rockchip,rk3588-mipi-dsi2.yaml   |  119 ++
>  drivers/gpu/drm/bridge/synopsys/Kconfig       |    6 +
>  drivers/gpu/drm/bridge/synopsys/Makefile      |    1 +
>  .../gpu/drm/bridge/synopsys/dw-mipi-dsi2.c    | 1034 +++++++++++++++++
>  drivers/gpu/drm/rockchip/Kconfig              |   10 +
>  drivers/gpu/drm/rockchip/Makefile             |    1 +
>  .../gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c  |  524 +++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    2 +
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    1 +
>  include/drm/bridge/dw_mipi_dsi2.h             |   94 ++
>  10 files changed, 1792 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml
>  create mode 100644 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi2.c
>  create mode 100644 drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
>  create mode 100644 include/drm/bridge/dw_mipi_dsi2.h
> 
> -- 
> 2.45.2

Thank you for this work!

Sucessfuly tested this series with DSI/LVDS bridge.

Test configuration was described in the thread "[PATCH v3 0/2] MIPI DSI
phy for rk3588":
https://lore.kernel.org/all/20241120093702.9018-1-dse@thaumatec.com/

Tested-by: Daniel Semkowicz <dse@thaumatec.com>

Kind regards
Daniel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
