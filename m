Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5A44C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:58:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 94EC360C41
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:58:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 94EC360C41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEA2braanICvSHIuoy5PC3zDHd6wEIsDonMtgM/jo0k=; b=sshOIeLpBaRdrf
	dQ+vp34hGFYO8CGU0kRhJ+hVUNCHmNbplOmeqV4Gfc4K6Q6KjbtkR0p/pTu1qf0+hnzp0Km/7FQ/c
	sphr/+hFcolpbUY/DbIzp844uAu51cU13kX0Xuy4G8sVecFCcBkzqBni9RT3qxsZBdG8mOdZ0rbrs
	DCEyTzCGeQB1dJjQ0f29u3bfndK7cooKaRE6ZGijWkmOA3obeqLtR5Wl91lcCsMWMLgPb0G+o8c+g
	jWflD7s0zxDtfcnfpnXs/JeHwxHjRJrhtPnaCIIzqDEOOEb1+OAP6Jr/D8T06caDvhuRb6uMU8s6m
	I3gEV4ULQbxiBHtx2vdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8j8T-000kOd-71; Wed, 28 Jul 2021 12:58:09 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8j8P-000kBj-R4; Wed, 28 Jul 2021 12:58:07 +0000
Received: by mail-yb1-xb31.google.com with SMTP id k65so3672460yba.13;
 Wed, 28 Jul 2021 05:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4bRUEOcKLm4DS4B/jW3feMkPgYheSCRlhCV3QPcIdfM=;
 b=r74xakMZ0GiSUxuVoyqO2APZWeaXmcbQVrXVDiOwVxqOXx9GehIwH9mGx4ycKOytQW
 HnGv1o7MAsiF5djl3nbNAK84t3xUkxmxrOJM4phlolM03We9YVytoRUiie5+/Ypy4woY
 4sE7Z6pQxSiPHIzdzOAM96SlrxLQT5vbDyuOAvqcyMr6kGKzm4MNt3iMa3aefeXISMpg
 HY+lYyVATYSzUISOzWqbZcZBfZtJePPI5Vy8xfUesSAhbHwc+0KgQwwYuSYdqRiWYfnc
 /oyM3k+Xr2a+7XBIJXAmMigVKATbwnjETeSXsSmxREWe7kaC+hmfbCqKCnCYB2xKlQ+m
 GyKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4bRUEOcKLm4DS4B/jW3feMkPgYheSCRlhCV3QPcIdfM=;
 b=O5xJelNzIctozZC02S6dVgwRSyQGdXFrm4s6koTSXyfFeZqlCPnbl45RooF4RCU1AL
 afu98Gzc4soanEAcQpxluuk+fmMFghsYz6Ia1TZdtnXewEsrRhN47bWp3Cvwx4vRcP4z
 XsPBTfflxCcLJSgyfuPoEZiQ6udh+xBcr5q3SPZ0BeSwQ82vgDDeMNROWzGMj0YM+Wx7
 bR7f8/lK5/O0V9FIHbT9zZeBs0xIDmy7MBuXYGL23MrFrKqgjAXtZz/zwl1DtW/fmGU3
 E2ALNFEJc5M/3qbMVjOPuTPJTPX1SHCYDzwpa1lrl3zGmFxHgKNCmGQcZ8Ts9rDfJ24u
 Y67A==
X-Gm-Message-State: AOAM533aKjKkSvNh+VIEuJY4VJfhSyMCsceCxVglDtflT2weeHO5+f3J
 LOzYeUrtSn9sd1TRUok9kYR+mnCc18s9XwObCzQ=
X-Google-Smtp-Source: ABdhPJzmzWvu27COtLqMKKkTMUYpg/RrU2KpvbhDxtRYowsBJyb58EUIfvC1aCTFfcDylioNXM0Vz5iuQoLCN0k9lZk=
X-Received: by 2002:a25:808b:: with SMTP id n11mr18554881ybk.141.1627477084646; 
 Wed, 28 Jul 2021 05:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210726190130.1973-1-macroalpha82@gmail.com>
In-Reply-To: <20210726190130.1973-1-macroalpha82@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 08:57:52 -0400
Message-ID: <CAMdYzYqjrReKOWBMsaGpjj-hSvQYap=hMeyvpeggKuz+mVkULw@mail.gmail.com>
Subject: Re: [RFC v2 0/4] power: supply: Add Support for RK817 Charger
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, maccraft123mc@gmail.com, 
 sre@kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>, 
 Lee Jones <lee.jones@linaro.org>, Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_055805_928960_0A37A5B7 
X-CRM114-Status: GOOD (  25.69  )
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

On Mon, Jul 26, 2021 at 3:02 PM Chris Morgan <macroalpha82@gmail.com> wrote:
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> As this is my first charger driver, I'm submitting it as an RFC so I
> can get input from the community on what else is needed to make the
> driver consistent with the quality upstream expects.
>
> This series is to add support for the Rockchip rk817 battery charger
> which is present in all Rockchip RK817 PMICs. The driver was written
> as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
> myself Chris Morgan <macromorgan@hotmail.com>.
>
> The driver requires some basic parameters be described about the
> battery in the devicetree such as the maximum capacity, the minimum
> and maximum voltage for the battery, the maximum charge current, the
> maximum charge voltage, and the value of sample resistors and sleep
> currents.
>
> The hardware itself contains an ADC capable of measuring the voltage,
> current, and temperature of the battery (though my implementation of an
> Odroid Go Advance lacks a thermistor for temperature). It also contains
> a columb counter, registers for tracking the measured voltage and
> current at boot, and a few bytes of nvram for storing data.

Feel free to add my Tested-by: Peter Geis <pgwipeout@gmail.com>

Tested on the Pine64 Quartz64 Model A.
We can't go as low on the battery voltage, otherwise the SOC becomes
unstable before it can shut down.
<3625000 0> seems sufficient for us though (adding this for the
benefit of anyone else testing).

Voltages are accurate as measured at the battery.
Are there plans to expose the thermal sensor (if that's possible)?

>
> Changes from V1:
>
>  - Fixed a CLANG warning regarding an uninitalized variable.
>  - Fixed a CLANG warning regarding a pointer as a bool value always
>    returning as true.
>  - Added Maya Matuszczyk to the Signed-off-by.
>
> Chris Morgan (4):
>   [RFC v2 1/4] dt-bindings: Add Rockchip rk817 battery charger support
>   [RFC v2 2/4] mfd: Add Rockchip rk817 battery charger support
>   [RFC v2 3/4] power: supply: Add charger driver for Rockchip RK817
>   [RFC 4/4] arm64: dts: rockchip: add rk817 charger to Odroid Go Advance
>
>  .../devicetree/bindings/mfd/rk808.txt         |  35 +-
>  .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  25 +
>  drivers/mfd/rk808.c                           |  16 +-
>  drivers/power/supply/Kconfig                  |   6 +
>  drivers/power/supply/Makefile                 |   1 +
>  drivers/power/supply/rk817_charger.c          | 932 ++++++++++++++++++
>  include/linux/mfd/rk808.h                     |  87 ++
>  7 files changed, 1099 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/power/supply/rk817_charger.c
>
> --
> 2.25.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
