Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4BA9ECAAD4
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 20:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AgG0EomDGRF6tzmku3T4cvCWSjAujXp3rzMF/JecuOw=; b=aZ+s+fPAwqXcKH
	htivKJhyWmm3lfZISLbTBClvRq5SOCGJB+Vlqluf+5xI8JYxBj5YbpRVh2JBMHJcAR2pzAeO9O5Bq
	PPMk5l9KcYZhz4q47Eie+buEo2QwPURpQ76uTpJn/mRPNHRoCMcIOj2e8XrpKazPo+24uSs/ghlpL
	8U49kHYkPFhsiztiL6PkPryvRfPoU8KqzRfUn8vNIg8bInC9CTSLscED8yYrZEGjqWggzGd6yQAm3
	7OIzOwrYgVk2U+/4aEJb/JrnSlczpnfzy8SDn0NOaI6eU7zmlHgnv3oXhBPA28shLcnYZFuGxt9VA
	4DVw60u43wpl4tNnEDPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSlEE-00CbPr-2J; Mon, 29 Aug 2022 20:19:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSlED-00CbPP-4p; Mon, 29 Aug 2022 20:19:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=clvG5A+QJJgZPEz9h6sipvl3qR/Bxm3rztjd071y2k0=; b=JsxsYV6j73A4F/+puZCe/7Fsrd
	pTsJwE0+mR04pCW9gT0HD5Q0WPLLGV6v0OVpQbEZRb2Y7X8Xw7OmBhFfmOH8c9nGCuT2cAa7QSQzN
	iZ6H5EjT12Uw9WlxWRy8npaEiyqzlIFWVgBQCTHgRE7ukEGbong0YNFclOyx6ReBIkWQUH00ZdsG4
	qw3qTL224YuXFn4ZBe1xMKyQUjcjPxFGAul/Mlx5zDnxzHm/vbUnba5A0tdPIAHsi7yUHgOJXRWyR
	HGmslNJ2pgAqeop3kklU33dIoiCiCnW2a5JtTEO/nH9y3ma5TroWsEzwqFGFaePO0k81zPgNySoTX
	QZEo2hjg==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSlE6-003NPD-Kl; Mon, 29 Aug 2022 20:19:23 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 27TKI2c9030634;
	Tue, 30 Aug 2022 05:18:02 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: jagan@amarulasolutions.com
Cc: abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        stephen@radxa.com
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
Date: Mon, 29 Aug 2022 20:17:52 +0000
Message-Id: <20220829201752.518374-1-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220824080903.3696847-2-jagan@amarulasolutions.com>
References: <20220824080903.3696847-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_211919_233675_DF3639C5 
X-CRM114-Status: UNSURE (   7.87  )
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

Hello,

thank you very much for your work!

> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb

this is not an objection, just a note for me, currently our(Radxa)
u-boot try to load "rk3399-rock-pi-4c-plus.dtb".

> +#include "rk3399-opp.dtsi"

ROCK 4C+ has RK3399-T. it needs different opp table.

> +	aliases {
> +		mmc0 = &sdmmc;

please add

		mmc1 = &sdhci;

as like as other ROCK (Pi) 4 series.

> +&hdmi_sound {
> +	status = "okay";
> +};

please add

&i2s2 {
	status = "okay";
};

too.

> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	card-detect-delay = <800>;
> +	disable-wp;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cd &sdmmc_cmd &sdmmc_bus4>;
> +	vqmmc-supply = <&vccio_sd>;
> +	status = "okay";
> +};

does card detect work for you? it doesn't work for me. I think it
needs

	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;

instead of "&sdmmc_cd".

Best regards,

--
FUKAUMI Naoki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
