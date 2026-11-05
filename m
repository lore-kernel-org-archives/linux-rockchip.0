Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B65E606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 09:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vec3NXfk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=l2GxQXDjQXHimTeQ7puBuGa+NlxSpxEMfirZ5ZBY4po=; b=vec3NXfkpgb/q3HSapnG8J26Ml
	vTlTnEPz5zbyMFd3tPwjuOP0p/FC/yKaQiSfML7iA2D/YwD2sJO7f4xdgHqU9gRwmToQr1dXjACmk
	LYE7dy2eusTF9/Ka8yV4cRwaSMt9IQK9npMSzZS46LeVCJP//rgVClMxox9zVJeeJiCG9oDYRpm5y
	8mQxsokHrPPAQbNjOGpKC7+ThDlsNi+IYVdBRL1z6iKldwnHsPzV2b6IYPJC5s2Fm8Id9sV+kckbt
	XDSFkRac7naDiw9AzGTcUaCsmgmA5TDXPjPOJtk9LyC8Fg9X8vRQPOo8a8ohOMKIYSf4gpd4+YH02
	sJPyPGzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOtjX-00000008In3-2pDD;
	Thu, 05 Nov 2026 09:26:11 +0000
Received: from mail-qt1-f172.google.com ([209.85.160.172])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOtjC-00000008IjD-2N1W
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 09:25:53 +0000
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-53512cd2f85so18301161cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 01:25:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793870749; x=1794475549;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=9pg1eAqFe+iTfmNTfa/GRPtY3M6bs2CHPsTRd5ndQTA=;
        b=nJG0rSbO6Og0bylJDxmlo/RL+hYX1wCBhnLLhX3fUwANYcUgrpv+uqE3kCSmXyvwqs
         2XQisqWCHuNAII0b+1PTYQNUQlhwbpOVnLpMb2BXER5qIYl7OKe/IOHNQd6u3pXu9OY1
         +rn/tW/TcePUJY8JNsn9FX5ja2ERTsPOObliULcrAnhfS+y3qahxEBuol3KLycPJczyl
         Guvz3MvzUqjHOraVrulWLl5Yq9ky8bqNWJUN4lSuV1xaM2Gx3Hhpn2PxI6E0OsuJ4CuA
         RwTRWFOqRTKYOsDUzoAizEzh0Uwjp/8N5DNesppshiCJI6XEADt9AO3A1kQM3M+edzQf
         DAHQ==
X-Forwarded-Encrypted: i=1; AKwUvBwgVa5FNZQccOQ0E/kAYlg+A97+O0bTxZInmCpO0TcGRkt6RyZMgopSKC1S3Lwhc4VomZ8BXcoV/ie0zawxLg==@lists.infradead.org
X-Gm-Message-State: APuU4Z98b1KEhbzb4oSu00SMrRnKEeZ7MdL4YccW8WpzyZM14olxmRaj
	p3RygYOutRQWmoIXdU/1xtUaUV9cnCrE0HlwOIM8R3c1rE1C5+oB3ED2SPe/GhWu4D0=
X-Gm-Gg: AYBFou3iEUFeYXrH5vaN7X1OjHl44aqBKYwzjW6ibvIDCf+ictORYeYyHGXuhEqoDW+
	jeD0Cs4WZcOCpIzxZ0HTctPVPbU/rluy8NMyfK4UlvNLI96B4af8ueJNPWJ2F+VN6n16ANx1T/D
	PSbZ41WS4ZXZQm4bwoEw8NxmwnkQCtYGO9eDXe0oJmNKF7pyf1vIOwIY18K8e8zLbAtQKeDYW3i
	ZvJz/uhFzHw7B+WTvcKb2q5Y4w+bWw9zQo0lfy4uZwSFxkYoCY5sAV+72vM7m7Y3LmsCoeHefWj
	dJsal9X9d03xuHpd9/IULxB2Q7NgntbMw4FsvT3tjqAE7M+neJelH5VN+vcSnHJjGzss6VCVFC/
	RbT5ypw2SXI14LAFE4pNKi77lLuHnNx2jdDVQr44egwTFP67d+Y6xBymBKsjp+HRe0yAab7hEIa
	A60cboJVuLNUEpJUEBpqlZA4J5Dkv9VbKHy2v3GqzYgXiSdoDwKz9XqmpL1NxGzLV/qr+uzcaxR
	vfwhYel/u1vOJV56yscw6hduVYVj5+YZ/RS2lqSpqQ5CPSDH2OsljF2wWFyeLtrhDEfud4bbiKN
	uwoHwCW0vaI7lx2MdAkeAnKQT6nFv/J/HgEsz3RVQeoN8AXSGpmlLKiAjQEgxlzY7tIIjg==
