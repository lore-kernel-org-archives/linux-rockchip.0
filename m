Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE2E6C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Dec 2021 13:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGi8OOBPkvoCv5mVImgOjxCFqwNuXEYX/IY1bPp/FRo=; b=FwppL+QTelUguc
	f0CwuW2oPKx0aOEdacxkvkruUQk1f7IbkeQ8qZ1rt0Ede+n9pynoBkiz5W4pqMgNGARFCuASf7yjf
	t/S652GmTn6jlbS9fGZIQd+WPQgtW1TDRkm8Uni6yNYHRKHKuyJ9wEC3eByl3B3JvlrwbBl5Pxm60
	hbD8s5C31e4vEeqVOvBrU7CthY8CiQqfRH44864ujdQspAbWQ2XCcRT+f/OUHOFQljQlkwEOnKdEB
	DFJmffeUq5twMiQD59DS3u9ZMryCthq+Qg2jW0UVWN/9KMt7RbQaAXOOX4p5CN0QqaorSt0f5OPR+
	OritHFaf/T0KAiADmLSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n3IQP-0066YL-Ar; Fri, 31 Dec 2021 13:58:29 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n3IQC-0066WM-Ob
 for linux-rockchip@lists.infradead.org; Fri, 31 Dec 2021 13:58:18 +0000
Received: by mail-lf1-x134.google.com with SMTP id g26so60356398lfv.11
 for <linux-rockchip@lists.infradead.org>; Fri, 31 Dec 2021 05:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ADzJWr+CbGVX014WZDS2L6snWL7iPLu3/ZLqlh/Pj3s=;
 b=wI4yxCNQ8DbOEzf9a0EEKR+uVoNpqKvP2j3TfccxorArKXFLWGvXnmq/u3210XY7Bt
 6SY+obn+o24I8ByNoCgePQrC00WOPliPKsVcJbKrys/NONrQfwABt+PYc9qNSjhQDXh4
 nbip7b2zI1sg+e+4l9mNsHd2MOPZ8otBtAOAjqk8WfUql3FekXWomakhZ6RuuQvT2anB
 x2gqumAvx4XayRNJBogn2ZkuHZpWolkn4EsDqtF3YlDHx2oBwLx1Fyj4cCuiQPK8xz0o
 JZ4jhvwMP3FphymMKH6+FGcxVJ/zTIuNIXzTwmo2Sw7vgjcnNViKYKGEPpKmvv3w/HNW
 9CLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ADzJWr+CbGVX014WZDS2L6snWL7iPLu3/ZLqlh/Pj3s=;
 b=EZ9/rH0RA5yyTRb2i/UMDCRNFCeC+tAeFkJsIKy3RXfYObHa4Uz/2lLrKa3BbJEpvd
 XFmDmaI4aMTrIpnqY40YQCXekJFm+1pFVnmBAnx6nvZbmRp0ih5vDpvrI5PoVBAxHtcy
 f3SrpyayJVkpx9eEpwHsTWIQhJqX85avAi8owI8Hs01N9vnD3CTFuUM9U6MHu9swbVJn
 T63/4XyMZMjvliZk9mdvLcdIevAH2x7fJEpXPBYe1lkSywVlZ6owHur2zT7teTT3tHaS
 rWT9pf5FqcAAl9LsAFSSdxaxO6ZpWYKUMjhlUd4uGgbtpHK8wOlzFbiS6++47laUT03P
 e8Gg==
X-Gm-Message-State: AOAM532+g88aE1n1NZ+XFDGECjlkddkdOyEK1giDRHNjTjAUGSGM2er/
 MbFx02yo2OvWI+evsP8jeeoI+8ONI7Pr+F92avt5ww==
X-Google-Smtp-Source: ABdhPJzaghSLSAc0pNPQzuES57Tnf+aNwFRoLwgYkTTcyuTMuv5rOoeqy7bTcVpKTyo/oJWiGUWJw4io8u+6ND1nCZk=
X-Received: by 2002:a05:6512:4015:: with SMTP id
 br21mr32693525lfb.233.1640959094947; 
 Fri, 31 Dec 2021 05:58:14 -0800 (PST)
MIME-Version: 1.0
References: <20211218130014.4037640-1-daniel.lezcano@linaro.org>
 <20211218130014.4037640-6-daniel.lezcano@linaro.org>
