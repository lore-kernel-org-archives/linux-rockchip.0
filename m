Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B96AC71155
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jun 2025 15:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvRlk31mWr2CIl4F+3+ezrpTQGs0GX4n6TZBj1Dwqtk=; b=s9p0hQF4tUF6Lo
	Jg73ln7FVBSkEBwoCJh2Y7cYg8I/dhu2hdiRsS7Z5M9ZhXe21yD4YHxjesldM8G2jo/xdNkOm4YWs
	BHu2S8pgMPJBUIXmLh2x3Db6oqWlz9GwkLgHoNSnNSOjaLoOUVwOOMpRsEBoxo1PCJQJ5+o4eDq4T
	o1y4o+M9RfBvn366QCDCmnSy+x4H1bV8UWPuxA3L4ZZcoWu+cXSadN+4C9e1N71H9prC04DHfgnxW
	6T9ltnn92sXL15Tg2N/iO82aw8hRwrk3V4abZGvZlLJqOU7/YI2iyxdEjZyXDWlwl6HzlK96P1BO2
	AGVHlA4USFfpqYWLp3Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBjq-00000004qf5-2pvc;
	Mon, 16 Jun 2025 15:27:12 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR9uo-00000004Y87-1fy3
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Jun 2025 13:30:23 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-e81ec95d944so4710791276.1
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Jun 2025 06:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750080621; x=1750685421; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8dIM4ggq6nkqhLbVMKcT1ezBsK840f8IM9RKNGuYHjk=;
        b=MKzUXo98qQWXnacho74Ez0BjonbseTA5zpAsUGG1FxO5ncaVvRBocQt+5cW+FPdLkI
         Gh7GD+62/cwire0Kephgwp1/CArZR8zNs8UrzC3FFsJsXnrgtOs9Q9gleAYImA/1HmH3
         l+xsVencfHtDc7G6fWHjbh6sWvoUkdicHmTzu/uYujzm0V4UphzPaajy3o9BRDPsJXxg
         2MsX2aZ0IpYnVx9PMBuS/s6okewjzfZAUbHOQgSnqr1ZGH1usgTnRdmUEH7Ghw18q3be
         80DOIlKVQdy92LhvgEJyamfdT4G02h4n4VyoWZqpd9sQoWQ+UL0YY41uUPhlMol+0kHk
         NHAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750080621; x=1750685421;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8dIM4ggq6nkqhLbVMKcT1ezBsK840f8IM9RKNGuYHjk=;
        b=KO+Z6bFii5cq07UHHUuZqSYEa7bWInrny/PsHCLNyVwUy48EfhEZrNB0JMZEUPPaJt
         RrkhHYUvPikar8afmfNJmJFBUZySYXEfIUdavUNrT4hsBk+z4Q764mR8dTXfD4N+2yB2
         8rHT03kQ1XQP7ywbj77gNFcmxQyLtWXVag5+yd3LwwS9iHJ0TutyedsiBLQfi+mvRixq
         h6aILJPoLatMF30+IJL+eloGYPn+7o5FSXIU9/GRMyEZIHY2ZLLXFd4KjZeo99q6dWUc
         nCAUhC9yfQzeMdMmu6hn8Q50AWPmZ2zPSmXSiVvJ7TEeACePo2uIbKyT3LNy7pqd1kiy
         vbJA==
X-Forwarded-Encrypted: i=1; AJvYcCVWpVaXkle9i6d/ORyjUCfAV8aThyPkmO17gxah6nGzc9TKGhWk2XPv4ot9aGUjF6ZHODYaXT9Zr+R7T7lv4w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwGZlRa9yANKr7kt0o2l8RTknfO3vGJowddMygwB57o8gQxbHFg
	8d9Ts0BO1vMkYrp3GmUInlEHyqp5fmTv+BoMCpdG8zJl+ACB1s1fIA2Q7cKpo++8L8bEmY7XzUO
	iaNqLxiqB9bqovIaO1IZLKwoDwY6x7XyhDGqmMuU9DQ==