X-Received: by 2002:ac8:5982:0:b0:535:1fe4:64df with SMTP id d75a77b69052e-542b6689b62mr313650821cf.12.1793870749116;
        Thu, 05 Nov 2026 01:25:49 -0800 (PST)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com. [209.85.222.169])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91e7dacef6csm42709736d6.5.2026.11.05.01.25.48
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2026 01:25:48 -0800 (PST)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-93f2f2edb19so150620985a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 01:25:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AKwUvBz0byH6a5MebVyhJ+Ffi6gZXkvayc9rvRT+jCApK7Lczr/rhZnzM48d6fWIgVix+ArTqbHO7RlTM+ccOTNWdg==@lists.infradead.org
X-Received: by 2002:a05:6102:e0b:b0:7cc:1045:610 with SMTP id
 ada2fe7eead31-7d072cc4a42mr6604019137.27.1793870415083; Thu, 05 Nov 2026
 01:20:15 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261104152253.3279052-1-Frank.Li@oss.nxp.com>
In-Reply-To: <20261104152253.3279052-1-Frank.Li@oss.nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Nov 2026 10:20:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUfYZmbf6ADFFoKSod6yhu7jQVt5CBNuQpmRUUWR3OZGw@mail.gmail.com>
X-Gm-Features: AclHuK-9tAw2bAtaZucYUxK8rDds9GR808jJtyoj1R1Fxu-dNuDK-M2tP9yoLrk
Message-ID: <CAMuHMdUfYZmbf6ADFFoKSod6yhu7jQVt5CBNuQpmRUUWR3OZGw@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] spi: use dmaengine_desc_set_callback()
To: Frank.Li@oss.nxp.com
Cc: Mark Brown <broonie@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Radu Pirea <radu_nicolae.pirea@upb.ro>, CL Wang <cl634@andestech.com>, 
	Ryan Wanner <ryan.wanner@microchip.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Vladimir Oltean <olteanv@gmail.com>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Han Xu <han.xu@nxp.com>, 
	Haibo Chen <haibo.chen@nxp.com>, Linus Walleij <linusw@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Mack <daniel@zonque.org>, 
	Haojian Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, 
	Heiko Stuebner <heiko@sntech.de>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Yixun Lan <dlan@kernel.org>, 
	Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Alain Volmat <alain.volmat@foss.st.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Laxman Dewangan <ldewangan@nvidia.com>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	"open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>, 
	"moderated list:ARM/Microchip (AT91) SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>, 
	"open list:FREESCALE DSPI DRIVER" <imx@lists.linux.dev>, 
	"open list:ARM/QUALCOMM MAILING LIST" <linux-arm-msm@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	"open list:RENESAS RZ/V2H(P) RSPI DRIVER" <linux-renesas-soc@vger.kernel.org>, 
	"open list:SAMSUNG SPI DRIVERS" <linux-samsung-soc@vger.kernel.org>, 
	"open list:RISC-V SPACEMIT SoC Support" <linux-riscv@lists.infradead.org>, 
	"open list:RISC-V SPACEMIT SoC Support" <spacemit@lists.linux.dev>, 
	"moderated list:ARM/STM32 ARCHITECTURE" <linux-stm32@st-md-mailman.stormreply.com>, 
	"open list:ARM/Allwinner sunXi SoC support" <linux-sunxi@lists.linux.dev>, 
	"open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>, 
	Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Thierry Reding <treding@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_012552_158193_BAA2B82E 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: -1.6 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Frank,

On Wed, 4 Nov 2026 at 16:30, <Frank.Li@oss.nxp.com> wrote:
> From: Frank Li <Frank.Li@nxp.com>
>
> Replace open-coded assignments to callback and callback_param fields
> of struct dma_async_tx_descriptor with calls to the
> dmaengine_desc_set_callback() helper across SPI bus drivers.
>
> No functional change intended. Prepare make to struct
> dma_async_tx_descriptor private to the DMA engine.
>
> Reviewed-by: Linus Walleij <linusw@kernel.org>
> Reviewed-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>
> Acked-by: Alain Volmat <alain.volmat@foss.st.com>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>
> Reviewed-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> Acked-by: Thierry Reding <treding@nvidia.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change in v2
> - add missed set_callback in rspi_dma_transfer() (sashiko
> - collect review by tags
> - drop void *

You have lost the "# Renesas related drivers" part from Wolfram's
review?
https://lore.kernel.org/all/auoQiuIm9FxdOrYl@shikoro/



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
