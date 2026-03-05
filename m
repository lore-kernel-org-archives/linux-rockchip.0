Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64E37EEF31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 08:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xff5vFOttICBKtRVX+I1C72AwRKwXtRyVHyk/n663aI=; b=T/UNYs3wwPs4RU
	zwGkhVLnOjgcyWNykbam9gZM8e8PkBHSdBEF/zscvdTfv5IPGHqJ7lB95VFCmbhzGCc8+snaOLwNn
	UlEnMG2pR7Sn9Vcs6x/Cp5frcUWmF04n3imegTmrWwPkyAcACUgS6hEIQOOyppOCzurFMNC3fyuQA
	sEzEjczRXk8EjVtDDBWsTN+EEqRK4CaXDUKLQNKmfzDvy8ywfEqiq6xfwMQ6MZRqSEuqGiAOgBGk7
	N+osnlAEPc+2LUkuIvnqNs0RyXCXzSg8Q6Nv54G9+n6SzXDbVptpfDR9pgwGMDssxu2bEXieOxDMZ
	TAv4CsHW99Z3op6UX7eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy44w-00000001CEN-1ynO;
	Thu, 05 Mar 2026 08:29:06 +0000
Received: from mail-ua1-f49.google.com ([209.85.222.49])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy44t-00000001CDE-0NLj
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 08:29:04 +0000
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-94dd687e040so1817726241.3
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 00:29:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772699342; x=1773304142;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZlLnToI6SbxsSn7ypnmaqq1RX+miw2VMTyDHKi+gwbk=;
        b=kXc1/nQ7JOVo92b+TPdMSKFPdqLbAPSY8Z7obQOCPFOx9cST4HKD/1C160+2X8h9tW
         2EY930S+KstFFUHDK9W6cKOle6xOu45MCm0m30mIGcwUKaOfI5x97+PYwbGvhlV7UYx/
         lGzVknkMKbNqA8MgBGT+oqCJt/vPVVUl7N34zRZhKcDIULQayBSPi01xX+MxrvJwRIVy
         AymUn+zPZtcPEBKcNEv4F6A4LgZxUY3ngXFZm7GU85BZgLP7EP0HSqUkfwSPIgZMyxx0
         K0Y+yoSBsgSRPyuzg5qimSb66YZkrKukpM/mcKWTzLM8eSWb71EQa33bu1p6QGgF9Wdn
         LZlA==
X-Forwarded-Encrypted: i=1; AJvYcCU9NycKrzPgYleUv80s4u7EVojDVaE5SjmglzOyPGSo1ICLqGWUSS2YwTs0HXQ7RM+urJCD3x+reS5f8+itNQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkcK/a13mBAWhc6xpzLT0AGXEtZces9FK+qrz9sQI3j+A0zbjf
	HAwaNU/1i9MSOa+grbxDFhatupAPI+vbXwEV4Q29HR2wYi4CrOqOs1ToDkfCXpXV
X-Gm-Gg: ATEYQzzBsQd69v+vkyvhUfZ9AP7f5IHWf1oDjX92H+pnOctCdcwtOOj2MmRT7yDvZ5I
	/v9PhQLvP5l14G1GYibc/j1j3OvVrExlgv5eHqu4Lu+IHb/RYl17trSP8Fbg0nPy1NMzsr43Cu7
	Mjtmn5eisHZwPfyu5+N8UyIfevW2lVwVU9jWJOYlx3K03QWPi/2GUgLjdyULDwXKSSDYluj0HUk
	iQUzj6Mrzz/CE+i8cYigQj8kxTWTnxRZTeXwVLXiAO8YQRUm2xcevTYpyJaSmrHfQ4F56WiQb9d
	b2LjOUAe6qQcAGCaGYZaTXRv8YW+M6/j8PokFXiR/7jmfytIHduF28s6wqu+HWydokGdFxdU8TI
	Nh1neIdELZFjFWJYa7A3PRv3leBO4cbGyl/d4sTuVkiOTR7wOkPwAnoaW9jOCcDEVTg7Y/3K9Bd
	33pTYu444X0NGIDXyaVkRpVdfi1L3oSF4DOliCg+ipK5t1kusna18P+663VyvK
