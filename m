Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D49CDC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jan 2022 15:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjPa6xyzjhsK4SxGPS+kDtgtk2N0DfpabiRTWx4a4fE=; b=kwMymQ5j3kqjNM
	QlHJe2CQpbtFFlHTwtsBoQA9wjyNokoDUaziweBbAUYLzKSm66XqhP6P39T/YPqfrX+0ZkyZj053e
	9eRh9AkhBQ3DS6jN5KC9knTstFtY9tCi5YSqGNDV+hl3kjEgfc4iUWgXepqoWzH5WOiJg+arzXu8d
	RJSB5TiXHOaN4STNNwABF652S5iS01ax2P+uWDHjKvqWTlGmvQRJ8D691z33BNOVUxpVyar8qjw5/
	QySpx6Q2kxpcT8a8CmVEOK7/8r7Bxg6Xr+FyQ1kTMRFKYE9pQ4UgSl3CBpPo+j/1QPX7E3qRdWGi/
	NhZDMpPCcXjHiwLnVnsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAZ1q-00C33x-Gw; Thu, 20 Jan 2022 15:07:10 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAZ1d-00C2zM-6z; Thu, 20 Jan 2022 15:06:58 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id v186so18716303ybg.1;
 Thu, 20 Jan 2022 07:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fGjHIa2jvXZWf1yR2M9MGgRIENQb982AcoZ4m2JeeJo=;
 b=lRGLIa4GeTFkep7n9Wuwyh5/c93qO0qQ24HfRGrUUzmCDs2/HU09tVDae9+JPYkqKk
 JR2awu1Sq9NWVw+ThpWh+OroTgtSDuuejlVcsr2NGHP6XpTz6/f3WzgdVGO7mQKGVkz0
 eKNm7XSZMqfWJO4sbVILc5eTaHhe7mbJCpMDODMqRuInZe63kin2DX9YXMO5xAvES1lQ
 PNf7lieMlJgiu4HfiD68b8S72QcV/AYgHPb0/YfUHf/gDx5uaQz2IZX8bJGqvulfD0tF
 1cY+/L0/Zw5tpedrneWY3OvUaa4UNuiq7mv86QvFxfQAAMpExPAMbZ13uhkuc87R9G/I
 nzwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fGjHIa2jvXZWf1yR2M9MGgRIENQb982AcoZ4m2JeeJo=;
 b=BanJm9bZBAN0z9+xYXsteiQLwhpPYHq+xG4aOREHp3bjO2eGu5qMpIMH8n8B5bUjoC
 piOdILXE7EVOM/QT6OU4RnIHqGnUWk+E3WesNerLjbWsPqlJKA5qrieyZIBunsWinOvM
 T5ObAtf1g7iO/D+afpbrCI+oOOb/ZxC4F2YcaeKdTldN1rLjOnLoEpG8f2nB4n6vqCSH
 lmx7ZHX1lzWYqkgIXAKSoiN6kdT2fUVLxNycNEHBDM5u0vPocAtpBNCyt81aDajFsqIS
 HAIgBBfRrIu3QXnEVo4u7ydUzvtzhCMEZulS8LrNQiUsoXaWIFZHEnHtNdZaghpuJ3V6
 fPCA==
X-Gm-Message-State: AOAM5320YAKcdmEfZHH7KVRiuGtFzVPSuvBMmSzSm4b1owAEpZBvHWC0
 hp5VcIq+Xp+t5QCgD+C73KdGMFgY/ZPhLaPlGqQ=
X-Google-Smtp-Source: ABdhPJzwEQxsm+6uQCgTAdIN4x6j/M6Hgid4CJkWRsT2UHShukUYuLvUDLexpLYEr5YA4FTOI74fq2aAeavh8m6juds=
X-Received: by 2002:a5b:a4c:: with SMTP id z12mr16083524ybq.490.1642691214228; 
 Thu, 20 Jan 2022 07:06:54 -0800 (PST)
MIME-Version: 1.0
References: <20220119134948.1444965-1-quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220119134948.1444965-1-quentin.schulz@theobroma-systems.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 20 Jan 2022 10:06:43 -0500
Message-ID: <CAMdYzYr+UXU-x=OakdHnOzLe1e4Y0xdGR-rybsmpLCMGbsWwXg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399-puma eMMC HS400 signal
 integrity
To: quentin.schulz@theobroma-systems.com
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>, 
 Quentin Schulz <foss+kernel@0leil.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_070657_280671_AF1C1877 
X-CRM114-Status: GOOD (  27.88  )
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

On Wed, Jan 19, 2022 at 8:52 AM <quentin.schulz@theobroma-systems.com> wrote:
>
> From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
>
> There are signal integrity issues running the eMMC at 200MHz on Puma
> RK3399-Q7.
>
> Similar to the work-around found for RK3399 Gru boards, lowering the
> frequency to 100MHz made the eMMC much more stable, so let's lower the
> frequency to 100MHz.
>
> It might be possible to run at 150MHz as on RK3399 Gru boards but only
> 100MHz was extensively tested.
>
> Cc: Quentin Schulz <foss+kernel@0leil.net>
> Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>
> Note/RFC: as opposed to gru DTSI, max-frequency is used here instead of
> assigned-clock-rates.
>
> AFAIU, max-frequency applies to the SD bus rate, while
> assigned-clock-rates applies to the clock fed to the SD host controller
> inside the SoC. max-frequency does not interact with the clock subsystem
> AFAICT. assigned-clock-rates sets the clock rate at probe, regardless of
> eMMC tuning.
> Technically, the Arasan SDHC IP supports silicon-hardcoded clock
> multiplier so I think setting assigned-clock-rates as a way of rate
> limiting the eMMC block is incorrect and max-frequency should be used
> instead (as done in this patch). Otherwise the SDHC could still potentially
> derive a 200MHz clock from a lower rate clock thanks to its multiplier.
>
>  arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> index fb67db4619ea..a6108578aae0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> @@ -425,6 +425,12 @@ vcc5v0_host_en: vcc5v0-host-en {
>  };
>
>  &sdhci {
> +       /*
> +        * Signal integrity isn't great at 200MHz but 100MHz has proven stable
> +        * enough.
> +        */
> +       max-frequency = <100000000>;
> +
>         bus-width = <8>;
>         mmc-hs400-1_8v;
>         mmc-hs400-enhanced-strobe;

I don't have these boards nor the schematics handy for them, but
wouldn't it be better to simply switch to mmc-hs200-1_8v?
Other rk3399 boards don't have issues with hs200 at full 200mhz, and
as I understand it hs400-es exhibits stability issues on most rk3399
boards.

Feel free to disregard my comments if you've already tested this.

> --
> 2.34.1
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
