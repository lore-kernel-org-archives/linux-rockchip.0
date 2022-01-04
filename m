Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DDB8C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jan 2022 09:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwmoA7uMkpL3l2E/K5zzIC2ozBIw9kWjTnipoyowTmA=; b=Eypi3s5fJB1d4T
	wkYSeeAPmXQkwBMpvQMNEpshGSaXc+BVwm3pWf8+qcwPPwLat7VVuq/Oh1bsp8cERPhnV7qGOt/BW
	dICogA1/bz6HhJYvHpsTZe9NfMrYC72yA3aQwWd4BdCa4Ara0zGxThugHC3ybv1Pf1bT8PxKFjrWm
	KIraAhk1NAPlIXblasXxdtvDcaOhEc5OEl01cEHLRcoeTZrBW5seBIrCMmObBxKHRuu35Y1H6rqCc
	VToSSpItmKXk3Blqo3bMclpPnv6xhQnFziNGTT2GDly26QTGzy+DGOX+T4XaXNgMtNFWFwpxgJ/I6
	k9tnCkqwJILuMAZcz5zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4g8S-00B0V5-WB; Tue, 04 Jan 2022 09:29:41 +0000
Received: from mail-vk1-f173.google.com ([209.85.221.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4g8B-00B0P2-QK; Tue, 04 Jan 2022 09:29:25 +0000
Received: by mail-vk1-f173.google.com with SMTP id s72so4617263vks.9;
 Tue, 04 Jan 2022 01:29:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cUoXbVhVMYKDpJAJ6ZGooR6UYcia39qicQ7sK9A/xs8=;
 b=eflqumW8m/SiGl9ez5bHSs9MoaQTWk0IlibaNeLF1iF0hEpFTJtj3PvWeejzDcJQ30
 BIb2881M9r/08D9r829zOe9Doqub/HmPH171++qzLjFzy4+eqsnl57EncufwOCwoXTbj
 mNVx05j2aThUWj2eRKL5g8ZK/CGu7RGVsHlc9/M7l6+U/FZgL3mfuVszn7RLaxK6AUJc
 j6ecEFke5srJVXmfTLHgRYFqbYZRMwDxr2Nm3sJ0mufczO8+oAOL6l7im1cLGCkMZ9t8
 S8eCycclZubKLWg55+fvojwJuz2PBnP+3fZgADjCbQxuITEvISRwG5z02q5hWOCRlvIB
 FgbA==
X-Gm-Message-State: AOAM5330qcH/ZLwpRZ8PTU5by/sfBaMyJ3Rv/Uw+FzCaO0HSEVNQ8YOi
 Yg6URgGEzpQATeDjnUxNlTUDPfMz22moOg==
X-Google-Smtp-Source: ABdhPJxjcRF4AXTNHZfILn8yPRjpwoDOGxm0a2dvwQ4dfI+yeIK79wYML2Ef+MUagTp3Tfg6V1eh3g==
X-Received: by 2002:a1f:5481:: with SMTP id i123mr3559627vkb.13.1641288561558; 
 Tue, 04 Jan 2022 01:29:21 -0800 (PST)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com.
 [209.85.222.52])
 by smtp.gmail.com with ESMTPSA id q11sm7827292uaj.4.2022.01.04.01.29.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Jan 2022 01:29:20 -0800 (PST)
Received: by mail-ua1-f52.google.com with SMTP id u6so54767432uaq.0;
 Tue, 04 Jan 2022 01:29:20 -0800 (PST)
X-Received: by 2002:a05:6102:2155:: with SMTP id
 h21mr14495371vsg.68.1641288560266; 
 Tue, 04 Jan 2022 01:29:20 -0800 (PST)
MIME-Version: 1.0
References: <20211218130014.4037640-1-daniel.lezcano@linaro.org>
 <20211218130014.4037640-6-daniel.lezcano@linaro.org>
 <CAPDyKFqWUJTKte3dM=7xG6EtKR8i9neCCNYFs7Jf1J34TezUEQ@mail.gmail.com>
In-Reply-To: <CAPDyKFqWUJTKte3dM=7xG6EtKR8i9neCCNYFs7Jf1J34TezUEQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 4 Jan 2022 10:29:09 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXzs9WMksQAJXdYaQndsqK3CnQZTGYw=TSFVrDEdX8PCA@mail.gmail.com>
Message-ID: <CAMuHMdXzs9WMksQAJXdYaQndsqK3CnQZTGYw=TSFVrDEdX8PCA@mail.gmail.com>
Subject: Re: [PATCH v5 5/6] rockchip/soc/drivers: Add DTPM description for
 rk3399
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh@kernel.org>,
 rjw@rjwysocki.net, lukasz.luba@arm.com, heiko@sntech.de, arnd@linaro.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220104_012923_893511_367A95AD 
X-CRM114-Status: GOOD (  41.33  )
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

On Fri, Dec 31, 2021 at 2:58 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> On Sat, 18 Dec 2021 at 14:00, Daniel Lezcano <daniel.lezcano@linaro.org> wrote:
> > The DTPM framework does support now the hierarchy description.
> >
> > The platform specific code can call the hierarchy creation function
> > with an array of struct dtpm_node pointing to their parent.
> >
> > This patch provides a description of the big and Little CPUs and the
> > GPU and tie them together under a virtual package name. Only rk3399 is
> > described now.
> >
> > The description could be extended in the future with the memory
> > controller with devfreq if it has the energy information.
> >
> > The hierarchy uses the GPU devfreq with the panfrost driver, and this
> > one could be loaded as a module. If the hierarchy is created before
> > the panfrost driver is loaded, it will fail. For this reason the
> > Kconfig option depends on the panfrost Kconfig's option. If this one
> > is compiled as a module, automatically the dtpm hierarchy code will be
> > a module also. Module loading ordering will fix this chicken-egg
> > problem.
> >
> > Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>

> > --- /dev/null
> > +++ b/drivers/soc/rockchip/dtpm.c
> > @@ -0,0 +1,56 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright 2021 Linaro Limited
> > + *
> > + * Author: Daniel Lezcano <daniel.lezcano@linaro.org>
> > + *
> > + * DTPM hierarchy description
> > + */
> > +#include <linux/dtpm.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +
> > +static struct dtpm_node __initdata rk3399_hierarchy[] = {
> > +       [0]{ .name = "rk3399" },
> > +       [1]{ .name = "package",
> > +            .parent = &rk3399_hierarchy[0] },
> > +       [2]{ .name = "/cpus/cpu@0",
> > +            .type = DTPM_NODE_DT,
> > +            .parent = &rk3399_hierarchy[1] },
> > +       [3]{ .name = "/cpus/cpu@1",
> > +            .type = DTPM_NODE_DT,
> > +            .parent = &rk3399_hierarchy[1] },
> > +       [4]{ .name = "/cpus/cpu@2",
> > +            .type = DTPM_NODE_DT,
> > +            .parent = &rk3399_hierarchy[1] },
> > +       [5]{ .name = "/cpus/cpu@3",
> > +            .type = DTPM_NODE_DT,
> > +            .parent = &rk3399_hierarchy[1] },
> > +       [6]{ .name = "/cpus/cpu@100",
> > +            .type = DTPM_NODE_DT,
> > +            .parent = &rk3399_hierarchy[1] },
> > +       [7]{ .name = "/cpus/cpu@101",
> > +            .type = DTPM_NODE_DT,
> > +            .parent = &rk3399_hierarchy[1] },
> > +       [8]{ .name = "rockchip,rk3399-mali",
> > +            .type = DTPM_NODE_DT,
> > +            .parent = &rk3399_hierarchy[1] },
> > +       [9]{ },
> > +};
>
> I will not object to this, as in the end this seems like what we need
> to do, unless we can describe things through generic DT bindings for
> DTPM. Right?
>
> Although, if the above is correct, I need to stress that I am kind of
> worried that this doesn't really scale. We would need to copy lots of
> information from the DTS files into platform specific c-files, to be
> able to describe the DTPM hierarchy.

The description in rk3399_hierarchy[] looks fairly similar to a
power-domains hierarchy, like we have in e.g. the various
drivers/soc/renesas/r8*-sysc.c files.  One big difference is that the
latter do not hardcode the node paths in the driver, but use power
domain indices, referenced from DT in power-domains properties.

Perhaps a similar approach can be used for DTPM?
Does DTPM differ a lot from PM Domains? If not, perhaps no new
properties are needed, and power-domains/#power-domain-cells can be
used as is?

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
