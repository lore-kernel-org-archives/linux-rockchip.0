Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6044C71157
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 14:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2SpEdKxSTyotS0xvM8VRSOQ5qM/NYugm2ovhgs+uNI=; b=p00SUCz0CbIL0W
	K/cnl23UInkxj/8jI7WecL1ujIQiAfGoEt5YRLPnxRi2kPMJ4jhp9vc+32eZpryZKz3d4+SL/ab20
	/6FRDmdbUALaYzJSOARhGyH6moOKxXsocYPrZGVHU13lGrumoZ/b9rYl11VpAsZZnfsvwetb/OZbt
	370zIYddfAx7dryKVoqICirwQ1Be5UZBPAoNai9fcyVToY63L1V+p96Mnl8aA2pDkzmXEY7wQIqF1
	Oko+YLhY50ZrU3rqEMEtsQhcnxGKvCJw6+xonRQ1XoRzpxzJdCMt40rXl+TOPFQqw7ChAhMlBkRQl
	rWpB3rFL5R2Lsjf8YYeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRtNn-0000000ANsO-2MV5;
	Wed, 18 Jun 2025 14:03:19 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRsLa-0000000ACUv-0JX6
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Jun 2025 12:56:59 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-e82596e88c4so2906449276.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jun 2025 05:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750251417; x=1750856217; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6Jfv7W89jcyNI5g8maM5e0NmglDrqdzJne5yo5vZPXg=;
        b=jYaE/YPIhxbnwMGatatjUQ7wr7u2CUW586Frod6eE0+HRhTL98Bk14u51USZCI+Htc
         SW1dEH97lWHC9TePqPouIeutFDgvAme0HKULSeLTm81DcKbnDJ85aZv9WWB5Pm5jsRor
         DKqwZ9WhW8lVFsmqeXMChuRxE8F7gZH+cUGAPI5iIOYGrAhjAL1Xmwlm4+PQLLZNcd+I
         xWc+FxfwRaITvqoRv9u7BiLijZkeGenk7tP9MRgeabdpSQz3X+LbdZXq6fIaAP29ew8+
         6QCS/yWJ6proR13l7yBytmLKONnr5WrXJSsUoz1EATrJrIS3AM5Yu+NFLz4IjRUGOuU8
         MTSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750251417; x=1750856217;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Jfv7W89jcyNI5g8maM5e0NmglDrqdzJne5yo5vZPXg=;
        b=ntEXVrk6gM0FLkrbIp0fA78q887C3m4A9WhgL1n28LXSHrxo5wjuaTJYupoVKC2Nua
         C6TpFedGX7y5CnwRZ39hSOrJbJZNcQCVMGkhwp4FJ8EA30JkopR2NLSONagzMuPkRnc8
         IAN/c1AHiJyvgwlV8S6ZW62xxEMDheXh+xHQwwv8uyDMCrufLfjA+W2lsHmt1LMcGlW8
         0VEsFF6AasxHUjNRr24S6LaY6vPi41C1hPAuOTn9qRvj5pyf5QFnuzo/dfowP5u93ii4
         0z1jZdwv8VdGBlb7fj3pxdXjL+GkSyl0HKqmkxAkYXLGkfNtSfd7uO2LPOmthB8hG79E
         N49w==
X-Forwarded-Encrypted: i=1; AJvYcCWekWVgXq/DPrEQ+dQ8Q1vt+uM12m5/SUkgI4stQ75ObFeUUsuku/Vs8fj07fW0BHs9eKWWU6cQErUTTTUiNg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxlXqoRcYpU7wauToXaOxhIhO2o52kbnYceq1V2CfOnybG2Dakt
	odnm+T/y/cz2Ck0TFUHuJVd64GrnxjIwBZzMBH0qBFIeKmcNzR7nqn1wqnhAK5EnrWZmWFC3ic/
	AyjhknOWjh1XpmkHU3K4H2fMBnCbG97K8s1rn02RDzQ==
X-Gm-Gg: ASbGncvR7x6sSiDSYhcFAQ4MDKq59wziggBpqUgMyNJGx9zwcSpR/JQ4S4tZxy3R/vs
	smk8aKqmQ7AsMpUQWlP7P92+SCnKhBjtTbcFx5jGn+j6vZM4RKx6S3V3xsOXUWU9HtX2DH+hQzS
	Ne/nOY+RLNLu2NbD4qaQqzXHLBP3ad6u5ymQEJHQTQyw4=
