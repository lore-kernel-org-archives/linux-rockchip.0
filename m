Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D875BC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 08:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ui9Vo06CQ7biaAqs1qevXOlyiuLi5sYlnik+DObNPQ=; b=B5ZoBLBEyOH+Rx
	ddqSI8meKPV0G5hiO0Iv741TSmNKWTpMZpdSmeCj3GRkZUmzauHDsRO7ln9IyA8RwZmppsbX9IpnS
	+T2tMl8i8V3x9B234OJdbOx9HePplcjUQ1bVnRWALwHQG83lN+urFoiII5KQjrlOe+8MbTdPokMpn
	8JKkJ6UTMz67n++eIEBkJiSR5KxTxY09bNjAlQg8HDd22wqS1GdeXll8uz2Aoc8njs2rLw2vsy4Jj
	Sc4kuk/jVzWzoOP93vpSwE8kY3xQRQWbHXNEWLuOu/lPvnnnH3UNhwTaQ779jDtR2v+tICLRbCSPG
	oer5oc2dDmkvFZcKNIlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ns1-0000000FZB1-0s4X;
	Fri, 03 May 2024 08:02:17 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2nrw-0000000FZ96-1Re3;
	Fri, 03 May 2024 08:02:15 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a598e483ad1so92760266b.1;
        Fri, 03 May 2024 01:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714723323; x=1715328123; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O7VR0R6Dd9Cls/yOVc31au9glBIGmfh65HkhEJCpmCM=;
        b=Nda8CfZj8OhxqEZIQ8LImSU7/Mz4r79F+JRMEejgeNKsvRGTT4w3LI2R85bcYqz5cQ
         6LEnLWShsM1rj9k2e43+7XimFcMiOlUz2/1ebbYmQ6Zb716FikkrpuBUnTwYbSLgEdUG
         dVXm3Mc05zdWt3d6A4vRmAEk8KMKGy50ehWptrcqUEMWvVsLLV72LqWwG5F8W1V3ycvi
         kHKAl8EXavs2fxjXtiM+9thoChOiZL5NwpqJpa4csoc0d6G7iKiaiSS8tNpMQ857mwYG
         gN6uMeKMtfQjmDbkL5QDXaWbsK0a4Qy/5be+AfGBlo2jt87un937plgGk3x+lIFTp2j0
         9D0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714723323; x=1715328123;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O7VR0R6Dd9Cls/yOVc31au9glBIGmfh65HkhEJCpmCM=;
        b=kd38grJZodB9h8REV9iS0PMOhplyF/KQWqR8Si22dv5gsoMXXLnhLOE9W6FYOp3STj
         FVTBFhQSoXa/N92y62woIKrsRauxe8lij1bPsd6VLjjLvk+9QTl8HoU5tO4WlowzDKjk
         OjUKS2gCDO7wn86IQJlf6NKFd+x67iqsVW7QBZisxE3HhaDLj3BUcoNCzi1qjtQny9n6
         /BQ3kFaeTXIrbH3kDnxgHkEFf5tMqgbOBhhZVNibh4MQ4SEgve0n84qjnBi+g9ZDrTkq
         iU8xxsrzWYBJu6QqApF4PgHeQNCQCEDgp12O5/hiPJfYnqzVuIDMQfaE54lk9LfWHxJp
         G/cQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2GGSO30O9A4a87T7yhAeVJ2c3uSWif5iWPbvwb7Z+R2vm1HvCqbreQOfo/28EXlpq5fncIpW+3Ib5GnZN7YJNtJn59cWX4+9IxAxLfqOxfup301G39A2aWxVHmNPdWPDHb9QwnVxlJyJkpuKomVqGO41/j3qTJCs=
X-Gm-Message-State: AOJu0YxGnWwyt31McPkFSsY2cB+Mq1L00T7ce40za+oP2gWcTMGgwoxz
	tZLHnX6t2CCF1xTdEQlG6ZRE2MXKjpPm7EVtHkLbmEnsAW2TwgWLu7Kw
X-Google-Smtp-Source: AGHT+IFT/vjg3gQPLCM/xYelNdutZZJSVCcpo9b91OQ0v+WPciUzGBo+JPLz0QP130mkuAxdvHOSdg==
X-Received: by 2002:a17:906:29d4:b0:a58:c559:3d06 with SMTP id y20-20020a17090629d400b00a58c5593d06mr1105060eje.55.1714723323134;
        Fri, 03 May 2024 01:02:03 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:3a49:8f56:d30a:65e? ([2a02:810b:f40:4600:3a49:8f56:d30a:65e])
        by smtp.gmail.com with ESMTPSA id kt1-20020a170906aac100b00a52295e014bsm1440683ejb.92.2024.05.03.01.02.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 01:02:02 -0700 (PDT)
