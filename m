Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A3FEC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 10:13:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C5A236103B
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 10:13:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C5A236103B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PN8WJtdlXvuVZ9NuqbeIVniB0lV+H7jpA0FyDvUof9w=; b=2DG4UkrK9tUKv6
	G9DWZikuQE6FZISHCzB4gbQUpAaI3itGH2tGKtMIS5bNmGVzIXaOYWVIHE/XMVJSyo6s7FTFgW18p
	g9v+BNeiobfAzI/5sclJZ4y6IHWr+6ACmqfrT7AZF2pkOrR7w364yf5SkNN7ldzBjsnfBYQL2itxz
	O5wO7o+wn7AUG/5MwufeYXdvhDnbF14j06BcxvF6gVY4P18HZAGbIbfsr04rnju7azZEAfcCnZeac
	x/IaQjI9UDzrp6nbkPLqtOdcxm0vkfkFZlSuCbrqd1YCk/NIYsP/CtK6SAI0K+Whhy8bo6DppeyAD
	QxtYqx/IbAkVmyeYawmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mc3Ad-00C5cm-30; Sun, 17 Oct 2021 10:13:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mc3AZ-00C5ZY-Af; Sun, 17 Oct 2021 10:13:33 +0000
Received: from p508fd4f7.dip0.t-ipconnect.de ([80.143.212.247]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mc3AW-0002VM-QE; Sun, 17 Oct 2021 12:13:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add idle cooling devices
Date: Sun, 17 Oct 2021 12:13:27 +0200
Message-ID: <2808512.kKcWQYovEV@phil>
In-Reply-To: <20211001161728.1729664-1-daniel.lezcano@linaro.org>
References: <20211001161728.1729664-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_031331_423674_C294E8F2 
X-CRM114-Status: GOOD (  18.22  )
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

Hi Daniel,

Am Freitag, 1. Oktober 2021, 18:17:28 CEST schrieb Daniel Lezcano:
> The thermal framework accepts now the cpu idle cooling device as an
> alternative when the cpufreq cooling device fails.
> 
> Add the node in the DT so the cooling devices will be present and the
> platforms can extend the thermal zone definition to add them.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 3871c7fd83b0..9ac232ffd284 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -124,6 +124,11 @@ cpu_b0: cpu@100 {
>  			#cooling-cells = <2>; /* min followed by max */
>  			dynamic-power-coefficient = <436>;
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			thermal-idle {
> +				#cooling-cells = <2>;
> +				duration-us = <10000>;
> +				exit-latency-us = <500>;
> +			};

I guess the basic question would be where do the duration
and exit-latency values come from. And also what happened
to cpu_l0-l3 (aka the little cores)?

Heiko

>  		};
>  
>  		cpu_b1: cpu@101 {
> @@ -136,6 +141,11 @@ cpu_b1: cpu@101 {
>  			#cooling-cells = <2>; /* min followed by max */
>  			dynamic-power-coefficient = <436>;
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			thermal-idle {
> +				#cooling-cells = <2>;
> +				duration-us = <10000>;
> +				exit-latency-us = <500>;
> +			};
>  		};
>  
>  		idle-states {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
