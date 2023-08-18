Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80A56EE4998
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Aug 2023 21:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUdW3Z0vixw3jPQOzBQ86dhupuj/qdXVF82/kBgOWXk=; b=ZegkNdXVCb+p98
	A1SZ9f/PjDWmlByFRYA8vrtpf1HXh74XCYRt8ZZ/42/vLGAsu7Mz+aEVby47z3AcWVkGIwhC6iITc
	JJwnnDDrsDw6dP27S/Po5vtVtt+LBwge+Btde9fP/Cgq3+PfTFoMUN056FVxyYGdH84IrfbB3cZo7
	j6l42du0aGs4at1TB41FQ+PaUhcHJNMhhGkdeurUDyEF5F9nCfOwVcSyORU+1j3nwKNV/rahtli66
	6+eUvNMl4xQYD1PoDTG5sBC8r3/8DHYKzCuDtuPN32HPNN3rkGwG1hG+u+BzmY9lGNfFgL/jm2jMl
	GbJ7AYGRC85dS/Ed/m9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qX7Ds-00A3o3-2M;
	Fri, 18 Aug 2023 21:41:36 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qX7Do-00A3mv-2i
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Aug 2023 21:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=OLmq1haPDidESsRMW3IYy2CuAsD11e/Ixo/HNO+zhyc=;
	b=qCfUrKtOrd296UM0Oi6DGGV6T1ovKmMOMNPKvBj42ktBWe/Z2bZcB7+up891i6CjghVk
	hKNDuVXEFnDdC5bag1ZQZJ6rfHjF1vngBna+08CNPH91TSDzEJoBXd3dxlKmtZ5f33Fz9U
	wcQT2c9y77P7yH3amTdIh+7XsIfDc6QOdRVfRGRXPuoFr2X6HiUxeJeRw3vcL2EW5PN7Z4
	XW0efOMGXt5xXMt7KmMcup9TkAK7MvHMPSxcneuXEpB/Xn8JnTHe3sQHOvzWBYWknptscB
	9FNKhuV3+tyaKaok2/O2ShoqGLx8jiFFPv01/0TExtnvTKA6hCsG2/o49PEZiJkw==
Received: by filterdrecv-66949dbc98-2h875 with SMTP id filterdrecv-66949dbc98-2h875-1-64DFE588-11
        2023-08-18 21:41:28.455880717 +0000 UTC m=+8632909.379319801
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-7 (SG) with ESMTP
	id bCMqnjtxT7aDkWs7EeqkYQ
	Fri, 18 Aug 2023 21:41:28.096 +0000 (UTC)
Message-ID: <6a968e28-bb98-cf99-82bf-7154249e77ed@kwiboo.se>
Date: Fri, 18 Aug 2023 21:41:28 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add sfc node to rk3588s
Content-Language: en-US
References: <cover.1692372351.git.efectn@6tel.net>
 <a7b640b9c1fe163a72183af04d089bd19326bfa8.1692372351.git.efectn@6tel.net>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <a7b640b9c1fe163a72183af04d089bd19326bfa8.1692372351.git.efectn@6tel.net>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h2e6gkSy9sC0u9mAe?=
 =?us-ascii?Q?v8+o8dpwDxJ2rwoxu+oPBQZyN2z9ssOkJf9ykQG?=
 =?us-ascii?Q?P=2FAQNekTOvhCMqhOxWMdJDqszgbwDbVzoNH4Wgn?=
 =?us-ascii?Q?1dW7551PaWqyuNUuOgtrv3r5Pxgxtn81ejjF=2FHw?=
 =?us-ascii?Q?O+60zkXYMX7ZVe55Ly9Erdd5vlSSkMNHT77GtNu?=
 =?us-ascii?Q?ScB09jvr8Ou0LKt56Nvdg=3D=3D?=
To: Muhammed Efe Cetin <efectn@6tel.net>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
	sebastian.reichel@collabora.com, megi@xff.cz
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_144133_524702_2BFFA150 
X-CRM114-Status: GOOD (  11.46  )
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

On 2023-08-18 18:05, Muhammed Efe Cetin wrote:
> Add sfc node to rk3588s.dtsi from downstream kernel.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 5544f66c6ff4..3c753f9b8acc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1424,6 +1424,18 @@ sata-port@0 {
>  		};
>  	};
>  
> +	sfc: spi@fe2b0000 {
> +		compatible = "rockchip,sfc";
> +		reg = <0x0 0xfe2b0000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
> +		clock-names = "clk_sfc", "hclk_sfc";
> +		assigned-clocks = <&cru SCLK_SFC>;

assigned-clocks should also be removed now that assigned-clock-rates was
removed.

Regards,
Jonas

> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		status = "disabled";
> +	};
> +
>  	sdmmc: mmc@fe2c0000 {
>  		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xfe2c0000 0x0 0x4000>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