X-Google-Smtp-Source: AGHT+IEF7aSd2gChdpDkWFgFxP4fyCJRIi/0rOPMDF7EBy8fifK6rpldismzyPaU5FnMtFjQSC8V5hmVyzcxyRjq81Y=
X-Received: by 2002:a05:6902:a06:b0:e81:2740:2d96 with SMTP id
 3f1490d57ef6-e822acc6cc8mr22162870276.17.1750251416986; Wed, 18 Jun 2025
 05:56:56 -0700 (PDT)
MIME-Version: 1.0
References: <20250518220707.669515-1-jonas@kwiboo.se>
In-Reply-To: <20250518220707.669515-1-jonas@kwiboo.se>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 18 Jun 2025 14:56:21 +0200
X-Gm-Features: AX0GCFurdlTWKY938doCIooXAEmUu9ZI2vYDArR38Vi5OuNwlGZr8B4vigPCwUY
Message-ID: <CAPDyKFrtp7MHMuXhhYm7c8TY9u5DoGV89x4d__gYLQSNU48voA@mail.gmail.com>
Subject: Re: [PATCH 0/9] rockchip: Add power controller support for RK3528
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>, 
	Chukun Pan <amadeus@jmu.edu.cn>, linux-rockchip@lists.infradead.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_055658_117055_B52374E8 
X-CRM114-Status: GOOD (  19.44  )
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

On Mon, 19 May 2025 at 00:07, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> The Rockchip RK3528 support multiple power domains, one PD_GPU that can
> fully be powered down, and other that can be idle requested.
>
> Vendor kernel flag all power domains on RK3528 as always-on, this takes
> a different route and instead tries to describe all devices power-domain
> in the device tree, even for controllers with unsupported runtime status.
>
> The PD_RKVDEC is used by RKVDEC and DDRPHY CRU, and is kept disabled to
> prevent a full system reset when trying to read current rate of the
> SCMI_CLK_DDR clock.
>
> Patch 1-4 prepares and makes it possible to use the PD_GPU power domain
> for a separate "Add GPU support for RK3528" series.
>
> Patch 7-9 updates dt-bindings for controllers not supporting use of the
> power-domains prop and enables the PD_RKVENC, PD_VO and PD_VPU domains.
>
> pm_genpd_summary on a Radxa E20C after this:
>
>   domain                          status          children        performance
>       /device                         runtime status                  managed by
>   ------------------------------------------------------------------------------
>   vpu                             on                              0
>       ffaf0000.gpio                   unsupported                 0           SW
>       ffb10000.gpio                   unsupported                 0           SW
>       ffbe0000.ethernet               active                      0           SW
>       ffae0000.adc                    unsupported                 0           SW
>       ffbf0000.mmc                    suspended                   0           SW
>   vo                              on                              0
>       ffb00000.gpio                   unsupported                 0           SW
>       ffc30000.mmc                    suspended                   0           SW
>   venc                            on                              0
>       ffb20000.gpio                   unsupported                 0           SW
>       ffa58000.i2c                    unsupported                 0           SW
>   gpu                             off-0                           0
>       ff700000.gpu                    suspended                   0           SW
>
> Jonas Karlman (9):
>   dt-bindings: power: rockchip: Add support for RK3528
>   pmdomain: rockchip: Add support for RK3528
>   dt-bindings: rockchip: pmu: Add compatible for RK3528
>   arm64: dts: rockchip: Add power controller for RK3528
>   dt-bindings: mmc: sdhci-of-dwcmhsc: Allow use of a power-domain
>   dt-bindings: gpio: rockchip: Allow use of a power-domain
>   dt-bindings: i2c: i2c-rk3x: Allow use of a power-domain
>   dt-bindings: iio: adc: rockchip-saradc: Allow use of a power-domain
>   arm64: dts: rockchip: Enable more power domains for RK3528
>
>  .../devicetree/bindings/arm/rockchip/pmu.yaml |  2 +
>  .../bindings/gpio/rockchip,gpio-bank.yaml     |  3 +
>  .../devicetree/bindings/i2c/i2c-rk3x.yaml     |  3 +
>  .../bindings/iio/adc/rockchip-saradc.yaml     |  3 +
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml      |  4 -
>  .../power/rockchip,power-controller.yaml      |  1 +
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 87 +++++++++++++++++++
>  drivers/pmdomain/rockchip/pm-domains.c        | 27 ++++++
>  .../dt-bindings/power/rockchip,rk3528-power.h | 19 ++++
>  9 files changed, 145 insertions(+), 4 deletions(-)
>  create mode 100644 include/dt-bindings/power/rockchip,rk3528-power.h
>

Patch 1->3 applied for next, thanks! Note that patch1 and patch 3 are
also available on the immutable dt branch.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