In-Reply-To: <20211218130014.4037640-6-daniel.lezcano@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 31 Dec 2021 14:57:38 +0100
Message-ID: <CAPDyKFqWUJTKte3dM=7xG6EtKR8i9neCCNYFs7Jf1J34TezUEQ@mail.gmail.com>
Subject: Re: [PATCH v5 5/6] rockchip/soc/drivers: Add DTPM description for
 rk3399
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh@kernel.org>
Cc: rjw@rjwysocki.net, lukasz.luba@arm.com, heiko@sntech.de, arnd@linaro.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211231_055816_813135_D28B092C 
X-CRM114-Status: GOOD (  31.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Daniel, Rob,

On Sat, 18 Dec 2021 at 14:00, Daniel Lezcano <daniel.lezcano@linaro.org> wrote:
>
> The DTPM framework does support now the hierarchy description.
>
> The platform specific code can call the hierarchy creation function
> with an array of struct dtpm_node pointing to their parent.
>
> This patch provides a description of the big and Little CPUs and the
> GPU and tie them together under a virtual package name. Only rk3399 is
> described now.
>
> The description could be extended in the future with the memory
> controller with devfreq if it has the energy information.
>
> The hierarchy uses the GPU devfreq with the panfrost driver, and this
> one could be loaded as a module. If the hierarchy is created before
> the panfrost driver is loaded, it will fail. For this reason the
> Kconfig option depends on the panfrost Kconfig's option. If this one
> is compiled as a module, automatically the dtpm hierarchy code will be
> a module also. Module loading ordering will fix this chicken-egg
> problem.
>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  drivers/soc/rockchip/Kconfig  |  8 +++++
>  drivers/soc/rockchip/Makefile |  1 +
>  drivers/soc/rockchip/dtpm.c   | 56 +++++++++++++++++++++++++++++++++++
>  3 files changed, 65 insertions(+)
>  create mode 100644 drivers/soc/rockchip/dtpm.c
>
> diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
> index 25eb2c1e31bb..a88fe6d3064a 100644
> --- a/drivers/soc/rockchip/Kconfig
> +++ b/drivers/soc/rockchip/Kconfig
> @@ -34,4 +34,12 @@ config ROCKCHIP_PM_DOMAINS
>
>            If unsure, say N.
>
> +config ROCKCHIP_DTPM
> +       tristate "Rockchip DTPM hierarchy"
> +       depends on DTPM && DRM_PANFROST
> +       help
> +        Describe the hierarchy for the Dynamic Thermal Power
> +        Management tree on this platform. That will create all the
> +        power capping capable devices.
> +
>  endif
> diff --git a/drivers/soc/rockchip/Makefile b/drivers/soc/rockchip/Makefile
> index 875032f7344e..05f31a4e743c 100644
> --- a/drivers/soc/rockchip/Makefile
> +++ b/drivers/soc/rockchip/Makefile
> @@ -5,3 +5,4 @@
>  obj-$(CONFIG_ROCKCHIP_GRF) += grf.o
>  obj-$(CONFIG_ROCKCHIP_IODOMAIN) += io-domain.o
>  obj-$(CONFIG_ROCKCHIP_PM_DOMAINS) += pm_domains.o
> +obj-$(CONFIG_ROCKCHIP_DTPM) += dtpm.o
> diff --git a/drivers/soc/rockchip/dtpm.c b/drivers/soc/rockchip/dtpm.c
> new file mode 100644
> index 000000000000..77edc565c110
> --- /dev/null
> +++ b/drivers/soc/rockchip/dtpm.c
> @@ -0,0 +1,56 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2021 Linaro Limited
> + *
> + * Author: Daniel Lezcano <daniel.lezcano@linaro.org>
> + *
> + * DTPM hierarchy description
> + */
> +#include <linux/dtpm.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +
> +static struct dtpm_node __initdata rk3399_hierarchy[] = {
> +       [0]{ .name = "rk3399" },
> +       [1]{ .name = "package",
> +            .parent = &rk3399_hierarchy[0] },
> +       [2]{ .name = "/cpus/cpu@0",
> +            .type = DTPM_NODE_DT,
> +            .parent = &rk3399_hierarchy[1] },
> +       [3]{ .name = "/cpus/cpu@1",
> +            .type = DTPM_NODE_DT,
> +            .parent = &rk3399_hierarchy[1] },
> +       [4]{ .name = "/cpus/cpu@2",
> +            .type = DTPM_NODE_DT,
> +            .parent = &rk3399_hierarchy[1] },
> +       [5]{ .name = "/cpus/cpu@3",
> +            .type = DTPM_NODE_DT,
> +            .parent = &rk3399_hierarchy[1] },
> +       [6]{ .name = "/cpus/cpu@100",
> +            .type = DTPM_NODE_DT,
> +            .parent = &rk3399_hierarchy[1] },
> +       [7]{ .name = "/cpus/cpu@101",
> +            .type = DTPM_NODE_DT,
> +            .parent = &rk3399_hierarchy[1] },
> +       [8]{ .name = "rockchip,rk3399-mali",
> +            .type = DTPM_NODE_DT,
> +            .parent = &rk3399_hierarchy[1] },
> +       [9]{ },
> +};

I will not object to this, as in the end this seems like what we need
to do, unless we can describe things through generic DT bindings for
DTPM. Right?

Although, if the above is correct, I need to stress that I am kind of
worried that this doesn't really scale. We would need to copy lots of
information from the DTS files into platform specific c-files, to be
able to describe the DTPM hierarchy.

> +
> +static struct of_device_id __initdata rockchip_dtpm_match_table[] = {
> +        { .compatible = "rockchip,rk3399", .data = rk3399_hierarchy },
> +        {},
> +};
> +
> +static int __init rockchip_dtpm_init(void)
> +{
> +       return dtpm_create_hierarchy(rockchip_dtpm_match_table);
> +}
> +late_initcall(rockchip_dtpm_init);
> +
> +MODULE_DESCRIPTION("Rockchip DTPM driver");
> +MODULE_LICENSE("GPL");
> +MODULE_ALIAS("platform:dtpm");
> +MODULE_AUTHOR("Daniel Lezcano <daniel.lezcano@kernel.org");
> --
> 2.25.1
>

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