X-Gm-Gg: ASbGncsNAZ2ZU7kLvHhQShBz8fefKJa6OIQOvQKGfqk2xIndYO5IanLzF2/pryRbiZd
	/qOWNIu4olSquySNR+w538ihxC6wNsj3WP0z0EjTnZXaCkmJPyKdujhedzv/7OfqsDMUwOu0VNY
	UkmWLtAAX5HLB9LE8ghDJeLe9ajLV5tpQrt5gFKLSfbbRA
X-Google-Smtp-Source: AGHT+IHvwFdTtrctzoiWIaPE71W/8FTAI+xhZY2HkhDJbIaDsGip4BNw9qrbXT3Tk9Kd8tGyhyS35T/gDOg+zFs+nYI=
X-Received: by 2002:a05:6902:703:b0:e81:566c:3085 with SMTP id
 3f1490d57ef6-e8227f0e61bmr12875927276.1.1750080620760; Mon, 16 Jun 2025
 06:30:20 -0700 (PDT)
MIME-Version: 1.0
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com> <20250612-byeword-update-v1-2-f4afb8f6313f@collabora.com>
In-Reply-To: <20250612-byeword-update-v1-2-f4afb8f6313f@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 16 Jun 2025 15:29:44 +0200
X-Gm-Features: AX0GCFucmmVjhuxKNu1-kopwQ1Ifcn7b36ykDZEf_SV72XMHIWGaSa8Aqxa6A60
Message-ID: <CAPDyKFr_-aQ+YoRqYVUFhRR=94NWOredaSYQsVb-xvot83HJ3w@mail.gmail.com>
Subject: Re: [PATCH 02/20] mmc: dw_mmc-rockchip: switch to HWORD_UPDATE macro
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Yury Norov <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Jaehoon Chung <jh80.chung@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
	Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, 
	netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-pci@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-clk@vger.kernel.org, llvm@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_063022_447606_3264C202 
X-CRM114-Status: GOOD (  19.92  )
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

On Thu, 12 Jun 2025 at 20:57, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
> drivers that use constant masks.
>
> Switch to the new HWORD_UPDATE macro in bitfield.h, which has error
> checking. Instead of redefining the driver's HIWORD_UPDATE macro in this
> case, replace the two only instances of it with the new macro, as I
> could test that they result in an equivalent value.
>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>  drivers/mmc/host/dw_mmc-rockchip.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index baa23b51773127b4137f472581259b61649273a5..9e3d17becf65ffb60fe3d32d2cdec341fbd30b1e 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -5,6 +5,7 @@
>
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
> +#include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <linux/mmc/host.h>
>  #include <linux/of_address.h>
> @@ -24,8 +25,6 @@
>  #define ROCKCHIP_MMC_DELAYNUM_OFFSET   2
>  #define ROCKCHIP_MMC_DELAYNUM_MASK     (0xff << ROCKCHIP_MMC_DELAYNUM_OFFSET)
>  #define ROCKCHIP_MMC_DELAY_ELEMENT_PSEC        60
> -#define HIWORD_UPDATE(val, mask, shift) \
> -               ((val) << (shift) | (mask) << ((shift) + 16))
>
>  static const unsigned int freqs[] = { 100000, 200000, 300000, 400000 };
>
> @@ -148,9 +147,9 @@ static int rockchip_mmc_set_internal_phase(struct dw_mci *host, bool sample, int
>         raw_value |= nineties;
>
>         if (sample)
> -               mci_writel(host, TIMING_CON1, HIWORD_UPDATE(raw_value, 0x07ff, 1));
> +               mci_writel(host, TIMING_CON1, HWORD_UPDATE(GENMASK(11, 1), raw_value));
>         else
> -               mci_writel(host, TIMING_CON0, HIWORD_UPDATE(raw_value, 0x07ff, 1));
> +               mci_writel(host, TIMING_CON0, HWORD_UPDATE(GENMASK(11, 1), raw_value));
>
>         dev_dbg(host->dev, "set %s_phase(%d) delay_nums=%u actual_degrees=%d\n",
>                 sample ? "sample" : "drv", degrees, delay_num,
>
> --
> 2.49.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
