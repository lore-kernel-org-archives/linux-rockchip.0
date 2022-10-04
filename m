Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57667C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 07:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXEc8cDc+u/Ds1bmLky567oZspTZC0GF2uTxsxZmd/8=; b=osnkFer2gVL9lx
	CZosJ8+RXG0Utxj+Kbrzd0iy8i1CllkDT0LZTj/sAJAc/WHBWk9kiXQ7vQcp/YcHqyipXg2nd9/4E
	r+7ZYlAUOJub+Wtkvkh9wfagHscIcYAUS0Po4DGaGxCxf3aJUHRlucm8PmoJ0Vs25OKmqQ9UYnEal
	A5e0D/zEBKjtQ0P7AJqgdkTfddxHfc5whrGj8Ak6EGf7nuqyPcwM9JG9P7FzsrZnCzSJOp34b3afW
	O4Kl+fkqGR0KbKkbEm8OrqWCDMHHp7ab3MtOzE0YloeYAfRXFHL1k3XMzNvnOH36zSKPmIRGHi1h+
	4NwBRN7wEzOu7pHDzDlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcFf-008jSf-DO; Tue, 04 Oct 2022 07:22:03 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcFd-008jRu-05
	for linux-rockchip@lists.infradead.org; Tue, 04 Oct 2022 07:22:02 +0000
Received: by mail-ed1-x531.google.com with SMTP id m3so17610312eda.12
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Oct 2022 00:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=YnbrbPRNheE9mWTJE4BedbmANy/DirNPf0JAWTobUag=;
        b=Ybdv/qRicXmIOsMNjXI17pstXqXaR+Dw56FsqSyGghn3qdM10JCt/1kETQokGMA5s9
         RuSF1rWx0+G20ZnGzdTu/J+Hbs0U0u3xsP4kLTP1IfUZfSbM0fgcwMuybGdF0mkpx9YR
         JpUFm2O6GQNeTi/T0sKDRarIsPnZ9tfr/mwKd6gVJke7pjvOBy0lbeEMZ+Z1vdEbnOgk
         RDrcBeoQdkjc1tl4EgBeKQc7v0lvundIsRthU/ecEkVuVnYE98YPSJgd44H/5Q2JVn0a
         CFR4oO4srums5XeARgyr/Iqi5b3Ex5etZbDOKXN+Z4IJX+/qpD41+QE6g+lL+3392VvN
         kTFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=YnbrbPRNheE9mWTJE4BedbmANy/DirNPf0JAWTobUag=;
        b=ZbItOCCvDFZosEPHchd7wRmY8DnK4DeIswE8VHywTKijmhiqdLyOxOSAWpXHO1bOBC
         md2VKc6T2Nsv7EH/5tPJDTKtFA26NrHLFyg7ncjQrZj8KvAueDIh1u7Daf2MzV/BwFgB
         sWALJte6FRDZXP5ChHCPyeeg7xrdnHJaAj7sbtqj63fzX1AFASHinF2UpM5mpzzEgixK
         cWod8IWLtMbmGsNfbG0BCtHm/c2ayuQwnXzOwcjsEyvwulg4jrMdyDVhNuX/4JHp2xLm
         XX9sTlR5eHrEc83BKLefHoPhgfUB1W2syzB49eA0GeMD/qZmy+oD1/UYXbPf6wnV1b6i
         7hEw==
X-Gm-Message-State: ACrzQf0seCbgDl3+XujV3DvM5zeTOqQsR9YKFHqsrapMosNKxPXF78fE
	yBxFC47kWphvir0Eh3go9iVZIVB4RcrPtIv+4ionXg==
X-Google-Smtp-Source: AMsMyM5XQ5P+rNaBfvVVp11VNsr3Q3EQBWaj/a2JoRWmaNBmuDp6q5wWXSBdDuB7cAmux3QQv6S7B2+2BvxOZ2odGys=
X-Received: by 2002:a05:6402:190f:b0:452:d6ba:a150 with SMTP id
 e15-20020a056402190f00b00452d6baa150mr22017066edz.126.1664868119506; Tue, 04
 Oct 2022 00:21:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220930132033.4003377-1-foss+kernel@0leil.net>
In-Reply-To: <20220930132033.4003377-1-foss+kernel@0leil.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Oct 2022 09:21:48 +0200
Message-ID: <CACRpkdYOB4uy4wc+kchHioaQ+JSkoi3m6fimiLvLESRjwhaC1Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] fix gpio-sysfs/libgpiod for rockchip
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: brgl@bgdev.pl, heiko@sntech.de, jay.xu@rock-chips.com, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_002201_079191_3C3CCCA7 
X-CRM114-Status: GOOD (  20.92  )
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

On Fri, Sep 30, 2022 at 3:20 PM Quentin Schulz <foss+kernel@0leil.net> wrote:

> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> Since the split of gpio and pinctrl in their own driver, gpio-sysfs and
> libgpiod userspace GPIO handling has been broken because the pins aren't
> put into their GPIO function anymore since pinctrl subsystem is
> "bypassed" when requesting GPIOs from userspace.
>
> This fixes it by making the gpio driver actually request from the
> pinctrl subsystem to put the pin in its GPIO function when the GPIO
> direction is set in userspace.
>
> I discovered the issue because we have a GPIO the user needs to control
> from userspace to flash FW on an on-board STM32 that is actually on the
> same pin as one used by the flash controller. Considering the storage
> medium tried by the BOOTROM is emmc->nor->nand->sdmmc, booting from emmc
> didn't show the issue because the default function for pins is GPIO and
> the flash controller pins didn't need to be muxed by the BOOTROM.
> However, if there's nothing on emmc, the BOOTROM does the pinmux for SPI
> controller and puts the pins in their flash mode and therefore the
> handling of that pin as a GPIO from userspace was not possible, but only
> when booting on something else than eMMC.
>
> This restores the behavior as seen in v5.14 and earlier.
>
> v2:
>  - fix missing header; reported by kernel test robot <lkp@intel.com>

Patches applied to the pinctrl tree (also the GPIO patch) as that is the
dependence point. Will go into v6.1 merge window.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
