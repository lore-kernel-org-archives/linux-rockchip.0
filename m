Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A12FEEE27A
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 03:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjHCOlMEQ9hv0hdXZHVXU8WagyoMkJkcaWtFARvECRE=; b=UxoJvuLm5+Mu4a
	G26gf2dbg7XMeaFsk8kduQkv+W+3yorB/M7dmH86WBWDrS3VhbUxLu/kWst8mdEw0umDZzknU3j44
	10ZbhvrRJIbsVFX6ujziFdBp/w07niB77qllgm5KgzV5nsETIbUjqgy4wT1BH4Xv9HH0PfHdiQRhc
	Fb8dDocqMAok/oqXW85gcRLJciUg8Umubi8zbCL8znuVgr5N4F7C87HlA8GJvR2TmK5HmUxjeRGXb
	B86F1/kGfVkLrexVYYQooCsvK4rdkHpcAjvnOfmoQmtZK1hkxc38p9pLxZnRmJoGrNKDH8ZNCc0PY
	0pA3UlNesWAJD8NdVjJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sox7y-0000000Epfx-0fEs;
	Fri, 13 Sep 2024 03:37:46 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sox7t-0000000Epea-1WxE
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 03:37:43 +0000
Received: from amadeus-Vostro-3710.lan (unknown [58.61.141.10])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 8072F7E00D0;
	Fri, 13 Sep 2024 11:30:21 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix PCIe regulators for Radxa ROCK 3A
Date: Fri, 13 Sep 2024 11:30:18 +0800
Message-Id: <20240913033018.28400-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240912235923.1013-1-naoki@radxa.com>
References: <20240912235923.1013-1-naoki@radxa.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGE1DVklOHkhKQk4aGBkZHlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVSktZV1kWGg8SFR0UWUFZT0tIVUpLSEpMTU1VSktLVUpCS0
	tZBg++
X-HM-Tid: 0a91e96e8b3703a2kunm8072f7e00d0
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MVE6TCo*EjI4GRkQHBA5MT9M
	FkwaFAFVSlVKTElNSkJDSUlJSkpMVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPSlVKS1lXWQgBWUFJTU1INwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_203741_585141_7E96819B 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
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

> @@ -119,14 +123,10 @@ vcc3v3_pi6c_03: vcc3v3-pi6c-03-regulator {

Please add /* actually fed by vcc5v0_sys */

>  	vcc3v3_pcie: vcc3v3-pcie-regulator {
>  		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pcie_enable_h>;
>  		regulator-name = "vcc3v3_pcie";
>  		regulator-min-microvolt = <3300000>;
>  		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc5v0_sys>;
> +		vin-supply = <&vcc3v3_pi6c_03>;
>  	};

I recommend renaming vcc3v3_pcie to vcc3v3_pcie30x1, which better
matches the schematic.

>  &pcie2x1 {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie_reset_h>;
> +	pinctrl-0 = <&pcie2x1m1_pins>;
>  	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
> -	vpcie3v3-supply = <&vcc3v3_pcie>;
> +	vpcie3v3-supply = <&vcc3v3_wf>;
>  	status = "okay";
>  };

Please separate the changes for pcie2x1 and pcie3 into 2 patches.

> +		pcie2x1m1_pins: pcie2x1m1-pins {
> +			rockchip,pins =
> +				/* pcie20_clkreqnm1 */
> +				<2 RK_PD0 4 &pcfg_pull_none>,
> +				/* pcie20_perstnm1 */
> +				<3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>,
> +				/* pcie20_wakenm1 */
> +				<2 RK_PD1 4 &pcfg_pull_none>;

Why not pcie20m1_pins?

> +		pcie3x2m1_pins: pcie3x2m1-pins {
> +			rockchip,pins =
> +				/* pcie30x2_clkreqnm1 */
> +				<2 RK_PD4 4 &pcfg_pull_none>,
> +				/* pcie30x2_perstnm1 */
> +				<2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>,
> +				/* pcie30x2_wakenm1 */
> +				<2 RK_PD5 4 &pcfg_pull_none>;
> +		};

Why not pcie30x2m1_pins?
Also missing blank line.

> +		pcie_pwren_h: pcie-pwren-h {
> +			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
