Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F36DEA8109
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Feb 2026 12:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+X2Y83nCjMEeRjEKH2BkBOLL3ZfJSjFHMup4U0Hgmk=; b=b6VGH/TsEhAhlV
	0Jp5PHcg7BaGVwYruLWPcSJFULOa+B9qtlHY8Zy5mTkuR93aHnwuvEajJWRPxPZiZrP25g5YCgfZy
	SlMSgFg091j91fQPxDDUWUoviOvcX28eWLJLJb17RajRbkIKVJqukt10VG7Xwj2hreKAd7PzcwFf0
	+6UnEa2tkI0xB0TFkbalT1OAW1iHTuU1IdYfkDyWhhgaGnHZjAhsDNs8zceQgzOmEBy0d63mggI+o
	SiWgMmK89LLdA/pDo3gsYnJqX4DdB+2gbkylj45+M8hrXNM7c9jLJQxWVdPNt8EUmGCubYcPq2vvV
	tsOjKoZZjwJMi5/tZTzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpmg4-0000000GvQG-08Rk;
	Tue, 10 Feb 2026 12:17:12 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpmfz-0000000GvPj-3zqM;
	Tue, 10 Feb 2026 12:17:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id B549141D4E;
	Tue, 10 Feb 2026 13:17:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1770725822; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Kb0h3q8XigQq/XBwFpeBJIagWOtIH4mIMrOrXJzvCe0=;
	b=I5e7E/RvSurKmra/K5KTcgQ+Lr65xym40iEMwlGI61L+btlMYHr1alKvxBhItyKVX9555d
	yCBScQ1wjObpy+TSa8tUpicj0/KtBIJy4iS6kDkHuN1YriOr+SsRyaMI+Yj0KRsPkSxnEP
	9U7OxrEH5T5Mox2LTQOlNBeK8HevOy26yywGaD4VrDbRwBdvdPSK8K0T7As2GMVXUFes1j
	gKRqgr3Wd372vLCR0t0b05vKYTd7oBQ03pRWB7zmS5p54ZUGWpMd5kHFqYtgYFsgzDu8y/
	BwC9KQEDgpSX0vsybVEDGaknyXqbFsL8VJgGGeRRI0XUU2KWeqYC394nFtEzUA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20260210120142.698512-1-heiko@sntech.de>
References: <20260210120142.698512-1-heiko@sntech.de>
Date: Tue, 10 Feb 2026 13:17:00 +0100
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Jan Palus" <jpalus@fastmail.com>, "Peter Robinson" <pbrobinson@gmail.com>, "Thorsten Leemhuis" <regressions@leemhuis.info>, stable@vger.kernel.org
To: "Heiko Stuebner" <heiko@sntech.de>
MIME-Version: 1.0
Message-ID: <f15b0ead-163b-8101-4856-160476c590b0@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] Revert =?utf-8?q?=22arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Further describe the WiFi for the Pinebook 
 =?utf-8?q?Pro=22?=
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_041708_218943_CD83FCEA 
X-CRM114-Status: GOOD (  14.59  )
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

Hello Heiko,

On Tuesday, February 10, 2026 13:01 CET, Heiko Stuebner <heiko@sntech.de> wrote:
> This reverts commit 6d54d935062e2d4a7d3f779ceb9eeff108d0535d.
> 
> It seems there are different variants of the Wifi chipset in use on the
> Pinebook Pro. And according to the reported regression - see Closes
> below, the reverted change causes issues with one Wifi chipset.
> 
> The original commit message indicates a "further description" only and
> does not indicate this would fix an actual problem, so a revert should
> not cause further problems.
> 
> Fixes: 6d54d935062e ("arm64: dts: rockchip: Further describe the WiFi for the Pinebook Pro")
> Cc: Jan Palus <jpalus@fastmail.com>
> Cc: Peter Robinson <pbrobinson@gmail.com>
> Cc: Thorsten Leemhuis <regressions@leemhuis.info>
> Cc: stable@vger.kernel.org
> Closes: https://lore.kernel.org/r/aUKOlj-RvTYlrpiS@rock.grzadka/
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../boot/dts/rockchip/rk3399-pinebook-pro.dts  | 18 ------------------
>  1 file changed, 18 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index 810ab6ff4e67..7c23971920f0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -883,12 +883,6 @@ vcc5v0_host_en_pin: vcc5v0-host-en-pin {
>  		};
>  	};
>  
> -	wifi {
> -		wifi_host_wake_l: wifi-host-wake-l {
> -			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
>  	wireless-bluetooth {
>  		bt_wake_pin: bt-wake-pin {
>  			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> @@ -946,19 +940,7 @@ &sdio0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
>  	sd-uhs-sdr104;
> -	#address-cells = <1>;
> -	#size-cells = <0>;
>  	status = "okay";
> -
> -	brcmf: wifi@1 {
> -		compatible = "brcm,bcm4329-fmac";
> -		reg = <1>;
> -		interrupt-parent = <&gpio0>;
> -		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-names = "host-wake";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&wifi_host_wake_l>;
> -	};
>  };
>  
>  &sdhci {

Thanks for this revert!  Until the underlying issues are investigated
further, reverting the troublesome DT changes is pretty much the only
reasonable action, so please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
