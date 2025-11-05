Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90F85CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 13:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZYgWkOR0DI5C75bIHY/9QHh8ZBV7BIVkF4viOJO8vw=; b=FGiJOHx5az4pD+
	ElK7PNLWhSET1OPEtZGgadRc3eW3IqFDs8pZC21LXCxCw6u8g2EtzM420c8JKi64rs6zTyOiEuLcA
	CmvMJjz0ZCkWC6rXruHvadUe3SmZtpXbbMC9has2cEbHbLy4AR9g+NgDs5NRUWXg25c+EJ1+4YsRk
	2C2jmKq3g2euz0+GOIYifj/ROmuHvWj/LvE0e/hsZ6zeXEtiiHUKDQH+SGVSuaGY8ltY7NmArdTB7
	pOirUnMRJfbc92hQ0aNStiJkuKV9LIScB3V90GUjICSJLzQNoFneMdyhAWdMWV5XBjaRYeEI4Gdyz
	g3HunwOODiodxkDaCKSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGdPC-0000000Dkka-1Zix;
	Wed, 05 Nov 2025 13:18:30 +0000
Received: from out-178.mta1.migadu.com ([95.215.58.178])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGdPA-0000000Dkju-0Cw0
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 13:18:29 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1762348704;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=anJy0kovOnmwnKwTf1uVV5HwRBu0s+Xw6msJvdrAWkM=;
	b=aa6b5568Qh3/bE4wzKB/hpYPvmdW4nlyMx41tGjnmZuoU64FMmoh4cXl1BRU5DJ6tuo+nI
	3HSYeLTC7A200JHb4jozfS3Q0HgGytOBgeky7yw/BxPCMnlkdGUMCr+Xooh2VOJaWNvruP
	BbBMVUyM3OUs1s+qs+7rdLcCskHKQe7q47xlfLhSUdGa4V0LtZvnYUjzOa+HAbeokkQGPq
	Xe5gFcTNi0N3+crmQfPC192PhyQd03iDeVnEwTxdEwVRH2R2MCNzUfbPSO3XYuzSqXY4+i
	IWJzneP/ljxJaSA6odMvzs1zM5cn/jb+7sYU87vOWDBcBTGBP/ObrAsTfnVg3g==
Date: Wed, 05 Nov 2025 14:18:21 +0100
Message-Id: <DE0SH4UBVXBH.77ADEH3224GK@cknow-tech.com>
Cc: <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <linux-clk@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <michael.riesch@collabora.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add missing clocks for cpu
 cores on rk356x
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Heiko Stuebner" <heiko@sntech.de>
References: <20251103234926.416137-1-heiko@sntech.de>
 <20251103234926.416137-4-heiko@sntech.de>
In-Reply-To: <20251103234926.416137-4-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_051828_244202_2C806471 
X-CRM114-Status: GOOD (  11.64  )
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

On Tue Nov 4, 2025 at 12:49 AM CET, Heiko Stuebner wrote:
> All cpu cores are supplied by the same clock, but all except the first
> core are missing that clocks reference - add the missing ones.

I noticed it myself some time ago (but failed to sent a patch), so

Reviewed-by: Diederik de Haas <diederik@cknow-tech.com>

Cheers,
  Diederik

> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> index d0c76401b45e..a1815f8a96e1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> @@ -69,6 +69,7 @@ cpu1: cpu@100 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a55";
>  			reg = <0x0 0x100>;
> +			clocks = <&scmi_clk SCMI_CLK_CPU>;
>  			#cooling-cells = <2>;
>  			enable-method = "psci";
>  			i-cache-size = <0x8000>;
> @@ -84,6 +85,7 @@ cpu2: cpu@200 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a55";
>  			reg = <0x0 0x200>;
> +			clocks = <&scmi_clk SCMI_CLK_CPU>;
>  			#cooling-cells = <2>;
>  			enable-method = "psci";
>  			i-cache-size = <0x8000>;
> @@ -99,6 +101,7 @@ cpu3: cpu@300 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a55";
>  			reg = <0x0 0x300>;
> +			clocks = <&scmi_clk SCMI_CLK_CPU>;
>  			#cooling-cells = <2>;
>  			enable-method = "psci";
>  			i-cache-size = <0x8000>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