X-Received: by 2002:a05:6102:26c7:b0:5ff:a16b:9403 with SMTP id ada2fe7eead31-5ffaaaae8b3mr2226041137.2.1772699341618;
        Thu, 05 Mar 2026 00:29:01 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ffd1d8983dsm340255137.8.2026.03.05.00.29.01
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 00:29:01 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-94dda16ff9fso2333502241.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 00:29:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXh4+uWiXE9GKn5SIK4a6BxDTJ6djT2RLdMXZgVM6mQX2pUGuNa4ow2cbDo2p3KV+svE6dQCPfmYWpiaF84PA==@lists.infradead.org
X-Received: by 2002:a05:6102:1607:b0:5ff:c64d:228c with SMTP id
 ada2fe7eead31-5ffc64d2600mr724913137.22.1772699340961; Thu, 05 Mar 2026
 00:29:00 -0800 (PST)
MIME-Version: 1.0
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com> <20260304175735.2660419-13-vladimir.oltean@nxp.com>
In-Reply-To: <20260304175735.2660419-13-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 09:28:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV+7n==crPmitH-JCwtJiH+7LaPKZQYU4ZqX_duo3_7Eg@mail.gmail.com>
X-Gm-Features: AaiRm50Kgxrt1IEt_9GEmeNyCIrylErpUd7qkh7D4FIoK_FYituUB8DTITetq4c
Message-ID: <CAMuHMdV+7n==crPmitH-JCwtJiH+7LaPKZQYU4ZqX_duo3_7Eg@mail.gmail.com>
Subject: Re: [PATCH phy-next 12/22] phy: move provider API out of public <linux/phy/phy.h>
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
	UNGLinuxDriver@microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_002903_140145_838E53CF 
X-CRM114-Status: GOOD (  28.78  )
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

On Wed, 4 Mar 2026 at 19:03, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> The major goal is to hide the contents of struct phy from consumer
> drivers.
>
> The idea with "phy-props.h" is that both consumers and providers make
> use of some data types. So both headers include "phy-props.h".
>
> Two slight points of contention.
>
> 1. phy_set_bus_width(): Vinod explains that despite the current caller
>    situation (9 providers, 1 consumer), it is a consumer API function.
>
>    The use case is that the controller (for example UFS) may have
>    limitations and should set the expected lanes to be used and width on
>    those lanes. A number of Generic PHYs can support multiple lanes and
>    multiple width so this is way for controller telling I am using this
>    configuration.
>
> 2. phy-provider.h should go to include/linux/phy/ or to drivers/phy/?
>    We do have 3 PHY providers outside of drivers/phy/:
>
>    drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c
>    drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
>    drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
>
>    but the practice is not encouraged, and with time, these should be
>    moved to the subsystem. This is not something that I can do now.
>
> For temporary compatibility, keep including the provider header. This
> will be removed when abuses are all gotten rid of.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Thanks for your patch!

> --- /dev/null
> +++ b/drivers/phy/phy-provider.h

> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -1,246 +1,38 @@
>  /* SPDX-License-Identifier: GPL-2.0-or-later */
>  /*
> - * phy.h -- generic phy header file
> + * phy.h -- Generic PHY consumer API
>   *
>   * Copyright (C) 2013 Texas Instruments Incorporated - http://www.ti.com
>   *
>   * Author: Kishon Vijay Abraham I <kishon@ti.com>
>   */
>
> -#ifndef __DRIVERS_PHY_H
> -#define __DRIVERS_PHY_H
> +#ifndef __PHY_CONSUMER_H
> +#define __PHY_CONSUMER_H
>
> -#include <linux/err.h>
> -#include <linux/of.h>
> -#include <linux/device.h>
> -#include <linux/pm_runtime.h>
> -#include <linux/regulator/consumer.h>
> +#include <linux/phy/phy-props.h>
>
> -#include <linux/phy/phy-dp.h>
> -#include <linux/phy/phy-hdmi.h>
> -#include <linux/phy/phy-lvds.h>
> -#include <linux/phy/phy-mipi-dphy.h>
> +#include "../../drivers/phy/phy-provider.h"

Shouldn't there be one more "../"?
Interestingly, it compiles with/without.

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
