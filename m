Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E273AEE0AE8
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 20:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imoOSVCWCMjRqT4yXpLCNIdYYYlIlZthQmVpLVYy7Oc=; b=Xy2pPsxk5zcxZd
	S8eMuk0aHQgm4qphYfLgp1L854jPcWYOHhkVk7kjDUBgSm0uqJqMqYilHPw0tHeJEZUrUhV8JQb5z
	bBo03LOOEd2prphKrwHPoLuHAbyz5IgH9TsqCjbZTyGUEKZI/K7AL5S8bjpXDuAv4ZprU06srjiQF
	/FnaYqLz6hERmMkVhpbaysf6CbvZNtqD7wgPR3t4SOKEu25OLRVZ+VT8J6/q7LncvsVv1W591oza/
	E7fq0A5rGVlToc2M8UaQ88lhbftjd2+XUX5KHAwb6d/JJoXKAZ5eUf/2IytOVRFNShH7kgpo7klTt
	ddiXHfYVp2Os/Axi0MzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vop5y-0000000ClE1-0dSA;
	Sat, 07 Feb 2026 20:39:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vop5u-0000000ClDd-3J9p
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Feb 2026 20:39:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 40B8A423D7;
	Sat,  7 Feb 2026 20:39:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16230C116D0;
	Sat,  7 Feb 2026 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770496793;
	bh=odWWSwITztt7nX3afWB+g3x/LXnl0CatAdMCnF0MQ1k=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=I/7dmOpEvZcZ1kM6dDwJugYqs1QTgsNsCXu9DRO4OGCBDtk/lvyIyAqqFokD6tuCG
	 6b3hmIFue/b122gJ+xGFWXot61UKnKqnr8OBZHMrGpGaKn1PuvTsqN32VRFny+Wh0x
	 riX0ZthbPl4QyUW8At7j1PVw9A7H20Gp4FHXXQxQ49bU892neyuJBzeno2cVK0wmVM
	 iQCUE/fkekO1bVziAo45ROS9MN2Ii2G2I4CCgFZlv1X4kxsCKMdMCVcgVCdlMxFuNV
	 BCmKBa5fPThPhaafYiKDYZAvD+BEOhscpq3qAd8sur7dyNmwN7VFJGY2DOMwIe0Zyg
	 uQkY9FV3yGYbw==
MIME-Version: 1.0
In-Reply-To: <20260207130256.2832815-2-festevam@gmail.com>
References: <20260207130256.2832815-1-festevam@gmail.com> <20260207130256.2832815-2-festevam@gmail.com>
Subject: Re: [PATCH v2 2/2] clk: rockchip: Add clock controller for the RV1103B
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
To: Fabio Estevam <festevam@gmail.com>
Date: Sat, 07 Feb 2026 10:51:37 -0800
Message-ID: <177049029757.54237.1442431324572093990@localhost.localdomain>
User-Agent: alot/0.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_123954_870844_AFB7C260 
X-CRM114-Status: GOOD (  13.11  )
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

Quoting Fabio Estevam (2026-02-07 05:02:56)
> diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
> index 5cf1e0fd6fb3..3fc91f3c2453 100644
> --- a/drivers/clk/rockchip/Kconfig
> +++ b/drivers/clk/rockchip/Kconfig
> @@ -23,6 +23,13 @@ config CLK_RV110X
>         help
>           Build the driver for RV110x Clock Driver.
>  
> +config CLK_RV1103B
> +       tristate "Rockchip RV1103B clock controller support"

If this can be a module please make this into a platform driver instead
of using of_iomap() and friends.

> +       depends on ARM || COMPILE_TEST
> +       default y
> +       help
> +         Build the driver for RV1103B Clock Driver.
> +
>  config CLK_RV1126
>         bool "Rockchip RV1126 clock controller support"
>         depends on ARM || COMPILE_TEST
> diff --git a/drivers/clk/rockchip/clk-rv1103b.c b/drivers/clk/rockchip/clk-rv1103b.c
> new file mode 100644
> index 000000000000..7079a105b814
> --- /dev/null
> +++ b/drivers/clk/rockchip/clk-rv1103b.c
> @@ -0,0 +1,667 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2024 Rockchip Electronics Co. Ltd.
> + * Author: Elaine Zhang <zhangqing@rock-chips.com>
> + */
> +
> +#include <linux/clk.h>

Is this include used?

> +#include <linux/clk-provider.h>
> +#include <linux/module.h>

Is this include used?

> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/of_device.h>

Is this include used?

> +#include <linux/regmap.h>

Is this include used?

> +#include <linux/syscore_ops.h>

Is this include used?

> +#include <dt-bindings/clock/rockchip,rv1103b-cru.h>
> +#include "clk.h"

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
