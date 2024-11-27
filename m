Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58F6FD6D24C
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Nov 2024 00:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KrrB22qhbV+hh5VFHID9P1FW78AidKipyqLRBfShyGA=; b=RETAORERt5SGR7tarM0UDZL2Q4
	DeQ4B/99ZcfJkZm84pBj93UrxNtuN347swMPLEPbjL7YBn2dcNQ7z0MfOsOX0royY16o9irKeLmIa
	BU1cblgjB1LaRSFZe81N9qgIPHAfLzk4OX3GA8vbkvdA+qTJ8IKmy57j5uayUm9Ap/8NjccAT+6pm
	7IH3jg2I7v1jKMNp6670fJGK91HXLkuo1vjT4cxVxZNLY8XPSPstPLsEN5ZXOvLVC292NNzWftgfn
	Sgsnl29NX8+sJ6FTq9qjNkLDIfTtKUOByFWIqbElxjMNx8Xus/Sj91NWwaVKrhnEeIaSbykPUzqfs
	TJEZz/Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGRwu-0000000EIeW-2bdE;
	Thu, 28 Nov 2024 00:00:00 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGRwr-0000000EIdv-3jNp
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Nov 2024 23:59:59 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1732751993;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kyUqZ7syZZtzckT7kS1pPjjZtcXo9K51BG3n+RoSxpA=;
	b=hxbO7Tb9yGeXhxxtJCVgK+xwton8Fdvla8FXDG2SDb6AVAm6PSATVdb2LQwfx4BuJgIUL5
	k0rucLNtRnKiBkrwPv9hPS/TBPcTxxgM3/QOacATkCGrBecB/dGI+MXR4P7fFRxiMgsIFd
	Rh2SHhOA/R4Hdnz1Nqvtxxjkcb/jqxKRnCgf2tOsLWpUHi2xHeIEBVBWhhEHoSnQgBNMZ/
	vPOdwIdo+FACnhNGgoEM/Kg7t0FceN2pq0rvY7sbAVF7gP1PIUSRbCT1G6YXlkjJ5nGHfb
	Mb15VQLtbMlsPaFhFKTxCvD3PxqUtDHW7WQ3nPObdfv+ssylpbyeam/i9+uz3w==
Date: Thu, 28 Nov 2024 00:59:52 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 inindev@gmail.com, geert+renesas@glider.be, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 alchark@gmail.com, jbx6244@gmail.com, krzk+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rename rfkill label for Radxa ROCK
 5B
In-Reply-To: <20241127015224.2361-1-naoki@radxa.com>
References: <20241127015224.2361-1-naoki@radxa.com>
Message-ID: <e15a72e60db211d450e3aa7a7245d21a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_155958_080750_54D7744A 
X-CRM114-Status: GOOD (  12.44  )
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

Hello Fukaumi,

On 2024-11-27 02:52, FUKAUMI Naoki wrote:
> on ROCK 5B, there is no PCIe slot, instead there is a M.2 slot.
> rfkill pin is not exclusive to PCIe devices, there is SDIO Wi-Fi
> devices.
> 
> rename rfkill label from "rfkill-pcie-wlan" to "rfkill-m2-wlan", it
> matches with rfkill-bt.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Thanks for this patch, renaming the rfkill label this way makes
sense to me.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index c44d001da169..d597112f1d5b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -72,7 +72,7 @@ fan: pwm-fan {
> 
>  	rfkill {
>  		compatible = "rfkill-gpio";
> -		label = "rfkill-pcie-wlan";
> +		label = "rfkill-m2-wlan";
>  		radio-type = "wlan";
>  		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
>  	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