Message-ID: <69945c53-1fa5-4fde-b488-6056c5471095@gmail.com>
Date: Fri, 3 May 2024 10:01:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add RK816 PMIC support
To: Lee Jones <lee@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20240416161237.2500037-1-knaerzche@gmail.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20240416161237.2500037-1-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_010212_426941_E787B4C8 
X-CRM114-Status: GOOD (  26.70  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Lee,

it looks like all patches except the MFD ones have been reviewed/acked by
now. I hope I integrated your feedback to v3 [0] in a way you were
expecting. Also I was hoping this whole series could be go though the MFD
tree, since all the none-MFD patches depend on the changes mfd-header.

Please let me know if there is anything left for me to do.

Thanks,

Alex

[0] 
https://lore.kernel.org/lkml/20240323132757.141861-2-knaerzche@gmail.com/T/#m1bb23196c192289f898aebc64ccf62edb9ef5b5a

Am 16.04.24 um 18:12 schrieb Alex Bee:
> This series aims to add support for Rockchip RK816 PMIC series. As per
> datasheet it's targeted for RK3126/RK3128 (RK816-1), RK1108 (RK816-2) and
> PX3-SE (RK816-3) but might be used for other SoCs as well. The MFD consists
> of an integrated RTC, a GPIO controller, two 32k clock outputs, a power
> key, 3 buck- and 6 ldo regulators, 3 regulator-switches, and charger with
> integrated fuel gauge. Charger and fuel gauge are not part of this series.
> Two of the switches (otg/boost) are part of the binding, but not of
> the driver. They must only ever be enabled if no battery charging is
> happening, but it will be enabled automatically if a battery is attached
> and an external power source is connected. Thus that needs some
> incorporation of a yet to be added charger driver.
> Integration in the existing rk8xx-infrastructure was pretty straightforward
> and only needed very little tweaking. In order to not further bloat the
> driver(s) too much with additional `#define`s I tried to re-use existing
> ones wherever possible.
>
> The patches are loosely based on the vendor's implementation, verified
> against the datasheet and tested/measured on a RK3126 board.
>
> I'd like to gently ping pinctrl and regulator maintainers: please have a
> look at this series. I've now added Sebastian Reichel to the recipients, as
> he recently added RK806 support and re-worked parts of the rk8xx drivers.
>
> changes since v1:
>    - integrated Krzysztof's feedback for the bindings and the resulting
>      driver changes
>    - fixed a sparse warning
>
> link to v1:
> https://lore.kernel.org/lkml/20240321143911.90210-2-knaerzche@gmail.com/
>
> changes since v2:
>    - integrated Krzysztof's feedback to v2 of the bindings and the resulting
>      driver changes
>
> link to v2:
> https://lore.kernel.org/lkml/20240323085852.116756-1-knaerzche@gmail.com/
>
> changes since v3:
>    - integrated Krzysztof's feedback to the bindings of v3
>    - integrated Lee's feedback to the mfd part of v3
>
> link to v3:
> https://lore.kernel.org/lkml/20240323132757.141861-2-knaerzche@gmail.com/
>
> Please see individual patches for details about the changes.
>
> Alex Bee (5):--
>    dt-bindings: mfd: Add rk816 binding
>    mfd: rk8xx: Add RK816 support
>    pinctrl: rk805: Add rk816 pinctrl support
>    regulator: rk808: Support apply_bit for
>      rk808_set_suspend_voltage_range
>    regulator: rk808: Add RK816 support
>
>   .../bindings/mfd/rockchip,rk816.yaml          | 274 ++++++++++++++++++
>   drivers/mfd/Kconfig                           |   4 +-
>   drivers/mfd/rk8xx-core.c                      | 104 +++++++
>   drivers/mfd/rk8xx-i2c.c                       |  45 ++-
>   drivers/pinctrl/pinctrl-rk805.c               |  69 +++++
>   drivers/regulator/rk808-regulator.c           | 218 +++++++++++++-
>   include/linux/mfd/rk808.h                     | 144 +++++++++
>   7 files changed, 851 insertions(+), 7 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
