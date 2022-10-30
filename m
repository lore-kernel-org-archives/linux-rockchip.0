Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D926ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 19:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3w5uF8TaLpCDADy0a/p6n1rBHOUdYwPfYwp4qdVnJsM=; b=h/LC6FXsuHl9wl
	aRJQguz2chfQvMS7O0EjzvtTFAizwo9Em6wGF2h3iOi26xZogcwAVPqVfrsOidhkbzKXTjJk4DZJS
	NjleEYPR3UqmtxrXeqn7yHg6ysCQCLpIq5BAvzUY6fOyadlcjC2sJQaVn1wgXaYj/hUptqIdOSOkX
	X4MPKm/Wp1lC8vLGDxFoksOGw5XgPJKmUeXuALDDiS1b1z5SJ5o1AgQr1lvm/T/JXXrqFa/PK2blb
	9q+CAS9g+Oc2hPFfKPGvUztbzPigKawnqpp9u/L0Nqr+jHxA+xmz6v+7WqtexI6me1P7ITAvOcTxw
	qtLgvcja90RWsNiHp3Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opE1B-002Ief-Gx; Sun, 30 Oct 2022 19:30:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opE11-002IWk-9w; Sun, 30 Oct 2022 19:30:40 +0000
Received: from [185.156.123.69] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1opE0d-0005RB-QY; Sun, 30 Oct 2022 20:30:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux@armlinux.org.uk, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 1/2] arm: rockchip: Kconfig: remove select ARM_GLOBAL_TIMER
Date: Sun, 30 Oct 2022 20:30:14 +0100
Message-ID: <3935573.e9J7NaK4W3@phil>
In-Reply-To: <88e93a81-ef9f-adcc-db83-f8b5ba615c47@gmail.com>
References: <88e93a81-ef9f-adcc-db83-f8b5ba615c47@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_123039_380566_8D34D55D 
X-CRM114-Status: GOOD (  24.00  )
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

Hi Johan,

Am Sonntag, 30. Oktober 2022, 19:36:01 CET schrieb Johan Jonker:
> The clocksource and the sched_clock provided by the arm_global_timer
> on Rockchip rk3066a/rk3188 are quite unstable because their rates
> depend on the cpu frequency.
> 
> Recent changes to the arm_global_timer driver makes it impossible to use.
> 
> On the other side, the arm_global_timer has a higher rating than the
> rockchip_timer, it will be selected by default by the time framework
> while we want to use the stable rockchip clocksource.
> 
> Let's disable the arm_global_timer in order to have the ROCKCHIP_TIMER
> (rk3188) or DW_APB_TIMER (rk3066a) selected by default.

Doing that change won't help you with the issue you see.
These days kernel images are supposed to run on as many
platforms as possible with the _same_ kernel image.

So the muliplatform image build from the kernel's defconfig will
include most of the time other platforms that will pull in the
global-timer again.


I do see that you disable the global-timer
in the rk3066 dtsi in patch2, though this would leave the rk3188
still using the global-timer. Why not do this in the rk3xxx.dtsi?

I.e. keep the global-timer node, but add a disabled property
together with a comment above the status=disabled, describing
the issue. [This should keep people from re-adding the global-timer
in the future :-) ]

Thanks
Heiko

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> ARM: dts: rockchip: disable arm-global-timer for rk3188
> https://lore.kernel.org/linux-rockchip/1492374441-23336-26-git-send-email-daniel.lezcano@linaro.org/
> 
> clocksource: arm_global_timer: implement rate compensation whenever source clock changes
> https://lore.kernel.org/all/20210406130045.15491-2-andrea.merello@gmail.com/
> ---
>  arch/arm/mach-rockchip/Kconfig | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> index b7855cc66..0432a4430 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -15,8 +15,6 @@ config ARCH_ROCKCHIP
>  	select DW_APB_TIMER_OF
>  	select REGULATOR if PM
>  	select ROCKCHIP_TIMER
> -	select ARM_GLOBAL_TIMER
> -	select CLKSRC_ARM_GLOBAL_TIMER_SCHED_CLOCK
>  	select ZONE_DMA if ARM_LPAE
>  	select PM
>  	help
> --
> 2.20.1
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
